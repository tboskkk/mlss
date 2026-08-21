	.syntax unified
	.text

	thumb_func_start sub_80DC9C8
sub_80DC9C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	mov r3, r9
	adds r3, #0xAE
	mov r2, r9
	adds r2, #0xB0
	mov r4, r9
	adds r4, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	mov r3, r9
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	movs r7, #0x00
	ldsh r1, [r2, r7]
	ldr r0, [r3, #0x3C]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	mov r1, r9
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _080DCA20
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _080DCB1C
_080DCA20:
	mov r6, r9
	adds r6, #0xA8
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	ble _080DCB16
	subs r0, #0x01
	str r0, [r6, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x28]
	ldr r1, _080DCB2C @ =0x0000417E
	mov r5, r9
	adds r5, #0x84
	ldr r2, [r5, #0x00]
	movs r7, #0x88
	add r7, r9
	mov r10, r7
	ldr r3, [r7, #0x00]
	movs r4, #0x8C
	add r4, r9
	mov r8, r4
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x000]
	mov r7, r9
	ldr r4, [r7, #0x08]
	ldrb r4, [r4, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x30]
	str r0, [r7, #0x30]
	str r7, [r1, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x77
	add r2, r9
	mov r12, r2
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080DCB30 @ =0x080DD4ED
	str r0, [r7, #0x4C]
	ldr r0, _080DCB34 @ =0x08087541
	str r0, [r7, #0x68]
	mov r3, r9
	ldr r0, [r3, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r3, #0x2C]
	str r0, [r7, #0x2C]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r7, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x28
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r4, r10
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r7, r8
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
_080DCB16:
	ldr r0, _080DCB38 @ =0x080DCB3D
	mov r1, r9
	str r0, [r1, #0x4C]
_080DCB1C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DCB2C: .4byte 0x0000417E
_080DCB30: .4byte sub_80DD4EC
_080DCB34: .4byte sub_8087540
_080DCB38: .4byte sub_80DCB3C
