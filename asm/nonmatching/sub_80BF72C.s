	.syntax unified
	.text

	thumb_func_start sub_80BF72C
sub_80BF72C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080BF83C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BF834
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF77A
	cmp r1, #0x04
	bne _080BF7CE
_080BF77A:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF788
	adds r0, #0xFF
_080BF788:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF796
	adds r0, #0xFF
_080BF796:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF7A4
	adds r0, #0xFF
_080BF7A4:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF7BA
	adds r0, #0xFF
_080BF7BA:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080BF7CE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF7E0
	cmp r1, #0x04
	bne _080BF7EA
_080BF7E0:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_8088560
_080BF7EA:
	adds r4, r6, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF808
	cmp r1, #0x04
	bne _080BF824
_080BF808:
	ldr r2, _080BF840 @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x11
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
_080BF824:
	adds r0, r6, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	ldr r0, _080BF844 @ =0x080BF849
	str r0, [r4, #0x4C]
_080BF834:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BF83C: .4byte 0x03000FD8
_080BF840: .4byte 0x00002062
_080BF844: .4byte sub_80BF848
