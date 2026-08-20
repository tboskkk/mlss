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
	thumb_func_start sub_80F8008
sub_80F8008:
	push {lr}
	adds r3, r2, #0x0
	ldr r0, _080F8028 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080F802C
	cmp r0, #0x01
	beq _080F8048
	b _080F806E
_080F8028: .4byte 0x03000FD8
_080F802C:
	mov r1, r12
	adds r1, #0xD8
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x08]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x0C]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	b _080F806E
_080F8048:
	mov r2, r12
	adds r2, #0xD8
	ldr r1, [r3, #0x04]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, [r3, #0x0C]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, [r3, #0x08]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_080F806E:
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F8074
sub_80F8074:
	push {lr}
	ldr r1, [r2, #0x00]
	cmp r1, #0x07
	ble _080F80A4
	ldr r2, _080F80AC @ =0x03000FDC
	movs r0, #0xD0
	muls r1, r0
	movs r0, #0x98
	lsls r0, r0, #0x04
	adds r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	ldr r1, _080F80B0 @ =0xFFFFF980
	adds r2, r0, r1
	adds r1, #0x76
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _080F80A4
	adds r0, r2, #0x0
	bl sub_807C298
_080F80A4:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F80AC: .4byte 0x03000FDC
_080F80B0: .4byte 0xFFFFF980
	thumb_func_start sub_80F80B4
sub_80F80B4:
	push {lr}
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x04]
	bl sub_807C1C8
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F80C4
sub_80F80C4:
	push {lr}
	ldr r0, _080F80F8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	movs r3, #0x00
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080F80DE
	movs r3, #0x01
_080F80DE:
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r1, r0
	lsls r3, r3, #0x05
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
_080F80F8: .4byte 0x03000FD8
	thumb_func_start sub_80F80FC
sub_80F80FC:
	push {r4, lr}
	ldr r0, _080F8144 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r2!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	ldm r2!, {r1}
	mov r0, r12
	adds r0, #0xD0
	strh r1, [r0, #0x00]
	ldm r2!, {r1}
	mov r4, r12
	adds r4, #0xD4
	movs r0, #0x7F
	ands r1, r0
	ldrb r3, [r4, #0x00]
	subs r0, #0xFF
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r2, #0x00]
	mov r0, r12
	adds r0, #0xD2
	strh r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8144: .4byte 0x03000FD8
	thumb_func_start sub_80F8148
sub_80F8148:
	push {r4, lr}
	ldr r0, _080F8194 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r1, #0xFD
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r3, #0x58
	adds r3, r3, r0
	ldr r3, [r3, #0x00]
	mov r12, r3
	ldm r2!, {r1}
	mov r0, r12
	adds r0, #0xD0
	strh r1, [r0, #0x00]
	ldm r2!, {r1}
	mov r4, r12
	adds r4, #0xD4
	movs r0, #0x7F
	ands r1, r0
	ldrb r3, [r4, #0x00]
	subs r0, #0xFF
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r2, #0x00]
	mov r0, r12
	adds r0, #0xD2
	strh r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8194: .4byte 0x03000FD8
	thumb_func_start sub_80F8198
sub_80F8198:
	push {lr}
	ldr r0, _080F81B0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x7C]
	cmp r0, #0x00
	beq _080F81CC
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _080F81B4
	adds r1, r0, #0x0
	b _080F81BE
	.byte 0x00, 0x00
_080F81B0: .4byte 0x03000FD8
_080F81B4:
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
_080F81BE:
	ldr r0, [r1, #0x54]
	cmp r0, #0x00
	beq _080F81CC
	adds r0, r1, #0x0
	adds r0, #0x08
	bl sub_80874B4
_080F81CC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F81D4
sub_80F81D4:
	push {lr}
	adds r3, r1, #0x0
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F81E4
	cmp r2, #0x01
	beq _080F8226
	b _080F824C
_080F81E4:
	ldr r0, _080F8200 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F8206
	.byte 0x00, 0x00
_080F8200: .4byte 0x03000FD8
_080F8204:
	ldr r1, [r1, #0x00]
_080F8206:
	cmp r1, #0x00
	beq _080F8240
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _080F8204
	cmp r1, #0x00
	beq _080F8240
	adds r2, r3, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _080F824C
_080F8226:
	ldr r0, _080F8244 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1A
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x54]
	cmp r0, #0x00
	bne _080F8248
_080F8240:
	movs r0, #0x01
	b _080F824E
_080F8244: .4byte 0x03000FD8
_080F8248:
	ldr r0, [r3, #0x14]
	str r0, [r3, #0x00]
_080F824C:
	movs r0, #0x00
_080F824E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
