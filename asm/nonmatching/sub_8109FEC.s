	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	mov r9, r1
	adds r5, r2, #0x0
	mov r10, r3
	ldr r2, [sp, #0x034]
	cmp r2, #0x00
	bne _0810A060
	adds r3, r7, #0x0
	adds r2, r5, #0x0
	movs r4, #0xFF
	mov r0, r10
	ands r4, r0
	ldr r0, _0810A050 @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r1, r0, r5
	ldr r1, [r1, #0x00]
	movs r7, #0x0F
	ldr r6, _0810A054 @ =0x000001FF
	ldr r5, _0810A058 @ =0xFFFF8000
	adds r0, r5, #0x0
	orrs r4, r0
	ldr r0, _0810A05C @ =0xFFFFB000
	adds r5, r0, #0x0
_0810A028:
	adds r0, r3, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0xC0
	subs r2, #0x08
	ands r2, r6
	strh r4, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r5
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r3, r3, #0x04
	cmp r3, #0x00
	bne _0810A028
	ldr r2, _0810A050 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r2, r3
	str r1, [r0, #0x00]
	b _0810A204
_0810A050: .4byte 0x0300034C
_0810A054: .4byte 0x000001FF
_0810A058: .4byte 0xFFFF8000
_0810A05C: .4byte 0xFFFFB000
_0810A060:
	ldr r3, _0810A214 @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r0, r3, r4
	ldr r6, [r0, #0x00]
	str r5, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	ldr r0, _0810A218 @ =0x08198504
	movs r1, #0xFF
	ands r2, r1
	lsls r2, r2, #0x01
	adds r0, r2, r0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _0810A084
	adds r1, #0x3F
_0810A084:
	asrs r1, r1, #0x06
	str r1, [sp, #0x008]
	ldr r0, _0810A21C @ =0x08198584
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810A096
	adds r0, #0x3F
_0810A096:
	asrs r0, r0, #0x06
	str r0, [sp, #0x00C]
	ldr r0, _0810A220 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x07]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	mov r8, r0
	ldr r2, _0810A224 @ =0x00000888
	adds r0, r3, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	mov r1, r8
	lsls r0, r1, #0x05
	adds r1, r3, #0x0
	adds r1, #0x80
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r0, [r4, #0x06]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r1, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r1, [r4, #0x16]
	ldr r2, _0810A228 @ =0x0819832C
	ldr r3, _0810A22C @ =0x08198220
	subs r0, r2, r3
	ldr r1, _0810A230 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x008]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	ldr r2, [sp, #0x00C]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	cmp r0, #0x00
	bge _0810A0F6
	adds r0, #0xFF
_0810A0F6:
	asrs r0, r0, #0x08
	mov r4, r10
	subs r3, r4, r0
	movs r0, #0xFF
	ands r3, r0
	ldr r1, [sp, #0x008]
	lsls r1, r1, #0x02
	str r1, [sp, #0x010]
	movs r2, #0x0F
	mov r12, r2
	ldr r4, _0810A234 @ =0x000001FF
	mov r10, r4
	ldr r1, _0810A238 @ =0xFFFF8100
	adds r0, r1, #0x0
	orrs r3, r0
	mov r2, r8
	lsls r4, r2, #0x09
	ldr r0, _0810A23C @ =0xFFFFB000
	adds r2, r0, #0x0
_0810A11C:
	adds r1, r7, #0x0
	mov r0, r12
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0xC0
	subs r5, #0x08
	mov r0, r10
	ands r5, r0
	strh r3, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r4
	strh r0, [r6, #0x02]
	orrs r1, r2
	strh r1, [r6, #0x04]
	adds r6, #0x08
	lsrs r7, r7, #0x04
	cmp r7, #0x00
	bne _0810A11C
	movs r1, #0x01
	negs r1, r1
	add r8, r1
	ldr r2, _0810A214 @ =0x0300034C
	mov r10, r2
	ldr r0, _0810A224 @ =0x00000888
	add r0, r10
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	mov r3, r8
	lsls r0, r3, #0x05
	mov r1, r10
	adds r1, #0x80
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r0, [r4, #0x06]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r7, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r7, [r4, #0x16]
	ldr r5, _0810A228 @ =0x0819832C
	ldr r1, _0810A22C @ =0x08198220
	subs r0, r5, r1
	ldr r3, _0810A230 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x00C]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	ldr r4, [sp, #0x010]
	ldr r5, [sp, #0x008]
	adds r0, r4, r5
	cmp r0, #0x00
	bge _0810A198
	adds r0, #0xFF
_0810A198:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x004]
	adds r3, r1, r0
	movs r0, #0xFF
	ands r3, r0
	ldr r5, [sp, #0x000]
	mov r4, r8
	subs r4, #0x01
	movs r2, #0x0F
	mov r12, r2
	ldr r0, _0810A234 @ =0x000001FF
	mov r10, r0
	ldr r1, _0810A238 @ =0xFFFF8100
	adds r0, r1, #0x0
	orrs r3, r0
	mov r2, r8
	lsls r7, r2, #0x09
	ldr r0, _0810A23C @ =0xFFFFB000
	adds r2, r0, #0x0
_0810A1BE:
	mov r1, r9
	mov r0, r12
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0xC0
	subs r5, #0x08
	mov r0, r10
	ands r5, r0
	strh r3, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r7
	strh r0, [r6, #0x02]
	orrs r1, r2
	strh r1, [r6, #0x04]
	adds r6, #0x08
	mov r1, r9
	lsrs r1, r1, #0x04
	mov r9, r1
	cmp r1, #0x00
	bne _0810A1BE
	ldr r3, _0810A220 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	movs r0, #0x1F
	ands r4, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x07]
	ldr r4, _0810A214 @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r0, r4, r5
	str r6, [r0, #0x00]
_0810A204:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A214: .4byte 0x0300034C
_0810A218: .4byte 0x08198504
_0810A21C: .4byte 0x08198584
_0810A220: .4byte 0x03000FD8
_0810A224: .4byte 0x00000888
_0810A228: .4byte 0x0819832C
_0810A22C: .4byte 0x08198220
_0810A230: .4byte 0x03001038
_0810A234: .4byte 0x000001FF
_0810A238: .4byte 0xFFFF8100
_0810A23C: .4byte 0xFFFFB000
