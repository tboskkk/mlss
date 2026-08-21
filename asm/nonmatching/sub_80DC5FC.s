	.syntax unified
	.text

	thumb_func_start sub_80DC5FC
sub_80DC5FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC62E
	adds r0, r4, #0x0
	movs r1, #0x03
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
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DC634 @ =0x080DC669
	str r0, [r4, #0x4C]
_080DC62E:
	pop {r4}
	pop {r0}
	bx r0
_080DC634: .4byte sub_80DC668
