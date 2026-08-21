	.syntax unified
	.text

	thumb_func_start sub_80D9DD4
sub_80D9DD4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9E20
	adds r6, r4, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9E20
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080D9E28 @ =0x0000138A
	adds r0, r4, #0x0
	bl sub_8086858
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080D9E2C @ =0x080D9E35
	str r0, [r4, #0x5C]
	str r5, [r4, #0x54]
	strh r5, [r6, #0x00]
	ldr r0, _080D9E30 @ =0x080D9E9D
	str r0, [r4, #0x4C]
_080D9E20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9E28: .4byte 0x0000138A
_080D9E2C: .4byte sub_80D9E34
_080D9E30: .4byte sub_80D9E9C
