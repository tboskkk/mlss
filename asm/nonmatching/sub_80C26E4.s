	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080C2794 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C278E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C2720
	cmp r1, #0x04
	bne _080C273C
_080C2720:
	ldr r2, _080C2798 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C273C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C274E
	cmp r1, #0x04
	bne _080C277E
_080C274E:
	ldr r2, _080C279C @ =0x03001038
	ldr r0, _080C27A0 @ =0x0819832C
	ldr r1, _080C27A4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C277E:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C27A8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C27AC @ =0x080C27B1
	str r0, [r7, #0x4C]
_080C278E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C2794: .4byte 0x03000FD8
_080C2798: .4byte 0x00002063
_080C279C: .4byte 0x03001038
_080C27A0: .4byte 0x0819832C
_080C27A4: .4byte 0x08198220
_080C27A8: .4byte 0x00000FFF
_080C27AC: .4byte sub_80C27B0
