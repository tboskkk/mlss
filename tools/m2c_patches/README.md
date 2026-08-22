# Local m2c patches - NOT for upstream

Changes to the pinned `tools/m2c` submodule that this project needs and that
are **deliberately kept local**. They are not to be contributed back to
`matt-kempster/m2c`, and nothing here should be pushed to that repository.

`tools/m2c` is a submodule, so edits to its working tree are invisible to
this repo's history and are **lost on any `git submodule update`**. That is
why they live here as patches instead: version-controlled in *our* repo,
reapplicable, and never entangled with upstream.

## Applying

    ./tools/m2c_patches/apply.sh

Idempotent - it checks whether each patch is already applied and skips it.
Run it after `git submodule update`, after cloning fresh, or if m2c starts
emitting `M2C_ERROR(/* unknown instruction: ... */)` for something it used
to handle.

## The patches

### 0001-legacy-thumb-load-mnemonics.patch

Teaches m2c's ARM backend the **legacy (pre-UAL) Thumb spellings** `ldsb`
and `ldsh`. m2c already implements these instructions under their UAL names
`ldrsb` / `ldrsh`; our disassembly, like most GBA-era output, uses the older
mnemonics, so m2c did not recognise them at all and emitted
`M2C_ERROR(/* unknown instruction: ldsh ... */)`.

Measured before the patch: **1,943 of 5,431 seeds (36%)** carried an
unknown-instruction error, and just three mnemonics accounted for all 8,208
occurrences - `ldsh` (7,568), `ldsb` (622), `swi` (18). Among the seeds that
do not compile, **42.1%** were affected.

Impact, measured honestly on the 32 smallest affected seeds: 2 compile
(6.2%), 1 of them byte-exact (`sub_808C04C`, the first new match recovered
from that pile). It is not a 36% unlock - it removes ONE of several errors
from a third of the corpus, and fully fixes the minority that had no other
problem. Worth having, and worth not overselling.

`swi` is left alone: 18 occurrences, and a BIOS call is genuinely harder
than a mnemonic alias.
