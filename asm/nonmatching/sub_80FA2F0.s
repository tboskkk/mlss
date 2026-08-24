	.syntax unified
	.text

	thumb_func_start sub_80FA2F0
sub_80FA2F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x018]
	str r3, [sp, #0x01C]
	ldr r0, [r0, #0x14]
	ldr r1, [r3, #0x04]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	bge _080FA318
	adds r0, #0xFF
_080FA318:
	asrs r5, r0, #0x08
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bge _080FA322
	adds r0, #0xFF
_080FA322:
	asrs r0, r0, #0x08
	mov r8, r0
	adds r0, r1, #0x0
	adds r0, #0x3D
	ldrb r4, [r0, #0x00]
	lsls r0, r5, #0x10
	lsrs r7, r0, #0x10
	ldr r1, _080FA378 @ =0x083BA4B4
	ldr r3, [sp, #0x01C]
	ldrb r0, [r3, #0x08]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r1, [r3, #0x0C]
	movs r6, #0x1F
	ands r6, r1
	lsls r0, r1, #0x01
	movs r3, #0xF0
	lsls r3, r3, #0x02
	adds r2, r3, #0x0
	ands r0, r2
	orrs r6, r0
	lsls r1, r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ands r1, r0
	orrs r6, r1
	movs r0, #0x03
	ands r0, r6
	ldr r3, [sp, #0x01C]
	ldr r3, [r3, #0x08]
	mov r9, r3
	cmp r0, #0x02
	bne _080FA38E
	mov r0, r10
	cmp r0, #0x03
	bhi _080FA37C
	movs r1, #0x04
	mov r10, r1
	b _080FA38E
	.byte 0x00, 0x00
_080FA378: .4byte 0x083BA4B4
_080FA37C:
	mov r0, r10
	adds r0, #0x01
	movs r2, #0x02
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
_080FA38E:
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r6, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080FA3B8
	movs r2, #0x02
	mov r0, r8
	subs r1, r0, r4
	mov r0, r10
	adds r0, #0x03
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0D
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080FA3B0
	movs r2, #0x01
_080FA3B0:
	lsls r0, r2, #0x08
	ands r0, r3
	orrs r6, r0
	b _080FA3DA
_080FA3B8:
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0x00
	beq _080FA3DA
	movs r0, #0x80
	ands r0, r6
	movs r1, #0x18
	cmp r0, #0x00
	beq _080FA3CC
	ldr r1, _080FA3FC @ =0x0000FFE8
_080FA3CC:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080FA3DA:
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r6
	movs r1, #0x80
	lsls r1, r1, #0x02
	cmp r0, r1
	bne _080FA400
	mov r1, r8
	subs r1, #0x0D
	mov r0, r10
	adds r0, #0x02
	lsls r0, r0, #0x03
	adds r0, r0, r4
	subs r1, r1, r0
	mov r8, r1
	b _080FA406
	.byte 0x00, 0x00
_080FA3FC: .4byte 0x0000FFE8
_080FA400:
	movs r1, #0x02
	negs r1, r1
	add r8, r1
_080FA406:
	mov r2, r8
	cmp r2, #0x00
	bge _080FA420
	movs r3, #0x00
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _080FA44C
	movs r0, #0x10
	mov r8, r0
	b _080FA444
_080FA420:
	mov r2, r10
	lsls r1, r2, #0x03
	mov r3, r8
	adds r0, r3, r1
	adds r0, #0x14
	cmp r0, #0x9F
	ble _080FA44C
	movs r0, #0x90
	subs r0, r0, r1
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r6
	cmp r0, #0x00
	beq _080FA44C
	movs r0, #0x10
	negs r0, r0
	add r8, r0
_080FA444:
	movs r0, #0x40
	orrs r6, r0
	lsls r0, r6, #0x10
	lsrs r6, r0, #0x10
_080FA44C:
	mov r1, r9
	asrs r4, r1, #0x08
	movs r2, #0xFF
	mov r9, r2
	mov r3, r9
	ands r4, r3
	cmp r4, #0x00
	bne _080FA46E
	ldr r1, [sp, #0x018]
	ldr r0, [r1, #0x28]
	ldr r2, [sp, #0x01C]
	ldr r1, [r2, #0x14]
	bl sub_80E9310
	lsrs r4, r0, #0x10
	mov r3, r9
	ands r4, r3
_080FA46E:
	movs r0, #0x03
	ands r0, r6
	cmp r0, #0x02
	bne _080FA490
	adds r0, r4, #0x2
	movs r1, #0x03
	bl __divsi3
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080FA490
	adds r5, #0x04
_080FA490:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	cmp r0, #0x00
	bne _080FA49E
	movs r4, #0x02
	mov r9, r4
_080FA49E:
	cmp r5, #0x00
	bge _080FA4B0
	movs r7, #0x20
	ldr r0, _080FA4AC @ =0x0000FF7F
	ands r6, r0
	movs r0, #0x40
	b _080FA4B8
_080FA4AC: .4byte 0x0000FF7F
_080FA4B0:
	cmp r5, #0xEF
	ble _080FA4BA
	movs r7, #0xD0
	movs r0, #0xC0
_080FA4B8:
	orrs r6, r0
_080FA4BA:
	adds r1, r5, #0x0
	subs r1, #0x10
	lsls r0, r4, #0x02
	subs r5, r1, r0
	adds r1, r5, #0x0
	adds r1, #0x18
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	adds r2, r0, #0x0
	cmp r1, r3
	ble _080FA4D6
	adds r5, r3, #0x0
	subs r5, #0x18
	b _080FA4E6
_080FA4D6:
	lsls r1, r4, #0x03
	adds r0, r5, r1
	adds r0, #0x08
	cmp r0, r3
	bge _080FA4E6
	adds r0, r3, #0x0
	subs r0, #0x08
	subs r5, r0, r1
_080FA4E6:
	asrs r3, r2, #0x10
	cmp r3, #0x17
	bgt _080FA520
	movs r1, #0xC0
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0xC0
	bne _080FA500
	adds r0, r3, #0x0
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080FA502
_080FA500:
	movs r7, #0x18
_080FA502:
	movs r5, #0x00
	ldr r0, _080FA51C @ =0x0000FF7F
	ands r6, r0
	movs r0, #0x40
	orrs r6, r0
	lsls r2, r7, #0x10
	asrs r0, r2, #0x10
	lsls r1, r4, #0x01
	subs r0, r0, r1
	subs r0, #0x18
	cmp r5, r0
	bge _080FA552
	b _080FA550
_080FA51C: .4byte 0x0000FF7F
_080FA520:
	cmp r3, #0xD7
	ble _080FA552
	movs r1, #0xC0
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x40
	bne _080FA538
	adds r0, r3, #0x0
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080FA53A
_080FA538:
	movs r7, #0xD8
_080FA53A:
	lsls r1, r4, #0x03
	movs r0, #0xD0
	subs r5, r0, r1
	movs r0, #0xC0
	orrs r6, r0
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	subs r0, #0x18
	adds r2, r1, #0x0
	cmp r5, r0
	ble _080FA552
_080FA550:
	adds r5, r0, #0x0
_080FA552:
	cmp r5, #0x00
	bge _080FA578
	movs r0, #0x03
	ands r0, r6
	cmp r0, #0x02
	bne _080FA574
	asrs r1, r2, #0x10
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080FA568
	adds r0, r1, #0x7
_080FA568:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	b _080FA5AC
_080FA574:
	movs r5, #0x00
	b _080FA5AC
_080FA578:
	lsls r1, r4, #0x03
	adds r0, r5, r1
	adds r0, #0x20
	cmp r0, #0xF0
	ble _080FA5AC
	movs r0, #0xD0
	subs r1, r0, r1
	movs r0, #0x03
	ands r0, r6
	cmp r0, #0x02
	bne _080FA5A8
	subs r1, #0x08
	asrs r3, r2, #0x10
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080FA59A
	adds r0, r3, #0x7
_080FA59A:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	b _080FA5AA
_080FA5A8:
	adds r0, r1, #0x0
_080FA5AA:
	adds r5, r0, #0x0
_080FA5AC:
	asrs r4, r2, #0x10
	subs r4, r4, r5
	ldr r1, _080FA5FC @ =0xFFFFFF00
	adds r0, r6, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, [sp, #0x018]
	ldr r0, [r2, #0x28]
	ldr r3, [sp, #0x01C]
	ldrb r1, [r3, #0x00]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	mov r5, r8
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	mov r5, r9
	str r5, [sp, #0x000]
	mov r5, r10
	str r5, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x008]
	str r6, [sp, #0x00C]
	ldr r5, [sp, #0x01C]
	ldrb r4, [r5, #0x10]
	str r4, [sp, #0x010]
	ldr r4, [r5, #0x14]
	str r4, [sp, #0x014]
	bl sub_80E5BCC
	movs r0, #0x01
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FA5FC: .4byte 0xFFFFFF00
