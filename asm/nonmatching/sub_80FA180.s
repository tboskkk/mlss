	.syntax unified
	.text

	thumb_func_start sub_80FA180
sub_80FA180:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	mov r8, r1
	ldr r1, [r2, #0x04]
	asrs r4, r1, #0x01
	movs r0, #0x03
	ands r4, r0
	movs r6, #0x01
	ands r6, r1
	ldr r0, [r5, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080FA1BA
	ldr r0, [r2, #0x08]
	lsls r0, r0, #0x04
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r2, #0x0C]
_080FA1BA:
	cmp r4, #0x01
	bne _080FA1EA
	ldr r1, [r2, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080FA1D0
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080FA1D2
_080FA1D0:
	lsls r0, r1, #0x08
_080FA1D2:
	str r0, [r2, #0x10]
	ldr r3, [r2, #0x10]
	cmp r3, #0x00
	beq _080FA1EA
	ldr r0, [r5, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r7, #0x06
	adds r0, r0, r1
	strh r3, [r0, #0x3A]
_080FA1EA:
	ldr r0, [r5, #0x14]
	ldr r1, [r2, #0x08]
	str r1, [sp, #0x000]
	ldr r1, [r2, #0x0C]
	str r1, [sp, #0x004]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	str r1, [sp, #0x008]
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	adds r3, r6, #0x0
	bl sub_8120C54
	mov r2, r8
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
