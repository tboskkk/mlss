	.syntax unified
	.text

	thumb_func_start sub_80E9C14
sub_80E9C14:
	push {lr}
	adds r3, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x0F
	bgt _080E9C26
	lsls r0, r2, #0x02
	adds r0, r0, r1
	b _080E9C46
_080E9C26:
	cmp r2, #0x34
	ble _080E9C40
	ldr r0, _080E9C3C @ =0x03000FC0
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	subs r0, #0x35
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	b _080E9C48
	.byte 0x00, 0x00
_080E9C3C: .4byte 0x03000FC0
_080E9C40:
	lsls r0, r2, #0x02
	adds r0, r0, r3
	subs r0, #0x40
_080E9C46:
	ldr r0, [r0, #0x00]
_080E9C48:
	pop {r1}
	bx r1
