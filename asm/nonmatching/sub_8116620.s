	.syntax unified
	.text

	thumb_func_start sub_8116620
sub_8116620:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x44
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08116630
	movs r0, #0x04
	b _0811664E
_08116630:
	ldrh r0, [r1, #0x34]
	cmp r0, #0x00
	bne _0811663A
	movs r0, #0x00
	b _0811664E
_0811663A:
	adds r0, r1, #0x0
	adds r0, #0x32
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811664C
	movs r0, #0x01
	b _0811664E
_0811664C:
	movs r0, #0x02
_0811664E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
