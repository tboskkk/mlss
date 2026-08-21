	.syntax unified
	.text

	thumb_func_start sub_80E7118
sub_80E7118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r10, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	cmp r1, #0x00
	beq _080E71C0
	ldr r2, [r0, #0x04]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	movs r0, #0xF8
	lsls r0, r0, #0x05
	ands r0, r1
	lsls r0, r0, #0x03
	movs r1, #0xC0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r1, #0x00
	adds r7, r2, #0x0
	adds r7, #0x34
_080E7152:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r6, r9
	asrs r6, r0
	movs r0, #0x01
	eors r6, r0
	ands r6, r0
	cmp r6, #0x00
	bne _080E71B0
	ldrh r4, [r7, #0x00]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x13
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r3, [r7, #0x02]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x13
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r3, #0x05
	adds r1, r0, r4
	mov r2, r10
	ldr r0, [r2, #0x04]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r0, r2
	lsls r5, r1, #0x01
	ldr r2, [r0, #0x00]
	adds r0, r2, r5
	ldrb r1, [r7, #0x05]
	adds r1, r1, r3
	adds r1, #0x01
	lsls r1, r1, #0x06
	adds r2, r2, r1
	ldrb r1, [r7, #0x04]
	adds r1, r1, r4
	lsls r1, r1, #0x01
	adds r1, #0x04
	adds r2, r2, r1
	subs r2, r2, r0
	ldr r3, [sp, #0x004]
	adds r1, r3, r5
	str r6, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_080E71B0:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	adds r7, #0x4C
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	ble _080E7152
_080E71C0:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
