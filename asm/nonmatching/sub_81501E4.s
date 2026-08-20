	.syntax unified
	.text

	thumb_func_start sub_81501E4
sub_81501E4:
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xD0
	bgt _081501F4
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _0815023E
_081501F4:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _08150204
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815020A
_08150204:
	movs r0, #0xA0
	lsls r0, r0, #0x04
	b _0815023E
_0815020A:
	movs r0, #0xB0
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0815021A
	movs r0, #0xC8
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08150220
_0815021A:
	movs r0, #0xC0
	lsls r0, r0, #0x04
	b _0815023E
_08150220:
	movs r0, #0xE0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815022E
	movs r0, #0x90
	lsls r0, r0, #0x05
	b _0815023E
_0815022E:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	ble _0815023A
	movs r0, #0x00
	b _0815023E
_0815023A:
	movs r0, #0xA0
	lsls r0, r0, #0x05
_0815023E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
