	.syntax unified
	.text

	thumb_func_start sub_8116B48
sub_8116B48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x020]
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08116BC8 @ =0x08201F30
	mov r0, sp
	movs r2, #0x06
	bl memcpy
	add r7, sp, #0x008
	ldr r0, _08116BCC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x8A
	str r1, [sp, #0x014]
	adds r1, #0x28
	str r1, [sp, #0x018]
	adds r0, #0xAA
	str r0, [sp, #0x01C]
	add r1, sp, #0x014
	adds r0, r7, #0x0
	movs r2, #0x0C
	bl memcpy
	lsls r0, r5, #0x01
	add r0, sp
	ldrh r1, [r0, #0x00]
	adds r2, r4, r1
	mov r10, r2
	movs r6, #0x00
	cmp r8, r1
	blt _08116B9E
	b _08116CA6
_08116B9E:
	lsls r0, r5, #0x02
	adds r7, r7, r0
	mov r9, r7
	mov r12, r1
	ldr r7, [sp, #0x00C]
	ldr r1, _08116BD0 @ =0x083BBDD0
	movs r0, #0x01
	mov r2, r12
	ands r0, r2
	cmp r2, #0x00
	ble _08116BB8
	cmp r0, #0x00
	beq _08116C0A
_08116BB8:
	cmp r5, #0x01
	bne _08116BD4
	ldrb r0, [r7, #0x00]
	ands r0, r5
	cmp r0, #0x00
	bne _08116BE2
	b _08116C02
	.byte 0x00, 0x00
_08116BC8: .4byte dword_8201F30 @ =0x08201F30
_08116BCC: .4byte 0x03000FF4
_08116BD0: .4byte byte_83BBDD0 @ =0x083BBDD0
_08116BD4:
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08116C02
	cmp r0, #0xFF
	beq _08116C02
_08116BE2:
	cmp r5, #0x00
	bne _08116BF0
	ldrb r0, [r1, #0x04]
	ldr r2, [sp, #0x020]
	ands r0, r2
	cmp r0, #0x00
	beq _08116C02
_08116BF0:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r4, #0x00
	beq _08116C02
	strb r6, [r4, #0x00]
	adds r4, #0x01
_08116C02:
	adds r1, #0x10
	adds r6, #0x01
	cmp r6, r12
	bge _08116CA6
_08116C0A:
	adds r3, r1, #0x0
_08116C0C:
	cmp r5, #0x01
	bne _08116C24
	asrs r0, r6, #0x03
	adds r0, r7, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r6
	asrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	bne _08116C34
	b _08116C54
_08116C24:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08116C54
	cmp r0, #0xFF
	beq _08116C54
_08116C34:
	cmp r5, #0x00
	bne _08116C42
	ldrb r0, [r3, #0x04]
	ldr r2, [sp, #0x020]
	ands r0, r2
	cmp r0, #0x00
	beq _08116C54
_08116C42:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r4, #0x00
	beq _08116C54
	strb r6, [r4, #0x00]
	adds r4, #0x01
_08116C54:
	adds r2, r6, #0x1
	cmp r5, #0x01
	bne _08116C6E
	asrs r0, r2, #0x03
	adds r0, r7, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r2
	asrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	bne _08116C7E
	b _08116C9E
_08116C6E:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08116C9E
	cmp r0, #0xFF
	beq _08116C9E
_08116C7E:
	cmp r5, #0x00
	bne _08116C8C
	ldrb r0, [r3, #0x14]
	ldr r1, [sp, #0x020]
	ands r0, r1
	cmp r0, #0x00
	beq _08116C9E
_08116C8C:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r4, #0x00
	beq _08116C9E
	strb r2, [r4, #0x00]
	adds r4, #0x01
_08116C9E:
	adds r3, #0x20
	adds r6, #0x02
	cmp r6, r12
	blt _08116C0C
_08116CA6:
	cmp r4, r10
	bcs _08116CE2
	movs r2, #0xFF
	mov r0, r10
	subs r1, r0, r4
	movs r0, #0x03
	ands r1, r0
	cmp r4, r10
	bge _08116CCC
	cmp r1, #0x00
	beq _08116CD4
	cmp r1, #0x01
	ble _08116CCC
	cmp r1, #0x02
	ble _08116CC8
	strb r2, [r4, #0x00]
	adds r4, #0x01
_08116CC8:
	strb r2, [r4, #0x00]
	adds r4, #0x01
_08116CCC:
	strb r2, [r4, #0x00]
	adds r4, #0x01
	cmp r4, r10
	bcs _08116CE2
_08116CD4:
	strb r2, [r4, #0x00]
	strb r2, [r4, #0x01]
	strb r2, [r4, #0x02]
	strb r2, [r4, #0x03]
	adds r4, #0x04
	cmp r4, r10
	bcc _08116CD4
_08116CE2:
	mov r0, r8
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
