	.syntax unified
	.text

	thumb_func_start sub_80E8F38
sub_80E8F38:
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r2, #0x0
	cmp r2, #0x01
	beq _080E8F70
	cmp r2, #0x01
	bgt _080E8F52
	cmp r2, #0x00
	beq _080E8F58
	b _080E8FAC
_080E8F52:
	cmp r0, #0x02
	beq _080E8F8C
	b _080E8FAC
_080E8F58:
	cmp r5, #0x00
	beq _080E8FAC
	ldr r0, _080E8F6C @ =0x083B9512
	lsls r1, r5, #0x01
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	bl stop_sfx_80195A8
	b _080E8FAC
	.byte 0x00, 0x00
_080E8F6C: .4byte dword_83B9512 @ =0x083B9512
_080E8F70:
	cmp r5, #0x00
	beq _080E8FAC
	ldr r1, _080E8F88 @ =0x083B9512
	lsls r0, r5, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080E8FAC
	.byte 0x00, 0x00
_080E8F88: .4byte dword_83B9512 @ =0x083B9512
_080E8F8C:
	cmp r5, #0x00
	beq _080E8FAC
	ldr r4, _080E8FB4 @ =0x083B9512
	lsls r0, r5, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	bl stop_sfx_80195A8
	adds r0, r5, #0x7
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080E8FAC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E8FB4: .4byte dword_83B9512 @ =0x083B9512
