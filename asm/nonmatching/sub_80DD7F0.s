	.syntax unified
	.text

	thumb_func_start sub_80DD7F0
sub_80DD7F0:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DD862
	adds r0, r5, #0x0
	adds r0, #0xAE
	adds r1, r5, #0x0
	adds r1, #0xB0
	adds r2, r5, #0x0
	adds r2, #0xB2
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080DD86C @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0xFD
	str r3, [sp, #0x010]
	str r4, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	subs r4, #0x01
	movs r0, #0x69
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DD870 @ =0x00000117
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, _080DD874 @ =0x080DCC01
	str r0, [r5, #0x4C]
_080DD862:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DD86C: .4byte 0x000004CC
_080DD870: .4byte 0x00000117
_080DD874: .4byte sub_80DCC00
