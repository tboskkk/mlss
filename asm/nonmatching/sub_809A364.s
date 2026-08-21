	.syntax unified
	.text

	thumb_func_start sub_809A364
sub_809A364:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	str r0, [sp, #0x018]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809A388
	adds r0, #0x03
_0809A388:
	asrs r0, r0, #0x02
	mov r8, r0
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809A39C
	adds r0, #0x03
_0809A39C:
	asrs r0, r0, #0x02
	mov r10, r0
	ldr r2, _0809A3DC @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	mov r3, r10
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r9, r0
	adds r1, r7, #0x0
	adds r1, #0x98
	ldr r2, [r1, #0x00]
	movs r0, #0x04
	ands r0, r2
	str r1, [sp, #0x024]
	cmp r0, #0x00
	bne _0809A3F4
	movs r0, #0x03
	ands r0, r2
	cmp r0, #0x01
	beq _0809A3EA
	cmp r0, #0x01
	bgt _0809A3E0
	cmp r0, #0x00
	beq _0809A3EA
	b _0809A416
	.byte 0x00, 0x00
_0809A3DC: .4byte 0x03001038
_0809A3E0:
	cmp r0, #0x02
	beq _0809A3F0
	cmp r0, #0x03
	beq _0809A3F0
	b _0809A416
_0809A3EA:
	movs r4, #0x20
	negs r4, r4
	b _0809A416
_0809A3F0:
	movs r4, #0x00
	b _0809A416
_0809A3F4:
	movs r0, #0x03
	ands r0, r2
	cmp r0, #0x01
	beq _0809A410
	cmp r0, #0x01
	bgt _0809A406
	cmp r0, #0x00
	beq _0809A410
	b _0809A416
_0809A406:
	cmp r0, #0x02
	beq _0809A414
	cmp r0, #0x03
	beq _0809A414
	b _0809A416
_0809A410:
	movs r4, #0x28
	b _0809A416
_0809A414:
	movs r4, #0x10
_0809A416:
	ldr r6, _0809A48C @ =0x03001038
	ldr r5, _0809A490 @ =0x0819832C
	ldr r0, _0809A494 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	lsls r4, r4, #0x06
	add r4, r9
	mov r0, r8
	muls r0, r4
	mov r1, r9
	bl _call_via_r2
	movs r1, #0x84
	adds r1, r1, r7
	mov r8, r1
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	mov r3, r8
	str r1, [r3, #0x00]
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	mov r0, r10
	muls r0, r4
	mov r1, r9
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x88
	lsls r0, r0, #0x02
	ldr r1, [r7, #0x3C]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r4, [sp, #0x018]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r0, r0, r5
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x024]
	ldr r5, [r0, #0x00]
	movs r0, #0x03
	ands r5, r0
	mov r3, r8
	mov r9, r2
	mov r10, r1
	cmp r5, #0x01
	beq _0809A4A8
	cmp r5, #0x01
	bgt _0809A498
	cmp r5, #0x00
	beq _0809A4A2
	b _0809A4B8
	.byte 0x00, 0x00
_0809A48C: .4byte 0x03001038
_0809A490: .4byte 0x0819832C
_0809A494: .4byte 0x08198220
_0809A498:
	cmp r5, #0x02
	beq _0809A4AE
	cmp r5, #0x03
	beq _0809A4B4
	b _0809A4B8
_0809A4A2:
	movs r1, #0x38
	str r1, [sp, #0x01C]
	b _0809A4B8
_0809A4A8:
	movs r4, #0x38
	str r4, [sp, #0x01C]
	b _0809A4B8
_0809A4AE:
	movs r5, #0x28
	str r5, [sp, #0x01C]
	b _0809A4B8
_0809A4B4:
	movs r0, #0x28
	str r0, [sp, #0x01C]
_0809A4B8:
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x08
	ldr r0, [r7, #0x40]
	subs r6, r1, r0
	mov r8, r0
	cmp r6, #0x00
	bgt _0809A4C8
	movs r6, #0x01
_0809A4C8:
	ldr r5, [sp, #0x024]
	ldr r1, [r5, #0x00]
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x01
	beq _0809A4F0
	cmp r1, #0x01
	bgt _0809A4DE
	cmp r1, #0x00
	beq _0809A4E8
	b _0809A506
_0809A4DE:
	cmp r1, #0x02
	beq _0809A4F8
	cmp r1, #0x03
	beq _0809A500
	b _0809A506
_0809A4E8:
	movs r0, #0xA0
	lsls r0, r0, #0x03
	str r0, [sp, #0x020]
	b _0809A506
_0809A4F0:
	movs r1, #0xA0
	lsls r1, r1, #0x03
	str r1, [sp, #0x020]
	b _0809A506
_0809A4F8:
	movs r4, #0x80
	lsls r4, r4, #0x03
	str r4, [sp, #0x020]
	b _0809A506
_0809A500:
	movs r5, #0x80
	lsls r5, r5, #0x03
	str r5, [sp, #0x020]
_0809A506:
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, r7, #0x0
	adds r1, #0xB0
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldr r3, [r3, #0x00]
	ldr r4, [r7, #0x38]
	subs r3, r3, r4
	mov r5, r9
	ldr r4, [r5, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	mov r5, r10
	ldr r4, [r5, #0x00]
	mov r5, r8
	subs r4, r4, r5
	str r4, [sp, #0x004]
	str r6, [sp, #0x008]
	ldr r4, [sp, #0x020]
	str r4, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _0809A55C @ =0x0809A561
	str r0, [r7, #0x4C]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A55C: .4byte sub_809A560
