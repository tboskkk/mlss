#!/usr/bin/env python3
"""Regenerate the progress block in README.md.

    ./container.sh tools/gen_readme_progress.py          # rewrite README.md
    ./container.sh tools/gen_readme_progress.py --check  # exit 1 if stale

Reuses tools/progress.py's own classification rather than parsing its
printed output -- the two can never disagree about what "matched" means,
and a change to the classifier shows up here automatically.

The numbers are FUNCTION counts, not code bytes. Most decomp projects
report bytes (that is what decomp.dev tracks), and the two are not
interchangeable: this project's remaining functions skew large, so a byte
figure would read lower than the function figure. Said plainly in the
README rather than quietly presenting one as the other.

No network, no CI, no build -- it only reads src/ and asm/, so it is safe
to run against a live factory.
"""
from __future__ import annotations

import argparse
import datetime
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import progress  # noqa: E402
import splitlib  # noqa: E402

README = splitlib.ROOT / "README.md"
START = "<!-- progress:start -->"
END = "<!-- progress:end -->"

BAR_WIDTH = 44


def collect():
    matched, in_progress, not_started = [], [], []
    for c_path in sorted((splitlib.ROOT / "src").glob("*.c")):
        m, ip, ns = progress.classify_c_file(c_path)
        matched += m
        in_progress += ip
        not_started += ns
    raw_total, mariobros_total, _ = progress.count_raw_asm_functions()
    total = len(matched) + len(in_progress) + len(not_started) + raw_total
    return {
        "matched": len(matched),
        "in_progress": len(in_progress),
        "not_started": len(not_started),
        "not_extracted": raw_total,
        "mariobros": mariobros_total,
        "total": total,
    }


def bar(fraction: float, width: int = BAR_WIDTH) -> str:
    filled = int(round(fraction * width))
    return "█" * filled + "░" * (width - filled)


def badge_colour(pct: float) -> str:
    if pct >= 75:
        return "brightgreen"
    if pct >= 50:
        return "green"
    if pct >= 25:
        return "yellow"
    if pct >= 10:
        return "orange"
    return "red"


def render(s: dict) -> str:
    total = s["total"] or 1
    pct = 100 * s["matched"] / total
    colour = badge_colour(pct)
    today = datetime.date.today().isoformat()

    rows = [
        ("matched", s["matched"], "compiles byte-identical to retail"),
        ("in progress", s["in_progress"], "extracted, a real C attempt exists"),
        ("not started", s["not_started"], "extracted, no attempt yet"),
        ("not extracted", s["not_extracted"], "still raw in `asm/*.s`"),
    ]

    out = [
        START,
        "",
        f"![matched](https://img.shields.io/badge/matched-{pct:.1f}%25-{colour}"
        f"?style=for-the-badge&label=functions%20matched)",
        "",
        "```",
        f"{bar(s['matched'] / total)}  {pct:.1f}%",
        "```",
        "",
        "| state | functions | share | meaning |",
        "|---|---:|---:|---|",
    ]
    for name, n, meaning in rows:
        out.append(f"| **{name}** | {n:,} | {100 * n / total:.1f}% | {meaning} |")
    out += [
        f"| | **{s['total']:,}** | | **total (game proper)** |",
        "",
        f"Plus **{s['mariobros']:,}** functions in `asm/mariobros.s` — a complete, "
        "separate *Mario Bros.* minigame ROM embedded in the cartridge. Different "
        "game, different original developers, tracked apart and **not** counted "
        "toward the totals above.",
        "",
        f"<sub>Counts are functions, not code bytes — regenerate with "
        f"`tools/gen_readme_progress.py`. Last updated {today}.</sub>",
        "",
        END,
    ]
    return "\n".join(out)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true",
                    help="exit 1 if README.md is out of date, changing nothing")
    args = ap.parse_args()

    text = README.read_text()
    if START not in text or END not in text:
        print(f"README.md is missing the {START} / {END} markers", file=sys.stderr)
        return 2

    head, rest = text.split(START, 1)
    _, tail = rest.split(END, 1)
    new = head + render(collect()) + tail

    if args.check:
        if new != text:
            print("README.md progress block is out of date "
                  "(run tools/gen_readme_progress.py)", file=sys.stderr)
            return 1
        print("README.md progress block is up to date")
        return 0

    if new == text:
        print("README.md already up to date")
        return 0
    README.write_text(new)
    s = collect()
    print(f"README.md updated — {s['matched']:,}/{s['total']:,} matched "
          f"({100 * s['matched'] / (s['total'] or 1):.1f}%)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
