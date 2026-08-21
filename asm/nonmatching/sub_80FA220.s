	.syntax unified
	.text

	thumb_func_start sub_80FA220
sub_80FA220:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	adds r4, r2, #0x0
	ldr r0, [r0, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FA264
	ldr r0, [r4, #0x04]
	lsls r3, r0, #0x04
	str r3, [r4, #0x04]
	ldr r0, [r4, #0x08]
	lsls r2, r0, #0x04
	str r2, [r4, #0x08]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _080FA264
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r4, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x08
	str r0, [r4, #0x08]
_080FA264:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FA286
	mov r0, r12
	ldr r2, [r0, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x06
	adds r0, r1, r0
	ldr r5, [r0, #0x14]
	ldr r7, [r0, #0x18]
	adds r6, r1, #0x0
	b _080FA290
_080FA286:
	movs r7, #0x00
	movs r5, #0x00
	mov r0, r12
	ldr r2, [r0, #0x14]
	lsls r6, r6, #0x06
_080FA290:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	mov r8, r1
	adds r3, r2, r1
	ldr r1, [r3, #0x00]
	adds r2, r6, #0x0
	adds r1, r2, r1
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x08
	adds r0, r0, r5
	str r0, [r1, #0x14]
	ldr r1, [r3, #0x00]
	adds r1, r2, r1
	ldr r0, [r4, #0x08]
	lsls r0, r0, #0x08
	adds r0, r0, r7
	str r0, [r1, #0x18]
	ldr r0, [r3, #0x00]
	adds r2, r2, r0
	ldr r2, [r2, #0x00]
	ldr r1, [r4, #0x04]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _080FA2C2
	adds r0, #0xFF
_080FA2C2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	strh r0, [r2, #0x00]
	mov r1, r12
	ldr r0, [r1, #0x14]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r0, r6, r0
	ldr r1, [r0, #0x00]
	ldr r2, [r4, #0x08]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _080FA2DE
	adds r0, #0xFF
_080FA2DE:
	asrs r0, r0, #0x08
	adds r0, r2, r0
	strh r0, [r1, #0x02]
	movs r0, #0x00
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
