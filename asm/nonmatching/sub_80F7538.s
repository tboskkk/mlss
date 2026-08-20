	.syntax unified
	.text

	thumb_func_start sub_80F7538
sub_80F7538:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _080F7584 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r0, #0x91
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x2C]
	ldr r0, _080F7588 @ =0x00001788
	adds r2, r1, r0
	ldr r0, [r2, #0x00]
	orrs r0, r3
	str r0, [r2, #0x00]
	ldr r0, _080F758C @ =0x00001798
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	orrs r0, r3
	str r0, [r1, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x02
	add r2, r12
	ldr r1, [r2, #0x00]
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _080F757E
	eors r1, r3
	str r1, [r2, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x01
	strb r0, [r1, #0x00]
_080F757E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F7584: .4byte 0x03000FD8
_080F7588: .4byte 0x00001788
_080F758C: .4byte 0x00001798
