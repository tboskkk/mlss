	.syntax unified
	.text

	thumb_func_start sub_8083EEC
sub_8083EEC:
	push {lr}
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1D]
	cmp r1, #0x01
	beq _08083F0C
	cmp r1, #0x01
	bgt _08083F02
	cmp r1, #0x00
	beq _08083F08
	b _08083F18
_08083F02:
	cmp r1, #0x02
	beq _08083F10
	b _08083F18
_08083F08:
	lsrs r0, r0, #0x06
	b _08083F1C
_08083F0C:
	asrs r0, r0, #0x04
	b _08083F12
_08083F10:
	asrs r0, r0, #0x02
_08083F12:
	movs r1, #0x03
	ands r0, r1
	b _08083F1C
_08083F18:
	movs r0, #0x01
	negs r0, r0
_08083F1C:
	pop {r1}
	bx r1
