	.syntax unified
	.text

	thumb_func_start sub_8097D50
sub_8097D50:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _08097DA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097D9C
	cmp r5, r6
	bne _08097D88
	ldr r1, [r4, #0x4C]
	ldr r0, _08097DA8 @ =0x080976D1
	cmp r1, r0
	bne _08097D88
	ldr r0, _08097DAC @ =0x08097979
	str r0, [r4, #0x4C]
_08097D88:
	cmp r5, r4
	bne _08097D98
	ldr r1, [r6, #0x4C]
	ldr r0, _08097DA8 @ =0x080976D1
	cmp r1, r0
	bne _08097D98
	ldr r0, _08097DAC @ =0x08097979
	str r0, [r6, #0x4C]
_08097D98:
	ldr r0, _08097DB0 @ =0x080974F9
	str r0, [r5, #0x4C]
_08097D9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097DA4: .4byte 0x03000FD8
_08097DA8: .4byte sub_80976D0
_08097DAC: .4byte sub_8097978
_08097DB0: .4byte sub_80974F8
