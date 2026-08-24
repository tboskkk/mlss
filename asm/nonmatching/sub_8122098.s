	.syntax unified
	.text

	thumb_func_start sub_8122098
sub_8122098:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r2, #0x0
	mov r3, sp
	movs r0, #0xC0
	cmp r1, #0x00
	beq _081220BA
	movs r0, #0xD4
_081220BA:
	strh r0, [r3, #0x00]
	movs r0, #0xC0
	cmp r2, #0x00
	beq _081220C4
	movs r0, #0xD4
_081220C4:
	strh r0, [r3, #0x02]
	movs r2, #0x02
	cmp r1, #0x00
	beq _081220CE
	movs r2, #0x03
_081220CE:
	mov r0, sp
	strb r2, [r0, #0x04]
	movs r0, #0x02
	cmp r4, #0x00
	beq _081220DA
	movs r0, #0x03
_081220DA:
	mov r1, sp
	strb r0, [r1, #0x05]
	movs r0, #0x00
	mov r8, r0
	movs r1, #0xC0
	lsls r1, r1, #0x04
	mov r10, r1
	mov r3, sp
	mov r9, r0
_081220EC:
	movs r6, #0xAC
	mov r0, r9
	subs r6, r6, r0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldrh r4, [r3, #0x00]
	adds r4, #0x20
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	add r0, r8
	adds r0, #0x04
	ldrb r5, [r0, #0x00]
	add r0, sp, #0x008
	ldr r1, _0812218C @ =0x08202F58
	movs r2, #0x0C
	str r3, [sp, #0x014]
	bl memcpy
	ldr r1, _08122190 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	movs r0, #0x44
	strh r0, [r7, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	strh r0, [r7, #0x02]
	lsls r5, r5, #0x0C
	mov r0, r10
	orrs r5, r0
	orrs r4, r5
	strh r4, [r7, #0x04]
	adds r7, #0x08
	ldr r3, [sp, #0x014]
	ldrh r4, [r3, #0x00]
	adds r4, #0x30
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #0x004
	add r0, r8
	ldrb r5, [r0, #0x00]
	add r0, sp, #0x008
	ldr r1, _0812218C @ =0x08202F58
	movs r2, #0x0C
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _08122194 @ =0x00004064
	strh r0, [r7, #0x00]
	orrs r6, r1
	strh r6, [r7, #0x02]
	lsls r5, r5, #0x0C
	mov r1, r10
	orrs r5, r1
	orrs r4, r5
	strh r4, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0x08
	adds r7, r0, #0x0
	ldr r3, [sp, #0x014]
	adds r3, #0x02
	movs r1, #0x28
	add r9, r1
	movs r1, #0x01
	add r8, r1
	mov r1, r8
	cmp r1, #0x01
	ble _081220EC
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812218C: .4byte dword_8202F58 @ =0x08202F58
_08122190: .4byte 0x000001FF
_08122194: .4byte 0x00004064
