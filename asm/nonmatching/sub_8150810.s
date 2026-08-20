	.syntax unified
	.text

	thumb_func_start sub_8150810
sub_8150810:
	push {r4, lr}
	adds r3, r1, #0x0
	ldr r0, [r3, #0x18]
	cmp r0, #0xFF
	ble _08150834
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r4, #0xB2
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08150830 @ =0x081507A9
	str r0, [r2, #0x00]
	b _08150852
_08150830: .4byte sub_81507A8
_08150834:
	ldr r1, _08150858 @ =0x00000242
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r3, r4
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
_08150852:
	pop {r4}
	pop {r0}
	bx r0
_08150858: .4byte 0x00000242
