	.syntax unified
	.text

	thumb_func_start sub_8106B90
sub_8106B90:
	push {r4, lr}
	movs r1, #0x16
	ldsh r3, [r0, r1]
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r1, #0x08
	movs r4, #0x14
	ldsh r2, [r0, r4]
	subs r2, #0x08
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_810D3B8
	pop {r4}
	pop {r0}
	bx r0
