	.syntax unified
	.text

	thumb_func_start sub_815F58C
sub_815F58C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815F5C4 @ =0x08CDCF10
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _0815F5B6
	bl sub_815FAFC
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	beq _0815F5B6
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815F5B6:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
_0815F5C4: .4byte 0x08CDCF10
