	.syntax unified
	.text

	thumb_func_start sub_8106C64
sub_8106C64:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r6, _08106D18 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrb r2, [r3, #0x05]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r3, #0x05]
	ldr r1, _08106D1C @ =0x081072A9
	mov r8, r1
	movs r5, #0x91
	lsls r5, r5, #0x01
	movs r4, #0x41
	negs r4, r4
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x58]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x5C]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x60]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x64]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x68]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x6C]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, [r1, #0x70]
	adds r2, r2, r5
	ldrb r3, [r2, #0x00]
	adds r1, r4, #0x0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r1, [r1, #0x74]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	ands r4, r2
	strb r4, [r1, #0x00]
	mov r2, r8
	str r2, [r0, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x16
	bl sub_80F7538
	bl sub_8081E74
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106D18: .4byte 0x03000FD8
_08106D1C: .4byte sub_81072A8
