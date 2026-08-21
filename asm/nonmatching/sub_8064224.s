	.syntax unified
	.text

	thumb_func_start sub_8064224
sub_8064224:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08064242
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064248 @ =0x0806432D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08064242:
	pop {r4}
	pop {r1}
	bx r1
_08064248: .4byte sub_806432C
