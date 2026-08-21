	.syntax unified
	.text

	thumb_func_start sub_8092F2C
sub_8092F2C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08092F48
	adds r0, r4, #0x0
	bl sub_8092004
	b _08092F56
_08092F48:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08092F56
	adds r0, r4, #0x0
	bl sub_80920A4
_08092F56:
	ldr r0, _08092F64 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08092F64: .4byte sub_8087540
