	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F7FA4
sub_80F7FA4:
	push {lr}
	ldr r0, _080F7FC4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x10]
	ldr r1, [r2, #0x04]
	bl sub_8083E84
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7FC4: .4byte 0x03000FD8
	thumb_func_start sub_80F7FC8
sub_80F7FC8:
	ldr r0, _080F8004 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	mov r1, r12
	adds r1, #0xD8
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	bx lr
_080F8004: .4byte 0x03000FD8
