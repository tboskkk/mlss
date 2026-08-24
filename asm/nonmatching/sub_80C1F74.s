	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C1FFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1FF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1FB4
	cmp r1, #0x04
	bne _080C1FE4
_080C1FB4:
	ldr r2, _080C2000 @ =0x03001038
	ldr r0, _080C2004 @ =0x0819832C
	ldr r1, _080C2008 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1FE4:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C200C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C2010 @ =0x080C2015
	str r0, [r7, #0x4C]
_080C1FF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1FFC: .4byte 0x03000FD8
_080C2000: .4byte 0x03001038
_080C2004: .4byte 0x0819832C
_080C2008: .4byte 0x08198220
_080C200C: .4byte 0x00000FFF
_080C2010: .4byte sub_80C2014
