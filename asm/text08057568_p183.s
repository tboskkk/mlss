	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F7EF8
sub_80F7EF8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080F7F08
	cmp r0, #0x01
	beq _080F7F20
	b _080F7F4A
_080F7F08:
	ldr r0, [r2, #0x00]
	ldr r1, _080F7F1C @ =0x03000FD8
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x58]
	bl sub_80F746C
	b _080F7F4A
	.byte 0x00, 0x00
_080F7F1C: .4byte 0x03000FD8
_080F7F20:
	adds r3, r4, #0x0
	adds r3, #0xFE
	movs r0, #0x07
	ldrb r1, [r2, #0x00]
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _080F7F4C
_080F7F4A:
	movs r0, #0x01
_080F7F4C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F7F54
sub_80F7F54:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	ldm r5!, {r0}
	cmp r0, #0x00
	bne _080F7F94
	ldm r5!, {r2}
	subs r2, #0x07
	lsls r2, r2, #0x01
	ldr r0, _080F7F9C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x02
	adds r4, r3, r0
	movs r0, #0x03
	lsls r0, r2
	ldr r1, [r4, #0x00]
	bics r1, r0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	lsls r0, r2
	orrs r1, r0
	str r1, [r4, #0x00]
	ldr r1, [r5, #0x00]
	subs r1, #0x01
	ldr r0, _080F7FA0 @ =0x000002BF
	adds r3, r3, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F7F94:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F7F9C: .4byte 0x03000FD8
_080F7FA0: .4byte 0x000002BF
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
