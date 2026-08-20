	.syntax unified
	.text

	thumb_func_start sub_8150244
sub_8150244:
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _08150254
	movs r0, #0x80
	lsls r0, r0, #0x01
	b _0815026A
_08150254:
	cmp r0, #0x01
	bne _0815025E
	movs r0, #0xC0
	lsls r0, r0, #0x01
	b _0815026A
_0815025E:
	cmp r0, #0x01
	bgt _08150266
	movs r0, #0x10
	b _0815026A
_08150266:
	movs r0, #0xB0
	lsls r0, r0, #0x01
_0815026A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
