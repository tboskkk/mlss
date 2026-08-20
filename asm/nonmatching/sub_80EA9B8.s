	.syntax unified
	.text

	thumb_func_start sub_80EA9B8
sub_80EA9B8:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, _080EA9D4 @ =0x0300034C
	ldrh r5, [r0, #0x2E]
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	ldr r0, [r4, #0x04]
	adds r0, #0x0B
	cmp r0, #0x0B
	beq _080EA9D8
	cmp r0, #0x0C
	beq _080EA9DC
	b _080EA9E0
_080EA9D4: .4byte 0x0300034C
_080EA9D8:
	movs r2, #0x00
	b _080EA9E0
_080EA9DC:
	mvns r2, r2
	adds r3, r2, #0x0
_080EA9E0:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EA9F2
	ands r3, r5
	cmp r3, r2
	beq _080EA9FC
	b _080EA9F8
_080EA9F2:
	ands r3, r5
	cmp r3, r2
	bne _080EA9FC
_080EA9F8:
	ldr r0, [r4, #0x0C]
	str r0, [r6, #0x00]
_080EA9FC:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
