	.syntax unified
	.text

	thumb_func_start sub_802A608
sub_802A608:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0802A636
	ldr r0, _0802A668 @ =0x0300034C
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0xF3
	ands r0, r1
	cmp r0, #0xF3
	beq _0802A670
_0802A636:
	ldr r5, _0802A66C @ =0x0000035A
	adds r0, r3, r5
	ldrb r1, [r0, #0x00]
	movs r6, #0x04
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802A64C
	adds r0, r3, #0x0
	bl sub_80492DC
_0802A64C:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0802A734
	adds r0, r2, #0x0
	bl sub_80492DC
	b _0802A734
_0802A668: .4byte 0x0300034C
_0802A66C: .4byte 0x0000035A
_0802A670:
	ldr r1, _0802A6A8 @ =0x0000035B
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _0802A6B0
	movs r1, #0x04
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bne _0802A6B0
	ldr r0, _0802A6AC @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r0, [r2, #0x0E]
	cmp r0, #0x01
	bhi _0802A6B0
	adds r0, r3, #0x0
	bl sub_804FD3C
	b _0802A6CC
	.byte 0x00, 0x00
_0802A6A8: .4byte 0x0000035B
_0802A6AC: .4byte 0x03000FF4
_0802A6B0:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldr r1, _0802A70C @ =0x0000035A
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802A6CC
	adds r0, r2, #0x0
	bl sub_80492DC
_0802A6CC:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	ldr r1, _0802A710 @ =0x0000035B
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _0802A718
	movs r1, #0x04
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bne _0802A718
	ldr r0, _0802A714 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x54
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r0, [r2, #0x0E]
	cmp r0, #0x01
	bhi _0802A718
	adds r0, r3, #0x0
	bl sub_804FD3C
	b _0802A734
	.byte 0x00, 0x00
_0802A70C: .4byte 0x0000035A
_0802A710: .4byte 0x0000035B
_0802A714: .4byte 0x03000FF4
_0802A718:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldr r1, _0802A73C @ =0x0000035A
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802A734
	adds r0, r2, #0x0
	bl sub_80492DC
_0802A734:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802A73C: .4byte 0x0000035A
