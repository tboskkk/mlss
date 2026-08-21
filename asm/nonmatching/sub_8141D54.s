	.syntax unified
	.text

	thumb_func_start sub_8141D54
sub_8141D54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r3, r4, r2
	strh r0, [r3, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08141DEC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r5
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x2C]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	adds r0, r0, r5
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0x36
	ldrb r6, [r0, #0x00]
	adds r0, #0x01
	ldrb r5, [r0, #0x00]
	movs r2, #0x04
	b _08141E42
_08141DEC:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x30]
	mov r8, r0
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r6, [r0, #0x00]
	ldr r1, _08141E58 @ =0x00000141
	adds r0, r4, r1
	ldrb r5, [r0, #0x00]
	movs r2, #0x00
_08141E42:
	mov r10, r2
	adds r0, r7, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141E5C
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08141E68
_08141E58: .4byte 0x00000141
_08141E5C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08141E68:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	mov r0, r9
	str r0, [sp, #0x000]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	mov r3, r8
	bl sub_813AA5C
	ldr r2, _08141ED4 @ =0x03001038
	ldr r0, _08141ED8 @ =0x0819832C
	ldr r1, _08141EDC @ =0x08198220
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
	adds r1, r0, #0x0
	mov r2, r10
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _08141EE0 @ =0x08141EE5
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141ED4: .4byte 0x03001038
_08141ED8: .4byte 0x0819832C
_08141EDC: .4byte 0x08198220
_08141EE0: .4byte sub_8141EE4
