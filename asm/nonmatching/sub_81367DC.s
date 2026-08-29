	.syntax unified
	.text

	thumb_func_start sub_81367DC
sub_81367DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _08136814 @ =0x02000050
	ldrh r0, [r4, #0x2C]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r0, [r4, #0x2A]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _081367F8
	movs r1, #0x03
	bl sub_81367AC
_081367F8:
	movs r0, #0x00
	str r0, [r4, #0x24]
	cmp r4, #0x00
	beq _0813680C
	ldr r0, _08136818 @ =0x08CDC490
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_0813680C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136814: .4byte 0x02000050
_08136818: .4byte 0x08CDC490
