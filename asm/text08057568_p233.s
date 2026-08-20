	.include "asm/macros.inc"

	.syntax unified
	.text

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
