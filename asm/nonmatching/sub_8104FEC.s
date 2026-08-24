	.syntax unified
	.text

	thumb_func_start sub_8104FEC
sub_8104FEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	ble _0810500A
	subs r0, r1, #0x1
	mov r3, r8
	strh r0, [r3, #0x10]
	b _081050D2
_0810500A:
	mov r1, r8
	movs r2, #0x12
	ldsh r0, [r1, r2]
	ldr r2, _081050E0 @ =0x03000FF4
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	bl sub_8083F88
	adds r6, r0, #0x0
	ldr r0, _081050E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	str r6, [r1, #0x08]
	ldr r1, [r0, #0x00]
	movs r0, #0x1E
	strh r0, [r1, #0x10]
	ldr r0, _081050E8 @ =0x03001034
	mov r9, r0
	ldr r5, _081050EC @ =0x06010000
	ldr r1, _081050F0 @ =0x06017200
	movs r2, #0x80
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, _081050F4 @ =0x08198154
	ldr r0, _081050F8 @ =0x081980D8
	subs r7, r1, r0
	mov r1, r9
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	movs r2, #0x0F
	mov r10, r2
	adds r4, r6, #0x0
	ands r4, r2
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	adds r0, #0x49
	lsls r0, r0, #0x05
	adds r0, r0, r5
	ldr r1, _081050FC @ =0x000072C0
	adds r1, r5, r1
	movs r2, #0x20
	bl _call_via_r3
	mov r0, r9
	ldr r3, [r0, #0x00]
	adds r3, r3, r7
	adds r4, #0x4A
	lsls r4, r4, #0x05
	adds r4, r4, r5
	ldr r0, _08105100 @ =0x00007340
	adds r5, r5, r0
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x20
	bl _call_via_r3
	lsrs r6, r6, #0x04
	cmp r6, #0x00
	beq _081050CC
	mov r1, r9
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	mov r2, r10
	ands r6, r2
	lsls r4, r6, #0x01
	adds r0, r4, #0x0
	adds r0, #0x49
	lsls r0, r0, #0x05
	ldr r1, _081050EC @ =0x06010000
	adds r0, r0, r1
	ldr r1, _08105104 @ =0x060174A0
	movs r2, #0x20
	bl _call_via_r3
	mov r2, r9
	ldr r3, [r2, #0x00]
	adds r3, r3, r7
	adds r4, #0x4A
	lsls r4, r4, #0x05
	ldr r0, _081050EC @ =0x06010000
	adds r4, r4, r0
	ldr r1, _08105108 @ =0x06017520
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_081050CC:
	ldr r0, _0810510C @ =0x08105111
	mov r1, r8
	str r0, [r1, #0x04]
_081050D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081050E0: .4byte 0x03000FF4
_081050E4: .4byte 0x03000FD8
_081050E8: .4byte 0x03001034
_081050EC: .4byte 0x06010000
_081050F0: .4byte 0x06017200
_081050F4: .4byte 0x08198154
_081050F8: .4byte 0x081980D8
_081050FC: .4byte 0x000072C0
_08105100: .4byte 0x00007340
_08105104: .4byte 0x060174A0
_08105108: .4byte 0x06017520
_0810510C: .4byte sub_8105110
