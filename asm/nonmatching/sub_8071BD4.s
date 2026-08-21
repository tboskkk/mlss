	.syntax unified
	.text

	thumb_func_start sub_8071BD4
sub_8071BD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x30]
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x18]
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	ble _08071C10
	b _08071E70
_08071C10:
	movs r0, #0x00
	str r0, [r5, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r2, _08071E80 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08071C46
	adds r1, #0xFF
_08071C46:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _08071C50
	adds r2, #0xFF
_08071C50:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08071C5A
	adds r3, #0xFF
_08071C5A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08071E84 @ =0x00002204
	bl sub_80DF024
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08071C6C
	adds r1, #0xFF
_08071C6C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _08071C76
	adds r2, #0xFF
_08071C76:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08071C80
	adds r3, #0xFF
_08071C80:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08071E88 @ =0x0000220C
	bl sub_80DF024
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071C9C
	adds r2, #0xFF
_08071C9C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071CA6
	adds r3, #0xFF
_08071CA6:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071CB0
	adds r0, #0xFF
_08071CB0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r4, [r0, #0x30]
	movs r1, #0x74
	adds r1, r1, r5
	mov r9, r1
	ldrb r1, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r7, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r2, #0x7F
	strb r2, [r0, #0x00]
	adds r0, #0x27
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08071E90 @ =0x08087541
	str r2, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071E94 @ =0x080722E1
	str r0, [r4, #0x58]
	str r7, [r4, #0x5C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	ldr r2, _08071E98 @ =0x08072351
	mov r10, r2
	str r2, [r4, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071D38
	adds r2, #0xFF
_08071D38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071D42
	adds r3, #0xFF
_08071D42:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071D4C
	adds r0, #0xFF
_08071D4C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r4, #0x30]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x0C
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	mov r2, r10
	str r2, [r6, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071D8E
	adds r2, #0xFF
_08071D8E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071D98
	adds r3, #0xFF
_08071D98:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071DA2
	adds r0, #0xFF
_08071DA2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	str r7, [r0, #0x00]
	adds r0, #0x04
	movs r2, #0x33
	mov r10, r2
	str r2, [r0, #0x00]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r6, _08071E9C @ =0x0807223D
	str r6, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08071E90 @ =0x08087541
	str r2, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071EA0 @ =0x08072295
	str r0, [r4, #0x58]
	str r7, [r4, #0x5C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071E1E
	adds r2, #0xFF
_08071E1E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071E28
	adds r3, #0xFF
_08071E28:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071E32
	adds r0, #0xFF
_08071E32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r4, #0x30]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	str r1, [r0, #0x00]
	str r6, [r2, #0x4C]
	ldr r0, [r2, #0x08]
	movs r2, #0x80
	strh r2, [r0, #0x04]
	ldr r0, _08071EA4 @ =0x08071EA9
	str r0, [r5, #0x4C]
_08071E70:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08071E80: .4byte 0x000040B7
_08071E84: .4byte 0x00002204
_08071E88: .4byte 0x0000220C
_08071E8C: .4byte 0x000040BA
_08071E90: .4byte sub_8087540
_08071E94: .4byte sub_80722E0
_08071E98: .4byte sub_8072350
_08071E9C: .4byte sub_807223C
_08071EA0: .4byte sub_8072294
_08071EA4: .4byte sub_8071EA8
