	.syntax unified
	.text

	thumb_func_start sub_80E9A6C
sub_80E9A6C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r1, #0x0
	ldr r0, _080E9A90 @ =0x00001CB7
	cmp r2, r0
	bhi _080E9AA0
	ldr r3, _080E9A94 @ =0xFFFFE470
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080E9A98 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	ldr r3, _080E9A9C @ =0x00000414
	b _080E9AB4
	.byte 0x00, 0x00
_080E9A90: .4byte 0x00001CB7
_080E9A94: .4byte 0xFFFFE470
_080E9A98: .4byte 0x03000FC0
_080E9A9C: .4byte 0x00000414
_080E9AA0:
	ldr r0, _080E9ABC @ =0x00001CD7
	cmp r2, r0
	bhi _080E9ACC
	ldr r3, _080E9AC0 @ =0xFFFFE348
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080E9AC4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	ldr r3, _080E9AC8 @ =0x0000053C
_080E9AB4:
	adds r0, r0, r3
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	b _080E9AE8
_080E9ABC: .4byte 0x00001CD7
_080E9AC0: .4byte 0xFFFFE348
_080E9AC4: .4byte 0x03000FC0
_080E9AC8: .4byte 0x0000053C
_080E9ACC:
	ldr r0, _080E9AEC @ =0x00001D17
	cmp r2, r0
	bhi _080E9AE8
	ldr r1, _080E9AF0 @ =0xFFFFE328
	adds r0, r2, r1
	lsls r0, r0, #0x10
	ldr r1, _080E9AF4 @ =0x03000FC0
	ldr r1, [r1, #0x00]
	lsrs r0, r0, #0x0F
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	strh r3, [r1, #0x00]
_080E9AE8:
	pop {r0}
	bx r0
_080E9AEC: .4byte 0x00001D17
_080E9AF0: .4byte 0xFFFFE328
_080E9AF4: .4byte 0x03000FC0
