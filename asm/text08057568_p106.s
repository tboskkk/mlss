	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F7D80
sub_80F7D80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	cmp r3, #0x07
	bgt _080F7DA4
	ldr r0, _080F7DA0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F7DB4
	.byte 0x00, 0x00
_080F7DA0: .4byte 0x03000FD8
_080F7DA4:
	ldr r1, _080F7DF8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F7DB4:
	ldr r7, [r4, #0x04]
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _080F7DBE
	adds r1, #0xFF
_080F7DBE:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x08]
	adds r6, r1, r0
	ldr r1, [r2, #0x3C]
	cmp r1, #0x00
	bge _080F7DCC
	adds r1, #0xFF
_080F7DCC:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x0C]
	adds r5, r1, r0
	ldr r3, [r2, #0x40]
	cmp r3, #0x00
	bge _080F7DDA
	adds r3, #0xFF
_080F7DDA:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
	str r2, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_80DF024
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7DF8: .4byte 0x03000FDC
	thumb_func_start sub_80F7DFC
sub_80F7DFC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r6, r2, #0x0
	ldr r4, _080F7E78 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r8, r1
	mov r0, r8
	bl sub_80F746C
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x1C]
	ldrb r0, [r2, #0x01]
	lsls r5, r0, #0x01
	adds r5, r5, r0
	lsls r5, r5, #0x03
	ldr r0, [r6, #0x00]
	lsls r3, r0, #0x02
	ldr r1, _080F7E7C @ =0x08502B14
	adds r1, r3, r1
	adds r5, r5, r1
	adds r2, r2, r3
	ldrh r1, [r2, #0x08]
	ldrh r2, [r5, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r5, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r4, [r5, #0x02]
	lsls r4, r4, #0x12
	asrs r4, r4, #0x16
	str r4, [sp, #0x000]
	ldr r4, [r5, #0x00]
	lsls r4, r4, #0x01
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	bl sub_807AFD4
	ldr r0, [r6, #0x00]
	bl sub_8081F34
	mov r1, r8
	ldr r0, [r1, #0x10]
	bl sub_807BC90
	movs r0, #0x01
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7E78: .4byte 0x03000FD8
_080F7E7C: .4byte 0x08502B14
