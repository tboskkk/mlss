	.syntax unified
	.text

	thumb_func_start sub_80B363C
sub_80B363C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B3688 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B36AC
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3668
	cmp r1, #0x04
	bne _080B36A8
_080B3668:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B368C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080B3698
_080B3688: .4byte 0x03000FD8
_080B368C:
	ldr r2, _080B36B4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080B3698:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B36A8:
	ldr r0, _080B36B8 @ =0x080B36BD
	str r0, [r5, #0x4C]
_080B36AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B36B4: .4byte 0x0000204D
_080B36B8: .4byte sub_80B36BC
