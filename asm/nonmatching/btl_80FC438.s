	.syntax unified
	.text

	thumb_func_start btl_80FC438
btl_80FC438: @ 080FC438
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r0, _080FC588 @ =0x03000FD8
	mov r8, r0
	movs r4, #0xEA
	lsls r4, r4, #0x02
	ldr r2, _080FC58C @ =0x082001F8
	movs r0, #0x00
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	ldr r0, _080FC590 @ =0x03001034
	mov r9, r0
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl _call_via_r3
	mov r2, r8
	ldr r1, [r2, #0x00]
	subs r4, #0xD0
	adds r1, r1, r4
	ldr r5, _080FC594 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	ldr r6, _080FC598 @ =0x00008E5C
	ldr r2, _080FC59C @ =0x08200200
	movs r0, #0x01
	adds r1, r6, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r5, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r4, r2, r4
	ldr r1, [r4, #0x00]
	ldr r0, _080FC5A0 @ =0x0000FFFE
	strh r0, [r1, #0x06]
	movs r4, #0xF8
	lsls r4, r4, #0x01
	adds r2, r2, r4
	ldr r0, [r5, #0x00]
	ldr r1, _080FC5A4 @ =0x0000548F
	adds r0, r0, r1
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x00]
	movs r3, #0x00
	mov r4, r8
	adds r7, r4, #0x0
	movs r2, #0x00
	movs r6, #0x98
	lsls r6, r6, #0x01
_080FC4BC:
	ldr r1, [r4, #0x00]
	lsls r0, r3, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x1
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x2
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r0, r3, #0x3
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r2, r6
	adds r3, #0x04
	cmp r3, #0x07
	ble _080FC4BC
	ldr r2, [r7, #0x00]
	ldr r0, _080FC5A8 @ =0x080802DD
	str r0, [r2, #0x24]
	ldr r1, _080FC5AC @ =0x03000FE0
	ldr r0, _080FC5B0 @ =0x080FC8A5
	str r0, [r1, #0x00]
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r3, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	subs r4, #0x22
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	ldrb r0, [r3, #0x05]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	ldr r1, _080FC5B4 @ =0x000002B9
	adds r2, r2, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r1, [r3, #0x02]
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r1, [r3, #0x04]
	adds r4, #0x04
	adds r0, r0, r4
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldrb r1, [r3, #0x05]
	lsls r1, r1, #0x1B
	ldr r0, _080FC5B8 @ =0x000002BE
	adds r2, r2, r0
	movs r4, #0x01
	lsrs r1, r1, #0x1F
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0xAA
	bl sub_8020994
	ldr r2, _080FC5BC @ =0x0203FFB8
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC588: .4byte 0x03000FD8
_080FC58C: .4byte dword_82001F8 @ =0x082001F8
_080FC590: .4byte 0x03001034
_080FC594: .4byte 0x03000FDC
_080FC598: .4byte 0x00008E5C
_080FC59C: .4byte dword_8200200 @ =0x08200200
_080FC5A0: .4byte 0x0000FFFE
_080FC5A4: .4byte 0x0000548F
_080FC5A8: .4byte sub_80802DC
_080FC5AC: .4byte 0x03000FE0
_080FC5B0: .4byte btl_80FC8A4
_080FC5B4: .4byte 0x000002B9
_080FC5B8: .4byte 0x000002BE
_080FC5BC: .4byte 0x0203FFB8
