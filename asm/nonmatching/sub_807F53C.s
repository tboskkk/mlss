	.syntax unified
	.text

	thumb_func_start sub_807F53C
sub_807F53C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _0807F5B0 @ =0x00002068
	cmp r1, r0
	bne _0807F556
	subs r2, #0x2F
_0807F556:
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807F578
	adds r0, #0xFF
_0807F578:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807F586
	adds r2, #0xFF
_0807F586:
	asrs r2, r2, #0x08
	adds r2, #0x06
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x10
	bl sub_808842C
	ldr r0, _0807F5B4 @ =0x08080065
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807F5B0: .4byte 0x00002068
_0807F5B4: .4byte sub_8080064
