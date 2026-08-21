	.syntax unified
	.text

	thumb_func_start sub_806B5A8
sub_806B5A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B5EC
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B5D6
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806B5E8
_0806B5D6:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806B5E8:
	ldr r0, _0806B5F4 @ =0x0806B5F9
	str r0, [r4, #0x4C]
_0806B5EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B5F4: .4byte sub_806B5F8
