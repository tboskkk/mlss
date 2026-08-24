	.syntax unified
	.text

	thumb_func_start sub_8102CA4
sub_8102CA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x008]
	movs r4, #0x00
	ldr r7, _08102E7C @ =0x03000FD8
	mov r8, r4
_08102CB8:
	ldr r5, [r7, #0x00]
	lsls r1, r4, #0x02
	adds r0, r5, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	bne _08102CCC
	b _08102E8C
_08102CCC:
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r0, r0
	mov r9, r0
	ldr r1, _08102E80 @ =0x03000FF4
	lsls r0, r0, #0x04
	mov r2, r9
	subs r0, r0, r2
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r3, r1, r0
	adds r0, r3, #0x0
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	cmp r1, #0x62
	ble _08102CF0
	b _08102E8C
_08102CF0:
	lsls r2, r2, #0x03
	add r2, r9
	lsls r0, r2, #0x05
	adds r2, r2, r0
	lsls r2, r2, #0x02
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _08102E84 @ =0x083BAEAC
	adds r0, r0, r1
	adds r2, r2, r0
	subs r2, #0x0C
	ldr r1, [r3, #0x04]
	lsls r1, r1, #0x08
	lsrs r1, r1, #0x08
	ldrh r3, [r2, #0x06]
	ldrb r0, [r2, #0x08]
	lsls r0, r0, #0x10
	orrs r0, r3
	cmp r1, r0
	bcs _08102D1C
	b _08102E8C
_08102D1C:
	movs r6, #0x94
	lsls r6, r6, #0x02
	adds r0, r5, r6
	ldr r0, [r0, #0x00]
	movs r5, #0x1E
	str r5, [sp, #0x000]
	movs r4, #0x14
	str r4, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084E98
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084E98
	ldr r0, [r7, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102D68
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	mov r1, r8
	str r1, [r0, #0x00]
_08102D68:
	ldr r0, [r7, #0x00]
	movs r2, #0xDB
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102D86
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0, #0x00]
_08102D86:
	ldr r0, [r7, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102D9A
	mov r2, r8
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102D9A:
	ldr r0, [r7, #0x00]
	movs r1, #0xDF
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102DB8
	bl sub_807C298
	ldr r0, [r7, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	mov r1, r8
	str r1, [r0, #0x00]
_08102DB8:
	ldr r0, [r7, #0x00]
	movs r2, #0xDE
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08102DD6
	bl sub_807C298
	ldr r0, [r7, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0, #0x00]
_08102DD6:
	ldr r0, [r7, #0x00]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102DEA
	mov r2, r8
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102DEA:
	movs r4, #0x00
	mov r0, r10
	ldr r5, [r0, #0x10]
	ldr r6, _08102E88 @ =0x08102EB1
	ldr r3, _08102E7C @ =0x03000FD8
	movs r2, #0x00
	ldr r0, [r3, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E08
	str r4, [r1, #0x04]
	str r4, [r0, #0x00]
_08102E08:
	ldr r0, [r3, #0x00]
	movs r1, #0xE1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E1A
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E1A:
	ldr r0, [r3, #0x00]
	movs r1, #0xE2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E2C
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E2C:
	ldr r0, [r3, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E3E
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E3E:
	ldr r0, [r3, #0x00]
	movs r1, #0xE4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E50
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E50:
	ldr r0, [r3, #0x00]
	movs r1, #0xE5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08102E62
	str r2, [r1, #0x04]
	str r2, [r0, #0x00]
_08102E62:
	ldrb r0, [r5, #0x12]
	movs r2, #0x11
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r5, #0x12]
	mov r1, r9
	ldr r0, [sp, #0x008]
	strh r1, [r0, #0x12]
	mov r2, r10
	str r2, [r0, #0x0C]
	str r6, [r0, #0x04]
	b _08102E9A
_08102E7C: .4byte 0x03000FD8
_08102E80: .4byte 0x03000FF4
_08102E84: .4byte 0x083BAEAC
_08102E88: .4byte sub_8102EB0
_08102E8C:
	adds r4, #0x01
	cmp r4, #0x01
	bgt _08102E94
	b _08102CB8
_08102E94:
	ldr r0, _08102EAC @ =0x081054D5
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x04]
_08102E9A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102EAC: .4byte sub_81054D4
