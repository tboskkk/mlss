	.syntax unified
	.text

	thumb_func_start sub_81270E4
sub_81270E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	mov r10, r0
	adds r4, r1, #0x0
	mov r5, r10
	adds r5, #0xFA
	movs r1, #0x00
	ldsb r1, [r5, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	adds r3, r1, r0
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	ldr r6, _081271A8 @ =0x00000117
	adds r0, r3, r6
	ldrb r2, [r0, #0x00]
	subs r6, #0x07
	adds r0, r3, r6
	ldrh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8121F1C
	adds r4, r0, #0x0
	movs r1, #0x00
	ldsb r1, [r5, r1]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	adds r2, r1, r0
	movs r3, #0x82
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	subs r6, #0x04
	adds r0, r2, r6
	ldrb r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8122098
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	mov r9, r0
	movs r1, #0xC0
	lsls r1, r1, #0x0D
	str r1, [sp, #0x01C]
	movs r2, #0x00
	str r2, [sp, #0x020]
_08127156:
	movs r6, #0x08
	movs r2, #0x0D
	movs r7, #0x52
	movs r5, #0x01
	mov r0, r10
	adds r0, #0xFA
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r8
	bne _08127174
	movs r6, #0x00
	movs r2, #0x06
	movs r7, #0x42
	movs r5, #0x00
_08127174:
	mov r0, r10
	adds r0, #0xF1
	ldrb r3, [r0, #0x00]
	mov r0, r8
	asrs r3, r0
	movs r0, #0x01
	ands r3, r0
	cmp r3, #0x00
	bne _081271AC
	ldr r2, [sp, #0x01C]
	asrs r1, r2, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r5, [sp, #0x000]
	movs r6, #0x02
	str r6, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x20
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x03
	str r0, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	b _08127200
	.byte 0x00, 0x00
_081271A8: .4byte 0x00000117
_081271AC:
	ldr r1, [sp, #0x020]
	adds r1, #0x20
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r0, [sp, #0x000]
	mov r3, r9
	str r3, [sp, #0x004]
	mov r3, r8
	lsls r0, r3, #0x11
	movs r3, #0x92
	lsls r3, r3, #0x10
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r3, #0x03
	str r3, [sp, #0x010]
	mov r0, r9
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r4, r0, #0x0
	ldr r2, [sp, #0x01C]
	asrs r1, r2, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	str r5, [sp, #0x000]
	movs r3, #0x02
	str r3, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x38
	str r0, [sp, #0x008]
	str r3, [sp, #0x00C]
	movs r6, #0x03
	str r6, [sp, #0x010]
	mov r0, r9
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
_08127200:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r4, r0, #0x0
	ldr r1, [sp, #0x01C]
	movs r2, #0x80
	lsls r2, r2, #0x0E
	adds r1, r1, r2
	str r1, [sp, #0x01C]
	ldr r3, [sp, #0x020]
	adds r3, #0x20
	str r3, [sp, #0x020]
	movs r6, #0x01
	add r8, r6
	mov r0, r8
	cmp r0, #0x02
	ble _08127156
	adds r0, r4, #0x0
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
