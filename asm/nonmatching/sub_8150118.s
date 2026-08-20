	.syntax unified
	.text

	thumb_func_start sub_8150118
sub_8150118:
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0xD0
	bgt _08150128
	movs r0, #0x80
	lsls r0, r0, #0x03
	b _08150172
_08150128:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _08150138
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815013E
_08150138:
	movs r0, #0xC0
	lsls r0, r0, #0x03
	b _08150172
_0815013E:
	movs r0, #0xB0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _0815014C
	movs r0, #0xE0
	lsls r0, r0, #0x03
	b _08150172
_0815014C:
	movs r0, #0xC8
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0815015C
	movs r0, #0xE0
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08150162
_0815015C:
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _08150172
_08150162:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	ble _0815016E
	movs r0, #0x00
	b _08150172
_0815016E:
	movs r0, #0xA0
	lsls r0, r0, #0x04
_08150172:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
