	.syntax unified
	.text

	thumb_func_start sub_8158954
sub_8158954:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08158984 @ =0x08CDC9B0
	str r0, [r4, #0x30]
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _08158974
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08158974:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158984: .4byte 0x08CDC9B0
