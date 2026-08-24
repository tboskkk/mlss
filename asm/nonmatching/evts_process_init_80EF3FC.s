	.syntax unified
	.text

	thumb_func_start evts_process_init_80EF3FC
evts_process_init_80EF3FC: @ 080EF3FC
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	cmp r5, #0x00
	beq _080EF41C
	adds r4, r6, #0x4
	str r4, [r6, #0x00]
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl process_add
	ldr r0, _080EF4BC @ =0x08CDBD68
	str r0, [r4, #0x18]
_080EF41C:
	ldr r2, [r6, #0x00]
	ldr r3, _080EF4C0 @ =0x08CDC2F8
	str r3, [r2, #0x18]
	cmp r5, #0x00
	bne _080EF442
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r6, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080EF442:
	ldr r5, _080EF4C4 @ =0x03000FD0
	movs r4, #0xAC
	lsls r4, r4, #0x03
	ldr r2, _080EF4C8 @ =0x082001A0
	movs r0, #0x01
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x00]
	ldr r0, _080EF4CC @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, _080EF4D0 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r5, _080EF4D4 @ =0x0000055C
	adds r2, r1, r5
	ldr r0, _080EF4D8 @ =0x083B9704
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r4, r1, r4
	ldr r0, _080EF4DC @ =0x083B98C4
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	ldr r7, _080EF4E0 @ =0x00000564
	adds r2, r1, r7
	ldr r0, _080EF4E4 @ =0x083B9D00
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080EF4E8 @ =0x083BA13C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r4, _080EF4EC @ =0x0000056C
	adds r1, r1, r4
	ldr r0, _080EF4F0 @ =0x083BA4A8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _080EF4F4 @ =0x03000FCC
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _080EF4F8 @ =0x03000FC8
	str r1, [r0, #0x00]
	ldr r0, _080EF4FC @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x27
	strb r1, [r2, #0x00]
	adds r0, #0x26
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EF4BC: .4byte 0x08CDBD68
_080EF4C0: .4byte word_8CDC2F8 @ =0x08CDC2F8
_080EF4C4: .4byte 0x03000FD0
_080EF4C8: .4byte dword_82001A0 @ =0x082001A0
_080EF4CC: .4byte 0x03001034
_080EF4D0: .4byte 0x03000FC0
_080EF4D4: .4byte 0x0000055C
_080EF4D8: .4byte dword_83B9704 @ =0x083B9704
_080EF4DC: .4byte dword_83B98C4 @ =0x083B98C4
_080EF4E0: .4byte 0x00000564
_080EF4E4: .4byte dword_83B9D00 @ =0x083B9D00
_080EF4E8: .4byte dword_83BA13C @ =0x083BA13C
_080EF4EC: .4byte 0x0000056C
_080EF4F0: .4byte dword_83BA4A8 @ =0x083BA4A8
_080EF4F4: .4byte 0x03000FCC
_080EF4F8: .4byte 0x03000FC8
_080EF4FC: .4byte 0x03000D44
