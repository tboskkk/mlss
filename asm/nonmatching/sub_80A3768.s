	.syntax unified
	.text

	thumb_func_start sub_80A3768
sub_80A3768:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A37F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A37F2
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A3794
	cmp r1, #0x04
	bne _080A37AC
_080A3794:
	ldr r2, _080A37FC @ =0x00002024
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A37AC:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A37BE
	cmp r1, #0x04
	bne _080A37EE
_080A37BE:
	ldr r2, _080A3800 @ =0x03001038
	ldr r0, _080A3804 @ =0x0819832C
	ldr r1, _080A3808 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x12
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
_080A37EE:
	ldr r0, _080A380C @ =0x080A3ABD
	str r0, [r5, #0x4C]
_080A37F2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080A37F8: .4byte 0x03000FD8
_080A37FC: .4byte 0x00002024
_080A3800: .4byte 0x03001038
_080A3804: .4byte 0x0819832C
_080A3808: .4byte 0x08198220
_080A380C: .4byte sub_80A3ABC
