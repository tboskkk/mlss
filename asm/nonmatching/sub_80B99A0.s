	.syntax unified
	.text

	thumb_func_start sub_80B99A0
sub_80B99A0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B9A3C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B9A36
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B99CC
	cmp r1, #0x04
	bne _080B99E4
_080B99CC:
	ldr r2, _080B9A40 @ =0x00002024
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B99E4:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B99F6
	cmp r1, #0x04
	bne _080B9A26
_080B99F6:
	ldr r2, _080B9A44 @ =0x03001038
	ldr r0, _080B9A48 @ =0x0819832C
	ldr r1, _080B9A4C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B9A26:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B9A50 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B9A54 @ =0x080B9A59
	str r0, [r5, #0x4C]
_080B9A36:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B9A3C: .4byte 0x03000FD8
_080B9A40: .4byte 0x00002024
_080B9A44: .4byte 0x03001038
_080B9A48: .4byte 0x0819832C
_080B9A4C: .4byte 0x08198220
_080B9A50: .4byte 0x00000FFF
_080B9A54: .4byte sub_80B9A58
