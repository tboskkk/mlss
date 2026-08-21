	.syntax unified
	.text

	thumb_func_start sub_809B2C0
sub_809B2C0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _0809B324 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B300
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B300
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809B300:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B35A
	cmp r4, r7
	bne _0809B328
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809B328
	adds r4, r6, #0x0
	b _0809B33E
_0809B324: .4byte 0x03000FD8
_0809B328:
	cmp r4, r6
	bne _0809B33C
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r4, r7, #0x0
	cmp r0, #0x02
	beq _0809B33E
_0809B33C:
	movs r4, #0x00
_0809B33E:
	cmp r4, #0x00
	beq _0809B356
	str r4, [r5, #0x2C]
	ldr r1, _0809B364 @ =0x000040C2
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	bl sub_807C0D0
	ldr r1, _0809B368 @ =0x0809B371
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B356:
	ldr r0, _0809B36C @ =0x0809B3DD
	str r0, [r5, #0x4C]
_0809B35A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B364: .4byte 0x000040C2
_0809B368: .4byte sub_809B370
_0809B36C: .4byte sub_809B3DC
