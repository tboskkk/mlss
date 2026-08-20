	.syntax unified
	.text

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
