	.syntax unified
	.text

	thumb_func_start sub_8070AE8
sub_8070AE8:
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
	bne _08070B06
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _08070B0C
_08070B06:
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x01
_08070B0C:
	str r0, [r1, #0x00]
	ldr r0, _08070B18 @ =0x08070E4D
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08070B18: .4byte sub_8070E4C
