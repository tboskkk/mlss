	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D085C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r6, [r1, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D0854
	ldr r0, _080D0860 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D07CE
	cmp r1, #0x04
	bne _080D07E6
_080D07CE:
	ldr r2, _080D0864 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D07E6:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r6, [r4, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0800
	cmp r1, #0x04
	bne _080D0850
_080D0800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D0808
	adds r1, #0xFF
_080D0808:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080D081E
	adds r0, #0xFF
_080D081E:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080D0834
	adds r3, #0xFF
_080D0834:
	asrs r3, r3, #0x08
	adds r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D0850:
	ldr r0, _080D0868 @ =0x080D086D
	str r0, [r7, #0x4C]
_080D0854:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D085C: .4byte 0x03000FD8
_080D0860: .4byte 0x0000011F
_080D0864: .4byte 0x0000204D
_080D0868: .4byte sub_80D086C
