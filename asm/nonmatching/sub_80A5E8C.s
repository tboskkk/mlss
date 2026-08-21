	.syntax unified
	.text

	thumb_func_start sub_80A5E8C
sub_80A5E8C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A5F4C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A5F46
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A5ECA
	cmp r1, #0x04
	bne _080A5EE6
_080A5ECA:
	ldr r2, _080A5F50 @ =0x00002055
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A5EE6:
	ldr r0, _080A5F54 @ =0x0000208B
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	str r0, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A5F06
	cmp r1, #0x04
	bne _080A5F36
_080A5F06:
	ldr r2, _080A5F58 @ =0x03001038
	ldr r0, _080A5F5C @ =0x0819832C
	ldr r1, _080A5F60 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x52
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A5F36:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A5F64 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A5F68 @ =0x080A5F6D
	str r0, [r6, #0x4C]
_080A5F46:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A5F4C: .4byte 0x03000FD8
_080A5F50: .4byte 0x00002055
_080A5F54: .4byte 0x0000208B
_080A5F58: .4byte 0x03001038
_080A5F5C: .4byte 0x0819832C
_080A5F60: .4byte 0x08198220
_080A5F64: .4byte 0x00000FFF
_080A5F68: .4byte sub_80A5F6C
