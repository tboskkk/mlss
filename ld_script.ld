/* GENERATED FILE. Do not hand-edit.
 * Edit tools/splits.yaml and run tools/gen_ldscript.py to regenerate. */
SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
    }

    . = 0x8000000;

    .text :
    {
        build/asm/text08000000.o(.text);
        build/src/nullsub_17.o(.text);
        build/asm/text08000000_p2.o(.text);
        build/src/nullsub_16.o(.text);
        build/asm/text08000000_p3.o(.text);
        build/src/heap.o(.text);
        build/asm/heap.o(.text);
        build/src/sound.o(.text);
        build/asm/text08018E24.o(.text);
        build/src/process.o(.text);
        build/asm/text08019CA4.o(.text);
        build/src/game_boy_player_logo.o(.text);
        build/asm/text0801A548.o(.text);
        build/src/nullsub_18.o(.text);
        build/asm/text0801A548_p2.o(.text);
        build/src/option_screens.o(.text);
        build/asm/option_screens.o(.text);
        build/src/opening_sequence.o(.text);
        build/asm/text080542C4.o(.text);
        build/src/title_screen.o(.text);
        build/asm/text08057568.o(.text);
        build/src/nullsub_15.o(.text);
        build/asm/text08057568_p3.o(.text);
        build/src/nullsub_21.o(.text);
        build/asm/text08057568_p4.o(.text);
        build/src/nullsub_7.o(.text);
        build/asm/text08057568_p2.o(.text);

        build/asm/rodata081DD790.o(.rodata);
        build/src/title_screen.o(.rodata);
        build/asm/rodata081E2764.o(.rodata);

        build/asm/mariobros.o(.text);
    }

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
