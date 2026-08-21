	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F0184
sub_80F0184:
	push {r4, r5, lr}
	ldr r5, _080F01C4 @ =0x03000FD0
	ldr r0, [r5, #0x00]
	ldr r4, _080F01C8 @ =0x000004AC
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r5, _080F01CC @ =0x03000FCC
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F01AC
	movs r1, #0x03
	bl sub_80E5968
	str r4, [r5, #0x00]
_080F01AC:
	ldr r5, _080F01D0 @ =0x03000FC8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F01BC
	movs r1, #0x03
	bl sub_80E8EFC
	str r4, [r5, #0x00]
_080F01BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F01C4: .4byte 0x03000FD0
_080F01C8: .4byte 0x000004AC
_080F01CC: .4byte 0x03000FCC
_080F01D0: .4byte 0x03000FC8
	thumb_func_start sub_80F01D4
sub_80F01D4:
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _080F020C @ =0x03000D44
	ldr r3, [r0, #0x00]
	strh r1, [r3, #0x20]
	adds r3, #0x28
	movs r0, #0x0F
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x00]
	subs r0, #0x4C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r4, _080F0210 @ =0x03000FC8
	ldr r2, _080F0214 @ =0x082001B8
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80E87E4
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080F020C: .4byte 0x03000D44
_080F0210: .4byte 0x03000FC8
_080F0214: .4byte 0x082001B8
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x82, 0xB0, 0x06, 0x1C, 0x90, 0x46, 0x09, 0x06, 0x30, 0x68
	.byte 0x40, 0x69, 0x89, 0x0D, 0x09, 0x18, 0x8C, 0x6A, 0x27, 0x1C, 0x58, 0x37, 0x25, 0x1C, 0xF8, 0x35
	.byte 0x29, 0x88, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x56, 0xF7, 0x9C, 0xFB
	.byte 0x29, 0x88, 0x40, 0x20, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x56, 0xF7, 0xDC, 0xFB
	.byte 0x29, 0x88, 0x20, 0x20, 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x57, 0xF7, 0xBA, 0xF8
	.byte 0x30, 0x68, 0x1C, 0x30, 0x01, 0x21, 0x00, 0x91, 0xFF, 0x21, 0x01, 0x91, 0x39, 0x1C, 0x42, 0x46
	.byte 0x00, 0x23, 0xFA, 0xF7, 0xA5, 0xF9, 0x02, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_80F028C
sub_80F028C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r4, _080F031C @ =0x03000FD0
	ldr r2, [r4, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F02D6
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F0310
	ldr r1, _080F0320 @ =0x0000055A
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F0310
_080F02D6:
	movs r0, #0x02
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x96
	lsls r1, r1, #0x03
	adds r0, r2, r1
	ldr r1, _080F0324 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r1, #0x2F
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	ldr r0, [r7, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, #0xA8
	add r2, sp, #0x008
	bl sub_80ECB20
	ldr r0, [r4, #0x00]
	ldr r1, _080F0328 @ =0x0000054C
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
_080F0310:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F031C: .4byte 0x03000FD0
_080F0320: .4byte 0x0000055A
_080F0324: .4byte 0x03000FC0
_080F0328: .4byte 0x0000054C
	thumb_func_start sub_80F032C
sub_80F032C:
	push {r4, lr}
	ldr r4, _080F0348 @ =0x03000FCC
	ldr r0, [r4, #0x00]
	movs r1, #0x04
	bl sub_80E6FB8
	ldr r0, [r4, #0x00]
	movs r1, #0x10
	bl sub_80E7118
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F0348: .4byte 0x03000FCC
	thumb_func_start sub_80F034C
sub_80F034C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r8, r1
	ldr r2, [r4, #0x00]
	ldr r3, _080F03BC @ =0x08CDC2F8
	str r3, [r2, #0x18]
	cmp r1, #0x00
	bne _080F037E
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r4, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F037E:
	bl sub_80E8DC0
	ldr r0, _080F03C0 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080F03A0
	ldr r0, [r4, #0x00]
	ldr r1, _080F03C4 @ =0x08CDBD68
	str r1, [r0, #0x18]
	movs r1, #0x00
	bl process_remove
_080F03A0:
	movs r0, #0x01
	mov r5, r8
	ands r0, r5
	cmp r0, #0x00
	beq _080F03B0
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_080F03B0:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F03BC: .4byte 0x08CDC2F8
_080F03C0: .4byte 0x03000FD0
_080F03C4: .4byte 0x08CDBD68
	thumb_func_start sub_80F03C8
sub_80F03C8:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, _080F041C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r5, r0, r1
	adds r1, #0xA0
	adds r4, r0, r1
	ldrh r1, [r4, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F03FE
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F03FE
	ldrh r1, [r4, #0x00]
	adds r0, r7, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080F03FE:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F0416
	ldr r0, [r6, #0x00]
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA778
_080F0416:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F041C: .4byte 0x03000FD0
	thumb_func_start sub_80F0420
sub_80F0420:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	mov r8, r1
	ldr r2, [r4, #0x00]
	ldr r3, _080F0484 @ =0x08CDC308
	str r3, [r2, #0x18]
	cmp r1, #0x00
	bne _080F0452
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r4, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F0452:
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	beq _080F0468
	ldr r0, [r4, #0x00]
	ldr r1, _080F0488 @ =0x08CDBD68
	str r1, [r0, #0x18]
	movs r1, #0x00
	bl process_remove
_080F0468:
	movs r0, #0x01
	mov r5, r8
	ands r0, r5
	cmp r0, #0x00
	beq _080F0478
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_080F0478:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F0484: .4byte 0x08CDC308
_080F0488: .4byte 0x08CDBD68
	thumb_func_start bevs_process_init_80F048C
bevs_process_init_80F048C: @ 080F048C
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	cmp r6, #0x00
	beq _080F04AC
	adds r4, r5, #0x4
	str r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl process_add
	ldr r0, _080F04E0 @ =0x08CDBD68
	str r0, [r4, #0x18]
_080F04AC:
	ldr r2, [r5, #0x00]
	ldr r3, _080F04E4 @ =0x08CDC308
	str r3, [r2, #0x18]
	cmp r6, #0x00
	bne _080F04D2
	mov r1, sp
	adds r0, r3, #0x0
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r0, sp
	str r0, [r2, #0x18]
	mov r1, sp
	subs r0, r2, #0x4
	subs r0, r5, r0
	ldrh r3, [r3, #0x08]
	adds r0, r0, r3
	strh r0, [r1, #0x08]
_080F04D2:
	ldr r0, _080F04E8 @ =0x03000FD4
	str r5, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F04E0: .4byte 0x08CDBD68
_080F04E4: .4byte 0x08CDC308
_080F04E8: .4byte 0x03000FD4
