	.syntax unified
	.text

	thumb_func_start sub_8064D64
sub_8064D64:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r0, #0xA0
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08064D88
	adds r0, r2, #0x0
	adds r0, #0x9C
	str r3, [r0, #0x00]
	b _08064D90
_08064D88:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
_08064D90:
	ldr r0, _08064D9C @ =0x08064E09
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_08064D9C: .4byte sub_8064E08
