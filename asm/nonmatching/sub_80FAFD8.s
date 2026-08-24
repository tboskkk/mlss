	.syntax unified
	.text

	thumb_func_start sub_80FAFD8
sub_80FAFD8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _080FB058 @ =0x08CDC328
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	bl sub_80FAEFC
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _080FAFF8
	movs r1, #0x03
	bl sub_80E8EFC
	movs r0, #0x00
	str r0, [r4, #0x20]
_080FAFF8:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _080FB008
	movs r1, #0x03
	bl sub_80E5968
	movs r0, #0x00
	str r0, [r4, #0x28]
_080FB008:
	ldr r0, [r4, #0x24]
	bl free_heap_memory_8018C68
	ldr r0, _080FB05C @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080FB060 @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080FB064 @ =0x083B9704
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080FB068 @ =0x083B98C4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _080FB06C @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080FB070 @ =0x083B9D00
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080FB074 @ =0x083BA13C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _080FB078 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080FB07C @ =0x083BA4A8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FB058: .4byte dword_8CDC328 @ =0x08CDC328
_080FB05C: .4byte 0x03000FC0
_080FB060: .4byte 0x0000055C
_080FB064: .4byte dword_83B9704 @ =0x083B9704
_080FB068: .4byte dword_83B98C4 @ =0x083B98C4
_080FB06C: .4byte 0x00000564
_080FB070: .4byte dword_83B9D00 @ =0x083B9D00
_080FB074: .4byte dword_83BA13C @ =0x083BA13C
_080FB078: .4byte 0x0000056C
_080FB07C: .4byte dword_83BA4A8 @ =0x083BA4A8
