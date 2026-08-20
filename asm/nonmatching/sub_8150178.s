	.syntax unified
	.text

	thumb_func_start sub_8150178
sub_8150178:
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xD0
	bgt _08150188
	movs r0, #0xA0
	lsls r0, r0, #0x03
	b _081501DE
_08150188:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08150196
	movs r0, #0xE0
	lsls r0, r0, #0x03
	b _081501DE
_08150196:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501A4
	movs r0, #0x90
	lsls r0, r0, #0x04
	b _081501DE
_081501A4:
	movs r0, #0xB0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501B2
	movs r0, #0xB0
	lsls r0, r0, #0x04
	b _081501DE
_081501B2:
	movs r0, #0xC8
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501C0
	movs r0, #0xC0
	lsls r0, r0, #0x04
	b _081501DE
_081501C0:
	movs r0, #0xE0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _081501CE
	movs r0, #0xD0
	lsls r0, r0, #0x04
	b _081501DE
_081501CE:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	ble _081501DA
	movs r0, #0x00
	b _081501DE
_081501DA:
	movs r0, #0xF0
	lsls r0, r0, #0x04
_081501DE:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
