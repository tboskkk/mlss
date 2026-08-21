	.syntax unified
	.text

	thumb_func_start sub_80DD878
sub_80DD878:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080DD8BA
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DD8C0 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _080DD8C4 @ =0x080DC855
	str r0, [r4, #0x4C]
_080DD8BA:
	pop {r4}
	pop {r0}
	bx r0
_080DD8C0: .4byte 0x00000117
_080DD8C4: .4byte sub_80DC854
