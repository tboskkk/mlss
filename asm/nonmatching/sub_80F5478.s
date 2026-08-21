	.syntax unified
	.text

	thumb_func_start sub_80F5478
sub_80F5478:
	push {r4, lr}
	ldr r0, _080F5498 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080F54C4
	cmp r0, #0x01
	bgt _080F549C
	cmp r0, #0x00
	beq _080F54A2
	b _080F5500
_080F5498: .4byte 0x03000FD8
_080F549C:
	cmp r0, #0x02
	beq _080F54E8
	b _080F5500
_080F54A2:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	ldr r0, _080F54BC @ =0x0000FFF3
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r2, _080F54C0 @ =0x7FFFFFFF
	adds r0, r4, #0x0
	bl sub_810857C
	b _080F5500
_080F54BC: .4byte 0x0000FFF3
_080F54C0: .4byte 0x7FFFFFFF
_080F54C4:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	ldr r0, _080F54E0 @ =0x0000FFCF
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r2, _080F54E4 @ =0x7FFFFFFF
	adds r0, r4, #0x0
	bl sub_81086B4
	b _080F5500
	.byte 0x00, 0x00
_080F54E0: .4byte 0x0000FFCF
_080F54E4: .4byte 0x7FFFFFFF
_080F54E8:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrh r1, [r3, #0x00]
	ldr r0, _080F5508 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r2, _080F550C @ =0x7FFFFFFF
	adds r0, r4, #0x0
	bl sub_81087F0
_080F5500:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F5508: .4byte 0x0000FF3F
_080F550C: .4byte 0x7FFFFFFF
