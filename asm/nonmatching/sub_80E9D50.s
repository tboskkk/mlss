	.syntax unified
	.text

	thumb_func_start sub_80E9D50
sub_80E9D50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r1
	adds r5, r3, #0x0
	ldr r6, [r5, #0x04]
	ldr r1, [r5, #0x0C]
	lsls r7, r1, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r7, r0
	movs r0, #0x03
	ands r1, r0
	orrs r7, r1
	ldr r1, _080E9DB0 @ =0x083BA4B4
	ldr r2, [r5, #0x08]
	ldrb r0, [r5, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	asrs r4, r2, #0x08
	movs r0, #0xFF
	mov r8, r0
	mov r2, r8
	ands r4, r2
	cmp r4, #0x00
	bne _080E9D9E
	ldr r1, [r5, #0x14]
	mov r0, r10
	bl sub_80E9310
	lsrs r4, r0, #0x10
	mov r0, r8
	ands r4, r0
_080E9D9E:
	adds r0, r4, #0x2
	lsls r0, r0, #0x02
	movs r1, #0x70
	subs r2, r1, r0
	cmp r2, #0x00
	bge _080E9DB4
	movs r2, #0x0A
	b _080E9DC0
	.byte 0x00, 0x00
_080E9DB0: .4byte word_83BA4B4 @ =0x083BA4B4
_080E9DB4:
	lsls r1, r4, #0x03
	movs r0, #0xE8
	subs r0, r0, r1
	cmp r2, r0
	ble _080E9DC0
	adds r2, r0, #0x0
_080E9DC0:
	cmp r6, #0x00
	bge _080E9DC8
	movs r6, #0x0A
	b _080E9DD6
_080E9DC8:
	mov r0, r9
	lsls r1, r0, #0x03
	movs r0, #0x94
	subs r0, r0, r1
	cmp r6, r0
	ble _080E9DD6
	adds r6, r0, #0x0
_080E9DD6:
	ldrb r1, [r5, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r6, #0x10
	asrs r3, r3, #0x10
	str r4, [sp, #0x000]
	mov r4, r9
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r7, [sp, #0x00C]
	ldrb r0, [r5, #0x10]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x014]
	mov r0, r10
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
