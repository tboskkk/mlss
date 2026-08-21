	.syntax unified
	.text

	thumb_func_start sub_8097B8C
sub_8097B8C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08097BA0
	cmp r1, #0x04
	bne _08097C2A
_08097BA0:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r7, _08097BFC @ =0x03000FDC
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r1, r0
	ldr r0, [r2, #0x00]
	cmn r0, r1
	beq _08097C0C
	ldr r2, _08097C00 @ =0x03001038
	ldr r0, _08097C04 @ =0x0819832C
	ldr r1, _08097C08 @ =0x08198220
	subs r0, r0, r1
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #0x07
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	adds r0, r5, #0x0
	bl _call_via_r4
	b _08097C10
_08097BFC: .4byte 0x03000FDC
_08097C00: .4byte 0x03001038
_08097C04: .4byte 0x0819832C
_08097C08: .4byte 0x08198220
_08097C0C:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08097C10:
	adds r2, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08097C2A:
	ldr r0, _08097C34 @ =0x08097D51
	str r0, [r6, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097C34: .4byte sub_8097D50
