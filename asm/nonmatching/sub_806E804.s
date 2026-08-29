	.syntax unified
	.text

	thumb_func_start sub_806E804
sub_806E804:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0806E822
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _0806E828
_0806E822:
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x01
_0806E828:
	str r0, [r1, #0x00]
	ldr r0, _0806E834 @ =0x0806DAF1
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_0806E834: .4byte sub_806DAF0
