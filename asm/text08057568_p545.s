	.include "asm/macros.inc"

	.syntax unified
	.text

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
