@ WARNING -- DO NOT DELETE THIS FRAGMENT WHEN sub_8089A04 MATCHES.
@ The trailing 12 bytes after this function's `bx r1` are a real, never-labeled
@ function Luvdis missed (ldr r1,[pc,#4] / str r1,[r0,#0x4C] / movs r0,#1 / bx lr,
@ plus a .4byte 0x08089D11 literal), not padding. See CLAUDE.md's trailing-data
@ landmine. Split it out before this fragment is ever removed.
	.syntax unified
	.text

	thumb_func_start sub_8089A04
sub_8089A04:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x11, 0x9D, 0x08, 0x08
