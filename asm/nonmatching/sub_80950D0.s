	.syntax unified
	.text

	thumb_func_start sub_80950D0
sub_80950D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x00
	movs r7, #0x00
_080950E2:
	ldr r0, _080951A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08095128
	cmp r4, r5
	beq _08095128
	adds r0, r5, #0x0
	adds r0, #0x47
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08095128
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _08095128
	mov r8, r4
_08095128:
	adds r1, r7, #0x1
	ldr r0, _080951A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08095170
	cmp r4, r5
	beq _08095170
	adds r0, r5, #0x0
	adds r0, #0x47
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08095170
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _08095170
	mov r8, r4
_08095170:
	adds r7, #0x02
	cmp r7, #0x05
	ble _080950E2
	mov r0, r8
	str r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _080951A8
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _08095186
	adds r1, #0xFF
_08095186:
	asrs r1, r1, #0x08
	mov r0, r8
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _08095192
	adds r2, #0xFF
_08095192:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	b _080951CE
_080951A4: .4byte 0x03000FD8
_080951A8:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080951B0
	adds r0, #0xFF
_080951B0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x64
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080951BE
	adds r2, #0xFF
_080951BE:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
_080951CE:
	movs r0, #0x1C
	ldsh r1, [r5, r0]
	adds r0, r5, #0x0
	bl sub_80880C4
	ldrh r0, [r5, #0x1C]
	adds r0, #0x4C
	strh r0, [r5, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xE0
	lsls r1, r1, #0x02
	cmp r0, r1
	ble _080951EC
	strh r1, [r5, #0x1C]
_080951EC:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x0A
	strh r0, [r5, #0x20]
	ldr r0, _08095218 @ =0x0809521D
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08095218: .4byte sub_809521C
