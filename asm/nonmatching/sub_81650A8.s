	.syntax unified
	.text

	thumb_func_start sub_81650A8
sub_81650A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl sub_816507C
	cmp r4, #0x00
	beq _081650D2
	ldr r0, [r5, #0x38]
	bl sub_80184F4
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x38]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x20
	bl sub_8018218
_081650D2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
