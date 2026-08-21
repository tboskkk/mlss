	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F5FF8
sub_80F5FF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r7, r2, #0x0
	ldr r2, [r0, #0x2C]
	ldm r7!, {r1}
	ldr r0, _080F60B4 @ =0x0000179D
	mov r10, r0
	add r2, r10
	lsls r1, r1, #0x07
	ldrb r3, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _080F6026
	negs r0, r0
	str r0, [r7, #0x00]
_080F6026:
	mov r1, r9
	ldr r5, [r1, #0x2C]
	ldr r0, [r7, #0x00]
	ldr r1, [r7, #0x04]
	bl __divsi3
	ldr r1, _080F60B8 @ =0x0000179F
	adds r6, r5, r1
	movs r1, #0x1F
	mov r8, r1
	mov r1, r8
	ands r0, r1
	lsls r3, r0, #0x02
	ldrb r2, [r6, #0x00]
	movs r4, #0x7D
	negs r4, r4
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r3
	strb r1, [r6, #0x00]
	ldr r3, _080F60BC @ =0x0000179E
	adds r5, r5, r3
	lsls r0, r0, #0x05
	ldrh r2, [r5, #0x00]
	ldr r1, _080F60C0 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r7, #0x04
	mov r0, r9
	ldr r2, [r0, #0x2C]
	adds r2, r2, r3
	ldm r7!, {r1}
	mov r0, r8
	ands r1, r0
	ldrb r3, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r2, [r1, #0x2C]
	ldr r1, [r7, #0x00]
	add r2, r10
	movs r0, #0x1F
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r0, [r2, #0x00]
	ands r4, r0
	orrs r4, r1
	strb r4, [r2, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x2C]
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F60B4: .4byte 0x0000179D
_080F60B8: .4byte 0x0000179F
_080F60BC: .4byte 0x0000179E
_080F60C0: .4byte 0xFFFFFC1F
