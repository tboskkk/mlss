	.syntax unified
	.text

	thumb_func_start sub_81071F0
sub_81071F0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _08107240 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	beq _08107238
	ldr r4, [r5, #0x0C]
	bl sub_810CAD0
	adds r0, r4, #0x0
	bl sub_8087650
	cmp r0, #0x00
	beq _08107230
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #0x14]
	str r0, [sp, #0x000]
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x20
	movs r3, #0x00
	bl sub_807F708
_08107230:
	movs r0, #0x0C
	strh r0, [r5, #0x10]
	ldr r0, _08107244 @ =0x08107361
	str r0, [r5, #0x04]
_08107238:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08107240: .4byte 0x03000FD8
_08107244: .4byte sub_8107360
