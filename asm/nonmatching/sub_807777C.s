	.syntax unified
	.text

	thumb_func_start sub_807777C
sub_807777C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807779E
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807779E:
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r12, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778A4
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r3, [r0, #0x74]
	adds r6, r3, #0x0
	adds r6, #0x08
	adds r2, #0x7E
	ldrb r4, [r2, #0x00]
	movs r1, #0x7F
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, #0x7E
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	ldr r1, _080778B4 @ =0x03000ED4
	ldr r0, [r5, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, _080778B8 @ =0x03000ED8
	ldr r0, [r6, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, [r6, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, _080778BC @ =0x08079789
	str r1, [r5, #0x4C]
	str r1, [r6, #0x4C]
	ldr r3, _080778C0 @ =0x03000F5C
	mov r0, r12
	strb r0, [r3, #0x00]
	ldr r0, _080778C4 @ =0x03000F5D
	mov r2, r12
	strb r2, [r0, #0x00]
	ldr r2, [r5, #0x30]
	movs r5, #0xAE
	adds r5, r5, r7
	mov r8, r5
	cmp r2, #0x00
	beq _08077842
	movs r0, #0x10
	mov r12, r0
	ldr r5, _080778C8 @ =0x03000EDC
	mov r9, r5
	adds r4, r1, #0x0
_08077820:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	mov r5, r12
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r9
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077820
_08077842:
	ldr r2, [r6, #0x30]
	cmp r2, #0x00
	beq _08077870
	movs r6, #0x10
	ldr r5, _080778CC @ =0x03000F1C
	ldr r3, _080778C4 @ =0x03000F5D
	ldr r4, _080778BC @ =0x08079789
_08077850:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r6
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077850
_08077870:
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_80193B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	movs r1, #0x01
	strb r1, [r0, #0x00]
	movs r0, #0x0A
	mov r5, r8
	strh r0, [r5, #0x00]
	ldr r0, _080778D0 @ =0x080778D5
	str r0, [r7, #0x4C]
_080778A4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080778B0: .4byte 0x03000FD8
_080778B4: .4byte 0x03000ED4
_080778B8: .4byte 0x03000ED8
_080778BC: .4byte 0x08079789
_080778C0: .4byte 0x03000F5C
_080778C4: .4byte 0x03000F5D
_080778C8: .4byte 0x03000EDC
_080778CC: .4byte 0x03000F1C
_080778D0: .4byte sub_80778D4
