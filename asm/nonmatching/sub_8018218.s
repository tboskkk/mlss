	.syntax unified
	.text

	thumb_func_start sub_8018218
sub_8018218:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r12, r0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	adds r7, r3, #0x0
	ldr r2, [sp, #0x024]
	cmp r2, #0x02
	bne _080182CC
	cmp r7, #0x20
	bne _08018288
	ldr r0, _08018260 @ =0x0300034C
	ldr r1, _08018264 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08018274
	ldr r2, _08018268 @ =0x03001034
	ldr r0, _0801826C @ =0x08198154
	ldr r1, _08018270 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	mov r0, r12
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	b _08018390
	.byte 0x00, 0x00
_08018260: .4byte 0x0300034C
_08018264: .4byte 0x00000888
_08018268: .4byte 0x03001034
_0801826C: .4byte 0x08198154
_08018270: .4byte 0x081980D8
_08018274:
	ldr r2, _08018284 @ =0x040000D4
	mov r0, r12
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	lsrs r0, r4, #0x02
	movs r1, #0x84
	lsls r1, r1, #0x18
	b _080182BE
_08018284: .4byte 0x040000D4
_08018288:
	ldr r0, _080182A8 @ =0x0300034C
	ldr r1, _080182AC @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080182B0
	lsls r2, r4, #0x0A
	lsrs r2, r2, #0x0B
	mov r0, r12
	adds r1, r5, #0x0
	bl CpuSet
	b _08018390
	.byte 0x00, 0x00
_080182A8: .4byte 0x0300034C
_080182AC: .4byte 0x00000888
_080182B0:
	ldr r2, _080182C8 @ =0x040000D4
	mov r0, r12
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	lsrs r0, r4, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x18
_080182BE:
	orrs r0, r1
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	b _08018390
	.byte 0x00, 0x00
_080182C8: .4byte 0x040000D4
_080182CC:
	ldr r0, _08018300 @ =0x04000208
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _08018304 @ =0x0300034C
	ldr r3, [r0, #0x04]
	movs r1, #0x80
	adds r6, r0, #0x0
	ldr r0, _08018308 @ =0x0007FFFF
	mov r8, r0
	ands r0, r4
	mov r8, r0
	movs r0, #0x01
	mov r9, r0
	mov r0, r9
	ands r2, r0
	lsls r2, r2, #0x05
	mov r10, r2
	lsrs r2, r4, #0x02
	str r2, [sp, #0x000]
	lsrs r4, r4, #0x01
_080182F4:
	ldr r0, [r3, #0x04]
	cmp r0, #0x00
	beq _0801830C
	cmp r0, r5
	bne _08018378
	b _08018312
_08018300: .4byte 0x04000208
_08018304: .4byte 0x0300034C
_08018308: .4byte 0x0007FFFF
_0801830C:
	ldrb r0, [r6, #0x08]
	adds r0, #0x01
	strb r0, [r6, #0x08]
_08018312:
	mov r0, r12
	str r0, [r3, #0x00]
	str r5, [r3, #0x04]
	ldr r0, [r3, #0x08]
	ldr r1, _08018360 @ =0xFFF80000
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	str r0, [r3, #0x08]
	ldrb r0, [r3, #0x0A]
	movs r2, #0x09
	negs r2, r2
	ands r2, r0
	strb r2, [r3, #0x0A]
	movs r1, #0x00
	cmp r7, #0x20
	bne _08018336
	movs r1, #0x01
_08018336:
	mov r0, r9
	ands r1, r0
	lsls r1, r1, #0x04
	adds r0, r2, #0x0
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	mov r2, r10
	orrs r0, r2
	strb r0, [r3, #0x0A]
	cmp r7, #0x20
	bne _08018364
	movs r0, #0x84
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x000]
	orrs r0, r1
	b _0801836A
_08018360: .4byte 0xFFF80000
_08018364:
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r0, r4
_0801836A:
	str r0, [r3, #0x0C]
	ldr r1, _08018374 @ =0x04000208
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _08018390
_08018374: .4byte 0x04000208
_08018378:
	subs r1, #0x01
	adds r3, #0x10
	cmp r1, #0x00
	bne _080182F4
	ldr r1, _0801838C @ =0x04000208
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x00
	b _08018392
	.byte 0x00, 0x00
_0801838C: .4byte 0x04000208
_08018390:
	movs r0, #0x01
_08018392:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
