	.syntax unified
	.text

	thumb_func_start sub_816507C
sub_816507C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r1, [r4, #0x20]
	ldr r2, _081650A4 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	ldr r0, [r4, #0x00]
	bl sprite_hide_8021F20
	ldr r0, [r4, #0x04]
	bl sprite_hide_8021F20
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_081650A4: .4byte 0x01000C00
