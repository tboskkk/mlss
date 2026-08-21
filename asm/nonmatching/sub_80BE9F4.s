	.syntax unified
	.text

	thumb_func_start sub_80BE9F4
sub_80BE9F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BEAB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x2C]
	adds r0, #0xA8
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080BEA14
	adds r0, #0xFF
_080BEA14:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x1C
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BEA22
	adds r2, #0xFF
_080BEA22:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BEA2C
	adds r3, #0xFF
_080BEA2C:
	asrs r3, r3, #0x08
	adds r3, #0x10
	str r4, [sp, #0x000]
	ldr r0, _080BEAB8 @ =0x00002FE6
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BEA4A
	cmp r1, #0x04
	bne _080BEA66
_080BEA4A:
	ldr r2, _080BEABC @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080BEA66:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BEA78
	cmp r1, #0x04
	bne _080BEAA8
_080BEA78:
	ldr r2, _080BEAC0 @ =0x03001038
	ldr r0, _080BEAC4 @ =0x0819832C
	ldr r1, _080BEAC8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x05
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
_080BEAA8:
	ldr r0, _080BEACC @ =0x080BEAD1
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BEAB4: .4byte 0x03000FD8
_080BEAB8: .4byte 0x00002FE6
_080BEABC: .4byte 0x00002025
_080BEAC0: .4byte 0x03001038
_080BEAC4: .4byte 0x0819832C
_080BEAC8: .4byte 0x08198220
_080BEACC: .4byte sub_80BEAD0
