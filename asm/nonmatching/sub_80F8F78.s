	.syntax unified
	.text

	thumb_func_start sub_80F8F78
sub_80F8F78:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r4, [r6, #0x24]
	movs r0, #0x9A
	lsls r0, r0, #0x04
	adds r5, r4, r0
	ldr r1, _080F9090 @ =0x000009A2
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_80F940C
	movs r0, #0x00
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x14
	ands r0, r1
	cmp r0, #0x00
	bne _080F8FB2
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FAD6C
_080F8FB2:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	adds r4, #0xA8
	movs r2, #0xFC
	lsls r2, r2, #0x03
	adds r7, r4, r2
	cmp r4, r7
	beq _080F8FF2
_080F8FC4:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x36
	ands r0, r1
	cmp r0, #0x00
	bne _080F8FE6
	ldr r1, [r6, #0x24]
	ldr r0, _080F9094 @ =0x00000994
	adds r1, r1, r0
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FAD6C
_080F8FE6:
	adds r4, #0xA8
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	cmp r4, r7
	bne _080F8FC4
_080F8FF2:
	ldr r1, [r6, #0x28]
	ldr r0, [r1, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F9014
	adds r0, r1, #0x0
	bl sub_80E635C
	ldr r1, [r6, #0x28]
	ldr r1, [r1, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r1, r1, r2
	strb r0, [r1, #0x00]
_080F9014:
	ldr r0, [r6, #0x24]
	ldr r1, _080F9098 @ =0x000009A3
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F9088
	movs r7, #0x00
	ldr r0, [r6, #0x20]
	ldr r5, [r0, #0x00]
_080F902A:
	ldr r0, [r6, #0x20]
	lsls r4, r7, #0x18
	lsrs r1, r4, #0x18
	bl sub_80E8EA0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F9076
	ldrb r0, [r5, #0x0E]
	cmp r0, #0x00
	beq _080F906E
	ldr r0, [r6, #0x14]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r5, #0x0C]
	lsls r1, r1, #0x06
	ldr r0, [r0, #0x00]
	adds r1, r0, r1
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	bge _080F9058
	adds r0, #0xFF
_080F9058:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x08]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bge _080F9064
	adds r0, #0xFF
_080F9064:
	asrs r0, r0, #0x08
	adds r1, #0x3D
	ldrb r1, [r1, #0x00]
	subs r0, r0, r1
	strh r0, [r5, #0x0A]
_080F906E:
	ldr r0, [r6, #0x20]
	lsrs r1, r4, #0x18
	bl sub_80E8E78
_080F9076:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r5, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F902A
_080F9088:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F9090: .4byte 0x000009A2
_080F9094: .4byte 0x00000994
_080F9098: .4byte 0x000009A3
