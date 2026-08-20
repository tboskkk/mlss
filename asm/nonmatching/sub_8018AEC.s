	.syntax unified
	.text

	thumb_func_start sub_8018AEC
sub_8018AEC:
	push {r4, lr}
	ldr r1, _08018B6C @ =0x0300034C
	ldr r2, _08018B70 @ =0x00000888
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r1, #0x80
	adds r1, r0, r1
	movs r4, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r3, r0, #0x0
	movs r2, #0x00
_08018B0A:
	strh r3, [r1, #0x06]
	strh r2, [r1, #0x0E]
	strh r2, [r1, #0x16]
	strh r3, [r1, #0x1E]
	adds r0, r1, #0x0
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	adds r0, #0x20
	strh r3, [r0, #0x06]
	strh r2, [r0, #0x0E]
	strh r2, [r0, #0x16]
	strh r3, [r0, #0x1E]
	subs r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r1, r1, r0
	cmp r4, #0x00
	bne _08018B0A
	pop {r4}
	pop {r0}
	bx r0
_08018B6C: .4byte 0x0300034C
_08018B70: .4byte 0x00000888
