	.syntax unified
	.text

	thumb_func_start abort
abort:
	mov r12, r3
	mov r3, r8
	push {r3}
	mov r3, r12
	movs r2, #0x18
	ldr r3, _081DC7E8 @ =0x00020022
	adds r0, r2, #0x0
	adds r1, r3, #0x0
	swi #171
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.byte 0x00, 0x00
_081DC7E8: .4byte 0x00020022
	@ isatty/alarm below are real functions too (see tools/find_library_code.py) -
	@ Luvdis just never recognized these 2-4 byte stubs as code on their own.
