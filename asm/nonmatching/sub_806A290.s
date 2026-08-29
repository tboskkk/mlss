	.syntax unified
	.text

	thumb_func_start sub_806A290
sub_806A290:
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
	bne _0806A2AE
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	b _0806A2B4
_0806A2AE:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
_0806A2B4:
	str r0, [r1, #0x00]
	ldr r0, _0806A2C0 @ =0x080695E5
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_0806A2C0: .4byte sub_80695E4
