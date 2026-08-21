	.syntax unified
	.text

	thumb_func_start sub_806819C
sub_806819C:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _080681E0 @ =0xFFFFFECD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	ldr r4, [r2, #0x18]
	ldr r5, _080681E4 @ =0xFFFFFE00
	adds r3, r4, r5
	str r3, [r2, #0x18]
	cmp r0, #0x00
	bge _080681B8
	adds r0, r1, #0x0
	subs r0, #0x34
_080681B8:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _080681D2
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080681CC
	ldr r1, _080681E8 @ =0xFFFFFEFF
	adds r0, r4, r1
_080681CC:
	asrs r0, r0, #0x08
	cmp r0, #0x00
	bgt _080681D8
_080681D2:
	adds r0, r2, #0x0
	bl sub_807C298
_080681D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080681E0: .4byte 0xFFFFFECD
_080681E4: .4byte 0xFFFFFE00
_080681E8: .4byte 0xFFFFFEFF
