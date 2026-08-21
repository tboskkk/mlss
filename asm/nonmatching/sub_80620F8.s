	.syntax unified
	.text

	thumb_func_start sub_80620F8
sub_80620F8:
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
	bne _08062116
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	b _0806211C
_08062116:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
_0806211C:
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08062130 @ =0x08062189
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08062130: .4byte sub_8062188
