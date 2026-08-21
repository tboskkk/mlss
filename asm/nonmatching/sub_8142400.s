	.syntax unified
	.text

	thumb_func_start sub_8142400
sub_8142400:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _081424B4 @ =0x03001038
	mov r8, r0
	ldr r1, _081424B8 @ =0x0819832C
	ldr r0, _081424BC @ =0x08198220
	subs r7, r1, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldr r0, _081424C0 @ =0x000002FA
	adds r4, r5, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r2
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r1, _081424C4 @ =0x0000030A
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	strh r0, [r4, #0x00]
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081424D8
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _081424C8 @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081424D4
	ldr r0, _081424CC @ =0x0813B361
	str r0, [r6, #0x00]
	ldr r0, _081424D0 @ =0x08141D55
	str r0, [r6, #0x04]
	b _081424D8
	.byte 0x00, 0x00
_081424B4: .4byte 0x03001038
_081424B8: .4byte 0x0819832C
_081424BC: .4byte 0x08198220
_081424C0: .4byte 0x000002FA
_081424C4: .4byte 0x0000030A
_081424C8: .4byte 0x00007FFF
_081424CC: .4byte sub_813B360
_081424D0: .4byte sub_8141D54
_081424D4:
	ldr r0, _081424E4 @ =0x081424E9
	str r0, [r6, #0x00]
_081424D8:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081424E4: .4byte sub_81424E8
