	.syntax unified
	.text

	thumb_func_start sub_804034C
sub_804034C:
	push {lr}
	adds r3, r0, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080403BE
	ldr r1, _08040390 @ =0x00000216
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080403BE
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08040398
	ldr r2, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r2, r2, r0
	ldr r0, [r3, #0x3C]
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	cmp r2, r0
	blt _08040394
	movs r0, #0x02
	b _080403BC
_08040390: .4byte 0x00000216
_08040394:
	movs r0, #0x03
	b _080403BC
_08040398:
	ldr r1, _080403B8 @ =0x00000242
	adds r0, r3, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080403B2
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080403BC
_080403B2:
	strh r2, [r3, #0x04]
	b _080403BE
	.byte 0x00, 0x00
_080403B8: .4byte 0x00000242
_080403BC:
	strh r0, [r3, #0x04]
_080403BE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
