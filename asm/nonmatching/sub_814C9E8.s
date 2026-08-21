	.syntax unified
	.text

	thumb_func_start sub_814C9E8
sub_814C9E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r1, #0x0
	mov r8, r2
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	ldr r2, _0814CA54 @ =0x083A05EC
	ldr r1, _0814CA58 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r4, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x30]
	ldr r0, _0814CA5C @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	cmp r4, #0x01
	beq _0814CA78
	cmp r4, #0x01
	bgt _0814CA60
	cmp r4, #0x00
	beq _0814CA6A
	b _0814CB78
	.byte 0x00, 0x00
_0814CA54: .4byte 0x083A05EC
_0814CA58: .4byte 0x00000216
_0814CA5C: .4byte 0x0000020D
_0814CA60:
	cmp r4, #0x02
	beq _0814CA90
	cmp r4, #0x03
	beq _0814CAA8
	b _0814CB78
_0814CA6A:
	ldr r1, _0814CA74 @ =0x00000242
	adds r0, r6, r1
	strh r4, [r0, #0x00]
	negs r1, r3
	b _0814CA80
_0814CA74: .4byte 0x00000242
_0814CA78:
	ldr r1, _0814CA8C @ =0x00000242
	adds r0, r6, r1
	movs r1, #0x00
	strh r3, [r0, #0x00]
_0814CA80:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814CABA
	.byte 0x00, 0x00
_0814CA8C: .4byte 0x00000242
_0814CA90:
	ldr r1, _0814CAA4 @ =0x00000242
	adds r0, r6, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r3, [r0, #0x00]
	b _0814CABA
	.byte 0x00, 0x00
_0814CAA4: .4byte 0x00000242
_0814CAA8:
	negs r1, r3
	ldr r2, _0814CADC @ =0x00000242
	adds r0, r6, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r6, r1
	strh r2, [r0, #0x00]
_0814CABA:
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	cmp r4, #0x01
	beq _0814CAF4
	cmp r4, #0x01
	bgt _0814CAE0
	cmp r4, #0x00
	beq _0814CAEA
	b _0814CB06
_0814CADC: .4byte 0x00000242
_0814CAE0:
	cmp r4, #0x02
	beq _0814CAFA
	cmp r4, #0x03
	beq _0814CB02
	b _0814CB06
_0814CAEA:
	ldr r0, _0814CAF0 @ =0xFFFFFF00
	adds r2, r2, r0
	b _0814CB06
_0814CAF0: .4byte 0xFFFFFF00
_0814CAF4:
	movs r0, #0xA8
	lsls r0, r0, #0x05
	b _0814CB04
_0814CAFA:
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r2, r2, r0
	b _0814CB06
_0814CB02:
	ldr r0, _0814CB84 @ =0xFFFFEB00
_0814CB04:
	adds r1, r1, r0
_0814CB06:
	ldr r3, [r7, #0x14]
	movs r0, #0xC0
	lsls r0, r0, #0x03
	adds r3, r3, r0
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r1, #0x80
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	ldr r2, _0814CB88 @ =0x00000272
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_801E150
	adds r4, r7, r4
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0814CB8C @ =0x0814CB91
	mov r1, r8
	str r0, [r1, #0x00]
_0814CB78:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814CB84: .4byte 0xFFFFEB00
_0814CB88: .4byte 0x00000272
_0814CB8C: .4byte sub_814CB90
