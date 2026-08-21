	.syntax unified
	.text

	thumb_func_start sub_809070C
sub_809070C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08090728
	adds r0, r4, #0x0
	bl sub_809078C
	b _08090736
_08090728:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08090736
	adds r0, r4, #0x0
	bl sub_8090748
_08090736:
	ldr r0, _08090744 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090744: .4byte sub_8087540
