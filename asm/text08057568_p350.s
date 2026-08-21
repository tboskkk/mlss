	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809C1E8
sub_809C1E8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8088020
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x45
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	cmp r0, #0x00
	bgt _0809C20C
	adds r0, r4, #0x0
	bl sub_807C298
_0809C20C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809C214
sub_809C214:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0809C28C @ =0x03000FD8
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C284
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C280
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xB8
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x5C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x18
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl sub_80880C4
_0809C280:
	ldr r0, _0809C290 @ =0x0809C3C9
	str r0, [r5, #0x4C]
_0809C284:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809C28C: .4byte 0x03000FD8
_0809C290: .4byte sub_809C3C8
	thumb_func_start sub_809C294
sub_809C294:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0809C2AA
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_0809C2AA:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x21, 0x01, 0x65, 0x03, 0x49, 0xC1, 0x64, 0x7C, 0x30, 0x80, 0x21, 0x49, 0x00, 0x01, 0x80
	.byte 0x01, 0x20, 0x70, 0x47, 0x49, 0xC4, 0x09, 0x08
	thumb_func_start sub_809C2C8
sub_809C2C8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0809C340 @ =0x03000FD8
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C338
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C334
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x89
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x0A
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl sub_80880C4
_0809C334:
	ldr r0, _0809C344 @ =0x0809C479
	str r0, [r5, #0x4C]
_0809C338:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809C340: .4byte 0x03000FD8
_0809C344: .4byte sub_809C478
	thumb_func_start sub_809C348
sub_809C348:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0809C3C0 @ =0x03000FD8
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C3B8
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C3B4
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x82
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x7C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x0A
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_0809C3B4:
	ldr r0, _0809C3C4 @ =0x0809BF89
	str r0, [r5, #0x4C]
_0809C3B8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809C3C0: .4byte 0x03000FD8
_0809C3C4: .4byte sub_809BF88
	thumb_func_start sub_809C3C8
sub_809C3C8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0809C440 @ =0x03000FD8
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C438
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C434
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x90
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x5C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x0A
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_0809C434:
	ldr r0, _0809C444 @ =0x0809BE51
	str r0, [r5, #0x4C]
_0809C438:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809C440: .4byte 0x03000FD8
_0809C444: .4byte sub_809BE50
	thumb_func_start sub_809C448
sub_809C448:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _0809C470 @ =0x000040BF
	movs r1, #0x0B
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
	ldr r0, _0809C474 @ =0x0809C4F9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809C470: .4byte 0x000040BF
_0809C474: .4byte sub_809C4F8
	thumb_func_start sub_809C478
sub_809C478:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0809C4F0 @ =0x03000FD8
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C4E8
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C4E4
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x2F
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x0A
	bl sub_808843C
	movs r1, #0xA6
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl sub_80880C4
_0809C4E4:
	ldr r0, _0809C4F4 @ =0x0809C571
	str r0, [r5, #0x4C]
_0809C4E8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809C4F0: .4byte 0x03000FD8
_0809C4F4: .4byte sub_809C570
	thumb_func_start sub_809C4F8
sub_809C4F8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809C55A
	ldr r2, _0809C564 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x0C
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
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809C538
	adds r1, #0xFF
_0809C538:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809C542
	adds r2, #0xFF
_0809C542:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809C54C
	adds r3, #0xFF
_0809C54C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809C568 @ =0x00001B78
	bl sub_80DF024
	ldr r0, _0809C56C @ =0x0809BB51
	str r0, [r4, #0x4C]
_0809C55A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809C564: .4byte 0x000040BF
_0809C568: .4byte 0x00001B78
_0809C56C: .4byte sub_809BB50
	thumb_func_start sub_809C570
sub_809C570:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8088020
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x45
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	cmp r0, #0x00
	bgt _0809C594
	adds r0, r4, #0x0
	bl sub_807C298
_0809C594:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809C59C
sub_809C59C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r1, _0809C64C @ =0x000040EA
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r6, #0x01
	orrs r0, r6
	movs r5, #0x08
	orrs r0, r5
	strb r0, [r2, #0x00]
	adds r7, r4, #0x0
	adds r7, #0x75
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C650 @ =0x000040EB
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x02
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C654 @ =0x000040EC
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x03
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C658 @ =0x000040ED
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x04
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C65C @ =0x000040EE
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x05
	adds r1, #0x75
	strb r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809C64C: .4byte 0x000040EA
_0809C650: .4byte 0x000040EB
_0809C654: .4byte 0x000040EC
_0809C658: .4byte 0x000040ED
_0809C65C: .4byte 0x000040EE
	thumb_func_start sub_809C660
sub_809C660:
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
	bne _0809C67C
	b _0809C7CC
_0809C67C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	bne _0809C68C
	ldr r0, _0809C688 @ =0x0809C955
	str r0, [r6, #0x4C]
	b _0809C7CC
_0809C688: .4byte sub_809C954
_0809C68C:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x03
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
	adds r0, r6, #0x0
	bl sub_80835E0
	ldr r5, [r6, #0x30]
	movs r0, #0x9C
	adds r0, r0, r6
	mov r8, r0
	movs r2, #0xA0
	adds r2, r2, r6
	mov r9, r2
	movs r3, #0xA4
	adds r3, r3, r6
	mov r10, r3
	ldr r3, _0809C7B0 @ =0x083B897C
	adds r4, r3, #0x0
	movs r2, #0x00
_0809C6CA:
	ldr r1, [r5, #0x30]
	cmp r1, #0x00
	beq _0809C6D6
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _0809C7C4
_0809C6D6:
	movs r1, #0x00
	ldsb r1, [r3, r1]
	adds r0, r4, #0x1
	adds r0, r2, r0
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r4, #0x02
	ldsb r4, [r3, r4]
	lsls r1, r1, #0x08
	ldr r3, [r5, #0x10]
	adds r3, r3, r1
	str r3, [r5, #0x10]
	lsls r2, r2, #0x08
	ldr r0, [r5, #0x14]
	adds r2, r0, r2
	str r2, [r5, #0x14]
	lsls r4, r4, #0x08
	ldr r0, [r5, #0x18]
	adds r4, r0, r4
	str r4, [r5, #0x18]
	ldr r7, _0809C7B4 @ =0x00000E82
	cmp r3, #0x00
	bge _0809C706
	adds r3, #0xFF
_0809C706:
	asrs r1, r3, #0x08
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0809C710
	adds r0, #0xFF
_0809C710:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0809C71A
	adds r0, #0xFF
_0809C71A:
	asrs r3, r0, #0x08
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_80DF024
	movs r0, #0x86
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r0, [r4, #0x00]
	movs r2, #0x09
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	ldr r2, _0809C7B8 @ =0x000040EF
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, r5, #0x0
	adds r1, #0x9C
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r3, r9
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r2, r10
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldrb r0, [r4, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r5, #0x50]
	ldr r0, _0809C7BC @ =0x0809C981
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0809C7C0 @ =0x0809C9DD
	str r0, [r6, #0x4C]
	b _0809C7CC
	.byte 0x00, 0x00
_0809C7B0: .4byte 0x083B897C
_0809C7B4: .4byte 0x00000E82
_0809C7B8: .4byte 0x000040EF
_0809C7BC: .4byte sub_809C980
_0809C7C0: .4byte sub_809C9DC
_0809C7C4:
	adds r3, #0x03
	adds r2, #0x03
	adds r5, r1, #0x0
	b _0809C6CA
_0809C7CC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_809C7DC
sub_809C7DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r0, #0x01
	str r0, [r2, #0x00]
	cmp r1, #0x05
	ble _0809C820
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809C802
	adds r1, #0xFF
_0809C802:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809C80C
	adds r2, #0xFF
_0809C80C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809C816
	adds r3, #0xFF
_0809C816:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809C8B0 @ =0x00000E89
	bl sub_80DF024
_0809C820:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C8A6
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0809C8B4 @ =0x08089B91
	str r0, [r4, #0x5C]
	ldr r0, _0809C8B8 @ =0x08089B4D
	str r0, [r4, #0x60]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xFE
	lsls r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809C8A2
	ldr r0, _0809C8BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [r4, #0x38]
	adds r1, r2, #0x0
	cmp r2, #0x00
	bge _0809C870
	adds r1, #0xFF
_0809C870:
	asrs r1, r1, #0x08
	subs r0, r0, r1
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809C87E
	adds r2, #0xFF
_0809C87E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809C888
	adds r3, #0xFF
_0809C888:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x0C
	bl sub_8088274
_0809C8A2:
	ldr r0, _0809C8C0 @ =0x0809C8C5
	str r0, [r4, #0x4C]
_0809C8A6:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809C8B0: .4byte 0x00000E89
_0809C8B4: .4byte sub_8089B90
_0809C8B8: .4byte sub_8089B4C
_0809C8BC: .4byte 0x03000FD8
_0809C8C0: .4byte sub_809C8C4
	thumb_func_start sub_809C8C4
sub_809C8C4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087EFC
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r0, #0x01
	str r0, [r2, #0x00]
	cmp r1, #0x05
	ble _0809C908
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809C8EA
	adds r1, #0xFF
_0809C8EA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809C8F4
	adds r2, #0xFF
_0809C8F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809C8FE
	adds r3, #0xFF
_0809C8FE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809C920 @ =0x00000E89
	bl sub_80DF024
_0809C908:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C94A
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	adds r2, r0, #0x0
	b _0809C926
	.byte 0x00, 0x00
_0809C920: .4byte 0x00000E89
_0809C924:
	ldr r1, [r1, #0x30]
_0809C926:
	cmp r1, #0x00
	bne _0809C93A
	adds r0, r2, #0x0
	adds r0, #0x08
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809C944
_0809C93A:
	cmp r1, r4
	beq _0809C924
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _0809C924
_0809C944:
	adds r0, r4, #0x0
	bl sub_807C298
_0809C94A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
