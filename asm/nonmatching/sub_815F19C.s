	.syntax unified
	.text

	thumb_func_start sub_815F19C
sub_815F19C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815F1CC @ =0x08CDCED0
	str r0, [r4, #0x30]
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815F1BC
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815F1BC:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F1CC: .4byte 0x08CDCED0
