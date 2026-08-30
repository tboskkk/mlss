	.syntax unified
	.text

	thumb_func_start sub_805F554
sub_805F554:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F59C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805F584
	ldr r0, _0805F580 @ =0x0808750D
	b _0805F59A
	.byte 0x00, 0x00
_0805F580: .4byte sub_808750C
_0805F584:
	cmp r0, #0x01
	bne _0805F590
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _0805F596
_0805F590:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x96
_0805F596:
	str r0, [r1, #0x00]
	ldr r0, _0805F5A4 @ =0x0805F5E5
_0805F59A:
	str r0, [r4, #0x4C]
_0805F59C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F5A4: .4byte sub_805F5E4
