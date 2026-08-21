	.syntax unified
	.text

	thumb_func_start sub_80E0354
sub_80E0354:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	str r2, [sp, #0x00C]
	adds r5, r3, #0x0
	ldr r4, _080E03D8 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E0454
	subs r2, #0x14
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	movs r1, #0x00
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r2, _080E03DC @ =0x03000FDC
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	ldr r1, _080E03E0 @ =0x00003EF0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	adds r7, r5, #0x0
	muls r7, r5
	movs r6, #0x00
	movs r5, #0x00
_080E03A4:
	ldr r0, [sp, #0x008]
	subs r2, r0, r6
	adds r0, r2, #0x0
	muls r0, r2
	adds r2, r0, #0x0
	subs r2, r7, r2
	cmp r2, #0x00
	ble _080E03D4
	ldr r0, _080E03E4 @ =0x03001038
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl _call_via_r1
	adds r2, r0, #0x0
	ldr r0, [sp, #0x004]
	adds r1, r0, r2
	cmp r1, #0x00
	blt _080E03D4
	cmp r1, #0xF0
	ble _080E03CE
	movs r1, #0xF0
_080E03CE:
	subs r2, r0, r2
	cmp r2, #0xEF
	ble _080E03E8
_080E03D4:
	stm r4!, {r5}
	b _080E03FE
_080E03D8: .4byte 0x03000FD8
_080E03DC: .4byte 0x03000FDC
_080E03E0: .4byte 0x00003EF0
_080E03E4: .4byte 0x03001038
_080E03E8:
	cmp r2, #0x00
	bge _080E03F4
	lsls r0, r1, #0x10
	orrs r1, r0
	stm r4!, {r1}
	b _080E03FE
_080E03F4:
	lsls r0, r2, #0x08
	orrs r0, r1
	lsls r1, r0, #0x10
	orrs r0, r1
	stm r4!, {r0}
_080E03FE:
	adds r1, r6, #0x1
	ldr r0, [sp, #0x008]
	subs r2, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r2, r1, #0x0
	subs r2, r7, r2
	cmp r2, #0x00
	ble _080E0430
	ldr r0, _080E0434 @ =0x03001038
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl _call_via_r1
	adds r2, r0, #0x0
	ldr r0, [sp, #0x004]
	adds r1, r0, r2
	cmp r1, #0x00
	blt _080E0430
	cmp r1, #0xF0
	ble _080E042A
	movs r1, #0xF0
_080E042A:
	subs r2, r0, r2
	cmp r2, #0xEF
	ble _080E0438
_080E0430:
	stm r4!, {r5}
	b _080E044E
_080E0434: .4byte 0x03001038
_080E0438:
	cmp r2, #0x00
	bge _080E0444
	lsls r0, r1, #0x10
	orrs r1, r0
	stm r4!, {r1}
	b _080E044E
_080E0444:
	lsls r0, r2, #0x08
	orrs r0, r1
	lsls r1, r0, #0x10
	orrs r0, r1
	stm r4!, {r0}
_080E044E:
	adds r6, #0x02
	cmp r6, #0x9F
	ble _080E03A4
_080E0454:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
