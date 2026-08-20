	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F82A8
sub_80F82A8:
	push {r4, r5, r6, lr}
	ldr r6, _080F82E4 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r5, [r2, #0x00]
	lsls r3, r5, #0x02
	adds r1, #0x58
	adds r3, r1, r3
	ldr r4, [r3, #0x00]
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	str r4, [r1, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0xF4
	strb r5, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [r2, #0x04]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xF4
	strb r2, [r0, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F82E4: .4byte 0x03000FD8
	thumb_func_start sub_80F82E8
sub_80F82E8:
	push {r4, lr}
	adds r3, r2, #0x0
	ldm r3!, {r0}
	cmp r0, #0x04
	bhi _080F838E
	lsls r0, r0, #0x02
	ldr r1, _080F82FC @ =0x080F8300
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F82FC: .4byte 0x080F8300
	.byte 0x14, 0x83, 0x0F, 0x08, 0x26, 0x83, 0x0F, 0x08, 0x2E, 0x83, 0x0F, 0x08, 0x62, 0x83, 0x0F, 0x08
	.byte 0x74, 0x83, 0x0F, 0x08, 0x18, 0x68, 0x00, 0x28, 0x02, 0xD0, 0x14, 0xF0, 0x55, 0xFC, 0x36, 0xE0
	.byte 0x14, 0xF0, 0xD6, 0xFB, 0x33, 0xE0, 0x18, 0x78, 0xFF, 0xF7, 0x6E, 0xF9, 0x2F, 0xE0, 0x0A, 0x48
	.byte 0x04, 0x68, 0x00, 0x22, 0x18, 0x68, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x22, 0xD2, 0x00, 0xE1, 0x7A
	.byte 0x09, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x43, 0xE0, 0x72, 0x18, 0x68, 0x00, 0x28, 0x05, 0xD0
	.byte 0x14, 0xF0, 0x6E, 0xFB, 0x1B, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x14, 0xF0, 0xF8, 0xFA
	.byte 0x15, 0xE0, 0x18, 0x68, 0x00, 0x28, 0x02, 0xD0, 0x14, 0xF0, 0xCC, 0xFD, 0x0F, 0xE0, 0x14, 0xF0
	.byte 0x21, 0xFD, 0x0C, 0xE0, 0x08, 0x48, 0x02, 0x68, 0x19, 0x68, 0x08, 0x48, 0x12, 0x18, 0x01, 0x20
	.byte 0x01, 0x40, 0x09, 0x01, 0x13, 0x78, 0x12, 0x38, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70
_080F838E:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xBF, 0x02, 0x00, 0x00
	thumb_func_start sub_80F83A0
sub_80F83A0:
	push {r4, r5, lr}
	ldr r3, _080F83CC @ =0x03000FD8
	ldr r0, [r3, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r2, [r2, #0x00]
	movs r1, #0x01
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	adds r5, r3, #0x0
	cmp r0, #0x00
	beq _080F83D0
	movs r0, #0x02
	ands r2, r0
	movs r3, #0x02
	cmp r2, #0x00
	beq _080F83D2
	movs r3, #0x01
	b _080F83D2
_080F83CC: .4byte 0x03000FD8
_080F83D0:
	movs r3, #0x00
_080F83D2:
	ldrb r1, [r4, #0x05]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x05]
	ldr r1, [r5, #0x00]
	ldr r0, _080F83EC @ =0x081054D5
	str r0, [r1, #0x24]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F83EC: .4byte sub_81054D4
	thumb_func_start sub_80F83F0
sub_80F83F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	bne _080F8424
	ldr r1, [r2, #0x08]
	asrs r0, r1, #0x07
	cmp r0, #0x04
	bne _080F8424
	movs r0, #0x7F
	ands r1, r0
	str r1, [r2, #0x08]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	beq _080F8416
	ldr r0, [r2, #0x10]
	negs r0, r0
	str r0, [r2, #0x10]
_080F8416:
	ldrb r0, [r2, #0x08]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	bl sub_80F7068
	movs r0, #0x01
	b _080F8432
_080F8424:
	adds r0, r4, #0x0
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080F8432:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F8438
sub_80F8438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	mov r8, r3
	ldr r0, [r4, #0x04]
	cmp r0, #0x01
	beq _080F8468
	cmp r0, #0x01
	bgt _080F8458
	cmp r0, #0x00
	beq _080F845E
	b _080F847C
_080F8458:
	cmp r0, #0x02
	beq _080F8472
	b _080F847C
_080F845E:
	ldr r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_80F78C4
	b _080F847A
_080F8468:
	ldr r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_80F7868
	b _080F847A
_080F8472:
	ldr r1, [r4, #0x08]
	adds r0, r5, #0x0
	bl sub_80F7804
_080F847A:
	adds r6, r0, #0x0
_080F847C:
	adds r1, r7, #0x0
	adds r1, #0x18
	ldr r2, [r5, #0x2C]
	ldr r0, _080F84A8 @ =0x00001794
	adds r2, r2, r0
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r5, #0x00
	ldsh r0, [r4, r5]
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	mov r0, r8
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F84A8: .4byte 0x00001794
	thumb_func_start sub_80F84AC
sub_80F84AC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	mov r8, r3
	movs r0, #0x04
	ldsh r1, [r4, r0]
	ldr r2, [r4, #0x08]
	adds r0, r6, #0x0
	bl sub_80F6B44
	adds r1, r5, #0x0
	adds r1, #0x18
	ldr r2, [r6, #0x2C]
	ldr r3, _080F84F4 @ =0x00001794
	adds r2, r2, r3
	adds r5, #0xA8
	movs r6, #0x00
	ldsh r3, [r4, r6]
	str r3, [sp, #0x000]
	str r0, [sp, #0x004]
	mov r0, r8
	adds r3, r5, #0x0
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F84F4: .4byte 0x00001794
	thumb_func_start sub_80F84F8
sub_80F84F8:
	push {lr}
	adds r3, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080F8534
	cmp r1, #0x01
	bgt _080F850C
	cmp r1, #0x00
	beq _080F8512
	b _080F8574
_080F850C:
	cmp r1, #0x02
	beq _080F8550
	b _080F8574
_080F8512:
	ldr r0, _080F8530 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F8574
	subs r3, #0x04
	adds r0, r1, r3
	ldr r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	orrs r1, r2
	str r1, [r0, #0x00]
	b _080F8574
_080F8530: .4byte 0x03000FD8
_080F8534:
	ldr r0, [r0, #0x2C]
	ldr r1, _080F854C @ =0x00001788
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080F8574
	ldr r0, [r3, #0x14]
	str r0, [r3, #0x00]
	movs r0, #0x00
	b _080F8576
_080F854C: .4byte 0x00001788
_080F8550:
	ldr r0, [r2, #0x00]
	bl sub_8105790
	ldr r0, _080F856C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F8570
	bl sub_810CE88
	b _080F8574
_080F856C: .4byte 0x03000FD8
_080F8570:
	bl sub_810CF04
_080F8574:
	movs r0, #0x01
_080F8576:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F857C
sub_80F857C:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F858A
	cmp r2, #0x01
	beq _080F859C
	b _080F85AA
_080F858A:
	ldr r0, _080F8598 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x01
	b _080F85A8
_080F8598: .4byte 0x03000FD8
_080F859C:
	ldr r0, _080F85B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
_080F85A8:
	strb r1, [r0, #0x00]
_080F85AA:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F85B0: .4byte 0x03000FD8
	thumb_func_start sub_80F85B4
sub_80F85B4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x04
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x08
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r4, [r4, #0x00]
	cmp r4, #0x07
	bgt _080F85FC
	ldr r0, _080F85F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F860C
	.byte 0x00, 0x00
_080F85F8: .4byte 0x03000FD8
_080F85FC:
	ldr r1, _080F8620 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F860C:
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8620: .4byte 0x03000FDC
	thumb_func_start sub_80F8624
sub_80F8624:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, [r7, #0x2C]
	ldr r1, _080F8640 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F8644
	subs r0, #0x01
	b _080F8646
_080F8640: .4byte 0x0000179C
_080F8644:
	subs r0, #0x07
_080F8646:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	mov r4, sp
	adds r4, #0x06
	add r5, sp, #0x008
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	add r2, sp, #0x004
	adds r3, r4, #0x0
	bl sub_80F7920
	add r0, sp, #0x004
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r6, #0x04]
	adds r2, r2, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r3, [r6, #0x08]
	adds r3, r3, r0
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r6, #0x0C]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	bl sub_80F79F0
	movs r0, #0x00
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F8694
sub_80F8694:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F86AC @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F86B0
	subs r0, #0x01
	b _080F86B2
	.byte 0x00, 0x00
_080F86AC: .4byte 0x0000179C
_080F86B0:
	subs r0, #0x07
_080F86B2:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x00
	ldsh r1, [r2, r0]
	mov r4, sp
	adds r4, #0x06
	add r5, sp, #0x008
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	add r2, sp, #0x004
	adds r3, r4, #0x0
	bl sub_80F7920
	add r0, sp, #0x004
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r0, #0x00
	ldsh r3, [r4, r0]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_80F79F0
	movs r0, #0x00
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F86F0
sub_80F86F0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	movs r5, #0x00
	ldr r3, [r2, #0x00]
	cmp r3, #0x07
	bgt _080F8710
	ldr r0, _080F870C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F8720
_080F870C: .4byte 0x03000FD8
_080F8710:
	ldr r1, _080F873C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F8720:
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F872A
	movs r5, #0x01
_080F872A:
	ldr r0, [r2, #0x04]
	cmp r5, r0
	beq _080F8734
	ldr r0, [r2, #0x08]
	str r0, [r4, #0x00]
_080F8734:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F873C: .4byte 0x03000FDC
	thumb_func_start sub_80F8740
sub_80F8740:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F875C @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F8760
	subs r0, #0x01
	b _080F8762
	.byte 0x00, 0x00
_080F875C: .4byte 0x0000179C
_080F8760:
	subs r0, #0x07
_080F8762:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0x0
	adds r0, #0x1C
	add r3, sp, #0x008
	add r1, sp, #0x00C
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	add r2, sp, #0x004
	bl sub_80EA6D4
	ldr r2, [r4, #0x10]
	movs r3, #0x00
	ldr r0, [r4, #0x0C]
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F8788
	movs r3, #0x01
_080F8788:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_80F6AC0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80F76FC
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_80F7644
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F87C0
sub_80F87C0:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F87E8
	cmp r2, #0x01
	bgt _080F87D4
	cmp r2, #0x00
	beq _080F87DA
	b _080F880A
_080F87D4:
	cmp r2, #0x02
	beq _080F8800
	b _080F880A
_080F87DA:
	ldr r0, _080F87E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x40]
	b _080F880A
	.byte 0x00, 0x00
_080F87E4: .4byte 0x03000FD8
_080F87E8:
	ldr r0, _080F87FC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	lsls r0, r1, #0x1E
	lsrs r3, r0, #0x1F
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	b _080F880A
_080F87FC: .4byte 0x03000FD8
_080F8800:
	ldr r0, _080F8814 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x1F
	lsrs r3, r0, #0x1F
_080F880A:
	cmp r3, #0x00
	bne _080F8818
	movs r0, #0x01
	b _080F881E
	.byte 0x00, 0x00
_080F8814: .4byte 0x03000FD8
_080F8818:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F881E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_80F8824
sub_80F8824:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldm r2!, {r0}
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080F884C
	ldr r0, [r3, #0x2C]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	adds r0, #0xA0
	ldrh r0, [r0, #0x00]
	ldr r1, _080F8860 @ =0x00000FF7
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r4, r0, #0x1F
_080F884C:
	ldr r0, [r2, #0x00]
	cmp r4, r0
	bne _080F8856
	ldr r0, [r2, #0x04]
	str r0, [r5, #0x00]
_080F8856:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8860: .4byte 0x00000FF7
	thumb_func_start script_cmd_btl_return
script_cmd_btl_return: @ 080F8864
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080F8880
	ldr r0, _080F8894 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080F8898 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F8880:
	adds r0, r3, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl script_cmd_return
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
_080F8894: .4byte 0x03000FD8
_080F8898: .4byte 0x000002BF
	thumb_func_start sub_80F889C
sub_80F889C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	mov r12, r3
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _080F88B6
	cmp r0, #0x01
	beq _080F88BC
	ldr r0, [r4, #0x2C]
	b _080F88CC
_080F88B6:
	ldr r6, [r4, #0x2C]
	adds r0, r6, #0x0
	b _080F88CC
_080F88BC:
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r4, #0x2C]
	adds r6, r1, r0
	adds r0, r1, #0x0
_080F88CC:
	adds r1, r7, #0x0
	adds r1, #0x18
	ldr r3, _080F88FC @ =0x00001794
	adds r2, r0, r3
	adds r3, r7, #0x0
	adds r3, #0xA8
	movs r4, #0x00
	ldsh r0, [r5, r4]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldrh r4, [r0, #0x00]
	movs r0, #0x01
	ands r0, r4
	str r0, [sp, #0x004]
	mov r0, r12
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F88FC: .4byte 0x00001794
	thumb_func_start sub_80F8900
sub_80F8900:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x00
	beq _080F8912
	cmp r0, #0x01
	beq _080F8916
	b _080F8924
_080F8912:
	ldr r3, [r4, #0x2C]
	b _080F8924
_080F8916:
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r4, #0x2C]
	adds r3, r1, r0
_080F8924:
	adds r0, r3, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F8936
	ldr r0, [r2, #0x00]
	str r0, [r5, #0x00]
_080F8936:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F8940
sub_80F8940:
	push {r4, lr}
	adds r4, r0, #0x0
	ldm r2!, {r3}
	cmp r3, #0x00
	beq _080F8950
	cmp r3, #0x01
	beq _080F8954
	b _080F8960
_080F8950:
	ldr r1, [r4, #0x2C]
	b _080F8960
_080F8954:
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x2C]
	adds r1, r1, r0
_080F8960:
	ldr r0, [r1, #0x00]
	str r0, [r1, #0x04]
	adds r1, #0xA0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x17
_080F896C:
	lsls r0, r1, #0x10
	ldr r1, _080F8980 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	cmp r0, #0x00
	bgt _080F896C
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F8980: .4byte 0xFFFF0000
	thumb_func_start sub_80F8984
sub_80F8984:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldm r2!, {r3}
	cmp r3, #0x00
	beq _080F899A
	cmp r3, #0x01
	beq _080F89B4
	b _080F89FC
_080F899A:
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	movs r1, #0x01
	str r1, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	b _080F89FC
_080F89B4:
	cmp r6, #0x05
	bhi _080F89FC
	lsls r0, r6, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r5, #0x2C]
	adds r4, r1, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F89FC
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	adds r3, r4, #0x0
	adds r3, #0xFD
	movs r1, #0x0F
	ands r1, r6
	ldrb r2, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F89FC:
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
