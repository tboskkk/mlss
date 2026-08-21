	.syntax unified
	.text

	thumb_func_start sub_80870B4
sub_80870B4:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _08087110
	movs r5, #0x00
	ldr r1, [r3, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080870CE
	b _080870D2
_080870C8:
	movs r0, #0x02
	orrs r5, r0
	b _080870EE
_080870CE:
	cmp r0, r1
	bne _080870D4
_080870D2:
	movs r5, #0x01
_080870D4:
	ldr r2, [r3, #0x30]
	movs r4, #0x08
	b _080870DC
_080870DA:
	ldr r2, [r2, #0x30]
_080870DC:
	cmp r2, #0x00
	beq _080870C8
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080870DA
_080870EE:
	cmp r5, #0x03
	bne _08087100
	ldr r0, _080870FC @ =0x08087039
	adds r1, r3, #0x0
	bl sub_807FF48
	b _08087110
_080870FC: .4byte sub_8087038
_08087100:
	ldr r4, _08087118 @ =0x08087AE1
	adds r0, r3, #0x0
	bl sub_8086E8C
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_807FF48
_08087110:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08087118: .4byte sub_8087AE0
	.byte 0x00, 0x21, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
