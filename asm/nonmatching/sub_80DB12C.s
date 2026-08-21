	.syntax unified
	.text

	thumb_func_start sub_80DB12C
sub_80DB12C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DB16C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DB174 @ =0x080DB1C5
	str r0, [r4, #0x58]
	ldr r0, _080DB178 @ =0x080DB1A5
	str r0, [r4, #0x5C]
	ldr r0, _080DB17C @ =0x080DB185
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080DB180 @ =0x080DAD01
	str r0, [r4, #0x4C]
_080DB16C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB174: .4byte sub_80DB1C4
_080DB178: .4byte sub_80DB1A4
_080DB17C: .4byte sub_80DB184
_080DB180: .4byte sub_80DAD00
