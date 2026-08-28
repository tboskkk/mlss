	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0809EBC6
	ldr r2, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r0, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x0F
	subs r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _0809EBCC @ =0x0809EBDD
	str r0, [r4, #0x50]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
_0809EBC6:
	pop {r4}
	pop {r0}
	bx r0
_0809EBCC: .4byte sub_809EBDC
