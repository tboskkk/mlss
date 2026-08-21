	.syntax unified
	.text

	thumb_func_start sub_8079B48
sub_8079B48:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079B98
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079B98
	ldr r0, _08079B80 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079B88
	ldr r2, _08079B84 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _08079B94
	.byte 0x00, 0x00
_08079B80: .4byte 0x03000F6C
_08079B84: .4byte 0x00004029
_08079B88:
	ldr r2, _08079BA0 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
_08079B94:
	ldr r0, _08079BA4 @ =0x08079C0D
	str r0, [r4, #0x4C]
_08079B98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079BA0: .4byte 0x00004029
_08079BA4: .4byte sub_8079C0C
