	.syntax unified
	.text

	thumb_func_start sub_80C86E4
sub_80C86E4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C8738 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8732
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8716
	cmp r1, #0x04
	bne _080C872E
_080C8716:
	ldr r2, _080C873C @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C872E:
	ldr r0, _080C8740 @ =0x080C2F19
	str r0, [r6, #0x4C]
_080C8732:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080C8738: .4byte 0x03000FD8
_080C873C: .4byte 0x00002034
_080C8740: .4byte sub_80C2F18
