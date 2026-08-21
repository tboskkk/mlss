	.syntax unified
	.text

	thumb_func_start sub_813946C
sub_813946C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8138A78
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081394C4 @ =0x081398C5
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldr r1, _081394C8 @ =0x08139421
	str r1, [r2, #0x00]
	movs r3, #0xD2
	lsls r3, r3, #0x01
	adds r0, r5, r3
	str r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _081394BC
	adds r0, r5, #0x0
	bl sub_81391A0
_081394BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081394C4: .4byte sub_81398C4
_081394C8: .4byte sub_8139420
