	.syntax unified
	.text

	thumb_func_start sub_806C314
sub_806C314:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C3A0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806C3A0
	movs r0, #0x7C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806C374
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C35E
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C36A
_0806C35E:
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C36A:
	ldr r0, _0806C370 @ =0x0806C94D
	b _0806C39E
	.byte 0x00, 0x00
_0806C370: .4byte sub_806C94C
_0806C374:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C38C
	adds r0, r4, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C398
_0806C38C:
	adds r0, r4, #0x0
	movs r1, #0x1F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C398:
	movs r0, #0x03
	strh r0, [r5, #0x00]
	ldr r0, _0806C3A8 @ =0x0806C3AD
_0806C39E:
	str r0, [r4, #0x4C]
_0806C3A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C3A8: .4byte sub_806C3AC
