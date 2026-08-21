	.syntax unified
	.text

	thumb_func_start sub_807F680
sub_807F680:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r3, #0x10
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	ble _0807F6A8
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F6C8
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0807F6C8
_0807F6A8:
	ldr r1, [r2, #0x40]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0807F6C8
	movs r0, #0xC0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0807F6C8
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x04]
_0807F6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
