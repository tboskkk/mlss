	.syntax unified
	.text

	thumb_func_start sub_8079AD8
sub_8079AD8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x03
	ands r2, r0
	str r2, [r1, #0x00]
	cmp r2, #0x01
	beq _08079B06
	cmp r2, #0x01
	bgt _08079AFA
	cmp r2, #0x00
	beq _08079B00
	b _08079B1A
_08079AFA:
	cmp r2, #0x02
	beq _08079B0C
	b _08079B1A
_08079B00:
	adds r0, r4, #0x0
	movs r1, #0x07
	b _08079B10
_08079B06:
	adds r0, r4, #0x0
	movs r1, #0x08
	b _08079B10
_08079B0C:
	adds r0, r4, #0x0
	movs r1, #0x09
_08079B10:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08079B26
_08079B1A:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08079B26:
	ldr r0, _08079B44 @ =0x08077705
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x42
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079B44: .4byte sub_8077704
