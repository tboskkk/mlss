	.syntax unified
	.text

	thumb_func_start sub_8106BEC
sub_8106BEC:
	push {r4, lr}
	ldr r4, [r0, #0x0C]
	movs r2, #0x12
	ldsh r1, [r0, r2]
	movs r3, #0x14
	ldsh r2, [r0, r3]
	ldrh r3, [r0, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r4, #0x0
	bl sub_810D3B8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
