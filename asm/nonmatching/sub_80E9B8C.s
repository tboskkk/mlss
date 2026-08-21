	.syntax unified
	.text

	thumb_func_start sub_80E9B8C
sub_80E9B8C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080E9BC0 @ =0x00001D17
	cmp r1, r0
	bhi _080E9BD0
	ldr r0, _080E9BC4 @ =0xFFFFE328
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _080E9BC8 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	lsrs r1, r1, #0x0F
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r1, r0, r1
	ldrh r2, [r1, #0x00]
	ldr r0, _080E9BCC @ =0x0000FFFE
	cmp r2, r0
	bhi _080E9BBA
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080E9BBA:
	strh r2, [r1, #0x00]
	adds r0, r2, #0x0
	b _080E9BD2
_080E9BC0: .4byte 0x00001D17
_080E9BC4: .4byte 0xFFFFE328
_080E9BC8: .4byte 0x03000FC0
_080E9BCC: .4byte 0x0000FFFE
_080E9BD0:
	movs r0, #0x00
_080E9BD2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
