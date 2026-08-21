	.syntax unified
	.text

	thumb_func_start sub_8127DB4
sub_8127DB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	mov r9, r1
	adds r5, r3, #0x0
	ldr r0, [sp, #0x020]
	mov r8, r0
	ldr r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	mov r1, r9
	asrs r1, r1, #0x03
	mov r9, r1
	asrs r2, r2, #0x03
	add r5, r9
	add r8, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, r8
	bge _08127E2A
_08127DE8:
	mov r1, r9
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #0x1
	mov r12, r0
	cmp r3, r5
	bge _08127E20
	lsls r0, r2, #0x06
	mov r1, r10
	adds r4, r0, r1
_08127DFC:
	cmp r7, #0x00
	bne _08127E08
	lsls r0, r3, #0x01
	adds r0, r0, r4
	strh r7, [r0, #0x00]
	b _08127E16
_08127E08:
	lsls r2, r3, #0x01
	adds r2, r2, r4
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r2, #0x00]
_08127E16:
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	blt _08127DFC
_08127E20:
	mov r1, r12
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r8
	blt _08127DE8
_08127E2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
