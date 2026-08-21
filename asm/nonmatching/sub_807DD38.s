	.syntax unified
	.text

	thumb_func_start sub_807DD38
sub_807DD38:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	movs r0, #0x00
	str r0, [r4, #0x4C]
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _0807DD78
	ldr r2, _0807DD74 @ =0x00002028
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _0807DD8C
	.byte 0x00, 0x00
_0807DD74: .4byte 0x00002028
_0807DD78:
	ldr r2, _0807DDDC @ =0x00002057
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_0807DD8C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807DDA0
	adds r0, #0xFF
_0807DDA0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x16
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807DDAE
	adds r2, #0xFF
_0807DDAE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807DDB8
	adds r3, #0xFF
_0807DDB8:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x80
	bl sub_80880C4
	ldr r0, _0807DDE0 @ =0x0807F5B9
	str r0, [r6, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DDDC: .4byte 0x00002057
_0807DDE0: .4byte sub_807F5B8
