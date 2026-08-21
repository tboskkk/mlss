	.syntax unified
	.text

	thumb_func_start sub_814C47C
sub_814C47C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	mov r8, r0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C538
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	add r1, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x04]
	adds r0, r3, #0x0
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x08]
	adds r0, r3, #0x0
	adds r0, #0x2B
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x02]
	adds r0, r3, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x06]
	adds r0, r3, #0x0
	adds r0, #0x2D
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r1, #0x0A]
	adds r0, r1, #0x0
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C538
	ldr r0, _0814C530 @ =0x0000020D
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814C534 @ =0x0814C5C5
	b _0814C5B2
	.byte 0x00, 0x00
_0814C530: .4byte 0x0000020D
_0814C534: .4byte sub_814C5C4
_0814C538:
	adds r3, r5, #0x0
	adds r3, #0x4D
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x0A
	ands r0, r1
	cmp r0, #0x00
	beq _0814C558
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814C558:
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	movs r1, #0x05
	ands r0, r1
	cmp r0, #0x00
	beq _0814C574
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814C574:
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	bne _0814C5B0
	adds r0, r5, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C5B4
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0814C5B0
	ldr r0, _0814C5AC @ =0x0814C299
	b _0814C5B2
	.byte 0x00, 0x00
_0814C5AC: .4byte sub_814C298
_0814C5B0:
	ldr r0, _0814C5C0 @ =0x0814C0CD
_0814C5B2:
	str r0, [r7, #0x00]
_0814C5B4:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814C5C0: .4byte sub_814C0CC
