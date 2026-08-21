	.syntax unified
	.text

	thumb_func_start sub_8094DE8
sub_8094DE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08094E04
	adds r0, r4, #0x0
	bl sub_8094BD0
	b _08094E12
_08094E04:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08094E12
	adds r0, r4, #0x0
	bl sub_8094C70
_08094E12:
	ldr r0, _08094E20 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08094E20: .4byte sub_8087540
