	.syntax unified
	.text

	thumb_func_start sub_8112898
sub_8112898:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _081128FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bne _081128C4
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _081128C4
	ldr r0, _08112900 @ =0x08112841
	bl sub_8112350
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	str r0, [r4, #0x00]
_081128C4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA8
	cmp r0, #0x00
	beq _081128EA
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x00]
	movs r1, #0x02
	orrs r0, r1
	str r0, [r4, #0x00]
_081128EA:
	ldr r0, [r4, #0x00]
	cmp r0, #0x02
	ble _081128F4
	movs r0, #0x00
	str r0, [r5, #0x4C]
_081128F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081128FC: .4byte 0x03000FD8
_08112900: .4byte sub_8112840
