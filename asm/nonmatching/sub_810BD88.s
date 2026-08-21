	.syntax unified
	.text

	thumb_func_start sub_810BD88
sub_810BD88:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	ldr r6, [r7, #0x08]
	adds r0, r6, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	movs r3, #0x0C
	str r3, [sp, #0x004]
	cmp r1, r0
	bne _0810BDB0
	movs r0, #0x0B
	str r0, [sp, #0x004]
_0810BDB0:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	mov r8, r1
	movs r1, #0x14
	ldsh r0, [r7, r1]
	mov r9, r0
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810BDDA
	ldr r0, _0810BE00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0810BDDA
	b _0810BFD2
_0810BDDA:
	movs r3, #0x16
	ldsh r0, [r7, r3]
	cmp r0, #0x01
	bne _0810BE04
	adds r0, r6, #0x0
	adds r0, #0xFC
	movs r1, #0x00
	ldsh r4, [r0, r1]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r2, [r0, r3]
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	movs r3, #0x00
	ldsh r2, [r0, r3]
	b _0810BE1E
	.byte 0x00, 0x00
_0810BE00: .4byte 0x03000FD8
_0810BE04:
	cmp r0, #0x02
	bne _0810BE1E
	adds r0, r6, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r4, [r0, r1]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r2, [r0, r3]
	str r2, [sp, #0x008]
	adds r0, #0x02
	movs r1, #0x00
	ldsh r2, [r0, r1]
_0810BE1E:
	cmp r2, r4
	beq _0810BE52
	adds r0, r2, #0x0
	bl sub_8083F88
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8083F88
	adds r1, r0, #0x0
	mov r2, r8
	adds r2, #0x15
	mov r4, r9
	adds r4, #0x04
	movs r3, #0x10
	ldsh r0, [r7, r3]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_810A240
	str r4, [sp, #0x00C]
	mov r0, r8
	adds r0, #0x29
	str r0, [sp, #0x010]
	b _0810BEB2
_0810BE52:
	adds r0, r4, #0x0
	bl sub_8083F88
	mov r1, r9
	adds r1, #0x04
	adds r5, r0, #0x0
	mov r3, r8
	adds r3, #0x15
	movs r4, #0xFF
	ands r4, r1
	ldr r0, _0810BEE4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldr r2, [r0, #0x00]
	str r1, [sp, #0x00C]
	mov r0, r8
	adds r0, #0x29
	str r0, [sp, #0x010]
	movs r1, #0x0F
	mov r10, r1
	ldr r0, _0810BEE8 @ =0x000001FF
	mov r12, r0
	ldr r1, _0810BEEC @ =0xFFFF8000
	adds r0, r1, #0x0
	orrs r4, r0
_0810BE86:
	adds r0, r5, #0x0
	mov r1, r10
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r3, #0x08
	mov r1, r12
	ands r3, r1
	strh r4, [r2, #0x00]
	strh r3, [r2, #0x02]
	ldr r1, _0810BEF0 @ =0xFFFFB000
	orrs r0, r1
	strh r0, [r2, #0x04]
	adds r2, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0810BE86
	ldr r0, _0810BEE4 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r2, [r0, #0x00]
_0810BEB2:
	ldrh r1, [r7, #0x10]
	movs r2, #0x10
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	ble _0810BEF4
	subs r0, r1, #0x6
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0810BF22
	adds r0, r6, #0x0
	adds r0, #0xF6
	ldrh r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xFA
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xFC
	ldrh r1, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	movs r0, #0x00
	b _0810BF20
_0810BEE4: .4byte 0x0300034C
_0810BEE8: .4byte 0x000001FF
_0810BEEC: .4byte 0xFFFF8000
_0810BEF0: .4byte 0xFFFFB000
_0810BEF4:
	adds r0, r6, #0x0
	adds r0, #0xFA
	adds r2, r6, #0x0
	adds r2, #0xF6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r1, r0
	bne _0810BF1E
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r6, r1
	adds r1, r6, #0x0
	adds r1, #0xFC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r2, r0
	beq _0810BF22
_0810BF1E:
	movs r0, #0x3A
_0810BF20:
	strh r0, [r7, #0x10]
_0810BF22:
	ldr r0, [sp, #0x008]
	bl sub_8083F88
	ldr r1, [sp, #0x008]
	cmp r1, #0x63
	bgt _0810BF3C
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x008]
	cmp r2, #0x09
	bgt _0810BF40
	mov r1, r8
	adds r1, #0x21
	b _0810BF40
_0810BF3C:
	mov r1, r8
	adds r1, #0x31
_0810BF40:
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	movs r6, #0xFF
	ldr r0, [sp, #0x00C]
	ands r6, r0
	ldr r0, _0810BFE4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	ldr r1, _0810BFE8 @ =0x03000FD8
	mov r12, r1
	mov r10, r0
	movs r7, #0x0F
	ldr r4, _0810BFEC @ =0x000001FF
	ldr r1, _0810BFF0 @ =0xFFFF8000
	adds r0, r1, #0x0
	orrs r6, r0
	ldr r0, _0810BFF4 @ =0xFFFFB000
	adds r1, r0, #0x0
_0810BF68:
	adds r0, r5, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r3, #0x08
	ands r3, r4
	strh r6, [r2, #0x00]
	strh r3, [r2, #0x02]
	orrs r0, r1
	strh r0, [r2, #0x04]
	adds r2, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0810BF68
	movs r3, #0x88
	lsls r3, r3, #0x04
	add r3, r10
	str r2, [r3, #0x00]
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810BFD2
	movs r0, #0xFF
	mov r1, r9
	ands r1, r0
	mov r9, r1
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	mov r1, r9
	orrs r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _0810BFEC @ =0x000001FF
	adds r0, r1, #0x0
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r1, _0810BFF8 @ =0xFFFFC000
	adds r0, r1, #0x0
	mov r1, r8
	orrs r1, r0
	strh r1, [r2, #0x02]
	adds r2, #0x04
	ldr r1, [sp, #0x004]
	lsls r0, r1, #0x0C
	movs r1, #0x6F
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	str r2, [r3, #0x00]
_0810BFD2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810BFE4: .4byte 0x0300034C
_0810BFE8: .4byte 0x03000FD8
_0810BFEC: .4byte 0x000001FF
_0810BFF0: .4byte 0xFFFF8000
_0810BFF4: .4byte 0xFFFFB000
_0810BFF8: .4byte 0xFFFFC000
