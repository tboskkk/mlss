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
