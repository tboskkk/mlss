	.syntax unified
	.text

	thumb_func_start sub_801AEA0
sub_801AEA0:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _0801AEB8 @ =0x03000D18
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _0801AECA
	cmp r0, #0x01
	bgt _0801AEBC
	cmp r0, #0x00
	beq _0801AEC6
	b _0801AED4
_0801AEB8: .4byte 0x03000D18
_0801AEBC:
	cmp r0, #0x02
	beq _0801AECE
	cmp r0, #0x03
	beq _0801AED2
	b _0801AED4
_0801AEC6:
	adds r2, r1, #0x0
	b _0801AED4
_0801AECA:
	lsls r2, r1, #0x02
	b _0801AED4
_0801AECE:
	lsls r2, r1, #0x04
	b _0801AED4
_0801AED2:
	lsls r2, r1, #0x06
_0801AED4:
	adds r0, r2, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
