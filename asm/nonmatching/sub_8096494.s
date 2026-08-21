	.syntax unified
	.text

	thumb_func_start sub_8096494
sub_8096494:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080964F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096548
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080964EA
	ldr r2, _080964F8 @ =0x00002068
	cmp r4, r5
	bne _080964D0
	subs r2, #0x2F
_080964D0:
	adds r0, r4, #0x0
	movs r1, #0x06
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
_080964EA:
	cmp r4, r5
	bne _080964FC
	movs r0, #0xA0
	lsls r0, r0, #0x06
	b _08096500
_080964F4: .4byte 0x03000FD8
_080964F8: .4byte 0x00002068
_080964FC:
	movs r0, #0xD8
	lsls r0, r0, #0x06
_08096500:
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x38]
	cmp r4, r5
	bne _08096510
	movs r0, #0xF8
	lsls r0, r0, #0x07
	b _08096514
_08096510:
	movs r0, #0xB8
	lsls r0, r0, #0x07
_08096514:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	movs r1, #0x28
	cmp r4, r5
	bne _08096522
	movs r1, #0x36
_08096522:
	movs r2, #0x7C
	cmp r4, r5
	bne _0809652A
	movs r2, #0x5C
_0809652A:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x28
	bl sub_808842C
	ldr r0, _08096550 @ =0x08096E45
	str r0, [r4, #0x4C]
_08096548:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08096550: .4byte sub_8096E44
