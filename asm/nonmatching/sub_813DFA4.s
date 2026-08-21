	.syntax unified
	.text

	thumb_func_start sub_813DFA4
sub_813DFA4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x09
	bl sub_8138C20
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _0813DFE8 @ =0x0813B381
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813DFEC @ =0x0813D9D5
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r3, #0x08
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
_0813DFE8: .4byte sub_813B380
_0813DFEC: .4byte sub_813D9D4
	.byte 0x08, 0x69, 0x40, 0x38, 0x08, 0x61, 0x70, 0x47
