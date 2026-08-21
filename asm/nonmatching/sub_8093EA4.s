	.syntax unified
	.text

	thumb_func_start sub_8093EA4
sub_8093EA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08093EC0
	adds r0, r4, #0x0
	bl sub_8093F8C
	b _08093ECE
_08093EC0:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08093ECE
	adds r0, r4, #0x0
	bl sub_8093F08
_08093ECE:
	ldr r0, _08093EDC @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08093EDC: .4byte sub_8087540
