	.syntax unified
	.text

	thumb_func_start sub_804FE68
sub_804FE68:
	push {r4, lr}
	adds r2, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0804FEB8
	ldr r4, _0804FEC0 @ =0x000002B5
	adds r3, r2, r4
	ldrb r1, [r3, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	bne _0804FEA8
	ldr r1, _0804FEC4 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0804FEA8:
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0804FEB8
	adds r0, r2, #0x0
	bl sub_80402C4
_0804FEB8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804FEC0: .4byte 0x000002B5
_0804FEC4: .4byte 0x00000242
