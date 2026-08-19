	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8018A4C
sub_8018A4C:
	ldr r1, _08018A60 @ =0x0300034C
	str r0, [r1, #0x24]
	ldr r0, _08018A64 @ =0x00000889
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08018A60: .4byte 0x0300034C
_08018A64: .4byte 0x00000889
	thumb_func_start sub_8018A68
sub_8018A68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r7, #0x80
	lsls r7, r7, #0x12
	ldrh r0, [r7, #0x00]
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r7, #0x00]
	ldr r1, _08018AD8 @ =0x04000132
	ldr r2, _08018ADC @ =0x00008304
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r6, _08018AE0 @ =0x04000208
	movs r0, #0x00
	mov r8, r0
	strh r0, [r6, #0x00]
	ldr r5, _08018AE4 @ =0x04000200
	ldrh r4, [r5, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r1, #0x0
	strh r0, [r5, #0x00]
	ldr r0, _08018AE8 @ =0x04000202
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r0, #0x01
	mov r9, r0
	strh r0, [r6, #0x00]
	bl sub_81DA6B0
	swi #3
	bl sub_81DA6B8
	mov r1, r8
	strh r1, [r6, #0x00]
	strh r4, [r5, #0x00]
	mov r2, r9
	strh r2, [r6, #0x00]
	mov r0, r10
	strh r0, [r7, #0x00]
	bl sub_81DA6C0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08018AD8: .4byte 0x04000132
_08018ADC: .4byte 0x00008304
_08018AE0: .4byte 0x04000208
_08018AE4: .4byte 0x04000200
_08018AE8: .4byte 0x04000202
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
