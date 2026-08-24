	.syntax unified
	.text

	thumb_func_start sub_81486F8
sub_81486F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r7, [r0, #0x00]
	ldr r1, _081488C4 @ =0x08198584
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148720
	adds r0, #0xFF
_08148720:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _08148734
	adds r0, #0x3F
_08148734:
	asrs r0, r0, #0x06
	mov r10, r0
	ldr r1, _081488C8 @ =0x08198504
	movs r3, #0xCA
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08148748
	adds r0, #0xFF
_08148748:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _0814875A
	adds r0, #0x3F
_0814875A:
	asrs r0, r0, #0x06
	mov r8, r0
	ldr r0, _081488CC @ =0x03001038
	mov r9, r0
	ldr r4, _081488D0 @ =0x0819832C
	ldr r0, _081488D4 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	movs r3, #0xBD
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xB9
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r10
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x0C]
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	movs r4, #0xBC
	lsls r4, r4, #0x02
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r2, #0xBA
	lsls r2, r2, #0x02
	adds r1, r7, r2
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r7, #0x10]
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r4, #0xD8
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x42
	ldrh r3, [r0, #0x00]
	ldr r0, [r7, #0x18]
	adds r0, r0, r3
	str r0, [r7, #0x18]
	ldr r0, _081488D8 @ =0x0000030A
	adds r2, r7, r0
	strh r3, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x80
	movs r4, #0xC3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x00]
	cmp r1, #0x00
	blt _081487FC
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r3, r2
	cmp r1, r0
	ble _08148804
_081487FC:
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	str r0, [r6, #0x00]
_08148804:
	movs r0, #0xBC
	lsls r0, r0, #0x02
	adds r2, r7, r0
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	cmp r1, #0x00
	blt _08148828
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r3, r4
	cmp r1, r0
	ble _08148830
_08148828:
	movs r1, #0xC0
	lsls r1, r1, #0x04
	adds r0, r3, r1
	str r0, [r2, #0x00]
_08148830:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldr r4, _081488DC @ =0x0000030E
	adds r0, r7, r4
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x08
	cmp r0, r3
	ble _08148850
	movs r0, #0x00
	str r0, [r2, #0x00]
_08148850:
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r2, r7, r4
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, r3
	ble _0814886E
	movs r0, #0x00
	str r0, [r2, #0x00]
_0814886E:
	ldr r0, [r7, #0x0C]
	ldr r1, [r7, #0x34]
	subs r0, r0, r1
	ldr r2, _081488E0 @ =0x00000242
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x18]
	ldr r0, _081488E4 @ =0x00013FFF
	cmp r1, r0
	ble _081488B4
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r4, [sp, #0x000]
	ldr r0, _081488E8 @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081488EC @ =0x08147B9D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
_081488B4:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081488C4: .4byte word_8198584 @ =0x08198584
_081488C8: .4byte word_8198504 @ =0x08198504
_081488CC: .4byte 0x03001038
_081488D0: .4byte 0x0819832C
_081488D4: .4byte 0x08198220
_081488D8: .4byte 0x0000030A
_081488DC: .4byte 0x0000030E
_081488E0: .4byte 0x00000242
_081488E4: .4byte 0x00013FFF
_081488E8: .4byte 0x0000020D
_081488EC: .4byte sub_8147B9C
