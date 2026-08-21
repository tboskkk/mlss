	.syntax unified
	.text

	thumb_func_start sub_8094538
sub_8094538:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08094554
	adds r0, r4, #0x0
	bl sub_8094320
	b _08094562
_08094554:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08094562
	adds r0, r4, #0x0
	bl sub_80943C0
_08094562:
	ldr r0, _08094570 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08094570: .4byte sub_8087540
