	.syntax unified
	.text

	thumb_func_start sub_815F780
sub_815F780:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _0815F7C8 @ =0x040000D4
	ldr r2, _0815F7CC @ =0x00001CBC
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _0815F7D0 @ =0x0300101C
	ldr r0, [r0, #0x00]
	adds r0, #0x04
	str r0, [r1, #0x04]
	ldr r0, _0815F7D4 @ =0x84000140
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r3, _0815F7D8 @ =0x00001E94
	adds r0, r4, r3
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x04]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	adds r1, r4, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	bne _0815F7C2
	cmp r4, #0x00
	beq _0815F7C2
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_815A288
_0815F7C2:
	pop {r4}
	pop {r0}
	bx r0
_0815F7C8: .4byte 0x040000D4
_0815F7CC: .4byte 0x00001CBC
_0815F7D0: .4byte 0x0300101C
_0815F7D4: .4byte 0x84000140
_0815F7D8: .4byte 0x00001E94
