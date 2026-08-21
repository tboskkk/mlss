	.syntax unified
	.text

	thumb_func_start sub_812791C
sub_812791C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _08127990 @ =0x00000157
	adds r1, r5, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xF3
	strb r0, [r1, #0x00]
	movs r6, #0x00
	movs r2, #0x01
	mov r9, r2
	ldr r0, _08127990 @ =0x00000157
	adds r7, r5, r0
	adds r2, #0xFF
	adds r4, r5, r2
	mov r8, r6
	subs r0, #0x44
	mov r10, r0
_0812794C:
	adds r0, r5, #0x0
	adds r0, #0xF1
	ldrb r1, [r0, #0x00]
	asrs r1, r6
	mov r2, r9
	ands r1, r2
	cmp r1, #0x00
	bne _0812799C
	movs r2, #0xAA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r2, [r7, #0x00]
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	mov r0, sp
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	ldr r2, _08127994 @ =0x0100000E
	bl CpuSet
	movs r0, #0x00
	strb r0, [r4, #0x17]
	ldr r0, [r5, #0x48]
	add r0, r8
	ldrb r0, [r0, #0x10]
	cmp r0, #0xFF
	bne _081279BA
	ldr r0, _08127998 @ =0x0000FFFF
	strh r0, [r4, #0x12]
	b _081279BA
	.byte 0x00, 0x00
_08127990: .4byte 0x00000157
_08127994: .4byte 0x0100000E
_08127998: .4byte 0x0000FFFF
_0812799C:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_8127BC8
	ldrh r0, [r4, #0x12]
	cmp r0, r10
	bne _081279BA
	adds r2, r5, #0x0
	adds r2, #0xF3
	mov r0, r9
	lsls r0, r6
	ldrb r1, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
_081279BA:
	adds r4, #0x1C
	movs r2, #0xDF
	lsls r2, r2, #0x03
	add r8, r2
	adds r6, #0x01
	cmp r6, #0x02
	ble _0812794C
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
