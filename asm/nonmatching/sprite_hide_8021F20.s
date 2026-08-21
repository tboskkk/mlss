	.syntax unified
	.text

	thumb_func_start sprite_hide_8021F20
sprite_hide_8021F20:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08021F6E
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021F6E
	ldr r3, _08021F74 @ =0x0203FFC4
	ldrh r2, [r4, #0x14]
	cmp r2, #0x00
	beq _08021F6E
	movs r6, #0x80
	lsls r6, r6, #0x07
	movs r5, #0x01
	ldr r0, _08021F78 @ =0x0000FFFF
	adds r4, r0, #0x0
_08021F52:
	ldrh r1, [r3, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08021F66
	adds r0, r2, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _08021F66
	strh r4, [r3, #0x00]
_08021F66:
	adds r3, #0x02
	asrs r2, r2, #0x01
	cmp r2, #0x00
	bne _08021F52
_08021F6E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08021F74: .4byte 0x0203FFC4
_08021F78: .4byte 0x0000FFFF
