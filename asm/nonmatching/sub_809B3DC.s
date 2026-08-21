	.syntax unified
	.text

	thumb_func_start sub_809B3DC
sub_809B3DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B402
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B40A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809B402:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0809B40A
	str r0, [r4, #0x4C]
_0809B40A:
	pop {r4}
	pop {r0}
	bx r0
