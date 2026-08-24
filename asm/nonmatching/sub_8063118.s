	.syntax unified
	.text

	thumb_func_start sub_8063118
sub_8063118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	ldr r4, _08063230 @ =0x03000E18
	ldr r2, _08063234 @ =0x08200014
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r4, #0x00]
	ldr r1, _08063238 @ =0x03000E48
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08063142
	adds r0, #0xFF
_08063142:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806314E
	adds r0, #0xFF
_0806314E:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	movs r0, #0x01
	mov r10, r0
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, _08063238 @ =0x03000E48
	adds r1, #0x06
	mov r8, r1
	movs r7, #0x00
	ldr r2, _08063238 @ =0x03000E48
	adds r2, #0x04
	mov r12, r2
_08063168:
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _08063176
	adds r1, #0xFF
_08063176:
	ldr r6, _0806323C @ =0x083B86E4
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r7, r0
	adds r0, r0, r6
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _08063198
	adds r2, #0xFF
_08063198:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r1, r7, r1
	adds r0, r6, #0x2
	mov r9, r0
	add r1, r9
	asrs r0, r2, #0x08
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r7, #0x4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _080631BE
	adds r1, #0xFF
_080631BE:
	adds r3, r2, #0x0
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r3, r0
	adds r0, r0, r6
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r2, r12
	strh r1, [r2, #0x04]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080631E0
	adds r2, #0xFF
_080631E0:
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r3, r0
	add r0, r9
	asrs r1, r2, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x04]
	movs r1, #0x08
	add r8, r1
	adds r7, #0x08
	add r12, r1
	movs r2, #0x02
	add r10, r2
	mov r0, r10
	cmp r0, #0x04
	ble _08063168
	ldr r1, _08063230 @ =0x03000E18
	ldr r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	ldr r2, _08063240 @ =0x083B8714
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r3, [r1, r2]
	ldr r1, _08063238 @ =0x03000E48
	movs r2, #0x05
	bl sub_801B748
	ldr r0, _08063244 @ =0x08063249
	str r0, [r5, #0x4C]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063230: .4byte 0x03000E18
_08063234: .4byte dword_8200014 @ =0x08200014
_08063238: .4byte 0x03000E48
_0806323C: .4byte dword_83B86E4 @ =0x083B86E4
_08063240: .4byte dword_83B8714 @ =0x083B8714
_08063244: .4byte sub_8063248
