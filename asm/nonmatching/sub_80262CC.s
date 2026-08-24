	.syntax unified
	.text

	thumb_func_start sub_80262CC
sub_80262CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	mov r12, r3
	add r0, sp, #0x030
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _080262EE
	b _08026406
_080262EE:
	movs r6, #0x00
	subs r0, #0x01
	mov r9, r0
	movs r3, #0x00
	ldr r1, [r4, #0x1C]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r7, r1, r2
	adds r0, r7, #0x0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x12]
	movs r0, #0x20
	ands r0, r2
	adds r4, r1, #0x0
	mov r1, r12
	subs r1, r5, r1
	mov r12, r1
	cmp r0, #0x00
	beq _08026318
	adds r6, r7, #0x0
	b _0802633C
_08026318:
	adds r3, #0x01
	cmp r3, #0x03
	bgt _0802633C
	lsls r2, r3, #0x03
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08026318
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r2, r1
	adds r6, r4, r0
_0802633C:
	cmp r6, #0x00
	bne _0802638E
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r1, r4, r0
	adds r5, r1, #0x0
	ldr r0, [r1, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802635A
	adds r6, r1, #0x0
	adds r2, r0, #0x0
_0802635A:
	movs r3, #0x99
	lsls r3, r3, #0x02
	ldr r0, [r1, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802636C
	adds r6, r4, r3
	adds r2, r0, #0x0
_0802636C:
	movs r3, #0x9B
	lsls r3, r3, #0x02
	ldr r0, [r5, #0x10]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802637E
	adds r6, r4, r3
	adds r2, r0, #0x0
_0802637E:
	movs r3, #0x9D
	lsls r3, r3, #0x02
	ldr r0, [r5, #0x18]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, r2
	ble _0802638E
	adds r6, r4, r3
_0802638E:
	mov r0, r8
	cmp r0, #0x00
	bge _08026396
	adds r0, #0xFF
_08026396:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x024]
	mov r1, r12
	subs r2, r1, r0
	cmp r2, #0x00
	bge _080263A6
	adds r2, #0xFF
_080263A6:
	asrs r5, r2, #0x08
	ldr r0, [r6, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r1, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x00]
	bl sub_8021ED8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	subs r0, r0, r5
	strh r0, [r1, #0x0E]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	mov r0, r8
	strh r0, [r6, #0x04]
	strh r5, [r6, #0x06]
	mov r1, r10
	cmp r1, #0x00
	beq _08026406
	ldr r0, _08026418 @ =0x0839F5B8
	ldr r2, [sp, #0x028]
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08026406:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08026418: .4byte 0x0839F5B8
