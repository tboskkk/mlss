	.syntax unified
	.text

	thumb_func_start sub_80BF8F4
sub_80BF8F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BF9D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r2, [r7, #0x2C]
	adds r1, r2, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _080BF92A
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF926
	cmp r1, #0x04
	bne _080BF92A
_080BF926:
	ldr r0, _080BF9DC @ =0x080BE729
	str r0, [r2, #0x4C]
_080BF92A:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080BF932
	adds r1, #0xFF
_080BF932:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BF93C
	adds r2, #0xFF
_080BF93C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BF946
	adds r3, #0xFF
_080BF946:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080BF9E0 @ =0x000005DF
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080BF964
	cmp r2, #0x04
	bne _080BF980
_080BF964:
	ldr r2, _080BF9E4 @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x04
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
_080BF980:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r5, [r0, #0x00]
	adds r0, #0x01
	strb r5, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BF99A
	cmp r2, #0x04
	bne _080BF9CA
_080BF99A:
	ldr r2, _080BF9E8 @ =0x03001038
	ldr r0, _080BF9EC @ =0x0819832C
	ldr r1, _080BF9F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BF9CA:
	ldr r0, _080BF9F4 @ =0x080BF9F9
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BF9D8: .4byte 0x03000FD8
_080BF9DC: .4byte sub_80BE728
_080BF9E0: .4byte 0x000005DF
_080BF9E4: .4byte 0x00002062
_080BF9E8: .4byte 0x03001038
_080BF9EC: .4byte 0x0819832C
_080BF9F0: .4byte 0x08198220
_080BF9F4: .4byte sub_80BF9F8
