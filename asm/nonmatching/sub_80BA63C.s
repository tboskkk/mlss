	.syntax unified
	.text

	thumb_func_start sub_80BA63C
sub_80BA63C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BA6E4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BA662
	cmp r1, #0x04
	bne _080BA67E
_080BA662:
	ldr r2, _080BA6E8 @ =0x00002024
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
_080BA67E:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BA690
	cmp r1, #0x04
	bne _080BA6AC
_080BA690:
	ldr r2, _080BA6EC @ =0x00002062
	adds r0, r5, #0x0
	movs r1, #0x01
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
_080BA6AC:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _080BA6B4
	adds r0, #0xFF
_080BA6B4:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x18
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BA6C2
	adds r2, #0xFF
_080BA6C2:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080BA6CC
	adds r0, #0xFF
_080BA6CC:
	asrs r3, r0, #0x08
	adds r3, #0x18
	str r5, [sp, #0x000]
	ldr r0, _080BA6F0 @ =0x00002FE6
	bl sub_80DF024
	ldr r0, _080BA6F4 @ =0x080C0B1D
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BA6E4: .4byte 0x03000FD8
_080BA6E8: .4byte 0x00002024
_080BA6EC: .4byte 0x00002062
_080BA6F0: .4byte 0x00002FE6
_080BA6F4: .4byte sub_80C0B1C
