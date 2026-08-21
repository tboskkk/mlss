	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809A178
sub_809A178:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809A190
	b _0809A34E
_0809A190:
	adds r0, r5, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	movs r2, #0x02
	ands r1, r2
	mov r8, r0
	cmp r1, #0x00
	bne _0809A1AE
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809A1BA
_0809A1AE:
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809A1BA:
	ldr r0, _0809A1F4 @ =0x0809A6CD
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bge _0809A1FC
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809A1D2
	adds r1, #0xFF
_0809A1D2:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809A1DC
	adds r2, #0xFF
_0809A1DC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809A1E6
	adds r3, #0xFF
_0809A1E6:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809A1F8 @ =0x00000F69
	bl sub_80DF024
	b _0809A222
	.byte 0x00, 0x00
_0809A1F4: .4byte sub_809A6CC
_0809A1F8: .4byte 0x00000F69
_0809A1FC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809A204
	adds r1, #0xFF
_0809A204:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809A20E
	adds r2, #0xFF
_0809A20E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809A218
	adds r3, #0xFF
_0809A218:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809A258 @ =0x00000F75
	bl sub_80DF024
_0809A222:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0809A22A
	adds r0, #0xFF
_0809A22A:
	asrs r0, r0, #0x08
	subs r0, #0x12
	mov r12, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0809A238
	adds r0, #0xFF
_0809A238:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809A244
	adds r0, #0xFF
_0809A244:
	asrs r0, r0, #0x08
	adds r4, r0, #0x0
	adds r4, #0x1D
	ldr r2, [r7, #0x00]
	cmp r2, #0x00
	bge _0809A260
	ldr r0, [r5, #0x28]
	ldr r1, _0809A25C @ =0x000040D7
	b _0809A26A
	.byte 0x00, 0x00
_0809A258: .4byte 0x00000F75
_0809A25C: .4byte 0x000040D7
_0809A260:
	ldr r0, [r5, #0x28]
	movs r1, #0x7F
	ands r2, r1
	ldr r6, _0809A318 @ =0x00004188
	adds r1, r2, r6
_0809A26A:
	str r4, [sp, #0x000]
	movs r2, #0x01
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	mov r2, r12
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	ldr r0, _0809A31C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0x77
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _0809A324
	ldr r0, _0809A320 @ =0x0809A631
	str r0, [r4, #0x60]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	b _0809A348
_0809A318: .4byte 0x00004188
_0809A31C: .4byte sub_8087540
_0809A320: .4byte sub_809A630
_0809A324:
	ldr r0, _0809A35C @ =0x0809A671
	str r0, [r4, #0x58]
	str r0, [r4, #0x5C]
	ldr r0, _0809A360 @ =0x0809A631
	str r0, [r4, #0x60]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_0809A348:
	adds r0, r4, #0x0
	bl sub_809A364
_0809A34E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A35C: .4byte sub_809A670
_0809A360: .4byte sub_809A630
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
	thumb_func_start sub_809A560
sub_809A560:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809A5B0
	ldr r1, [r4, #0x08]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_0809A5B0:
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r2, [r0, #0x00]
	ldr r1, [r4, #0x18]
	adds r5, r0, #0x0
	cmp r2, r1
	blt _0809A62A
	ldr r0, [r4, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r0, _0809A5E4 @ =0x000040D7
	cmp r1, r0
	bne _0809A5E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6A
	bl play_sfx_80195B4
	b _0809A5F2
	.byte 0x00, 0x00
_0809A5E4: .4byte 0x000040D7
_0809A5E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6A
	bl play_sfx_80195B4
_0809A5F2:
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r1, [r2, #0x00]
	movs r3, #0x04
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0809A624
	orrs r1, r3
	str r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	ldr r0, _0809A620 @ =0x0809A365
	str r0, [r4, #0x4C]
	b _0809A62A
_0809A620: .4byte sub_809A364
_0809A624:
	adds r0, r4, #0x0
	bl sub_807C298
_0809A62A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_809A630
sub_809A630:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _0809A662
	ldr r0, _0809A66C @ =0x0809A76D
	str r0, [r4, #0x4C]
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
_0809A662:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809A66C: .4byte sub_809A76C
	thumb_func_start sub_809A670
sub_809A670:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	movs r1, #0x7F
	ands r0, r1
	movs r1, #0x01
	bl sub_80F7068
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809A68C
	adds r1, #0xFF
_0809A68C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809A696
	adds r2, #0xFF
_0809A696:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809A6A0
	adds r3, #0xFF
_0809A6A0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809A6C8 @ =0x00000F93
	bl sub_80DF024
	movs r0, #0xA9
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809A6C8: .4byte 0x00000F93
	thumb_func_start sub_809A6CC
sub_809A6CC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A6E2
	adds r0, r2, #0x0
	bl sub_8087540
_0809A6E2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x02, 0x1C, 0x08, 0x48, 0xD0, 0x64, 0x08, 0x48, 0x90, 0x66, 0xD0, 0x6A
	.byte 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x08, 0xD1
	.byte 0x11, 0x1C, 0x98, 0x31, 0x06, 0x20, 0x07, 0xE0, 0x00, 0x00, 0xED, 0xA7, 0x09, 0x08, 0x41, 0x75
	.byte 0x08, 0x08, 0x11, 0x1C, 0x98, 0x31, 0x07, 0x20, 0x08, 0x60, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0x00, 0x10, 0xB5, 0x02, 0x1C, 0x09, 0x48, 0xD0, 0x64, 0x09, 0x48, 0x90, 0x66, 0x01, 0x23
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x09, 0xD1, 0x11, 0x1C, 0x98, 0x31, 0x00, 0x20, 0x08, 0x60, 0x07, 0xE0, 0x00, 0x00, 0xED, 0xA7
	.byte 0x09, 0x08, 0x41, 0x75, 0x08, 0x08, 0x10, 0x1C, 0x98, 0x30, 0x03, 0x60, 0x18, 0x1C, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_809A76C
sub_809A76C:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0809A79A
	adds r0, #0xFF
_0809A79A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0809A7A6
	adds r0, #0xFF
_0809A7A6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0809A7B2
	adds r0, #0xFF
_0809A7B2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0809A7D4
	adds r0, r4, #0x0
	bl sub_807C298
	b _0809A7E4
_0809A7D4:
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0809A7E4
	adds r0, r4, #0x0
	bl sub_807C298
_0809A7E4:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_809A7EC
sub_809A7EC:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809A804 @ =0x0809A809
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809A804: .4byte sub_809A808
	thumb_func_start sub_809A808
sub_809A808:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A84E
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0809A834
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809A840
_0809A834:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809A840:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0809A854 @ =0x0809A859
	str r0, [r4, #0x4C]
_0809A84E:
	pop {r4}
	pop {r0}
	bx r0
_0809A854: .4byte sub_809A858
	thumb_func_start sub_809A858
sub_809A858:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A894
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0809A884
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809A890
_0809A884:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809A890:
	ldr r0, _0809A89C @ =0x0809A179
	str r0, [r4, #0x4C]
_0809A894:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A89C: .4byte sub_809A178
	thumb_func_start sub_809A8A0
sub_809A8A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A972
	ldr r2, _0809A984 @ =0x000040BE
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809A988 @ =0x000040C0
	mov r9, r0
	adds r0, r6, #0x0
	mov r1, r9
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	movs r2, #0x04
	mov r10, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r4, _0809A98C @ =0x0809AAF5
	str r4, [r7, #0x4C]
	adds r0, r7, #0x0
	bl _call_via_r4
	ldr r5, _0809A990 @ =0x083B88EC
	ldr r0, [r5, #0x00]
	str r0, [r7, #0x34]
	movs r0, #0x00
	strh r0, [r7, #0x20]
	adds r0, r6, #0x0
	mov r1, r9
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	str r4, [r7, #0x4C]
	adds r0, r7, #0x0
	bl _call_via_r4
	ldr r0, [r5, #0x48]
	str r0, [r7, #0x34]
	movs r0, #0x01
	strh r0, [r7, #0x20]
	ldr r0, _0809A994 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _0809A950
	adds r1, #0xFF
_0809A950:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _0809A95A
	adds r2, #0xFF
_0809A95A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _0809A964
	adds r3, #0xFF
_0809A964:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0809A998 @ =0x00002C7D
	bl sub_80DF024
	ldr r0, _0809A99C @ =0x0809AFB5
	str r0, [r6, #0x4C]
_0809A972:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A984: .4byte 0x000040BE
_0809A988: .4byte 0x000040C0
_0809A98C: .4byte sub_809AAF4
_0809A990: .4byte 0x083B88EC
_0809A994: .4byte 0x0000015D
_0809A998: .4byte 0x00002C7D
_0809A99C: .4byte sub_809AFB4
	thumb_func_start sub_809A9A0
sub_809A9A0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0809A9B0
	str r0, [r5, #0x4C]
	b _0809AAEC
_0809A9B0:
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0809A9DA
	ldr r0, _0809AA8C @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x28
	bl sub_81DD77C
	adds r0, #0x1E
	strh r0, [r4, #0x00]
_0809A9DA:
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bge _0809AA1E
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809A9F0
	adds r1, #0xFF
_0809A9F0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809A9FA
	adds r2, #0xFF
_0809A9FA:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _0809AA04
	adds r3, #0xFF
_0809AA04:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809AA90 @ =0x00002C7D
	bl sub_80DF024
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r0, #0x32
	str r0, [r4, #0x00]
_0809AA1E:
	movs r6, #0x00
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0809AA4A
	ldr r0, [r3, #0x2C]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x0E]
	ldr r2, [r3, #0x08]
	adds r1, r0, #0x1
	strh r1, [r2, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	movs r6, #0x01
_0809AA4A:
	ldr r0, [r5, #0x30]
	ldr r3, [r0, #0x30]
	cmp r3, #0x00
	beq _0809AA7C
	adds r0, r3, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0809AA7C
	ldr r0, [r3, #0x2C]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x0E]
	ldr r2, [r3, #0x08]
	adds r1, r0, #0x1
	strh r1, [r2, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	movs r0, #0x02
	orrs r6, r0
_0809AA7C:
	cmp r6, #0x01
	beq _0809AAB2
	cmp r6, #0x01
	bgt _0809AA94
	cmp r6, #0x00
	beq _0809AA9A
	b _0809AAEC
	.byte 0x00, 0x00
_0809AA8C: .4byte 0x0000015D
_0809AA90: .4byte 0x00002C7D
_0809AA94:
	cmp r6, #0x02
	beq _0809AACC
	b _0809AAEC
_0809AA9A:
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x03
	strh r1, [r0, #0x0E]
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	beq _0809AAEC
	ldr r0, [r0, #0x08]
	strh r1, [r0, #0x0E]
	b _0809AAEC
_0809AAB2:
	ldr r3, [r5, #0x30]
	ldr r2, [r3, #0x30]
	cmp r2, #0x00
	beq _0809AAEC
	ldr r1, [r3, #0x14]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _0809AAE2
	ldr r1, [r2, #0x08]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	b _0809AAEA
_0809AACC:
	ldr r2, [r5, #0x30]
	ldr r3, [r2, #0x30]
	ldr r1, [r3, #0x14]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _0809AAE2
	ldr r1, [r2, #0x08]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	b _0809AAEA
_0809AAE2:
	ldr r1, [r2, #0x08]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0x01
_0809AAEA:
	strh r0, [r1, #0x0E]
_0809AAEC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_809AAF4
sub_809AAF4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x00
	str r5, [r4, #0x2C]
	adds r0, #0xA8
	str r5, [r0, #0x00]
	ldr r2, _0809AB40 @ =0x000040C0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x00
	bl sub_81DD77C
	adds r0, #0x14
	strh r0, [r4, #0x1C]
	strh r5, [r4, #0x1E]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0x7F
	strb r0, [r1, #0x00]
	ldr r0, _0809AB44 @ =0x0809AF61
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0809AB40: .4byte 0x000040C0
_0809AB44: .4byte sub_809AF60
	thumb_func_start sub_809AB48
sub_809AB48:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _0809AB5A
	b _0809AD1C
_0809AB5A:
	adds r0, r5, #0x0
	bl sub_8087CE4
	movs r7, #0x00
	movs r0, #0x79
	adds r0, r0, r5
	mov r8, r0
_0809AB68:
	ldr r0, _0809AC64 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809AC74
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	blt _0809AC74
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x38]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0809AB9A
	adds r1, #0x0F
_0809AB9A:
	asrs r2, r1, #0x04
	ldr r1, [r5, #0x3C]
	ldr r0, [r6, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809ABA8
	adds r0, #0x07
_0809ABA8:
	asrs r0, r0, #0x03
	adds r1, r2, #0x0
	muls r1, r2
	adds r2, r0, #0x0
	muls r2, r0
	adds r0, r2, #0x0
	adds r1, r1, r0
	movs r0, #0xC8
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _0809AC74
	cmp r3, #0x00
	bne _0809AC74
	ldr r0, [r6, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xBA
	cmp r0, #0x00
	beq _0809ABD4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	ble _0809ABD6
_0809ABD4:
	strh r3, [r1, #0x00]
_0809ABD6:
	ldr r0, _0809AC68 @ =0x000040C1
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r2, r0, #0x1
	adds r1, #0x25
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bne _0809ABFC
	movs r2, #0x00
_0809ABFC:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	ldrb r1, [r4, #0x11]
	movs r2, #0x0D
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x04
	orrs r1, r0
	strb r1, [r4, #0x11]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	ldr r1, _0809AC6C @ =0x02000052
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	str r6, [r5, #0x2C]
	str r5, [r6, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x7C
	ldrh r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	subs r0, #0x06
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0809AC5E
	cmp r1, #0x04
	bne _0809AC7C
_0809AC5E:
	ldr r0, _0809AC70 @ =0x0809AD31
	str r0, [r6, #0x4C]
	b _0809AC7C
_0809AC64: .4byte 0x03000FD8
_0809AC68: .4byte 0x000040C1
_0809AC6C: .4byte 0x02000052
_0809AC70: .4byte sub_809AD30
_0809AC74:
	adds r7, #0x01
	cmp r7, #0x01
	bgt _0809AC7C
	b _0809AB68
_0809AC7C:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809AD1C
	movs r1, #0x1C
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	beq _0809ACFC
	ldr r1, [r5, #0x34]
	movs r6, #0x01
	ldrb r0, [r1, #0x03]
	movs r2, #0x76
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0xFF
	beq _0809ACD4
	ldr r7, _0809ACF4 @ =0x083B88EC
	adds r4, r1, #0x3
_0809ACA4:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _0809ACCA
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x02
	movs r0, #0x20
	ldsh r2, [r5, r0]
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r7
	ldr r0, [r1, #0x00]
	str r0, [r5, #0x34]
_0809ACCA:
	adds r4, #0x01
	adds r6, #0x01
	ldrb r0, [r4, #0x00]
	cmp r0, #0xFF
	bne _0809ACA4
_0809ACD4:
	ldrh r0, [r5, #0x1C]
	subs r0, #0x01
	movs r1, #0x00
	strh r0, [r5, #0x1C]
	strh r1, [r5, #0x1E]
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0809ACEE
	cmp r1, #0x04
	bne _0809AD1C
_0809ACEE:
	ldr r0, _0809ACF8 @ =0x0809AECD
	b _0809AD1A
	.byte 0x00, 0x00
_0809ACF4: .4byte 0x083B88EC
_0809ACF8: .4byte sub_809AECC
_0809ACFC:
	ldr r2, _0809AD28 @ =0x000040C0
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809AD2C @ =0x0809AEB1
_0809AD1A:
	str r0, [r5, #0x4C]
_0809AD1C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809AD28: .4byte 0x000040C0
_0809AD2C: .4byte sub_809AEB0
	thumb_func_start sub_809AD30
sub_809AD30:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, _0809ADB8 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r6, [r5, #0x2C]
	adds r2, r5, #0x0
	adds r2, #0xB2
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x33
	strh r0, [r2, #0x00]
	ldr r2, [r5, #0x08]
	movs r0, #0x02
	ldsh r1, [r2, r0]
	ldr r0, [r6, #0x08]
	movs r3, #0x02
	ldsh r0, [r0, r3]
	adds r0, #0x20
	cmp r1, r0
	blt _0809ADAE
	adds r0, r2, #0x0
	bl sub_807FB64
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0809AD94
	adds r0, r7, #0x0
	cmp r5, r4
	beq _0809AD8E
	adds r0, r4, #0x0
_0809AD8E:
	ldr r0, [r0, #0x08]
	bl sub_807FB64
_0809AD94:
	adds r4, r6, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	bl sub_807FB34
	movs r1, #0x00
	str r1, [r4, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	str r0, [r5, #0x2C]
	str r1, [r6, #0x2C]
	ldr r0, _0809ADBC @ =0x0809ADC1
	str r0, [r5, #0x4C]
_0809ADAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809ADB8: .4byte 0x03000FD8
_0809ADBC: .4byte sub_809ADC0
	thumb_func_start sub_809ADC0
sub_809ADC0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, _0809AE6C @ =0x03000FD8
	ldr r3, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _0809AE64
	ldr r1, _0809AE70 @ =0x02000052
	ldr r2, _0809AE74 @ =0x00000808
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _0809AE78 @ =0x084FB814
	ldrb r0, [r3, #0x0C]
	lsrs r0, r0, #0x07
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	mvns r2, r2
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	adds r2, #0xF6
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	beq _0809AE60
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809AE3C
	adds r1, #0xFF
_0809AE3C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809AE46
	adds r2, #0xFF
_0809AE46:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_0809AE60:
	ldr r0, _0809AE7C @ =0x0809AE81
	str r0, [r4, #0x4C]
_0809AE64:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809AE6C: .4byte 0x03000FD8
_0809AE70: .4byte 0x02000052
_0809AE74: .4byte 0x00000808
_0809AE78: .4byte 0x084FB814
_0809AE7C: .4byte sub_809AE80
	thumb_func_start sub_809AE80
sub_809AE80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809AEA6
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0809AEAC @ =0x0809B031
	str r0, [r4, #0x4C]
_0809AEA6:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809AEAC: .4byte 0x0809B031
	thumb_func_start sub_809AEB0
sub_809AEB0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809AEC6
	adds r0, r2, #0x0
	bl sub_807C298
_0809AEC6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809AECC
sub_809AECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _0809AF58 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x34]
	mov r8, r2
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0809AF38
	mov r0, r8
	ldrb r5, [r0, #0x01]
	ldrb r6, [r0, #0x02]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r5
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_80880C4
_0809AF38:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
	ldr r0, _0809AF5C @ =0x0809AB49
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809AF58: .4byte 0x03000FD8
_0809AF5C: .4byte sub_809AB48
	thumb_func_start sub_809AF60
sub_809AF60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809AF9E
	ldr r2, _0809AFA4 @ =0x000040C0
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r1, _0809AFA8 @ =0x0200004A
	ldr r2, _0809AFAC @ =0x0000C0FF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0809AFB0 @ =0x0809AECD
	str r0, [r4, #0x4C]
_0809AF9E:
	pop {r4}
	pop {r0}
	bx r0
_0809AFA4: .4byte 0x000040C0
_0809AFA8: .4byte 0x0200004A
_0809AFAC: .4byte 0x0000C0FF
_0809AFB0: .4byte sub_809AECC
	thumb_func_start sub_809AFB4
sub_809AFB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B008
	ldr r2, _0809B010 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x28
	bl sub_81DD77C
	adds r0, #0x1E
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA8
	adds r0, #0x32
	str r0, [r1, #0x00]
	ldr r0, _0809B014 @ =0x0809A9A1
	str r0, [r4, #0x4C]
_0809B008:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B010: .4byte 0x000040BE
_0809B014: .4byte sub_809A9A0
	.byte 0x00, 0x21, 0x01, 0x65, 0x03, 0x49, 0xC1, 0x64, 0x7C, 0x30, 0x80, 0x21, 0x49, 0x00, 0x01, 0x80
	.byte 0x01, 0x20, 0x70, 0x47, 0x39, 0xB0, 0x09, 0x08, 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_809B038
sub_809B038:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _0809B060 @ =0x000040BE
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B064 @ =0x0809B069
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809B060: .4byte 0x000040BE
_0809B064: .4byte sub_809B068
	thumb_func_start sub_809B068
sub_809B068:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B098
	ldr r2, _0809B0A0 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B0A4 @ =0x0809B0A9
	str r0, [r4, #0x4C]
_0809B098:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B0A0: .4byte 0x000040BE
_0809B0A4: .4byte sub_809B0A8
	thumb_func_start sub_809B0A8
sub_809B0A8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B100
	ldr r2, _0809B108 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B0DE
	adds r1, #0xFF
_0809B0DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B0E8
	adds r2, #0xFF
_0809B0E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B0F2
	adds r3, #0xFF
_0809B0F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B10C @ =0x000011B8
	bl sub_80DF024
	ldr r0, _0809B110 @ =0x0809A8A1
	str r0, [r4, #0x4C]
_0809B100:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809B108: .4byte 0x000040BE
_0809B10C: .4byte 0x000011B8
_0809B110: .4byte sub_809A8A0
	thumb_func_start sub_809B114
sub_809B114:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0809B13C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B160
	cmp r1, r2
	bne _0809B144
	ldr r2, _0809B140 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x02
	b _0809B14A
_0809B13C: .4byte 0x03000FD8
_0809B140: .4byte 0x000040BF
_0809B144:
	ldr r2, _0809B194 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x05
_0809B14A:
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0809B160:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B168
	adds r1, #0xFF
_0809B168:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B172
	adds r2, #0xFF
_0809B172:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B17C
	adds r3, #0xFF
_0809B17C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B198 @ =0x000011E6
	bl sub_80DF024
	ldr r0, _0809B19C @ =0x0809B479
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B194: .4byte 0x000040BF
_0809B198: .4byte 0x000011E6
_0809B19C: .4byte sub_809B478
	thumb_func_start sub_809B1A0
sub_809B1A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0809B1C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B21A
	cmp r2, r3
	bne _0809B1D0
	ldr r2, _0809B1CC @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x04
	b _0809B1D6
_0809B1C8: .4byte 0x03000FD8
_0809B1CC: .4byte 0x000040BF
_0809B1D0:
	ldr r2, _0809B220 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x07
_0809B1D6:
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B216
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B216:
	ldr r0, _0809B224 @ =0x0809B229
	str r0, [r4, #0x4C]
_0809B21A:
	pop {r4}
	pop {r0}
	bx r0
_0809B220: .4byte 0x000040BF
_0809B224: .4byte sub_809B228
	thumb_func_start sub_809B228
sub_809B228:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r5, r4, #0x0
	adds r5, #0x79
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B2A4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B248
	adds r1, #0xFF
_0809B248:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B252
	adds r2, #0xFF
_0809B252:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B25C
	adds r3, #0xFF
_0809B25C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B2AC @ =0x000011F0
	bl sub_80DF024
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B2A0
	ldr r2, _0809B2B0 @ =0x03001038
	ldr r0, _0809B2B4 @ =0x0819832C
	ldr r1, _0809B2B8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x28
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0809B2A0:
	ldr r0, _0809B2BC @ =0x0809B411
	str r0, [r4, #0x4C]
_0809B2A4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809B2AC: .4byte 0x000011F0
_0809B2B0: .4byte 0x03001038
_0809B2B4: .4byte 0x0819832C
_0809B2B8: .4byte 0x08198220
_0809B2BC: .4byte sub_809B410
	thumb_func_start sub_809B2C0
sub_809B2C0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _0809B324 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B300
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B300
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809B300:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B35A
	cmp r4, r7
	bne _0809B328
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809B328
	adds r4, r6, #0x0
	b _0809B33E
_0809B324: .4byte 0x03000FD8
_0809B328:
	cmp r4, r6
	bne _0809B33C
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r4, r7, #0x0
	cmp r0, #0x02
	beq _0809B33E
_0809B33C:
	movs r4, #0x00
_0809B33E:
	cmp r4, #0x00
	beq _0809B356
	str r4, [r5, #0x2C]
	ldr r1, _0809B364 @ =0x000040C2
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	bl sub_807C0D0
	ldr r1, _0809B368 @ =0x0809B371
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B356:
	ldr r0, _0809B36C @ =0x0809B3DD
	str r0, [r5, #0x4C]
_0809B35A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B364: .4byte 0x000040C2
_0809B368: .4byte sub_809B370
_0809B36C: .4byte sub_809B3DC
	thumb_func_start sub_809B370
sub_809B370:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x98
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B3C0
	ldr r2, _0809B3CC @ =0x03001038
	ldr r0, _0809B3D0 @ =0x0819832C
	ldr r1, _0809B3D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B3C0:
	ldr r0, _0809B3D8 @ =0x0809B505
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B3CC: .4byte 0x03001038
_0809B3D0: .4byte 0x0819832C
_0809B3D4: .4byte 0x08198220
_0809B3D8: .4byte sub_809B504
	thumb_func_start sub_809B3DC
sub_809B3DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B402
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B40A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809B402:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0809B40A
	str r0, [r4, #0x4C]
_0809B40A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_809B410
sub_809B410:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	bl sub_80884AC
	adds r5, r4, #0x0
	adds r5, #0x79
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B466
	ldr r1, _0809B46C @ =0x000040C2
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_807C0D0
	ldr r1, _0809B470 @ =0x0809B559
	str r1, [r0, #0x4C]
	bl _call_via_r1
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B462
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0809B462:
	ldr r0, _0809B474 @ =0x0809B2C1
	str r0, [r4, #0x4C]
_0809B466:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809B46C: .4byte 0x000040C2
_0809B470: .4byte sub_809B558
_0809B474: .4byte sub_809B2C0
	thumb_func_start sub_809B478
sub_809B478:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809B4B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B49E
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B4DC
_0809B49E:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	cmp r5, r6
	bne _0809B4BC
	ldr r2, _0809B4B8 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x03
	b _0809B4C2
_0809B4B4: .4byte 0x03000FD8
_0809B4B8: .4byte 0x000040BF
_0809B4BC:
	ldr r2, _0809B4E4 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x06
_0809B4C2:
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B4E8 @ =0x0809B1A1
	str r0, [r4, #0x4C]
_0809B4DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B4E4: .4byte 0x000040BF
_0809B4E8: .4byte sub_809B1A0
	.byte 0x00, 0x21, 0x01, 0x65, 0x03, 0x49, 0xC1, 0x64, 0x7C, 0x30, 0x80, 0x21, 0x49, 0x00, 0x01, 0x80
	.byte 0x01, 0x20, 0x70, 0x47, 0x15, 0xB1, 0x09, 0x08
	thumb_func_start sub_809B504
sub_809B504:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B544
	ldr r2, _0809B54C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B550 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0809B554 @ =0x0809B5A9
	str r0, [r4, #0x4C]
_0809B544:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B54C: .4byte 0x000040C2
_0809B550: .4byte 0x0000015D
_0809B554: .4byte sub_809B5A8
	thumb_func_start sub_809B558
sub_809B558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x98
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	ldr r2, _0809B59C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B5A0 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0809B5A4 @ =0x0809B611
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809B59C: .4byte 0x000040C2
_0809B5A0: .4byte 0x0000015D
_0809B5A4: .4byte sub_809B610
	thumb_func_start sub_809B5A8
sub_809B5A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B5FA
	ldr r2, _0809B604 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809B5E0
	adds r1, #0xFF
_0809B5E0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809B5EA
	adds r2, #0xFF
_0809B5EA:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809B608 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, _0809B60C @ =0x0809B679
	str r0, [r4, #0x4C]
_0809B5FA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B604: .4byte 0x000040C2
_0809B608: .4byte 0x00001202
_0809B60C: .4byte sub_809B678
	thumb_func_start sub_809B610
sub_809B610:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B662
	ldr r2, _0809B66C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809B648
	adds r1, #0xFF
_0809B648:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809B652
	adds r2, #0xFF
_0809B652:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809B670 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, _0809B674 @ =0x0809B6D9
	str r0, [r4, #0x4C]
_0809B662:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B66C: .4byte 0x000040C2
_0809B670: .4byte 0x00001202
_0809B674: .4byte sub_809B6D8
	thumb_func_start sub_809B678
sub_809B678:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B69C
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B69C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B69C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B6C8
	ldr r2, _0809B6D0 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B6D4 @ =0x0809B739
	str r0, [r4, #0x4C]
_0809B6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B6D0: .4byte 0x000040C2
_0809B6D4: .4byte sub_809B738
	thumb_func_start sub_809B6D8
sub_809B6D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B6FC
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B6FC
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B6FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B728
	ldr r2, _0809B730 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B734 @ =0x0809B755
	str r0, [r4, #0x4C]
_0809B728:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B730: .4byte 0x000040C2
_0809B734: .4byte sub_809B754
	thumb_func_start sub_809B738
sub_809B738:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B74E
	adds r0, r2, #0x0
	bl sub_807C298
_0809B74E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809B754
sub_809B754:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B76A
	adds r0, r2, #0x0
	bl sub_807C298
_0809B76A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809B770
sub_809B770:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B7CA
	ldr r2, _0809B7D0 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B7C6
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B7C6:
	ldr r0, _0809B7D4 @ =0x0809B7D9
	str r0, [r4, #0x4C]
_0809B7CA:
	pop {r4}
	pop {r0}
	bx r0
_0809B7D0: .4byte 0x000040BF
_0809B7D4: .4byte sub_809B7D8
	thumb_func_start sub_809B7D8
sub_809B7D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0809B888 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x74]
	movs r0, #0x08
	adds r0, r0, r7
	mov r8, r0
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B87A
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B810
	adds r1, #0xFF
_0809B810:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B81A
	adds r2, #0xFF
_0809B81A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B824
	adds r3, #0xFF
_0809B824:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B88C @ =0x000011F0
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809B852
	str r6, [r4, #0x2C]
	ldr r1, _0809B890 @ =0x000040C2
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_807C0D0
	ldr r1, _0809B894 @ =0x0809B961
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B852:
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809B876
	mov r0, r8
	str r0, [r4, #0x2C]
	ldr r1, _0809B890 @ =0x000040C2
	adds r0, r4, #0x0
	mov r2, r8
	bl sub_807C0D0
	ldr r1, _0809B894 @ =0x0809B961
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B876:
	ldr r0, _0809B898 @ =0x0809B9CD
	str r0, [r4, #0x4C]
_0809B87A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B888: .4byte 0x03000FD8
_0809B88C: .4byte 0x000011F0
_0809B890: .4byte 0x000040C2
_0809B894: .4byte sub_809B960
_0809B898: .4byte sub_809B9CC
	thumb_func_start sub_809B89C
sub_809B89C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B90C
	ldr r2, _0809B914 @ =0x000040C2
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B8D4
	adds r1, #0xFF
_0809B8D4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B8DE
	adds r2, #0xFF
_0809B8DE:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B918 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _0809B908
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B908
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B908:
	ldr r0, _0809B91C @ =0x0809B921
	str r0, [r5, #0x4C]
_0809B90C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809B914: .4byte 0x000040C2
_0809B918: .4byte 0x00001202
_0809B91C: .4byte sub_809B920
	thumb_func_start sub_809B920
sub_809B920:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B950
	ldr r2, _0809B958 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B95C @ =0x0809BA29
	str r0, [r4, #0x4C]
_0809B950:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B958: .4byte 0x000040C2
_0809B95C: .4byte sub_809BA28
