	.syntax unified
	.text

	thumb_func_start sub_8143BE8
sub_8143BE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	adds r0, r6, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143C34
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08143C2C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08143C30 @ =0x0814396D
	str r0, [r5, #0x0C]
	b _08143CF8
	.byte 0x00, 0x00
_08143C2C: .4byte sub_813B1E8
_08143C30: .4byte sub_814396C
_08143C34:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08143C64
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08143C60 @ =0x08143D0D
	str r0, [r5, #0x00]
	b _08143CF8
_08143C60: .4byte sub_8143D0C
_08143C64:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	mov r6, sp
	ldr r2, _08143CA8 @ =0x03001038
	ldr r0, _08143CAC @ =0x0819832C
	ldr r1, _08143CB0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08143CB4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08143CB8
_08143CA8: .4byte 0x03001038
_08143CAC: .4byte 0x0819832C
_08143CB0: .4byte 0x08198220
_08143CB4:
	movs r1, #0x01
	negs r1, r1
_08143CB8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r5
	strb r0, [r6, #0x00]
	ldr r2, _08143D00 @ =0x03001038
	ldr r0, _08143D04 @ =0x0819832C
	ldr r1, _08143D08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	mov r1, sp
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08143CF8
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8047154
_08143CF8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08143D00: .4byte 0x03001038
_08143D04: .4byte 0x0819832C
_08143D08: .4byte 0x08198220
