	.syntax unified
	.text

	thumb_func_start sub_80E9BD8
sub_80E9BD8:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x0F
	bgt _080E9BEC
	lsls r0, r2, #0x02
	adds r0, r0, r1
	str r3, [r0, #0x00]
	b _080E9C08
_080E9BEC:
	cmp r2, #0x34
	bgt _080E9BFA
	lsls r0, r2, #0x02
	adds r0, r0, r4
	subs r0, #0x40
	str r3, [r0, #0x00]
	b _080E9C08
_080E9BFA:
	ldr r0, _080E9C10 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	subs r0, #0x35
	lsls r0, r0, #0x02
	adds r1, r1, r0
	str r3, [r1, #0x00]
_080E9C08:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9C10: .4byte 0x03000FC0
