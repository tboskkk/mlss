	.syntax unified
	.text

	thumb_func_start sub_80F2130
sub_80F2130:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	mov r8, r1
	ldr r0, _080F21D0 @ =0x08CDC318
	str r0, [r5, #0x18]
	movs r6, #0x02
	adds r4, r5, #0x0
	adds r4, #0x20
_080F2144:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080F2150
	movs r1, #0x03
	bl sub_80E5968
_080F2150:
	movs r7, #0x00
	stm r4!, {r7}
	lsls r0, r6, #0x10
	ldr r1, _080F21D4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _080F2144
	ldr r4, [r5, #0x28]
	cmp r4, #0x00
	beq _080F2174
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	adds r0, r4, #0x0
	bl free_heap_8018DA8
	str r7, [r5, #0x28]
_080F2174:
	ldr r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _080F2180
	bl free_heap_memory_8018C68
	str r7, [r5, #0x2C]
_080F2180:
	str r7, [r5, #0x30]
	ldr r0, _080F21D8 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080F21DC @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080F21E0 @ =0x083B9704
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F21E4 @ =0x083B98C4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _080F21E8 @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080F21EC @ =0x083B9D00
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080F21F0 @ =0x083BA13C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _080F21F4 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080F21F8 @ =0x083BA4A8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	mov r1, r8
	bl process_remove
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F21D0: .4byte dword_8CDC318 @ =0x08CDC318
_080F21D4: .4byte 0xFFFF0000
_080F21D8: .4byte 0x03000FC0
_080F21DC: .4byte 0x0000055C
_080F21E0: .4byte dword_83B9704 @ =0x083B9704
_080F21E4: .4byte dword_83B98C4 @ =0x083B98C4
_080F21E8: .4byte 0x00000564
_080F21EC: .4byte dword_83B9D00 @ =0x083B9D00
_080F21F0: .4byte dword_83BA13C @ =0x083BA13C
_080F21F4: .4byte 0x0000056C
_080F21F8: .4byte dword_83BA4A8 @ =0x083BA4A8
