	.syntax unified
	.text

	thumb_func_start sub_8104980
sub_8104980:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	bl sub_810489C
	strh r0, [r4, #0x10]
	ldr r0, _081049B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r0, _081049BC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081049C4
	strh r2, [r4, #0x14]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, _081049C0 @ =0x08106A89
	str r0, [r4, #0x04]
	b _081049F2
_081049B8: .4byte 0x03000FD8
_081049BC: .4byte 0x0300034C
_081049C0: .4byte sub_8106A88
_081049C4:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081049F2
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x0B
	bl sub_8082E1C
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	subs r1, #0xF1
	movs r0, #0x61
	bl play_sfx_80195B4
	ldr r0, _081049F8 @ =0x08106AC9
	str r0, [r4, #0x04]
	ldr r0, _081049FC @ =0x00000123
	bl stop_sfx_80195A8
_081049F2:
	pop {r4, r5}
	pop {r0}
	bx r0
_081049F8: .4byte sub_8106AC8
_081049FC: .4byte 0x00000123
