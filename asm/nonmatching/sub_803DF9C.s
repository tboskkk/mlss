	.syntax unified
	.text

	thumb_func_start sub_803DF9C
sub_803DF9C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r2, #0x0F
	strh r2, [r6, #0x04]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0803DFC0
	movs r1, #0xE2
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	strh r2, [r0, #0x04]
_0803DFC0:
	adds r0, r5, #0x0
	adds r0, #0xA8
	adds r4, r6, #0x0
	adds r4, #0x54
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	bl sub_804FAF8
	movs r5, #0x01
	negs r5, r5
	ldrb r0, [r4, #0x00]
	ldr r1, _0803E068 @ =0x00001002
	cmp r0, #0x00
	bne _0803E022
	subs r1, #0x01
_0803E022:
	adds r0, r6, #0x0
	bl sub_8049000
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
	ldr r1, _0803E06C @ =0x0000023B
	adds r0, r6, r1
	strb r2, [r0, #0x00]
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
	movs r0, #0x49
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803E068: .4byte 0x00001002
_0803E06C: .4byte 0x0000023B
