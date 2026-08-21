	.syntax unified
	.text

	thumb_func_start sub_807C0D0
sub_807C0D0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #0x00
	bne _0807C0E2
	adds r0, r5, #0x0
_0807C0E2:
	ldr r6, [r5, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _0807C0EC
	adds r2, #0xFF
_0807C0EC:
	asrs r2, r2, #0x08
	ldr r3, [r0, #0x3C]
	cmp r3, #0x00
	bge _0807C0F6
	adds r3, #0xFF
_0807C0F6:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _0807C100
	adds r0, #0xFF
_0807C100:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r3, #0x30]
	str r3, [r5, #0x30]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x76
	adds r1, r1, r3
	mov r12, r1
	movs r1, #0x06
	ands r1, r0
	mov r0, r12
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	mov r0, r12
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	movs r0, #0x00
	str r0, [r3, #0x4C]
	str r0, [r3, #0x68]
	adds r0, r5, #0x0
	adds r0, #0x7C
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x9C
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
