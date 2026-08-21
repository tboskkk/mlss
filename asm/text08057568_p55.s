	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FAF8C
sub_80FAF8C:
	push {r4, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	adds r0, #0x1C
	ldr r1, [r4, #0x24]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0xFF
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80EA5C8
	ldr r0, [r4, #0x24]
	ldr r1, _080FAFB8 @ =0x000009A1
	adds r0, r0, r1
	movs r1, #0x02
	strb r1, [r0, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
_080FAFB8: .4byte 0x000009A1
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xA0, 0x6A, 0x04, 0x21, 0xEB, 0xF7, 0xF8, 0xFF, 0xA0, 0x6A, 0x10, 0x21
	.byte 0xEC, 0xF7, 0xA4, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
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
_080FB058: .4byte 0x08CDC328
_080FB05C: .4byte 0x03000FC0
_080FB060: .4byte 0x0000055C
_080FB064: .4byte 0x083B9704
_080FB068: .4byte 0x083B98C4
_080FB06C: .4byte 0x00000564
_080FB070: .4byte 0x083B9D00
_080FB074: .4byte 0x083BA13C
_080FB078: .4byte 0x0000056C
_080FB07C: .4byte 0x083BA4A8
	thumb_func_start sub_80FB080
sub_80FB080:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080FB0F4 @ =0x08CDC328
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x28]
	str r0, [r4, #0x20]
	ldr r5, _080FB0F8 @ =0x000009A8
	ldr r2, _080FB0FC @ =0x082001E0
	movs r0, #0x01
	adds r1, r5, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r4, #0x24]
	ldr r0, _080FB100 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r0, _080FB104 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	ldr r0, _080FB108 @ =0x0000055C
	adds r2, r1, r0
	ldr r0, _080FB10C @ =0x083B9704
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080FB110 @ =0x083B98C4
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	ldr r0, _080FB114 @ =0x00000564
	adds r2, r1, r0
	ldr r0, _080FB118 @ =0x083B9D00
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r1, r0
	ldr r0, _080FB11C @ =0x083BA13C
	ldr r0, [r0, #0x08]
	str r0, [r2, #0x00]
	ldr r0, _080FB120 @ =0x0000056C
	adds r1, r1, r0
	ldr r0, _080FB124 @ =0x083BA4A8
	ldr r0, [r0, #0x08]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080FB0F4: .4byte 0x08CDC328
_080FB0F8: .4byte 0x000009A8
_080FB0FC: .4byte 0x082001E0
_080FB100: .4byte 0x03001034
_080FB104: .4byte 0x03000FC0
_080FB108: .4byte 0x0000055C
_080FB10C: .4byte 0x083B9704
_080FB110: .4byte 0x083B98C4
_080FB114: .4byte 0x00000564
_080FB118: .4byte 0x083B9D00
_080FB11C: .4byte 0x083BA13C
_080FB120: .4byte 0x0000056C
_080FB124: .4byte 0x083BA4A8
	thumb_func_start init_fobj_with_data_80FB128
init_fobj_with_data_80FB128: @ 080FB128
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r2
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x0E
	ldr r2, _080FB3F8 @ =0x083D6C58
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x08
	ldrb r2, [r3, #0x06]
	orrs r0, r2
	subs r3, r3, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r7, r3, r0
	ldrb r1, [r7, #0x03]
	movs r2, #0x1F
	ands r2, r1
	ldrb r0, [r7, #0x00]
	lsls r3, r0, #0x04
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FB16E
	movs r0, #0x20
	negs r0, r0
	orrs r2, r0
_080FB16E:
	adds r0, r3, r2
	lsls r5, r0, #0x08
	ldrb r1, [r7, #0x04]
	movs r2, #0x1F
	ands r2, r1
	ldrb r0, [r7, #0x01]
	lsls r3, r0, #0x04
	movs r0, #0x10
	ands r0, r1
	adds r4, r1, #0x0
	cmp r0, #0x00
	beq _080FB18C
	movs r0, #0x20
	negs r0, r0
	orrs r2, r0
_080FB18C:
	adds r0, r3, r2
	lsls r2, r0, #0x08
	lsrs r3, r4, #0x02
	movs r0, #0x18
	ands r3, r0
	ldrb r0, [r7, #0x03]
	lsrs r0, r0, #0x05
	orrs r3, r0
	ldrb r1, [r7, #0x02]
	movs r0, #0x7F
	ands r0, r1
	lsls r1, r0, #0x03
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0x00
	beq _080FB1B2
	movs r0, #0x20
	negs r0, r0
	orrs r3, r0
_080FB1B2:
	adds r0, r1, r3
	lsls r3, r0, #0x08
	movs r0, #0x01
	mov r9, r0
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r10
	adds r1, r5, #0x0
	bl sub_8047F60
	ldrb r0, [r7, #0x10]
	movs r6, #0x01
	movs r1, #0x83
	lsls r1, r1, #0x02
	add r1, r10
	mov r12, r1
	mov r1, r9
	ands r1, r0
	mov r3, r12
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _080FB3FC @ =0x0000020F
	add r2, r10
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	ldrb r2, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	ldr r3, [sp, #0x008]
	strb r0, [r3, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x01
	movs r1, #0x07
	ands r0, r1
	ands r0, r1
	lsls r0, r0, #0x01
	mov r3, r12
	ldrb r2, [r3, #0x00]
	subs r1, #0x16
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x04
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x05
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x05
	movs r4, #0x21
	negs r4, r4
	adds r3, r4, #0x0
	ands r3, r2
	orrs r3, r0
	mov r0, r12
	strb r3, [r0, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x06
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x06
	movs r5, #0x41
	negs r5, r5
	adds r1, r5, #0x0
	ands r1, r3
	orrs r1, r0
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r7, #0x10]
	lsrs r0, r0, #0x07
	ands r0, r6
	lsls r0, r0, #0x07
	movs r3, #0x7F
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #0x00]
	ldrb r0, [r7, #0x11]
	mov r1, r9
	ands r1, r0
	ldr r3, _080FB400 @ =0x0000020D
	add r3, r10
	ands r1, r6
	ldrb r0, [r3, #0x00]
	mov r2, r8
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x01
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x01
	movs r1, #0x03
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x02
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x03
	movs r2, #0x09
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x03
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x00C]
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x12]
	lsrs r0, r0, #0x07
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x02
	movs r1, #0x05
	negs r1, r1
	mov r8, r1
	ldr r2, [sp, #0x00C]
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x04
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x05
	ands r4, r1
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x05
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x06
	ands r4, r5
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x06
	ands r0, r6
	ldr r3, _080FB404 @ =0x0000020E
	add r3, r10
	ands r0, r6
	lsls r0, r0, #0x02
	ldrb r2, [r3, #0x00]
	mov r1, r8
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x12]
	lsrs r0, r0, #0x03
	movs r2, #0x07
	ands r0, r2
	ands r0, r2
	lsls r0, r0, #0x03
	subs r2, #0x40
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x11]
	lsrs r0, r0, #0x07
	ands r0, r6
	ands r0, r6
	lsls r0, r0, #0x06
	ands r5, r2
	orrs r5, r0
	strb r5, [r3, #0x00]
	ldrb r0, [r7, #0x12]
	lsrs r0, r0, #0x06
	ands r0, r6
	lsls r0, r0, #0x07
	movs r1, #0x7F
	ands r5, r1
	orrs r5, r0
	strb r5, [r3, #0x00]
	ldrb r0, [r7, #0x05]
	ands r1, r0
	movs r2, #0xFF
	cmp r1, #0x7F
	beq _080FB34E
	adds r2, r1, #0x0
_080FB34E:
	ldr r0, _080FB408 @ =0x00000222
	add r0, r10
	strb r2, [r0, #0x00]
	ldrb r0, [r7, #0x06]
	movs r1, #0x3F
	ands r1, r0
	movs r2, #0xFF
	cmp r1, #0x3F
	beq _080FB362
	adds r2, r1, #0x0
_080FB362:
	ldr r0, _080FB40C @ =0x00000223
	add r0, r10
	strb r2, [r0, #0x00]
	ldrb r1, [r7, #0x02]
	lsrs r1, r1, #0x07
	ands r1, r6
	ldr r3, _080FB410 @ =0x00000216
	add r3, r10
	ands r1, r6
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r0, [r7, #0x07]
	mov r1, r10
	adds r1, #0x55
	strb r0, [r1, #0x00]
	movs r2, #0x8A
	lsls r2, r2, #0x02
	add r2, r10
	ldrb r1, [r7, #0x0B]
	lsls r1, r1, #0x18
	ldrb r0, [r7, #0x0A]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0x09]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldrb r0, [r7, #0x08]
	orrs r1, r0
	str r1, [r2, #0x00]
	movs r2, #0x8B
	lsls r2, r2, #0x02
	add r2, r10
	ldrb r1, [r7, #0x0F]
	lsls r1, r1, #0x18
	ldrb r0, [r7, #0x0E]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r7, #0x0D]
	lsls r0, r0, #0x08
	orrs r1, r0
	ldrb r0, [r7, #0x0C]
	orrs r1, r0
	str r1, [r2, #0x00]
	ldrb r1, [r7, #0x12]
	movs r0, #0x07
	ands r0, r1
	lsls r1, r0, #0x0F
	mov r3, r12
	ldr r2, [r3, #0x00]
	ldr r3, _080FB414 @ =0xFFFC7FFF
	ands r2, r3
	orrs r2, r1
	mov r1, r12
	str r2, [r1, #0x00]
	cmp r0, #0x00
	bne _080FB418
	adds r0, r3, #0x0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	mov r2, r12
	str r0, [r2, #0x00]
	ldr r3, [sp, #0x008]
	ldrb r1, [r3, #0x00]
	mov r0, r8
	ands r0, r1
	strb r0, [r3, #0x00]
	b _080FB424
	.byte 0x00, 0x00
_080FB3F8: .4byte 0x083D6C58
_080FB3FC: .4byte 0x0000020F
_080FB400: .4byte 0x0000020D
_080FB404: .4byte 0x0000020E
_080FB408: .4byte 0x00000222
_080FB40C: .4byte 0x00000223
_080FB410: .4byte 0x00000216
_080FB414: .4byte 0xFFFC7FFF
_080FB418:
	ldr r1, [sp, #0x008]
	ldrb r0, [r1, #0x00]
	movs r1, #0x04
	orrs r0, r1
	ldr r2, [sp, #0x008]
	strb r0, [r2, #0x00]
_080FB424:
	ldr r0, _080FB444 @ =0x0000020F
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	mov r0, r10
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FB444: .4byte 0x0000020F
	thumb_func_start sub_80FB448
sub_80FB448:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r10, r1
	adds r7, r2, #0x0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0x03
	mov r9, r1
	add r9, r0
	ldr r0, _080FB674 @ =0x082FBDC4
	add r9, r0
	movs r5, #0x83
	lsls r5, r5, #0x02
	adds r2, r7, r5
	mov r12, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _080FB678 @ =0x0000020F
	adds r3, r7, r3
	str r3, [sp, #0x000]
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x05]
	lsls r0, r0, #0x08
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	mov r3, r9
	ldrb r0, [r3, #0x06]
	lsls r0, r0, #0x08
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x08
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	mov r1, r9
	ldrb r0, [r1, #0x02]
	lsls r0, r0, #0x08
	subs r2, #0x08
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	mov r3, r9
	ldrb r0, [r3, #0x03]
	lsls r0, r0, #0x08
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldrb r0, [r3, #0x04]
	lsls r0, r0, #0x08
	ldr r3, _080FB67C @ =0x00000276
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	add r5, r10
	ldrb r1, [r5, #0x00]
	movs r0, #0x0E
	ands r0, r1
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x0F
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r2, [r5, #0x00]
	movs r0, #0x10
	ands r0, r2
	movs r3, #0x11
	negs r3, r3
	mov r8, r3
	mov r2, r8
	ands r2, r1
	orrs r2, r0
	mov r0, r12
	strb r2, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	movs r4, #0x21
	negs r4, r4
	adds r3, r4, #0x0
	ands r3, r2
	orrs r3, r0
	mov r1, r12
	strb r3, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	ands r1, r0
	movs r6, #0x41
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r3
	orrs r0, r1
	mov r2, r12
	strb r0, [r2, #0x00]
	ldrb r1, [r5, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	movs r3, #0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _080FB680 @ =0x0000020D
	mov r0, r10
	adds r5, r0, r3
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	adds r3, r7, r3
	ldrb r1, [r3, #0x00]
	movs r2, #0x02
	negs r2, r2
	ands r2, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldrb r2, [r5, #0x00]
	movs r1, #0x02
	ands r1, r2
	movs r2, #0x03
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r2, [r5, #0x00]
	movs r0, #0x10
	ands r0, r2
	mov r2, r8
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r2, [r5, #0x00]
	movs r0, #0x20
	ands r0, r2
	ands r4, r1
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x40
	ands r0, r1
	ands r4, r6
	orrs r4, r0
	strb r4, [r3, #0x00]
	ldr r3, _080FB684 @ =0x0000020E
	mov r0, r10
	adds r4, r0, r3
	ldrb r1, [r4, #0x00]
	adds r3, r7, r3
	movs r0, #0x04
	ands r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldrb r2, [r4, #0x00]
	movs r0, #0x38
	ands r0, r2
	movs r2, #0x39
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	ands r6, r2
	orrs r6, r0
	strb r6, [r3, #0x00]
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x07
	movs r1, #0x7F
	ands r6, r1
	orrs r6, r0
	strb r6, [r3, #0x00]
	ldr r0, _080FB688 @ =0x00000222
	mov r2, r10
	adds r1, r2, r0
	ldrb r1, [r1, #0x00]
	adds r0, r7, r0
	strb r1, [r0, #0x00]
	ldr r0, _080FB68C @ =0x00000223
	adds r1, r2, r0
	ldrb r1, [r1, #0x00]
	adds r0, r7, r0
	strb r1, [r0, #0x00]
	ldr r1, _080FB690 @ =0x00000216
	adds r0, r2, r1
	ldrb r2, [r0, #0x00]
	adds r1, r7, r1
	movs r0, #0x02
	ands r0, r2
	ldrb r2, [r1, #0x00]
	movs r3, #0x03
	negs r3, r3
	ands r3, r2
	orrs r3, r0
	strb r3, [r1, #0x00]
	mov r0, r10
	adds r0, #0x55
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x55
	strb r0, [r1, #0x00]
	movs r0, #0x8A
	lsls r0, r0, #0x02
	adds r1, r7, r0
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x8B
	lsls r0, r0, #0x02
	adds r1, r7, r0
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	ands r0, r1
	lsls r1, r0, #0x0F
	mov r3, r12
	ldr r2, [r3, #0x00]
	ldr r3, _080FB694 @ =0xFFFC7FFF
	ands r2, r3
	orrs r2, r1
	mov r1, r12
	str r2, [r1, #0x00]
	cmp r0, #0x00
	bne _080FB698
	adds r0, r3, #0x0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	mov r2, r12
	str r0, [r2, #0x00]
	ldr r3, [sp, #0x000]
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	b _080FB6A4
	.byte 0x00, 0x00
_080FB674: .4byte 0x082FBDC4
_080FB678: .4byte 0x0000020F
_080FB67C: .4byte 0x00000276
_080FB680: .4byte 0x0000020D
_080FB684: .4byte 0x0000020E
_080FB688: .4byte 0x00000222
_080FB68C: .4byte 0x00000223
_080FB690: .4byte 0x00000216
_080FB694: .4byte 0xFFFC7FFF
_080FB698:
	ldr r1, [sp, #0x000]
	ldrb r0, [r1, #0x00]
	movs r1, #0x04
	orrs r0, r1
	ldr r2, [sp, #0x000]
	strb r0, [r2, #0x00]
_080FB6A4:
	ldr r2, _080FB6D0 @ =0x0000020F
	mov r3, r10
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	adds r2, r7, r2
	lsrs r1, r1, #0x1F
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FB6D0: .4byte 0x0000020F
	thumb_func_start sub_80FB6D4
sub_80FB6D4:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	ldr r1, _080FB708 @ =0x083D6C58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x03]
	lsls r0, r0, #0x08
	ldrb r1, [r3, #0x02]
	orrs r0, r1
	subs r3, r3, r0
	ldr r4, _080FB70C @ =0x082FBDC4
	ldr r0, _080FB710 @ =0x00000222
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	ldrb r0, [r4, #0x01]
	lsls r0, r0, #0x08
	ldrb r1, [r4, #0x00]
	orrs r1, r0
	movs r0, #0x00
	b _080FB72A
	.byte 0x00, 0x00
_080FB708: .4byte 0x083D6C58
_080FB70C: .4byte 0x082FBDC4
_080FB710: .4byte 0x00000222
_080FB714:
	cmp r1, r2
	bne _080FB71C
	movs r0, #0x01
	b _080FB732
_080FB71C:
	adds r4, #0x09
	ldrb r0, [r4, #0x01]
	lsls r0, r0, #0x08
	ldrb r1, [r4, #0x00]
	orrs r1, r0
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
_080FB72A:
	strb r0, [r5, #0x00]
	cmp r1, #0x00
	bne _080FB714
	movs r0, #0x00
_080FB732:
	pop {r4, r5}
	pop {r1}
	bx r1
