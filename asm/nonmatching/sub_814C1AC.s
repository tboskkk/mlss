	.syntax unified
	.text

	thumb_func_start sub_814C1AC
sub_814C1AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0xD8
	lsls r0, r0, #0x01
	adds r6, r5, r0
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814C254
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	ldr r3, [r6, #0x00]
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
	beq _0814C254
	ldr r0, _0814C250 @ =0x0814C5C5
	b _0814C282
	.byte 0x00, 0x00
_0814C250: .4byte sub_814C5C4
_0814C254:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C286
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0814C280
	ldr r0, _0814C27C @ =0x0814C299
	b _0814C282
	.byte 0x00, 0x00
_0814C27C: .4byte sub_814C298
_0814C280:
	ldr r0, _0814C294 @ =0x0814C0CD
_0814C282:
	mov r1, r8
	str r0, [r1, #0x00]
_0814C286:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C294: .4byte sub_814C0CC
