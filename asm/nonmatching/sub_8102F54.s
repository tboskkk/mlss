	.syntax unified
	.text

	thumb_func_start sub_8102F54
sub_8102F54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x020]
	ldr r7, [r0, #0x0C]
	movs r1, #0x12
	ldsh r0, [r0, r1]
	str r0, [sp, #0x024]
	ldr r6, _08103084 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r4, #0x93
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r5, r0, #0x0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x08
	movs r2, #0xF0
	lsls r2, r2, #0x07
	adds r5, r5, r2
	ldr r0, [r7, #0x18]
	subs r5, r5, r0
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x08
	movs r3, #0xA0
	lsls r3, r3, #0x08
	adds r4, r4, r3
	ldr r0, [r7, #0x1C]
	subs r4, r4, r0
	ldr r0, [r7, #0x20]
	movs r6, #0xE0
	lsls r6, r6, #0x06
	subs r6, r6, r0
	movs r0, #0x1A
	add r0, sp
	mov r8, r0
	add r1, sp, #0x01C
	mov r9, r1
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r2, #0xF0
	lsls r2, r2, #0x05
	adds r0, r6, r2
	str r0, [sp, #0x008]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	add r0, sp, #0x018
	mov r1, r8
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0xA4
	str r0, [r1, #0x00]
	add r0, sp, #0x018
	ldrh r0, [r0, #0x00]
	adds r1, #0x12
	strh r0, [r1, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	mov r1, r9
	ldrh r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xBA
	strh r0, [r1, #0x00]
	subs r1, #0x2E
	ldr r0, [r7, #0x18]
	adds r5, r5, r0
	str r5, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x1C]
	adds r4, r4, r0
	str r4, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x20]
	adds r6, r6, r0
	str r6, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x81
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	cmp r7, #0x00
	beq _081030B2
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081030B2
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810308C
	adds r0, r7, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08103088 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _0810309A
_08103084: .4byte 0x03000FD8
_08103088: .4byte 0x00002003
_0810308C:
	adds r0, r7, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _0810324C @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_0810309A:
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r7, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081030B2:
	ldr r0, _08103250 @ =0x08103529
	ldr r3, [sp, #0x020]
	str r0, [r3, #0x04]
	ldr r1, _08103254 @ =0x03000FF4
	ldr r2, [sp, #0x024]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	mov r12, r1
	mov r0, r12
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	mov r10, r0
	mov r3, r10
	adds r3, #0x01
	movs r5, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	mov r9, r0
	movs r6, #0x00
	movs r4, #0x00
	cmp r6, r3
	bge _081031CC
	ldr r2, _08103258 @ =0x083BAEAC
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r1, r0, #0x05
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r0, r2
	negs r1, r3
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08103158
	cmp r1, #0x03
	bge _08103138
	cmp r1, #0x02
	bge _0810311C
	ldrb r5, [r2, #0x00]
	ldrb r4, [r2, #0x01]
	ldrb r7, [r2, #0x02]
	ldrb r3, [r2, #0x05]
	mov r8, r3
	ldrb r0, [r2, #0x03]
	mov r9, r0
	ldrb r6, [r2, #0x04]
	adds r2, #0x0C
	mov r3, r10
_0810311C:
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r2, #0x01]
	adds r4, r4, r1
	ldrb r1, [r2, #0x02]
	adds r7, r7, r1
	ldrb r1, [r2, #0x05]
	add r8, r1
	ldrb r1, [r2, #0x03]
	add r9, r1
	ldrb r0, [r2, #0x04]
	adds r6, r6, r0
	adds r2, #0x0C
	subs r3, #0x01
_08103138:
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r2, #0x01]
	adds r4, r4, r1
	ldrb r1, [r2, #0x02]
	adds r7, r7, r1
	ldrb r1, [r2, #0x05]
	add r8, r1
	ldrb r1, [r2, #0x03]
	add r9, r1
	ldrb r0, [r2, #0x04]
	adds r6, r6, r0
	adds r2, #0x0C
	subs r3, #0x01
	cmp r3, #0x00
	beq _081031CC
_08103158:
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r2, #0x01]
	adds r4, r4, r1
	ldrb r1, [r2, #0x02]
	adds r7, r7, r1
	ldrb r1, [r2, #0x05]
	add r8, r1
	ldrb r1, [r2, #0x03]
	add r9, r1
	ldrb r0, [r2, #0x04]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0x0C
	ldrb r1, [r2, #0x0C]
	adds r5, r5, r1
	ldrb r1, [r0, #0x01]
	adds r4, r4, r1
	ldrb r1, [r0, #0x02]
	adds r7, r7, r1
	ldrb r1, [r0, #0x05]
	add r8, r1
	ldrb r1, [r0, #0x03]
	add r9, r1
	ldrb r0, [r0, #0x04]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0x18
	ldrb r1, [r2, #0x18]
	adds r5, r5, r1
	ldrb r1, [r0, #0x01]
	adds r4, r4, r1
	ldrb r1, [r0, #0x02]
	adds r7, r7, r1
	ldrb r1, [r0, #0x05]
	add r8, r1
	ldrb r1, [r0, #0x03]
	add r9, r1
	ldrb r0, [r0, #0x04]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r5, r5, r1
	ldrb r1, [r0, #0x01]
	adds r4, r4, r1
	ldrb r1, [r0, #0x02]
	adds r7, r7, r1
	ldrb r1, [r0, #0x05]
	add r8, r1
	ldrb r1, [r0, #0x03]
	add r9, r1
	ldrb r0, [r0, #0x04]
	adds r6, r6, r0
	adds r2, #0x30
	subs r3, #0x04
	cmp r3, #0x00
	bne _08103158
_081031CC:
	ldr r2, _0810325C @ =0x03000FDC
	ldr r1, [r2, #0x00]
	ldr r3, _08103260 @ =0x00008E28
	adds r0, r1, r3
	strh r5, [r0, #0x00]
	ldr r2, _08103264 @ =0x00008E2A
	adds r0, r1, r2
	strh r4, [r0, #0x00]
	adds r3, #0x04
	adds r0, r1, r3
	strh r7, [r0, #0x00]
	adds r2, #0x04
	adds r0, r1, r2
	mov r3, r8
	strh r3, [r0, #0x00]
	adds r2, #0x02
	adds r0, r1, r2
	mov r3, r9
	strh r3, [r0, #0x00]
	adds r2, #0x02
	adds r0, r1, r2
	strh r6, [r0, #0x00]
	mov r3, r12
	ldrh r2, [r3, #0x10]
	ldr r3, _08103268 @ =0x00008E10
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x16]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x1A]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x22]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r0, r12
	ldrh r2, [r0, #0x1E]
	adds r3, #0x02
	adds r0, r1, r3
	strh r2, [r0, #0x00]
	mov r2, r12
	ldrh r0, [r2, #0x26]
	adds r3, #0x02
	adds r1, r1, r3
	strh r0, [r1, #0x00]
	mov r0, sp
	ldrh r1, [r0, #0x24]
	ldr r0, [sp, #0x020]
	strh r1, [r0, #0x18]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810324C: .4byte 0x00002050
_08103250: .4byte sub_8103528
_08103254: .4byte 0x03000FF4
_08103258: .4byte dword_83BAEAC @ =0x083BAEAC
_0810325C: .4byte 0x03000FDC
_08103260: .4byte 0x00008E28
_08103264: .4byte 0x00008E2A
_08103268: .4byte 0x00008E10
