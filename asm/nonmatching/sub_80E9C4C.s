	.syntax unified
	.text

	thumb_func_start sub_80E9C4C
sub_80E9C4C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x010]
	ldr r3, [sp, #0x014]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x3C
	bgt _080E9C68
	adds r0, r4, #0x0
	bl sub_80E9BD8
	b _080E9C9C
_080E9C68:
	adds r0, r2, #0x0
	subs r0, #0x3D
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r0, _080E9C88 @ =0x00001B8F
	cmp r1, r0
	bgt _080E9C8C
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_80E9958
	b _080E9C9C
	.byte 0x00, 0x00
_080E9C88: .4byte 0x00001B8F
_080E9C8C:
	ldr r0, _080E9CA4 @ =0x00001D17
	cmp r1, r0
	bgt _080E9C9C
	lsrs r0, r2, #0x10
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	bl sub_80E9A6C
_080E9C9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9CA4: .4byte 0x00001D17
