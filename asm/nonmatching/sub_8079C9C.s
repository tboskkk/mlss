	.syntax unified
	.text

	thumb_func_start sub_8079C9C
sub_8079C9C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08079D0C
	adds r0, r5, #0x0
	bl sub_80790CC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	movs r0, #0x06
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x05
	ble _08079D0C
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079D0C
	ldr r0, _08079CF4 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079CFC
	ldr r2, _08079CF8 @ =0x00004029
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _08079D08
	.byte 0x00, 0x00
_08079CF4: .4byte 0x03000F6C
_08079CF8: .4byte 0x00004029
_08079CFC:
	ldr r2, _08079D14 @ =0x00004029
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
_08079D08:
	ldr r0, _08079D18 @ =0x08079019
	str r0, [r5, #0x4C]
_08079D0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079D14: .4byte 0x00004029
_08079D18: .4byte sub_8079018
