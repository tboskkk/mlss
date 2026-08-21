	.syntax unified
	.text

	thumb_func_start sub_8137FA4
sub_8137FA4:
	push {r4, r5, lr}
	mov r12, r0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x90
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	movs r5, #0x97
	lsls r5, r5, #0x02
	add r5, r12
	ldr r1, [r5, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08138050
	cmp r4, #0x00
	beq _08138040
	ldr r2, _08138034 @ =0x000002B6
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xDF
	lsls r0, r0, #0x01
	add r0, r12
	movs r3, #0x00
	strh r4, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0xE6
	lsls r0, r0, #0x01
	add r0, r12
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	add r2, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	add r1, r12
	mov r2, r12
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	add r1, r12
	ldr r0, _08138038 @ =0x0000023E
	add r0, r12
	movs r4, #0x00
	ldsh r0, [r0, r4]
	str r0, [r1, #0x00]
	str r3, [r5, #0x00]
	ldr r2, _0813803C @ =0x000002B5
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	b _0813804C
_08138034: .4byte 0x000002B6
_08138038: .4byte 0x0000023E
_0813803C: .4byte 0x000002B5
_08138040:
	ldr r2, _08138058 @ =0x000002B6
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
_0813804C:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08138050:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138058: .4byte 0x000002B6
