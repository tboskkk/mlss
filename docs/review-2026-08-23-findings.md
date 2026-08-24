# Pipeline review, 2026-08-23 -- inline findings

Measured during a full review of the factory / m2c / decomp-permuter stack.
State at the time: 1,578/5,996 matched (26.3%); factory stopped since 16:09;
tier2_ready 2,526, needs_attempt 1,797, stalled 40, needs_human 31.

## F1 -- the ruleset moved, re-opening the backlog, but it is worth ~43 functions

`m2c_bridge.ruleset_version()` hashes `include/**/*.h`, so adding `struct Entity`
to common.h (commit aef02621) moved it `088abf4b` -> `1f4cf2aa`. That expires every
older verdict by design:

    m2c:088abf4b: declined     1,724 needs_attempt + 34 stalled + 28 tier2_ready
    stale seed_ruleset         ~2,435 tier2_ready

MEASURED, 40-row random sample of the 1,758 declined rows, regenerated under the
current ruleset and compiled via `gitops.compiles_in_isolation()`:

    34  85.0%  no-compile
     3   7.5%  no-output
     2   5.0%  M2C_ERROR
     1   2.5%  COMPILES      -> extrapolates to ~43 of 1,758

CLEAN NEGATIVE. Section S holds as written: struct Entity fixes the DECLARATION
class, not the COMPILE class. Draining the backlog is free and automatic once the
factory restarts, but it is not a plateau-breaker. Do not bill it as one.

## F2 -- tier2's refill loop starves its own monitoring loop (REAL BUG, fix is cheap)

`run_pool()` refills EVERY free slot (tier2.py ~671-748) before the monitoring
loop (~754) runs. Each refill does blocking work: `already_matches()` (splice +
build + asm-differ + repo lock) and `ensure_isolated()` (permute.py build). A slow
refill pass outlasts short give-up budgets, so searches sit unretired.

Signature -- overrun rate is INVERSELY proportional to budget, which is what a
fixed-cost refill starving the monitor looks like:

    budget      overran >1.5x
    60-90s      69/  969   7.1%
    91-180s     39/ 2261   1.7%
    181-420s    33/ 2767   1.2%
    421-900s     7/ 1877   0.4%

148 searches wedged (1.9% of 7,874 paired), 551 slot-hours past deadline. 104 of
the 148 closed via `state:tier2_ready` -- requeued, not retired on merit.

THE EXPENSIVE HALF IS THE CURE. watchdog.py fires (11 times in the logs), SIGTERMs
tier2, supervisor restarts it, and `_cleanup_all()` requeues every in-flight search:

    424 interrupted searches across 35 restart bursts
      mean 12.1 lost per restart, max 36

12.1 is exactly the pool size. All 12 searches are discarded -- including ones
making real progress -- to retire 1-4 wedged ones.

FIX: run the monitor pass BETWEEN refills (refill one slot per loop iteration)
rather than after all of them. Removes the wedge, hence the firings, hence the
collateral.

METHOD NOTE, and it is the usual lesson: the first pass at this measured 20.9%
overrun and 1,128 slot-hours. The launch/terminal pairing spanned factory
restarts, so a killed-and-relaunched search read as a 3-day run. Corrected by
treating ANY non-score_update event as terminal. Suspect the instrument first --
including your own, five minutes old.

## F3 -- section N.3's shape-group dedup numbers are STALE by ~3x

N.3 claims "1,639 unmatched in 431 groups (29.2% of the pool)" and "one 63-member
shape group gets 63 separate permuter searches". Live:

    groups of size>1 (dedup-able)   : 249
      unmatched in those            : 761
      groups with a SOLVED template :   5  -> only 9 unmatched twins remain
    largest all-unmatched group     :  21 members (not 63)
    DEDUP CEILING: 761 twins -> 249 representatives = 512 searches avoidable

`twin_backfill.py` has already harvested nearly all of it, and 3,872 of the groups
containing an unmatched function are singletons -- the corpus is mostly
structurally UNIQUE. Wiring dedup into tier2's claim logic is worth ~512 searches
(~128 slot-hours): real, modest, and NOT the "exploit #1" twins.py still
advertises. Update that docstring.

## Method note on this session

Eight parallel research agents were spawned and seven died on the session limit
within ~4 minutes -- each cold agent re-reading a 1,400-line CLAUDE.md is the
expensive path. Inline work by a session that already holds the context is far
cheaper per finding. Fan out only for fetch-heavy lanes (web research) or lanes
genuinely independent of repo context.
