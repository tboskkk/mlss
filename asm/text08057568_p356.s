	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D3298
sub_80D3298:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D33D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D32C0
	b _080D33CE
_080D32C0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D32DC
	cmp r1, #0x04
	bne _080D32F8
_080D32DC:
	ldr r2, _080D33DC @ =0x00002055
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D32F8:
	ldr r1, _080D33E0 @ =0x0000208B
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	ldrb r0, [r2, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x10]
	movs r1, #0x90
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x18]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	ldr r2, _080D33E4 @ =0x000020B9
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0x02
	strh r0, [r1, #0x0E]
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D338E
	cmp r1, #0x04
	bne _080D33BC
_080D338E:
	ldr r2, _080D33E8 @ =0x03001038
	ldr r0, _080D33EC @ =0x0819832C
	ldr r1, _080D33F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x78
	bl _call_via_r2
	adds r1, r7, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080D33BC:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D33F4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D33F8 @ =0x080D33FD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D33CE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D33D8: .4byte 0x03000FD8
_080D33DC: .4byte 0x00002055
_080D33E0: .4byte 0x0000208B
_080D33E4: .4byte 0x000020B9
_080D33E8: .4byte 0x03001038
_080D33EC: .4byte 0x0819832C
_080D33F0: .4byte 0x08198220
_080D33F4: .4byte 0x00000FFF
_080D33F8: .4byte sub_80D33FC
	thumb_func_start sub_80D33FC
sub_80D33FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D3520 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080D3470
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D3470:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D3480
	b _080D39AC
_080D3480:
	mov r1, r12
	cmp r1, #0x00
	bge _080D3488
	movs r1, #0x00
_080D3488:
	ldr r0, _080D3524 @ =0x00007FFF
	cmp r1, r0
	ble _080D3490
	adds r1, r0, #0x0
_080D3490:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D34A6
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D34A8
_080D34A6:
	movs r2, #0x00
_080D34A8:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080D358C
	ldr r2, _080D3520 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D3528
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D34DC
	movs r1, #0x80
_080D34D0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34D0
_080D34DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D34F0
	movs r1, #0x80
_080D34E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34E4
_080D34F0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D3504
	movs r1, #0x80
_080D34F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D34F8
_080D3504:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3584
	movs r1, #0x08
_080D350E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3518
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3518:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D350E
	b _080D3584
_080D3520: .4byte 0x03000FD8
_080D3524: .4byte 0x00007FFF
_080D3528:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D353E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3532:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3532
_080D353E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3554
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3548:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3548
_080D3554:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D356A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D355E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D355E
_080D356A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3584
	movs r1, #0x10
_080D3574:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D357E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D357E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3574
_080D3584:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D358C:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D3598
	movs r1, #0x00
_080D3598:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D35A2
	adds r1, r0, #0x0
_080D35A2:
	ldr r0, _080D369C @ =0x00007FFF
	cmp r2, r0
	ble _080D35AA
	adds r2, r0, #0x0
_080D35AA:
	cmp r2, r1
	bge _080D35B0
	adds r1, r2, #0x0
_080D35B0:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080D35C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D35CA
_080D35C8:
	movs r1, #0x00
_080D35CA:
	cmp r1, #0x00
	bne _080D35D0
	b _080D371C
_080D35D0:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080D36A0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D35F0
	b _080D371C
_080D35F0:
	movs r3, #0x3C
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D36A4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D370A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D36A8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D3652
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3646:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3646
_080D3652:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3668
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D365C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D365C
_080D3668:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D367E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3672:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3672
_080D367E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3706
	movs r1, #0x10
_080D3688:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3692
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3692:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3688
	b _080D3706
	.byte 0x00, 0x00
_080D369C: .4byte 0x00007FFF
_080D36A0: .4byte 0x0300034C
_080D36A4: .4byte 0x03000FD8
_080D36A8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D36C0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36B4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36B4
_080D36C0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D36D6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36CA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36CA
_080D36D6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D36EC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D36E0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D36E0
_080D36EC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3706
	movs r1, #0x10
_080D36F6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3700
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3700:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D36F6
_080D3706:
	bl sub_807F448
_080D370A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D37EC @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D371C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D3728
	b _080D39AC
_080D3728:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D37F0 @ =0x00007FFF
	cmp r1, r0
	ble _080D3734
	adds r1, r0, #0x0
_080D3734:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D374C
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D374E
_080D374C:
	movs r2, #0x00
_080D374E:
	cmp r2, #0x00
	bne _080D3754
	b _080D3860
_080D3754:
	ldr r3, _080D37F4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D37EC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D37F8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D37A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3798:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3798
_080D37A4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D37BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D37AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D37AE
_080D37BA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D37D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D37C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D37C4
_080D37D0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3854
	movs r1, #0x10
_080D37DA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D37E4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D37E4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D37DA
	b _080D3854
_080D37EC: .4byte 0x00000FFF
_080D37F0: .4byte 0x00007FFF
_080D37F4: .4byte 0x03000FD8
_080D37F8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D380E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3802:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3802
_080D380E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3824
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3818:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3818
_080D3824:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D383A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D382E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D382E
_080D383A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3854
	movs r1, #0x10
_080D3844:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D384E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D384E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3844
_080D3854:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D39AC
_080D3860:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080D3870
	b _080D39AC
_080D3870:
	ldr r0, _080D392C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D387E
	b _080D39AC
_080D387E:
	ldr r2, _080D3930 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D38AE
	b _080D39AC
_080D38AE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D3934 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D3938
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D38E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D38D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D38D6
_080D38E2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D38F8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D38EC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D38EC
_080D38F8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D390E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3902:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3902
_080D390E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3994
	movs r1, #0x10
_080D3918:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D3922
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D3922:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3918
	b _080D3994
	.byte 0x00, 0x00
_080D392C: .4byte 0x0300034C
_080D3930: .4byte 0x03000FD8
_080D3934: .4byte 0x00000FFF
_080D3938:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D394E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3942:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3942
_080D394E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D3964
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D3958:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D3958
_080D3964:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D397A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D396E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D396E
_080D397A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D3994
	movs r1, #0x10
_080D3984:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D398E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D398E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D3984
_080D3994:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x3C
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D39AC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D3A24
	ldr r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D39C2
	movs r1, #0x00
_080D39C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D39CC
	adds r1, r0, #0x0
_080D39CC:
	ldr r0, _080D3A18 @ =0x00007FFF
	cmp r2, r0
	ble _080D39D4
	adds r2, r0, #0x0
_080D39D4:
	cmp r2, r1
	bge _080D39DA
	adds r1, r2, #0x0
_080D39DA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D39F4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D39F6
_080D39F4:
	movs r1, #0x00
_080D39F6:
	cmp r1, #0x00
	beq _080D3A24
	cmp r3, #0x01
	ble _080D3A24
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D3A1C @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D3A20 @ =0x080D3FD5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D3B56
	.byte 0x00, 0x00
_080D3A18: .4byte 0x00007FFF
_080D3A1C: .4byte 0x00000FFF
_080D3A20: .4byte sub_80D3FD4
_080D3A24:
	mov r1, r10
	cmp r1, #0x00
	bge _080D3A2C
	movs r1, #0x00
_080D3A2C:
	ldr r0, _080D3B68 @ =0x00007FFF
	cmp r1, r0
	ble _080D3A34
	adds r1, r0, #0x0
_080D3A34:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D3A4E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D3A50
_080D3A4E:
	movs r2, #0x00
_080D3A50:
	cmp r2, #0x00
	beq _080D3A92
	movs r0, #0xAB
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3A74
	cmp r1, #0x04
	bne _080D3A92
_080D3A74:
	ldr r2, _080D3B6C @ =0x0000208B
	adds r0, r3, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D3A92:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	adds r2, r5, #0x0
	adds r2, #0x79
	cmp r0, #0x01
	bne _080D3AA8
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080D3AA8:
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3B56
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3ADE
	cmp r2, #0x04
	bne _080D3AFA
_080D3ADE:
	ldr r2, _080D3B70 @ =0x00002055
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080D3AFA:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3B08
	cmp r2, #0x04
	bne _080D3B50
_080D3B08:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D3B10
	adds r0, #0xFF
_080D3B10:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x14
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D3B2A
	adds r2, #0xFF
_080D3B2A:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D3B50:
	ldr r0, _080D3B74 @ =0x080D3B79
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080D3B56:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3B68: .4byte 0x00007FFF
_080D3B6C: .4byte 0x0000208B
_080D3B70: .4byte 0x00002055
_080D3B74: .4byte sub_80D3B78
	thumb_func_start sub_80D3B78
sub_80D3B78:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080D3C70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3C60
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3BBE
	cmp r1, #0x04
	bne _080D3BD8
_080D3BBE:
	ldr r2, _080D3C74 @ =0x00002037
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3BD8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3BEC
	cmp r2, #0x04
	bne _080D3C04
_080D3BEC:
	ldr r2, _080D3C78 @ =0x00002055
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3C04:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3C12
	cmp r2, #0x04
	bne _080D3C5A
_080D3C12:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080D3C1A
	adds r0, #0xFF
_080D3C1A:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080D3C34
	adds r2, #0xFF
_080D3C34:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080D3C5A:
	ldr r0, _080D3C7C @ =0x080D3C81
	mov r1, r9
	str r0, [r1, #0x4C]
_080D3C60:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3C70: .4byte 0x03000FD8
_080D3C74: .4byte 0x00002037
_080D3C78: .4byte 0x00002055
_080D3C7C: .4byte sub_80D3C80
	thumb_func_start sub_80D3C80
sub_80D3C80:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D3DB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r4, #0x08
	ldr r7, [r0, #0x74]
	adds r5, r7, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x3C]
	subs r1, r1, r0
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x40]
	subs r1, r1, r0
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D3DA6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D3DB8 @ =0x0801808D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D3D28
	ldr r2, _080D3DBC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D3D5E
_080D3D28:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D3D30
	adds r1, #0xFF
_080D3D30:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D3D46
	adds r2, #0xFF
_080D3D46:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D3DC0 @ =0x000006C4
	str r6, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D3D5E:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3D70
	cmp r1, #0x04
	bne _080D3DA0
_080D3D70:
	ldr r2, _080D3DC4 @ =0x03001038
	ldr r0, _080D3DC8 @ =0x0819832C
	ldr r1, _080D3DCC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D3DA0:
	ldr r0, _080D3DD0 @ =0x080D3DD5
	mov r1, r8
	str r0, [r1, #0x4C]
_080D3DA6:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D3DB4: .4byte 0x03000FD8
_080D3DB8: .4byte 0x0801808D
_080D3DBC: .4byte 0x00000111
_080D3DC0: .4byte 0x000006C4
_080D3DC4: .4byte 0x03001038
_080D3DC8: .4byte 0x0819832C
_080D3DCC: .4byte 0x08198220
_080D3DD0: .4byte sub_80D3DD4
	thumb_func_start sub_80D3DD4
sub_80D3DD4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D3E8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D3DFC
	b _080D3FC8
_080D3DFC:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3E1A
	cmp r1, #0x04
	bne _080D3E58
_080D3E1A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3E28
	adds r0, #0xFF
_080D3E28:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3E36
	adds r0, #0xFF
_080D3E36:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3E44
	adds r0, #0xFF
_080D3E44:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D3E58:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3E6C
	cmp r2, #0x04
	bne _080D3ED0
_080D3E6C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D3E94
	ldr r2, _080D3E90 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D3EA0
	.byte 0x00, 0x00
_080D3E8C: .4byte 0x03000FD8
_080D3E90: .4byte 0x00002002
_080D3E94:
	ldr r2, _080D3F6C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D3EA0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D3EB6
	movs r2, #0x01
_080D3EB6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3ED0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3EDE
	cmp r2, #0x04
	bne _080D3EE8
_080D3EDE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D3EE8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D3EFC
	cmp r2, #0x04
	bne _080D3F3E
_080D3EFC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3F0A
	adds r0, #0xFF
_080D3F0A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3F18
	adds r0, #0xFF
_080D3F18:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D3F26
	adds r0, #0xFF
_080D3F26:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D3F3E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D3F4C
	cmp r1, #0x04
	bne _080D3FB0
_080D3F4C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D3F74
	ldr r2, _080D3F70 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D3F80
	.byte 0x00, 0x00
_080D3F6C: .4byte 0x0000204F
_080D3F70: .4byte 0x00002002
_080D3F74:
	ldr r2, _080D3FD0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D3F80:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D3F96
	movs r2, #0x01
_080D3F96:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D3FB0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D3FBE
	cmp r2, #0x04
	bne _080D3FC8
_080D3FBE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D3FC8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D3FD0: .4byte 0x0000204F
	thumb_func_start sub_80D3FD4
sub_80D3FD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D404C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4008
	cmp r1, #0x04
	bne _080D4024
_080D4008:
	ldr r2, _080D4050 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x01
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
_080D4024:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4042
	ldr r2, _080D4054 @ =0x00002095
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4042:
	ldr r0, _080D4058 @ =0x080D405D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D404C: .4byte 0x03000FD8
_080D4050: .4byte 0x00002066
_080D4054: .4byte 0x00002095
_080D4058: .4byte sub_80D405C
	thumb_func_start sub_80D405C
sub_80D405C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D414C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D4084
	b _080D41BA
_080D4084:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D40A0
	cmp r1, #0x04
	bne _080D40BC
_080D40A0:
	ldr r2, _080D4150 @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x02
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
_080D40BC:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D40DA
	ldr r2, _080D4154 @ =0x00002095
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D40DA:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D40EC
	cmp r1, #0x04
	bne _080D41A8
_080D40EC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D40F4
	adds r1, #0xFF
_080D40F4:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D410A
	adds r0, #0xFF
_080D410A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D4120
	adds r3, #0xFF
_080D4120:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D4158
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D4168
_080D414C: .4byte 0x03000FD8
_080D4150: .4byte 0x00002066
_080D4154: .4byte 0x00002095
_080D4158:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D4168:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D4170
	adds r0, #0xFF
_080D4170:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D41C8 @ =0x03001038
	ldr r0, _080D41CC @ =0x0819832C
	ldr r1, _080D41D0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D418E
	adds r1, #0x3F
_080D418E:
	asrs r1, r1, #0x06
	adds r1, #0x20
	adds r0, r5, #0x0
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8088164
_080D41A8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D41D4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D41D8 @ =0x080D41DD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D41BA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D41C8: .4byte 0x03001038
_080D41CC: .4byte 0x0819832C
_080D41D0: .4byte 0x08198220
_080D41D4: .4byte 0x00000FFF
_080D41D8: .4byte sub_80D41DC
	thumb_func_start sub_80D41DC
sub_80D41DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D4334 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r1, [sp, #0x004]
	ldr r7, [r1, #0x2C]
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r10, r2
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	mov r3, r8
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	mov r12, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080D422C
	b _080D48A8
_080D422C:
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r3, r0, r3
	str r3, [sp, #0x00C]
	str r3, [sp, #0x008]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080D4270
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D4270:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080D4280
	b _080D47FC
_080D4280:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	mov r8, r3
	cmp r0, #0x00
	bne _080D4292
	b _080D43A0
_080D4292:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D429A
	movs r1, #0x00
_080D429A:
	ldr r0, _080D4338 @ =0x00007FFF
	cmp r1, r0
	ble _080D42A2
	adds r1, r0, #0x0
_080D42A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D42BA
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D42BC
_080D42BA:
	movs r2, #0x00
_080D42BC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r9, r1
	cmp r2, #0x00
	beq _080D43A0
	ldr r2, _080D4334 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D433C
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D42F0
	movs r1, #0x4C
_080D42E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42E4
_080D42F0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4304
	movs r1, #0x4C
_080D42F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D42F8
_080D4304:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4318
	movs r1, #0x4C
_080D430C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D430C
_080D4318:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x04
_080D4322:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D432C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D432C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4322
	b _080D4398
_080D4334: .4byte 0x03000FD8
_080D4338: .4byte 0x00007FFF
_080D433C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4352
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4346:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4346
_080D4352:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4368
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D435C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D435C
_080D4368:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D437E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4372:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4372
_080D437E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4398
	movs r1, #0x10
_080D4388:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4392
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4392:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4388
_080D4398:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D43A0:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080D43AA
	movs r1, #0x00
_080D43AA:
	mov r3, r10
	cmp r3, #0x00
	bge _080D43B2
	movs r2, #0x00
_080D43B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D43BC
	adds r1, r0, #0x0
_080D43BC:
	ldr r0, _080D440C @ =0x00007FFF
	cmp r2, r0
	ble _080D43C4
	adds r2, r0, #0x0
_080D43C4:
	cmp r2, r1
	bge _080D43CA
	adds r1, r2, #0x0
_080D43CA:
	mov r4, r8
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D43E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D43E4
_080D43E2:
	movs r1, #0x00
_080D43E4:
	cmp r1, #0x00
	bne _080D43EA
	b _080D4562
_080D43EA:
	ldr r0, _080D4410 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080D4414
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	b _080D442C
_080D440C: .4byte 0x00007FFF
_080D4410: .4byte 0x03000FD8
_080D4414:
	cmp r1, #0x40
	bne _080D442C
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_807E680
_080D442C:
	ldr r0, _080D44E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D443A
	b _080D4562
_080D443A:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D44E8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D454E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D44EC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D449C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4490:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4490
_080D449C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D44B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44A6
_080D44B2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D44C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44BC
_080D44C8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D44D2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D44DC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D44DC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D44D2
	b _080D454A
_080D44E4: .4byte 0x0300034C
_080D44E8: .4byte 0x03000FD8
_080D44EC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4504
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D44F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D44F8
_080D4504:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D451A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D450E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D450E
_080D451A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4530
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4524:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4524
_080D4530:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D454A
	movs r1, #0x10
_080D453A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4544
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4544:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D453A
_080D454A:
	bl sub_807F448
_080D454E:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4638 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080D4562:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D456E
	b _080D47FC
_080D456E:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4576
	movs r1, #0x00
_080D4576:
	ldr r0, _080D463C @ =0x00007FFF
	cmp r1, r0
	ble _080D457E
	adds r1, r0, #0x0
_080D457E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4596
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4598
_080D4596:
	movs r2, #0x00
_080D4598:
	cmp r2, #0x00
	bne _080D459E
	b _080D46AC
_080D459E:
	ldr r3, _080D4640 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4638 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4644
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D45EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45E2
_080D45EE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D45F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D45F8
_080D4604:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D461A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D460E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D460E
_080D461A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4624:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D462E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D462E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4624
	b _080D46A0
	.byte 0x00, 0x00
_080D4638: .4byte 0x00000FFF
_080D463C: .4byte 0x00007FFF
_080D4640: .4byte 0x03000FD8
_080D4644:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D465A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D464E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D464E
_080D465A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4670
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4664:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4664
_080D4670:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D4686
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D467A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D467A
_080D4686:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D46A0
	movs r1, #0x10
_080D4690:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D469A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D469A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4690
_080D46A0:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D47FC
_080D46AC:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080D46B8
	b _080D47FC
_080D46B8:
	ldr r0, _080D477C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D46CE
	b _080D47FC
_080D46CE:
	ldr r2, _080D4780 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D46FE
	b _080D47FC
_080D46FE:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4784 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4788
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4732
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4726:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4726
_080D4732:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4748
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D473C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D473C
_080D4748:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D475E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4752:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4752
_080D475E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D4768:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4772
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4772:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4768
	b _080D47E4
	.byte 0x00, 0x00
_080D477C: .4byte 0x0300034C
_080D4780: .4byte 0x03000FD8
_080D4784: .4byte 0x00000FFF
_080D4788:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D479E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4792:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4792
_080D479E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D47B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47A8
_080D47B4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D47CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D47BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D47BE
_080D47CA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D47E4
	movs r1, #0x10
_080D47D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D47DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D47DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D47D4
_080D47E4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080D47FC:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4878
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080D4810
	movs r1, #0x00
_080D4810:
	mov r4, r10
	cmp r4, #0x00
	bge _080D4818
	movs r2, #0x00
_080D4818:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4822
	adds r1, r0, #0x0
_080D4822:
	ldr r0, _080D486C @ =0x00007FFF
	cmp r2, r0
	ble _080D482A
	adds r2, r0, #0x0
_080D482A:
	cmp r2, r1
	bge _080D4830
	adds r1, r2, #0x0
_080D4830:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D484A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D484C
_080D484A:
	movs r1, #0x00
_080D484C:
	cmp r1, #0x00
	beq _080D4878
	cmp r3, #0x01
	ble _080D4878
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080D4870 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D4874 @ =0x080D68B5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D48BA
_080D486C: .4byte 0x00007FFF
_080D4870: .4byte 0x00000FFF
_080D4874: .4byte sub_80D68B4
_080D4878:
	mov r1, r10
	cmp r1, #0x00
	bge _080D4880
	movs r1, #0x00
_080D4880:
	ldr r0, _080D48CC @ =0x00007FFF
	cmp r1, r0
	ble _080D4888
	adds r1, r0, #0x0
_080D4888:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D48A2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D48A4
_080D48A2:
	movs r2, #0x00
_080D48A4:
	cmp r2, #0x00
	beq _080D48BA
_080D48A8:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D48D0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D48D4 @ =0x080D48D9
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D48BA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D48CC: .4byte 0x00007FFF
_080D48D0: .4byte 0x00000FFF
_080D48D4: .4byte sub_80D48D8
	thumb_func_start sub_80D48D8
sub_80D48D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080D49FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x03
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r0, r0, #0x02
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x00C]
	str r2, [sp, #0x008]
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D494A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D494A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D495A
	b _080D4E86
_080D495A:
	mov r1, r12
	cmp r1, #0x00
	bge _080D4962
	movs r1, #0x00
_080D4962:
	ldr r0, _080D4A00 @ =0x00007FFF
	cmp r1, r0
	ble _080D496A
	adds r1, r0, #0x0
_080D496A:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4980
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4982
_080D4980:
	movs r2, #0x00
_080D4982:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D4A68
	ldr r2, _080D49FC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D4A04
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D49B6
	movs r1, #0x4C
_080D49AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49AA
_080D49B6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D49CA
	movs r1, #0x4C
_080D49BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49BE
_080D49CA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D49DE
	movs r1, #0x4C
_080D49D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D49D2
_080D49DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x04
_080D49E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D49F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D49F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D49E8
	b _080D4A60
	.byte 0x00, 0x00
_080D49FC: .4byte 0x03000FD8
_080D4A00: .4byte 0x00007FFF
_080D4A04:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4A1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A0E
_080D4A1A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4A30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A24
_080D4A30:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4A46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4A3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4A3A
_080D4A46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4A60
	movs r1, #0x10
_080D4A50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4A5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4A5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4A50
_080D4A60:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D4A68:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D4A72
	movs r1, #0x00
_080D4A72:
	mov r3, r9
	cmp r3, #0x00
	bge _080D4A7A
	movs r2, #0x00
_080D4A7A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D4A84
	adds r1, r0, #0x0
_080D4A84:
	ldr r0, _080D4B78 @ =0x00007FFF
	cmp r2, r0
	ble _080D4A8C
	adds r2, r0, #0x0
_080D4A8C:
	cmp r2, r1
	bge _080D4A92
	adds r1, r2, #0x0
_080D4A92:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D4AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D4AAC
_080D4AAA:
	movs r1, #0x00
_080D4AAC:
	cmp r1, #0x00
	bne _080D4AB2
	b _080D4BFA
_080D4AB2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D4B7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D4AD0
	b _080D4BFA
_080D4AD0:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D4B80 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D4BE6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4B84
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B24
_080D4B30:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4B46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B3A
_080D4B46:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B50
_080D4B5C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4B66:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4B70
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4B70:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4B66
	b _080D4BE2
_080D4B78: .4byte 0x00007FFF
_080D4B7C: .4byte 0x0300034C
_080D4B80: .4byte 0x03000FD8
_080D4B84:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D4B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4B90
_080D4B9C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4BB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BA6
_080D4BB2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4BC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4BBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4BBC
_080D4BC8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4BE2
	movs r1, #0x10
_080D4BD2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4BDC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4BDC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4BD2
_080D4BE2:
	bl sub_807F448
_080D4BE6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D4CD0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D4BFA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D4C06
	b _080D4E86
_080D4C06:
	mov r1, r9
	cmp r1, #0x00
	bge _080D4C0E
	movs r1, #0x00
_080D4C0E:
	ldr r0, _080D4CD4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4C16
	adds r1, r0, #0x0
_080D4C16:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D4C2E
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D4C30
_080D4C2E:
	movs r2, #0x00
_080D4C30:
	cmp r2, #0x00
	bne _080D4C36
	b _080D4D44
_080D4C36:
	ldr r3, _080D4CD8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4CD0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4CDC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4C86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C7A
_080D4C86:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4C9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4C90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4C90
_080D4C9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4CB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CA6
_080D4CB2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4CBC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4CC6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4CC6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4CBC
	b _080D4D38
	.byte 0x00, 0x00
_080D4CD0: .4byte 0x00000FFF
_080D4CD4: .4byte 0x00007FFF
_080D4CD8: .4byte 0x03000FD8
_080D4CDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CE6
_080D4CF2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4D08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4CFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4CFC
_080D4D08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4D1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4D12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4D12
_080D4D1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4D38
	movs r1, #0x10
_080D4D28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4D32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4D32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4D28
_080D4D38:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D4E86
_080D4D44:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D4D50
	b _080D4E86
_080D4D50:
	ldr r0, _080D4E08 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D4D5E
	b _080D4E86
_080D4D5E:
	ldr r2, _080D4E0C @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080D4E86
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D4E10 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D4E14
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DB4
_080D4DC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4DD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DCA
_080D4DD6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4DEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4DE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4DE0
_080D4DEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4DF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4DF6
	b _080D4E70
_080D4E08: .4byte 0x0300034C
_080D4E0C: .4byte 0x03000FD8
_080D4E10: .4byte 0x00000FFF
_080D4E14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D4E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E1E
_080D4E2A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D4E40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E34
_080D4E40:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D4E56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D4E4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D4E4A
_080D4E56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D4E70
	movs r1, #0x10
_080D4E60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D4E6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D4E6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D4E60
_080D4E70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D4E86:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D4F00
	ldr r2, [sp, #0x00C]
	mov r1, r9
	cmp r2, #0x00
	bge _080D4E9A
	movs r2, #0x00
_080D4E9A:
	cmp r1, #0x00
	bge _080D4EA0
	movs r1, #0x00
_080D4EA0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D4EAA
	adds r2, r0, #0x0
_080D4EAA:
	ldr r0, _080D4EF4 @ =0x00007FFF
	cmp r1, r0
	ble _080D4EB2
	adds r1, r0, #0x0
_080D4EB2:
	cmp r1, r2
	bge _080D4EB8
	adds r2, r1, #0x0
_080D4EB8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D4ED2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D4ED4
_080D4ED2:
	movs r2, #0x00
_080D4ED4:
	cmp r2, #0x00
	beq _080D4F00
	cmp r3, #0x01
	ble _080D4F00
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D4EF8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D4EFC @ =0x080D55F9
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D512E
_080D4EF4: .4byte 0x00007FFF
_080D4EF8: .4byte 0x00000FFF
_080D4EFC: .4byte sub_80D55F8
_080D4F00:
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D4FC8
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r2, [r6, #0x18]
	adds r2, r2, r1
	adds r4, r0, #0x0
	cmp r3, r2
	bge _080D4FC8
	ldr r0, [r6, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080D4FA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F3C
	cmp r1, #0x04
	bne _080D4F58
_080D4F3C:
	ldr r2, _080D50C0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080D4F58:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4F76
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4F76:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4F88
	cmp r1, #0x04
	bne _080D4FA0
_080D4F88:
	ldr r2, _080D50C8 @ =0x00002037
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4FA0:
	ldr r2, _080D50CC @ =0x03001038
	ldr r0, _080D50D0 @ =0x0819832C
	ldr r1, _080D50D4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, [r5, #0x18]
	ldr r1, [r6, #0x18]
	cmp r1, #0x00
	bge _080D4FB6
	adds r1, #0xFF
_080D4FB6:
	asrs r1, r1, #0x08
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r1, r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D4FC8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D4FD8
	b _080D512E
_080D4FD8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D4FF6
	cmp r2, #0x04
	bne _080D5012
_080D4FF6:
	ldr r2, _080D50C0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x04
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
_080D5012:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5030
	ldr r2, _080D50C4 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5030:
	ldr r3, [r5, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r3, #0x12]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r0, [r2, #0x12]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x12]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D505C
	cmp r2, #0x04
	bne _080D5128
_080D505C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080D5064
	adds r0, #0xFF
_080D5064:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r6, r0, #0x0
	subs r6, #0x10
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080D507E
	adds r0, #0xFF
_080D507E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080D5094
	adds r3, #0xFF
_080D5094:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _080D50D8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D50E8
	.byte 0x00, 0x00
_080D50C0: .4byte 0x00002066
_080D50C4: .4byte 0x00002095
_080D50C8: .4byte 0x00002037
_080D50CC: .4byte 0x03001038
_080D50D0: .4byte 0x0819832C
_080D50D4: .4byte 0x08198220
_080D50D8:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D50E8:
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080D50F0
	adds r0, #0xFF
_080D50F0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D5140 @ =0x03001038
	ldr r0, _080D5144 @ =0x0819832C
	ldr r1, _080D5148 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D510A
	adds r1, #0x3F
_080D510A:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D5128:
	ldr r0, _080D514C @ =0x080D5151
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D512E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5140: .4byte 0x03001038
_080D5144: .4byte 0x0819832C
_080D5148: .4byte 0x08198220
_080D514C: .4byte sub_80D5150
	thumb_func_start sub_80D5150
sub_80D5150:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D52D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r5, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D51DC
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D51DC
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D51B6
	cmp r1, #0x04
	bne _080D51DC
_080D51B6:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D51DC:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D52CC
	ldr r0, [r4, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D52DC @ =0x0483818D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bgt _080D5244
	ldr r2, _080D52E0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D527A
_080D5244:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D524C
	adds r1, #0xFF
_080D524C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D5262
	adds r2, #0xFF
_080D5262:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D52E4 @ =0x000006C4
	str r6, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D527A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D528C
	cmp r1, #0x04
	bne _080D52A8
_080D528C:
	ldr r2, _080D52E8 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x05
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
_080D52A8:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D52C6
	ldr r2, _080D52EC @ =0x00002095
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D52C6:
	ldr r0, _080D52F0 @ =0x080D52F5
	mov r3, r8
	str r0, [r3, #0x4C]
_080D52CC:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D52D8: .4byte 0x03000FD8
_080D52DC: .4byte 0x0483818D
_080D52E0: .4byte 0x00000111
_080D52E4: .4byte 0x000006C4
_080D52E8: .4byte 0x00002066
_080D52EC: .4byte 0x00002095
_080D52F0: .4byte sub_80D52F4
	thumb_func_start sub_80D52F4
sub_80D52F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D53E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D53E0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D532C
	cmp r1, #0x04
	bne _080D5348
_080D532C:
	ldr r2, _080D53EC @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x06
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
_080D5348:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D5366
	ldr r2, _080D53F0 @ =0x00002095
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5366:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5378
	cmp r1, #0x04
	bne _080D53D2
_080D5378:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D5380
	adds r0, #0xFF
_080D5380:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D539A
	adds r2, #0xFF
_080D539A:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D53BE
	adds r0, #0xFF
_080D53BE:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D53D2:
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0xBA
	lsls r1, r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _080D53F4 @ =0x080D53F9
	str r0, [r6, #0x4C]
_080D53E0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D53E8: .4byte 0x03000FD8
_080D53EC: .4byte 0x00002066
_080D53F0: .4byte 0x00002095
_080D53F4: .4byte sub_80D53F8
	thumb_func_start sub_80D53F8
sub_80D53F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D54B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5420
	b _080D55EC
_080D5420:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D543E
	cmp r1, #0x04
	bne _080D547C
_080D543E:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D544C
	adds r0, #0xFF
_080D544C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D545A
	adds r0, #0xFF
_080D545A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D5468
	adds r0, #0xFF
_080D5468:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D547C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5490
	cmp r2, #0x04
	bne _080D54F4
_080D5490:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D54B8
	ldr r2, _080D54B4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D54C4
	.byte 0x00, 0x00
_080D54B0: .4byte 0x03000FD8
_080D54B4: .4byte 0x00002002
_080D54B8:
	ldr r2, _080D5590 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D54C4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D54DA
	movs r2, #0x01
_080D54DA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D54F4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5502
	cmp r2, #0x04
	bne _080D550C
_080D5502:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D550C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5520
	cmp r2, #0x04
	bne _080D5562
_080D5520:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D552E
	adds r0, #0xFF
_080D552E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D553C
	adds r0, #0xFF
_080D553C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D554A
	adds r0, #0xFF
_080D554A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D5562:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5570
	cmp r1, #0x04
	bne _080D55D4
_080D5570:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D5598
	ldr r2, _080D5594 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D55A4
	.byte 0x00, 0x00
_080D5590: .4byte 0x0000204F
_080D5594: .4byte 0x00002002
_080D5598:
	ldr r2, _080D55F4 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D55A4:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D55BA
	movs r2, #0x01
_080D55BA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D55D4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D55E2
	cmp r2, #0x04
	bne _080D55EC
_080D55E2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D55EC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D55F4: .4byte 0x0000204F
	thumb_func_start sub_80D55F8
sub_80D55F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D5704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080D5610
	adds r1, #0xFF
_080D5610:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080D561A
	adds r2, #0xFF
_080D561A:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080D5624
	adds r3, #0xFF
_080D5624:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080D5708 @ =0x00002F7D
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5640
	cmp r1, #0x04
	bne _080D565C
_080D5640:
	ldr r2, _080D570C @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x04
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
_080D565C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D567A
	ldr r2, _080D5710 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D567A:
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D569E
	cmp r1, #0x04
	bne _080D56EC
_080D569E:
	ldr r5, _080D5704 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xA0
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x73
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x55
	bl sub_808843C
	movs r0, #0x5C
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080D5714 @ =0x00000433
	adds r0, r6, #0x0
	bl sub_8088164
_080D56EC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D5718 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D571C @ =0x080D5721
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D5704: .4byte 0x03000FD8
_080D5708: .4byte 0x00002F7D
_080D570C: .4byte 0x00002066
_080D5710: .4byte 0x00002095
_080D5714: .4byte 0x00000433
_080D5718: .4byte 0x00000FFF
_080D571C: .4byte sub_80D5720
	thumb_func_start sub_80D5720
sub_80D5720:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080D58A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D57B0
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r6, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D57B0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D578A
	cmp r1, #0x04
	bne _080D57B0
_080D578A:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D57B0:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r9, r0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mov r10, r0
	cmp r1, r9
	bge _080D57F6
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D57F6:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D5806
	b _080D5D22
_080D5806:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D580E
	movs r2, #0x00
_080D580E:
	ldr r0, _080D58A4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5816
	adds r2, r0, #0x0
_080D5816:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080D5830
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5832
_080D5830:
	movs r1, #0x00
_080D5832:
	cmp r1, #0x00
	beq _080D590C
	ldr r2, _080D58A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D58A8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D585A
	movs r1, #0x80
_080D584E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D584E
_080D585A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D586E
	movs r1, #0x80
_080D5862:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5862
_080D586E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5882
	movs r1, #0x80
_080D5876:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5876
_080D5882:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x08
_080D588C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5896
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5896:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D588C
	b _080D5904
	.byte 0x00, 0x00
_080D58A0: .4byte 0x03000FD8
_080D58A4: .4byte 0x00007FFF
_080D58A8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D58BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58B2
_080D58BE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D58D4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58C8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58C8
_080D58D4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D58EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58DE
_080D58EA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x10
_080D58F4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D58FE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D58FE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D58F4
_080D5904:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D590C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5916
	movs r1, #0x00
_080D5916:
	mov r3, r9
	cmp r3, #0x00
	bge _080D591E
	movs r2, #0x00
_080D591E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5928
	adds r1, r0, #0x0
_080D5928:
	ldr r0, _080D5A1C @ =0x00007FFF
	cmp r2, r0
	ble _080D5930
	adds r2, r0, #0x0
_080D5930:
	cmp r2, r1
	bge _080D5936
	adds r1, r2, #0x0
_080D5936:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D594C
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D594E
_080D594C:
	movs r1, #0x00
_080D594E:
	cmp r1, #0x00
	bne _080D5954
	b _080D5A9C
_080D5954:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D5A20 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D5972
	b _080D5A9C
_080D5972:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D5A24 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D5A8A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5A28
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D59D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59C6
_080D59D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D59E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59DC
_080D59E8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D59FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59F2
_080D59FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A08
	b _080D5A86
	.byte 0x00, 0x00
_080D5A1C: .4byte 0x00007FFF
_080D5A20: .4byte 0x0300034C
_080D5A24: .4byte 0x03000FD8
_080D5A28:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D5A40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A34
_080D5A40:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5A56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A4A
_080D5A56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A60
_080D5A6C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A76:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A80
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A80:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A76
_080D5A86:
	bl sub_807F448
_080D5A8A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5B6C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D5A9C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D5AA8
	b _080D5D22
_080D5AA8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D5AB0
	movs r1, #0x00
_080D5AB0:
	ldr r0, _080D5B70 @ =0x00007FFF
	cmp r1, r0
	ble _080D5AB8
	adds r1, r0, #0x0
_080D5AB8:
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D5ACE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D5AD0
_080D5ACE:
	movs r2, #0x00
_080D5AD0:
	cmp r2, #0x00
	bne _080D5AD6
	b _080D5BE0
_080D5AD6:
	ldr r3, _080D5B74 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D5B6C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5B78
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B18
_080D5B24:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5B3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B2E
_080D5B3A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5B50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B44
_080D5B50:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5B5A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5B64
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5B64:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5B5A
	b _080D5BD4
_080D5B6C: .4byte 0x00000FFF
_080D5B70: .4byte 0x00007FFF
_080D5B74: .4byte 0x03000FD8
_080D5B78:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B82
_080D5B8E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B98
_080D5BA4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5BAE
_080D5BBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5BC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5BCE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5BCE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5BC4
_080D5BD4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D5D22
_080D5BE0:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D5BEC
	b _080D5D22
_080D5BEC:
	ldr r0, _080D5CA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D5BFA
	b _080D5D22
_080D5BFA:
	ldr r2, _080D5CA8 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080D5D22
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D5CAC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5CB0
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5C5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C50
_080D5C5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5C72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C66
_080D5C72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5C88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C7C
_080D5C88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5C92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5C9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5C9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5C92
	b _080D5D0C
_080D5CA4: .4byte 0x0300034C
_080D5CA8: .4byte 0x03000FD8
_080D5CAC: .4byte 0x00000FFF
_080D5CB0:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5CC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CBA
_080D5CC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5CDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CD0
_080D5CDC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CE6
_080D5CF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5CFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5D06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5D06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5CFC
_080D5D0C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D5D22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D5D9C
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5D36
	movs r1, #0x00
_080D5D36:
	cmp r2, #0x00
	bge _080D5D3C
	movs r2, #0x00
_080D5D3C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5D46
	adds r1, r0, #0x0
_080D5D46:
	ldr r0, _080D5D90 @ =0x00007FFF
	cmp r2, r0
	ble _080D5D4E
	adds r2, r0, #0x0
_080D5D4E:
	cmp r2, r1
	bge _080D5D54
	adds r1, r2, #0x0
_080D5D54:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D5D6C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D5D6E
_080D5D6C:
	movs r1, #0x00
_080D5D6E:
	cmp r1, #0x00
	beq _080D5D9C
	cmp r3, #0x01
	ble _080D5D9C
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5D94 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D5D98 @ =0x080D62D5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D5ED2
	.byte 0x00, 0x00
_080D5D90: .4byte 0x00007FFF
_080D5D94: .4byte 0x00000FFF
_080D5D98: .4byte sub_80D62D4
_080D5D9C:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080D5DA4
	movs r2, #0x00
_080D5DA4:
	ldr r0, _080D5EE4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5DAC
	adds r2, r0, #0x0
_080D5DAC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080D5DC4
	mov r6, r10
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5DC6
_080D5DC4:
	movs r1, #0x00
_080D5DC6:
	cmp r1, #0x00
	beq _080D5E12
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5DDC
	cmp r1, #0x04
	bne _080D5DF4
_080D5DDC:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5DF4:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E12
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E12:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D5ED2
	ldr r0, _080D5EF0 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5E3E
	cmp r2, #0x04
	bne _080D5E5A
_080D5E3E:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0A
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
_080D5E5A:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E78
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E78:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5E86
	cmp r2, #0x04
	bne _080D5ECC
_080D5E86:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D5E8E
	adds r1, #0xFF
_080D5E8E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D5EA4
	adds r2, #0xFF
_080D5EA4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8088274
_080D5ECC:
	ldr r0, _080D5EF4 @ =0x080D5EF9
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D5ED2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5EE4: .4byte 0x00007FFF
_080D5EE8: .4byte 0x00002066
_080D5EEC: .4byte 0x00002095
_080D5EF0: .4byte 0x0000011F
_080D5EF4: .4byte sub_80D5EF8
	thumb_func_start sub_80D5EF8
sub_80D5EF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5F34
	b _080D609A
_080D5F34:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5F56
	cmp r1, #0x04
	bne _080D5F6E
_080D5F56:
	ldr r2, _080D60B0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F6E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5F8C
	ldr r2, _080D60B4 @ =0x00002095
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F8C:
	movs r7, #0x00
	movs r0, #0x76
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xCC
	adds r1, r1, r5
	mov r8, r1
_080D5F9A:
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D604E
	ldr r0, [r4, #0x28]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D604E
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x1E
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, _080D60B8 @ =0x0881828D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D6018
	ldr r2, _080D60BC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D604E
_080D6018:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D6020
	adds r1, #0xFF
_080D6020:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6036
	adds r2, #0xFF
_080D6036:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	ldr r0, _080D60C0 @ =0x000006D4
	movs r3, #0x00
	bl sub_80DF024
_080D604E:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D5F9A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6064
	cmp r1, #0x04
	bne _080D6094
_080D6064:
	ldr r2, _080D60C4 @ =0x03001038
	ldr r0, _080D60C8 @ =0x0819832C
	ldr r1, _080D60CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6094:
	ldr r0, _080D60D0 @ =0x080D60D5
	mov r2, r10
	str r0, [r2, #0x4C]
_080D609A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D60AC: .4byte 0x03000FD8
_080D60B0: .4byte 0x00002066
_080D60B4: .4byte 0x00002095
_080D60B8: .4byte 0x0881828D
_080D60BC: .4byte 0x00000111
_080D60C0: .4byte 0x000006D4
_080D60C4: .4byte 0x03001038
_080D60C8: .4byte 0x0819832C
_080D60CC: .4byte 0x08198220
_080D60D0: .4byte sub_80D60D4
	thumb_func_start sub_80D60D4
sub_80D60D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D618C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D60FC
	b _080D62C8
_080D60FC:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D611A
	cmp r1, #0x04
	bne _080D6158
_080D611A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6128
	adds r0, #0xFF
_080D6128:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6136
	adds r0, #0xFF
_080D6136:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6144
	adds r0, #0xFF
_080D6144:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D6158:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D616C
	cmp r2, #0x04
	bne _080D61D0
_080D616C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6194
	ldr r2, _080D6190 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D61A0
	.byte 0x00, 0x00
_080D618C: .4byte 0x03000FD8
_080D6190: .4byte 0x00002002
_080D6194:
	ldr r2, _080D626C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D61A0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D61B6
	movs r2, #0x01
_080D61B6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D61D0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D61DE
	cmp r2, #0x04
	bne _080D61E8
_080D61DE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D61E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D61FC
	cmp r2, #0x04
	bne _080D623E
_080D61FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D620A
	adds r0, #0xFF
_080D620A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6218
	adds r0, #0xFF
_080D6218:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6226
	adds r0, #0xFF
_080D6226:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D623E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D624C
	cmp r1, #0x04
	bne _080D62B0
_080D624C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6274
	ldr r2, _080D6270 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6280
	.byte 0x00, 0x00
_080D626C: .4byte 0x0000204F
_080D6270: .4byte 0x00002002
_080D6274:
	ldr r2, _080D62D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6280:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6296
	movs r2, #0x01
_080D6296:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D62B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D62BE
	cmp r2, #0x04
	bne _080D62C8
_080D62BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D62C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D62D0: .4byte 0x0000204F
	thumb_func_start sub_80D62D4
sub_80D62D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D6374 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6300
	cmp r1, #0x04
	bne _080D631C
_080D6300:
	ldr r2, _080D6378 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080D631C:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D633A
	ldr r2, _080D637C @ =0x00002095
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D633A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D6348
	adds r1, #0xFF
_080D6348:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D6352
	adds r2, #0xFF
_080D6352:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D635C
	adds r3, #0xFF
_080D635C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D6380 @ =0x0000069F
	bl sub_80DF024
	ldr r0, _080D6384 @ =0x080D6389
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D6374: .4byte 0x03000FD8
_080D6378: .4byte 0x00002066
_080D637C: .4byte 0x00002095
_080D6380: .4byte 0x0000069F
_080D6384: .4byte sub_80D6388
	thumb_func_start sub_80D6388
sub_80D6388:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D63EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D63E4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D63B0
	cmp r1, #0x04
	bne _080D63E0
_080D63B0:
	ldr r2, _080D63F0 @ =0x03001038
	ldr r0, _080D63F4 @ =0x0819832C
	ldr r1, _080D63F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0E
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D63E0:
	ldr r0, _080D63FC @ =0x080D6401
	str r0, [r5, #0x4C]
_080D63E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D63EC: .4byte 0x03000FD8
_080D63F0: .4byte 0x03001038
_080D63F4: .4byte 0x0819832C
_080D63F8: .4byte 0x08198220
_080D63FC: .4byte sub_80D6400
	thumb_func_start sub_80D6400
sub_80D6400:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D6590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D642E
	b _080D6580
_080D642E:
	movs r7, #0x00
	movs r0, #0x7E
	adds r0, r0, r4
	mov r9, r0
	adds r4, #0xD4
	mov r8, r4
_080D643A:
	ldr r0, _080D6590 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D64EE
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D64EE
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x55
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	ldr r0, _080D6594 @ =0x0881838D
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D64B8
	ldr r2, _080D6598 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D64EE
_080D64B8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D64C0
	adds r1, #0xFF
_080D64C0:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D64D6
	adds r2, #0xFF
_080D64D6:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D64EE:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D643A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6504
	cmp r1, #0x04
	bne _080D651C
_080D6504:
	ldr r2, _080D659C @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D651C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D653A
	ldr r2, _080D65A0 @ =0x00002095
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D653A:
	mov r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D654A
	cmp r1, #0x04
	bne _080D657A
_080D654A:
	ldr r2, _080D65A4 @ =0x03001038
	ldr r0, _080D65A8 @ =0x0819832C
	ldr r1, _080D65AC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D657A:
	ldr r0, _080D65B0 @ =0x080D65B5
	mov r1, r10
	str r0, [r1, #0x4C]
_080D6580:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6590: .4byte 0x03000FD8
_080D6594: .4byte 0x0881838D
_080D6598: .4byte 0x00000111
_080D659C: .4byte 0x00002066
_080D65A0: .4byte 0x00002095
_080D65A4: .4byte 0x03001038
_080D65A8: .4byte 0x0819832C
_080D65AC: .4byte 0x08198220
_080D65B0: .4byte sub_80D65B4
	thumb_func_start sub_80D65B4
sub_80D65B4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D660C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D669C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D65EA
	cmp r1, #0x04
	bne _080D662C
_080D65EA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6610
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080D661C
	.byte 0x00, 0x00
_080D660C: .4byte 0x03000FD8
_080D6610:
	ldr r2, _080D66A4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080D661C:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D662C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D663E
	cmp r1, #0x04
	bne _080D6698
_080D663E:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080D6646
	adds r0, #0xFF
_080D6646:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D6660
	adds r2, #0xFF
_080D6660:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D6684
	adds r0, #0xFF
_080D6684:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D6698:
	ldr r0, _080D66A8 @ =0x080D66AD
	str r0, [r6, #0x4C]
_080D669C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D66A4: .4byte 0x0000204D
_080D66A8: .4byte sub_80D66AC
	thumb_func_start sub_80D66AC
sub_80D66AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D676C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D66D4
	b _080D68A8
_080D66D4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D66FA
	cmp r1, #0x04
	bne _080D6738
_080D66FA:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6708
	adds r0, #0xFF
_080D6708:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6716
	adds r0, #0xFF
_080D6716:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6724
	adds r0, #0xFF
_080D6724:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D6738:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D674C
	cmp r2, #0x04
	bne _080D67B0
_080D674C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6774
	ldr r2, _080D6770 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6780
	.byte 0x00, 0x00
_080D676C: .4byte 0x03000FD8
_080D6770: .4byte 0x00002002
_080D6774:
	ldr r2, _080D684C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6780:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6796
	movs r2, #0x01
_080D6796:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D67B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D67BE
	cmp r2, #0x04
	bne _080D67C8
_080D67BE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D67C8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D67DC
	cmp r2, #0x04
	bne _080D681E
_080D67DC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D67EA
	adds r0, #0xFF
_080D67EA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D67F8
	adds r0, #0xFF
_080D67F8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6806
	adds r0, #0xFF
_080D6806:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D681E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D682C
	cmp r1, #0x04
	bne _080D6890
_080D682C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6854
	ldr r2, _080D6850 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6860
	.byte 0x00, 0x00
_080D684C: .4byte 0x0000204F
_080D6850: .4byte 0x00002002
_080D6854:
	ldr r2, _080D68B0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6860:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6876
	movs r2, #0x01
_080D6876:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D6890:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D689E
	cmp r2, #0x04
	bne _080D68A8
_080D689E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D68A8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D68B0: .4byte 0x0000204F
	thumb_func_start sub_80D68B4
sub_80D68B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080D695C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D68E0
	cmp r1, #0x04
	bne _080D6928
_080D68E0:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D68E8
	adds r0, #0xFF
_080D68E8:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6902
	adds r2, #0xFF
_080D6902:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080D6928:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D693C
	cmp r2, #0x04
	bne _080D69A0
_080D693C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6964
	ldr r2, _080D6960 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6970
	.byte 0x00, 0x00
_080D695C: .4byte 0x03000FD8
_080D6960: .4byte 0x00002002
_080D6964:
	ldr r2, _080D69D0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6970:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6986
	movs r2, #0x01
_080D6986:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D69A0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D69BA
	cmp r2, #0x04
	bne _080D69C4
_080D69BA:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D69C4:
	ldr r0, _080D69D4 @ =0x080D8D19
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D69D0: .4byte 0x0000204F
_080D69D4: .4byte sub_80D8D18
	thumb_func_start sub_80D69D8
sub_80D69D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D6A8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r6, [r5, #0x4C]
	cmp r6, #0x00
	bne _080D6A82
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A12
	cmp r1, #0x04
	bne _080D6A42
_080D6A12:
	ldr r2, _080D6A90 @ =0x03001038
	ldr r0, _080D6A94 @ =0x0819832C
	ldr r1, _080D6A98 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r6, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6A42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A54
	cmp r1, #0x04
	bne _080D6A70
_080D6A54:
	ldr r2, _080D6A9C @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x00
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
_080D6A70:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D6AA0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D6AA4 @ =0x080D6AA9
	mov r1, r8
	str r0, [r1, #0x4C]
_080D6A82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6A8C: .4byte 0x03000FD8
_080D6A90: .4byte 0x03001038
_080D6A94: .4byte 0x0819832C
_080D6A98: .4byte 0x08198220
_080D6A9C: .4byte 0x00002024
_080D6AA0: .4byte 0x00000FFF
_080D6AA4: .4byte sub_80D6AA8
	thumb_func_start sub_80D6AA8
sub_80D6AA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D6BC8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080D6B18
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6B18:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D6B28
	b _080D705C
_080D6B28:
	mov r1, r12
	cmp r1, #0x00
	bge _080D6B30
	movs r1, #0x00
_080D6B30:
	ldr r0, _080D6BCC @ =0x00007FFF
	cmp r1, r0
	ble _080D6B38
	adds r1, r0, #0x0
_080D6B38:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D6B4E
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D6B50
_080D6B4E:
	movs r2, #0x00
_080D6B50:
	movs r3, #0x7E
	adds r3, r3, r6
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r6
	mov r8, r4
	cmp r2, #0x00
	beq _080D6C34
	ldr r2, _080D6BC8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D6BD0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6B84
	movs r1, #0x4C
_080D6B78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6B78
_080D6B84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6B98
	movs r1, #0x4C
_080D6B8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6B8C
_080D6B98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6BAC
	movs r1, #0x4C
_080D6BA0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BA0
_080D6BAC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6C2C
	movs r1, #0x04
_080D6BB6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6BC0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6BC0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6BB6
	b _080D6C2C
_080D6BC8: .4byte 0x03000FD8
_080D6BCC: .4byte 0x00007FFF
_080D6BD0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6BE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6BDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BDA
_080D6BE6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6BFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6BF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BF0
_080D6BFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6C12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6C06
_080D6C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6C2C
	movs r1, #0x10
_080D6C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6C1C
_080D6C2C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D6C34:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D6C40
	movs r1, #0x00
_080D6C40:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D6C4A
	adds r1, r0, #0x0
_080D6C4A:
	ldr r0, _080D6D44 @ =0x00007FFF
	cmp r2, r0
	ble _080D6C52
	adds r2, r0, #0x0
_080D6C52:
	cmp r2, r1
	bge _080D6C58
	adds r1, r2, #0x0
_080D6C58:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080D6C70
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D6C72
_080D6C70:
	movs r1, #0x00
_080D6C72:
	cmp r1, #0x00
	bne _080D6C78
	b _080D6DC4
_080D6C78:
	movs r4, #0x08
	negs r4, r4
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	adds r2, r4, #0x0
	bl sub_807E680
	ldr r0, _080D6D48 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D6C9C
	b _080D6DC4
_080D6C9C:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D6D4C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D6DB2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6D50
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D6CFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6CF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6CF0
_080D6CFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6D12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D06
_080D6D12:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6D28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D1C
_080D6D28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6DAE
	movs r1, #0x10
_080D6D32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6D3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6D3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6D32
	b _080D6DAE
_080D6D44: .4byte 0x00007FFF
_080D6D48: .4byte 0x0300034C
_080D6D4C: .4byte 0x03000FD8
_080D6D50:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D6D68
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D5C
_080D6D68:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6D7E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D72:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D72
_080D6D7E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6D94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D88
_080D6D94:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6DAE
	movs r1, #0x10
_080D6D9E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6DA8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6DA8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6D9E
_080D6DAE:
	bl sub_807F448
_080D6DB2:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D6E94 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D6DC4:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D6DD0
	b _080D705C
_080D6DD0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D6E98 @ =0x00007FFF
	cmp r1, r0
	ble _080D6DDC
	adds r1, r0, #0x0
_080D6DDC:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D6DF4
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D6DF6
_080D6DF4:
	movs r2, #0x00
_080D6DF6:
	cmp r2, #0x00
	bne _080D6DFC
	b _080D6F08
_080D6DFC:
	ldr r3, _080D6E9C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D6E94 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6EA0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6E4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E40
_080D6E4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6E62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E56
_080D6E62:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6E78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E6C
_080D6E78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6EFC
	movs r1, #0x10
_080D6E82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6E8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6E8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6E82
	b _080D6EFC
_080D6E94: .4byte 0x00000FFF
_080D6E98: .4byte 0x00007FFF
_080D6E9C: .4byte 0x03000FD8
_080D6EA0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6EB6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6EAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6EAA
_080D6EB6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6ECC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6EC0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6EC0
_080D6ECC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6EE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6ED6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6ED6
_080D6EE2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6EFC
	movs r1, #0x10
_080D6EEC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6EF6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6EF6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6EEC
_080D6EFC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D705C
_080D6F08:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080D6F18
	b _080D705C
_080D6F18:
	ldr r0, _080D6FDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D6F2E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D6F2E
	b _080D705C
_080D6F2E:
	ldr r2, _080D6FE0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D6F5E
	b _080D705C
_080D6F5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D6FE4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6FE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6F92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6F86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6F86
_080D6F92:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6FA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6F9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6F9C
_080D6FA8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6FBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6FB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6FB2
_080D6FBE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7044
	movs r1, #0x10
_080D6FC8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6FD2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6FD2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6FC8
	b _080D7044
	.byte 0x00, 0x00
_080D6FDC: .4byte 0x0300034C
_080D6FE0: .4byte 0x03000FD8
_080D6FE4: .4byte 0x00000FFF
_080D6FE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6FFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6FF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6FF2
_080D6FFE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7014
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7008:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7008
_080D7014:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D702A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D701E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D701E
_080D702A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7044
	movs r1, #0x10
_080D7034:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D703E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D703E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7034
_080D7044:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x08
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	bl sub_807EAE4
_080D705C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D70D4
	ldr r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D7072
	movs r1, #0x00
_080D7072:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D707C
	adds r1, r0, #0x0
_080D707C:
	ldr r0, _080D70C8 @ =0x00007FFF
	cmp r2, r0
	ble _080D7084
	adds r2, r0, #0x0
_080D7084:
	cmp r2, r1
	bge _080D708A
	adds r1, r2, #0x0
_080D708A:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D70A4
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D70A6
_080D70A4:
	movs r1, #0x00
_080D70A6:
	cmp r1, #0x00
	beq _080D70D4
	cmp r3, #0x01
	ble _080D70D4
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D70CC @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D70D0 @ =0x080D7689
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D71BC
	.byte 0x00, 0x00
_080D70C8: .4byte 0x00007FFF
_080D70CC: .4byte 0x00000FFF
_080D70D0: .4byte sub_80D7688
_080D70D4:
	mov r1, r10
	cmp r1, #0x00
	bge _080D70DC
	movs r1, #0x00
_080D70DC:
	ldr r0, _080D71CC @ =0x00007FFF
	cmp r1, r0
	ble _080D70E4
	adds r1, r0, #0x0
_080D70E4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D70FE
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D7100
_080D70FE:
	movs r2, #0x00
_080D7100:
	cmp r2, #0x00
	beq _080D712E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7116
	cmp r1, #0x04
	bne _080D712E
_080D7116:
	ldr r2, _080D71D0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D712E:
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D71BC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D715A
	cmp r1, #0x04
	bne _080D7176
_080D715A:
	ldr r2, _080D71D0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080D7176:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7188
	cmp r1, #0x04
	bne _080D71B6
_080D7188:
	ldr r2, _080D71D4 @ =0x03001038
	ldr r0, _080D71D8 @ =0x0819832C
	ldr r1, _080D71DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x06
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080D71B6:
	ldr r0, _080D71E0 @ =0x080D71E5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D71BC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D71CC: .4byte 0x00007FFF
_080D71D0: .4byte 0x00002024
_080D71D4: .4byte 0x03001038
_080D71D8: .4byte 0x0819832C
_080D71DC: .4byte 0x08198220
_080D71E0: .4byte sub_80D71E4
	thumb_func_start sub_80D71E4
sub_80D71E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D72C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D72BA
	ldr r0, _080D72C8 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7226
	cmp r1, #0x04
	bne _080D723E
_080D7226:
	ldr r2, _080D72CC @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D723E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D725C
	ldr r2, _080D72D0 @ =0x00002095
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D725C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D726E
	cmp r1, #0x04
	bne _080D72B6
_080D726E:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D7276
	adds r0, #0xFF
_080D7276:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D7290
	adds r2, #0xFF
_080D7290:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D72B6:
	ldr r0, _080D72D4 @ =0x080D72D9
	str r0, [r7, #0x4C]
_080D72BA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D72C4: .4byte 0x03000FD8
_080D72C8: .4byte 0x0000011F
_080D72CC: .4byte 0x00002066
_080D72D0: .4byte 0x00002095
_080D72D4: .4byte sub_80D72D8
	thumb_func_start sub_80D72D8
sub_80D72D8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D73F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D73EA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0xE6
	strh r0, [r1, #0x00]
	ldr r0, _080D73F8 @ =0x0881848D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D7364
	ldr r2, _080D73FC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D739A
_080D7364:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D736C
	adds r1, #0xFF
_080D736C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D7382
	adds r2, #0xFF
_080D7382:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D7400 @ =0x000006C4
	str r5, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D739A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D73AC
	cmp r1, #0x04
	bne _080D73C8
_080D73AC:
	ldr r2, _080D7404 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x0F
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
_080D73C8:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D73E6
	ldr r2, _080D7408 @ =0x00002095
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D73E6:
	ldr r0, _080D740C @ =0x080D7411
	str r0, [r7, #0x4C]
_080D73EA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D73F4: .4byte 0x03000FD8
_080D73F8: .4byte 0x0881848D
_080D73FC: .4byte 0x00000111
_080D7400: .4byte 0x000006C4
_080D7404: .4byte 0x00002066
_080D7408: .4byte 0x00002095
_080D740C: .4byte sub_80D7410
	thumb_func_start sub_80D7410
sub_80D7410:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D7474 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D746C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7438
	cmp r1, #0x04
	bne _080D7468
_080D7438:
	ldr r2, _080D7478 @ =0x03001038
	ldr r0, _080D747C @ =0x0819832C
	ldr r1, _080D7480 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D7468:
	ldr r0, _080D7484 @ =0x080D7489
	str r0, [r5, #0x4C]
_080D746C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D7474: .4byte 0x03000FD8
_080D7478: .4byte 0x03001038
_080D747C: .4byte 0x0819832C
_080D7480: .4byte 0x08198220
_080D7484: .4byte sub_80D7488
	thumb_func_start sub_80D7488
sub_80D7488:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D7540 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D74B0
	b _080D767C
_080D74B0:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D74CE
	cmp r1, #0x04
	bne _080D750C
_080D74CE:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D74DC
	adds r0, #0xFF
_080D74DC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D74EA
	adds r0, #0xFF
_080D74EA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D74F8
	adds r0, #0xFF
_080D74F8:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D750C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D7520
	cmp r2, #0x04
	bne _080D7584
_080D7520:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D7548
	ldr r2, _080D7544 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D7554
	.byte 0x00, 0x00
_080D7540: .4byte 0x03000FD8
_080D7544: .4byte 0x00002002
_080D7548:
	ldr r2, _080D7620 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D7554:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D756A
	movs r2, #0x01
_080D756A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7584:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7592
	cmp r2, #0x04
	bne _080D759C
_080D7592:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D759C:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D75B0
	cmp r2, #0x04
	bne _080D75F2
_080D75B0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D75BE
	adds r0, #0xFF
_080D75BE:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D75CC
	adds r0, #0xFF
_080D75CC:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D75DA
	adds r0, #0xFF
_080D75DA:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D75F2:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7600
	cmp r1, #0x04
	bne _080D7664
_080D7600:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D7628
	ldr r2, _080D7624 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D7634
	.byte 0x00, 0x00
_080D7620: .4byte 0x0000204F
_080D7624: .4byte 0x00002002
_080D7628:
	ldr r2, _080D7684 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D7634:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D764A
	movs r2, #0x01
_080D764A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7664:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7672
	cmp r2, #0x04
	bne _080D767C
_080D7672:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D767C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D7684: .4byte 0x0000204F
	thumb_func_start sub_80D7688
sub_80D7688:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D775C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D76A6
	adds r1, #0xFF
_080D76A6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D76B0
	adds r2, #0xFF
_080D76B0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D76BA
	adds r3, #0xFF
_080D76BA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D7760 @ =0x00002FE6
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D76D6
	cmp r1, #0x04
	bne _080D76F2
_080D76D6:
	ldr r2, _080D7764 @ =0x00002024
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D76F2:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7704
	cmp r1, #0x04
	bne _080D7720
_080D7704:
	ldr r2, _080D7768 @ =0x00002066
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
_080D7720:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D773E
	ldr r2, _080D776C @ =0x00002095
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D773E:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D7770 @ =0x080D7775
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D775C: .4byte 0x03000FD8
_080D7760: .4byte 0x00002FE6
_080D7764: .4byte 0x00002024
_080D7768: .4byte 0x00002066
_080D776C: .4byte 0x00002095
_080D7770: .4byte sub_80D7774
	thumb_func_start sub_80D7774
sub_80D7774:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D7818 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7812
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D77A6
	cmp r1, #0x04
	bne _080D77CC
_080D77A6:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D77CC:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D77DE
	cmp r1, #0x04
	bne _080D780E
_080D77DE:
	ldr r2, _080D781C @ =0x03001038
	ldr r0, _080D7820 @ =0x0819832C
	ldr r1, _080D7824 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D780E:
	ldr r0, _080D7828 @ =0x080D782D
	str r0, [r6, #0x4C]
_080D7812:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D7818: .4byte 0x03000FD8
_080D781C: .4byte 0x03001038
_080D7820: .4byte 0x0819832C
_080D7824: .4byte 0x08198220
_080D7828: .4byte sub_80D782C
	thumb_func_start sub_80D782C
sub_80D782C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D7914 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D790A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x41
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D786E
	cmp r1, #0x04
	bne _080D7886
_080D786E:
	ldr r2, _080D7918 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7886:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D78A4
	ldr r2, _080D791C @ =0x00002095
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D78A4:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D78B6
	cmp r1, #0x04
	bne _080D78FA
_080D78B6:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D78BE
	adds r1, #0xFF
_080D78BE:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D78D4
	adds r2, #0xFF
_080D78D4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D78FA:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D7920 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D7924 @ =0x080D7929
	str r0, [r7, #0x4C]
_080D790A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D7914: .4byte 0x03000FD8
_080D7918: .4byte 0x00002066
_080D791C: .4byte 0x00002095
_080D7920: .4byte 0x00000FFF
_080D7924: .4byte sub_80D7928
	thumb_func_start sub_80D7928
sub_80D7928:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080D7A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r0, r1
	lsls r0, r0, #0x01
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080D7994
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D7994:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D79A4
	b _080D7ECA
_080D79A4:
	mov r1, r12
	cmp r1, #0x00
	bge _080D79AC
	movs r1, #0x00
_080D79AC:
	ldr r0, _080D7A48 @ =0x00007FFF
	cmp r1, r0
	ble _080D79B4
	adds r1, r0, #0x0
_080D79B4:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D79CA
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D79CC
_080D79CA:
	movs r2, #0x00
_080D79CC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080D7AB0
	ldr r2, _080D7A44 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D7A4C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D7A00
	movs r1, #0x40
_080D79F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D79F4
_080D7A00:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7A14
	movs r1, #0x40
_080D7A08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A08
_080D7A14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7A28
	movs r1, #0x40
_080D7A1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A1C
_080D7A28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7AA8
	movs r1, #0x04
_080D7A32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7A3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7A3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7A32
	b _080D7AA8
_080D7A44: .4byte 0x03000FD8
_080D7A48: .4byte 0x00007FFF
_080D7A4C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D7A62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A56
_080D7A62:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7A78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A6C
_080D7A78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7A8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7A82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7A82
_080D7A8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7AA8
	movs r1, #0x10
_080D7A98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7AA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7AA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7A98
_080D7AA8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D7AB0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	mov r3, r9
	cmp r3, #0x00
	bge _080D7ABE
	movs r2, #0x00
_080D7ABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D7AC8
	adds r1, r0, #0x0
_080D7AC8:
	ldr r0, _080D7BBC @ =0x00007FFF
	cmp r2, r0
	ble _080D7AD0
	adds r2, r0, #0x0
_080D7AD0:
	cmp r2, r1
	bge _080D7AD6
	adds r1, r2, #0x0
_080D7AD6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D7AEE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D7AF0
_080D7AEE:
	movs r1, #0x00
_080D7AF0:
	cmp r1, #0x00
	bne _080D7AF6
	b _080D7C3E
_080D7AF6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D7BC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D7B14
	b _080D7C3E
_080D7B14:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D7BC4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D7C2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7BC8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080D7B74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B68
_080D7B74:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7B8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B7E
_080D7B8A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7BA0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7B94:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7B94
_080D7BA0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7C26
	movs r1, #0x10
_080D7BAA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7BB4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7BB4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7BAA
	b _080D7C26
_080D7BBC: .4byte 0x00007FFF
_080D7BC0: .4byte 0x0300034C
_080D7BC4: .4byte 0x03000FD8
_080D7BC8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080D7BE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7BD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7BD4
_080D7BE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7BF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7BEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7BEA
_080D7BF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7C0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7C00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7C00
_080D7C0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7C26
	movs r1, #0x10
_080D7C16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7C20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7C20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7C16
_080D7C26:
	bl sub_807F448
_080D7C2A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080D7D14 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080D7C3E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D7C4A
	b _080D7ECA
_080D7C4A:
	mov r1, r9
	cmp r1, #0x00
	bge _080D7C52
	movs r1, #0x00
_080D7C52:
	ldr r0, _080D7D18 @ =0x00007FFF
	cmp r1, r0
	ble _080D7C5A
	adds r1, r0, #0x0
_080D7C5A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D7C72
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D7C74
_080D7C72:
	movs r2, #0x00
_080D7C74:
	cmp r2, #0x00
	bne _080D7C7A
	b _080D7D88
_080D7C7A:
	ldr r3, _080D7D1C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D7D14 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7D20
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7CCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CBE
_080D7CCA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7CE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CD4
_080D7CE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7CF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7CEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7CEA
_080D7CF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7D7C
	movs r1, #0x10
_080D7D00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7D0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7D0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7D00
	b _080D7D7C
	.byte 0x00, 0x00
_080D7D14: .4byte 0x00000FFF
_080D7D18: .4byte 0x00007FFF
_080D7D1C: .4byte 0x03000FD8
_080D7D20:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7D36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D2A
_080D7D36:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7D4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D40
_080D7D4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7D62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7D56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7D56
_080D7D62:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7D7C
	movs r1, #0x10
_080D7D6C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7D76
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7D76:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7D6C
_080D7D7C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D7ECA
_080D7D88:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080D7D94
	b _080D7ECA
_080D7D94:
	ldr r0, _080D7E4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D7DA2
	b _080D7ECA
_080D7DA2:
	ldr r2, _080D7E50 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080D7ECA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D7E54 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7E58
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7E04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7DF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7DF8
_080D7E04:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E0E
_080D7E1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E24
_080D7E30:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7EB4
	movs r1, #0x10
_080D7E3A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7E44
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7E44:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7E3A
	b _080D7EB4
_080D7E4C: .4byte 0x0300034C
_080D7E50: .4byte 0x03000FD8
_080D7E54: .4byte 0x00000FFF
_080D7E58:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D7E6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E62
_080D7E6E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D7E84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E78
_080D7E84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7E9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7E8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7E8E
_080D7E9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7EB4
	movs r1, #0x10
_080D7EA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D7EAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D7EAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7EA4
_080D7EB4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D7ECA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D7F40
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080D7EE0
	movs r1, #0x00
_080D7EE0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D7EEA
	adds r2, r0, #0x0
_080D7EEA:
	ldr r0, _080D7F34 @ =0x00007FFF
	cmp r1, r0
	ble _080D7EF2
	adds r1, r0, #0x0
_080D7EF2:
	cmp r1, r2
	bge _080D7EF8
	adds r2, r1, #0x0
_080D7EF8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D7F12
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080D7F14
_080D7F12:
	movs r2, #0x00
_080D7F14:
	cmp r2, #0x00
	beq _080D7F40
	cmp r3, #0x01
	ble _080D7F40
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080D7F38 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080D7F3C @ =0x080D85D5
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D801C
_080D7F34: .4byte 0x00007FFF
_080D7F38: .4byte 0x00000FFF
_080D7F3C: .4byte sub_80D85D4
_080D7F40:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080D801C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bne _080D7F76
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7F72
	cmp r1, #0x04
	bne _080D7F76
_080D7F72:
	ldr r0, _080D802C @ =0x080D8439
	str r0, [r6, #0x4C]
_080D7F76:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080D7F8A
	cmp r2, #0x04
	bne _080D7FA6
_080D7F8A:
	ldr r2, _080D8030 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x12
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
_080D7FA6:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D7FC4
	ldr r2, _080D8034 @ =0x00002095
	movs r1, #0x12
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D7FC4:
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r4, [r0, #0x00]
	adds r0, #0x01
	strb r4, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D7FDE
	cmp r2, #0x04
	bne _080D800E
_080D7FDE:
	ldr r2, _080D8038 @ =0x03001038
	ldr r0, _080D803C @ =0x0819832C
	ldr r1, _080D8040 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r4, [r0, #0x00]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
_080D800E:
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _080D8044 @ =0x080D8049
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D801C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D802C: .4byte sub_80D8438
_080D8030: .4byte 0x00002066
_080D8034: .4byte 0x00002095
_080D8038: .4byte 0x03001038
_080D803C: .4byte 0x0819832C
_080D8040: .4byte 0x08198220
_080D8044: .4byte sub_80D8048
	thumb_func_start sub_80D8048
sub_80D8048:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D816C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080D809E
	ldr r1, [r5, #0x40]
	lsls r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0xCD
	movs r2, #0x00
	ldsb r2, [r0, r2]
	subs r0, #0x47
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r2
	cmp r1, r0
	bge _080D809E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D809A
	cmp r1, #0x04
	bne _080D809E
_080D809A:
	ldr r0, _080D8170 @ =0x080D8439
	str r0, [r5, #0x4C]
_080D809E:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r7, #0x20
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D815E
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D80C2
	cmp r2, #0x04
	bne _080D8110
_080D80C2:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080D80CA
	adds r0, #0xFF
_080D80CA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D80E4
	adds r2, #0xFF
_080D80E4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r7, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D8110:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D811E
	cmp r2, #0x04
	bne _080D813A
_080D811E:
	ldr r2, _080D8174 @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x13
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
_080D813A:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D8158
	ldr r2, _080D8178 @ =0x00002095
	movs r1, #0x13
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8158:
	ldr r0, _080D817C @ =0x080D8181
	mov r1, r8
	str r0, [r1, #0x4C]
_080D815E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D816C: .4byte 0x03000FD8
_080D8170: .4byte sub_80D8438
_080D8174: .4byte 0x00002066
_080D8178: .4byte 0x00002095
_080D817C: .4byte sub_80D8180
	thumb_func_start sub_80D8180
sub_80D8180:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080D8228 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080D81D6
	adds r0, r6, #0x0
	adds r0, #0xCD
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080D81D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D81D2
	cmp r1, #0x04
	bne _080D81D6
_080D81D2:
	ldr r0, _080D822C @ =0x080D8439
	str r0, [r5, #0x4C]
_080D81D6:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8220
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8200
	cmp r1, #0x04
	bne _080D821C
_080D8200:
	ldr r2, _080D8230 @ =0x00002005
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
_080D821C:
	ldr r0, _080D8234 @ =0x080D8239
	str r0, [r7, #0x4C]
_080D8220:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8228: .4byte 0x03000FD8
_080D822C: .4byte sub_80D8438
_080D8230: .4byte 0x00002005
_080D8234: .4byte sub_80D8238
	thumb_func_start sub_80D8238
sub_80D8238:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D82F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D825A
	b _080D842C
_080D825A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D827E
	cmp r1, #0x04
	bne _080D82BC
_080D827E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D828C
	adds r0, #0xFF
_080D828C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D829A
	adds r0, #0xFF
_080D829A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D82A8
	adds r0, #0xFF
_080D82A8:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D82BC:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D82D0
	cmp r2, #0x04
	bne _080D8334
_080D82D0:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D82F8
	ldr r2, _080D82F4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D8304
	.byte 0x00, 0x00
_080D82F0: .4byte 0x03000FD8
_080D82F4: .4byte 0x00002002
_080D82F8:
	ldr r2, _080D83D0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D8304:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D831A
	movs r2, #0x01
_080D831A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8334:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D8342
	cmp r2, #0x04
	bne _080D834C
_080D8342:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D834C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D8360
	cmp r2, #0x04
	bne _080D83A2
_080D8360:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D836E
	adds r0, #0xFF
_080D836E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D837C
	adds r0, #0xFF
_080D837C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D838A
	adds r0, #0xFF
_080D838A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D83A2:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D83B0
	cmp r1, #0x04
	bne _080D8414
_080D83B0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D83D8
	ldr r2, _080D83D4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D83E4
	.byte 0x00, 0x00
_080D83D0: .4byte 0x0000204F
_080D83D4: .4byte 0x00002002
_080D83D8:
	ldr r2, _080D8434 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D83E4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D83FA
	movs r2, #0x01
_080D83FA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8414:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D8422
	cmp r2, #0x04
	bne _080D842C
_080D8422:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D842C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D8434: .4byte 0x0000204F
	thumb_func_start sub_80D8438
sub_80D8438:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080D8464 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	mov r12, r0
	mov r5, r12
	adds r5, #0x08
	adds r6, r4, #0x0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1D]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080D8468
	movs r0, #0x00
	b _080D85B8
	.byte 0x00, 0x00
_080D8464: .4byte 0x03000FD8
_080D8468:
	ldr r3, _080D85C4 @ =0x00000111
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	mov r2, r12
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x46
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r12
	adds r1, #0xD2
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, _080D85C8 @ =0x0881858D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D84CC
	ldr r2, _080D85C4 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8502
_080D84CC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D84D4
	adds r1, #0xFF
_080D84D4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D84EA
	adds r2, #0xFF
_080D84EA:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D85CC @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8502:
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	str r2, [r0, #0x00]
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D854A
	str r2, [r4, #0x4C]
	adds r2, r1, #0x0
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r5, r6, #0x0
	adds r5, #0x7C
	cmp r0, #0x00
	bne _080D853E
	movs r3, #0x80
_080D852C:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D852C
_080D853E:
	adds r4, r2, #0x0
	adds r4, #0x08
	ldrh r1, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	strh r1, [r0, #0x00]
_080D854A:
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D855E
	cmp r1, #0x04
	bne _080D85B6
_080D855E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D856C
	adds r0, #0xFF
_080D856C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D857A
	adds r0, #0xFF
_080D857A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8588
	adds r0, #0xFF
_080D8588:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D85A2
	adds r0, #0xFF
_080D85A2:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D85B6:
	ldr r0, _080D85D0 @ =0x080D8CC1
_080D85B8:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D85C4: .4byte 0x00000111
_080D85C8: .4byte 0x0881858D
_080D85CC: .4byte 0x000006C4
_080D85D0: .4byte sub_80D8CC0
	thumb_func_start sub_80D85D4
sub_80D85D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D8698 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r6, #0x2C]
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D860A
	cmp r1, #0x04
	bne _080D860E
_080D860A:
	ldr r0, _080D869C @ =0x080D8A55
	str r0, [r5, #0x4C]
_080D860E:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D8616
	adds r1, #0xFF
_080D8616:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D8620
	adds r2, #0xFF
_080D8620:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D862A
	adds r3, #0xFF
_080D862A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080D86A0 @ =0x000006AF
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8650
	cmp r1, #0x04
	bne _080D866C
_080D8650:
	ldr r2, _080D86A4 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x10
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
_080D866C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D868A
	ldr r2, _080D86A8 @ =0x00002095
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D868A:
	ldr r0, _080D86AC @ =0x080D86B1
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8698: .4byte 0x03000FD8
_080D869C: .4byte sub_80D8A54
_080D86A0: .4byte 0x000006AF
_080D86A4: .4byte 0x00002066
_080D86A8: .4byte 0x00002095
_080D86AC: .4byte sub_80D86B0
	thumb_func_start sub_80D86B0
sub_80D86B0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D8788 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D877E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D86DE
	cmp r1, #0x04
	bne _080D86FA
_080D86DE:
	ldr r2, _080D878C @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x11
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
_080D86FA:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D8718
	ldr r2, _080D8790 @ =0x00002095
	movs r1, #0x11
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8718:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D872A
	cmp r1, #0x04
	bne _080D877A
_080D872A:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D8732
	adds r0, #0xFF
_080D8732:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D874C
	adds r2, #0xFF
_080D874C:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D877A:
	ldr r0, _080D8794 @ =0x080D8799
	str r0, [r5, #0x4C]
_080D877E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8788: .4byte 0x03000FD8
_080D878C: .4byte 0x00002066
_080D8790: .4byte 0x00002095
_080D8794: .4byte sub_80D8798
	thumb_func_start sub_80D8798
sub_80D8798:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D881C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D884A
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2E
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D87D0
	adds r1, #0xFF
_080D87D0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D87DA
	adds r2, #0xFF
_080D87DA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D87E4
	adds r3, #0xFF
_080D87E4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8800
	cmp r1, #0x04
	bne _080D883C
_080D8800:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080D8820
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080D882C
_080D881C: .4byte 0x03000FD8
_080D8820:
	ldr r2, _080D8854 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080D882C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D883C:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080D8858 @ =0x080D885D
	str r0, [r7, #0x4C]
_080D884A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8854: .4byte 0x0000204D
_080D8858: .4byte sub_80D885C
	thumb_func_start sub_80D885C
sub_80D885C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D890C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D887E
	b _080D8A48
_080D887E:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D889C
	cmp r1, #0x04
	bne _080D88DA
_080D889C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D88AA
	adds r0, #0xFF
_080D88AA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D88B8
	adds r0, #0xFF
_080D88B8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D88C6
	adds r0, #0xFF
_080D88C6:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D88DA:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D88EE
	cmp r2, #0x04
	bne _080D8950
_080D88EE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D8914
	ldr r2, _080D8910 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D8920
_080D890C: .4byte 0x03000FD8
_080D8910: .4byte 0x00002002
_080D8914:
	ldr r2, _080D89EC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D8920:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D8936
	movs r2, #0x01
_080D8936:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8950:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D895E
	cmp r2, #0x04
	bne _080D8968
_080D895E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D8968:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D897C
	cmp r2, #0x04
	bne _080D89BE
_080D897C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D898A
	adds r0, #0xFF
_080D898A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8998
	adds r0, #0xFF
_080D8998:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D89A6
	adds r0, #0xFF
_080D89A6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080D89BE:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D89CC
	cmp r1, #0x04
	bne _080D8A30
_080D89CC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D89F4
	ldr r2, _080D89F0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D8A00
	.byte 0x00, 0x00
_080D89EC: .4byte 0x0000204F
_080D89F0: .4byte 0x00002002
_080D89F4:
	ldr r2, _080D8A50 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D8A00:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D8A16
	movs r2, #0x01
_080D8A16:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8A30:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D8A3E
	cmp r2, #0x04
	bne _080D8A48
_080D8A3E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D8A48:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D8A50: .4byte 0x0000204F
	thumb_func_start sub_80D8A54
sub_80D8A54:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080D8B00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x74]
	adds r5, r3, #0x0
	adds r5, #0x08
	adds r6, r4, #0x0
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1D]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080D8B10
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x48
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0xF3
	strh r0, [r1, #0x00]
	ldr r0, _080D8B04 @ =0x0843868D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D8AC4
	ldr r2, _080D8B08 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8AFA
_080D8AC4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D8ACC
	adds r1, #0xFF
_080D8ACC:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D8AE2
	adds r2, #0xFF
_080D8AE2:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D8B0C @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8AFA:
	movs r0, #0x00
	b _080D8C4E
	.byte 0x00, 0x00
_080D8B00: .4byte 0x03000FD8
_080D8B04: .4byte 0x0843868D
_080D8B08: .4byte 0x00000111
_080D8B0C: .4byte 0x000006C4
_080D8B10:
	ldr r0, _080D8C58 @ =0x00000111
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x48
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0xF3
	strh r0, [r1, #0x00]
	ldr r0, _080D8C5C @ =0x0843868D
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D8B68
	ldr r2, _080D8C58 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D8B9E
_080D8B68:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D8B70
	adds r1, #0xFF
_080D8B70:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D8B86
	adds r2, #0xFF
_080D8B86:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D8C60 @ =0x000006C4
	str r4, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D8B9E:
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D8BE0
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r2, r1, #0x0
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r5, r6, #0x0
	adds r5, #0x7C
	cmp r0, #0x00
	bne _080D8BD4
	movs r3, #0x80
_080D8BC2:
	ldr r2, [r2, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080D8BC2
_080D8BD4:
	adds r4, r2, #0x0
	adds r4, #0x08
	ldrh r1, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	strh r1, [r0, #0x00]
_080D8BE0:
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8BF4
	cmp r1, #0x04
	bne _080D8C4C
_080D8BF4:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C02
	adds r0, #0xFF
_080D8C02:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C10
	adds r0, #0xFF
_080D8C10:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C1E
	adds r0, #0xFF
_080D8C1E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D8C38
	adds r0, #0xFF
_080D8C38:
	asrs r0, r0, #0x08
	adds r0, #0x40
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D8C4C:
	ldr r0, _080D8C64 @ =0x080D8C69
_080D8C4E:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8C58: .4byte 0x00000111
_080D8C5C: .4byte 0x0843868D
_080D8C60: .4byte 0x000006C4
_080D8C64: .4byte sub_80D8C68
	thumb_func_start sub_80D8C68
sub_80D8C68:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8CBA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	movs r3, #0x00
	str r3, [r4, #0x4C]
	ldr r0, [r5, #0x28]
	ldr r1, _080D8CB4 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080D8CB8
	adds r0, r5, #0x0
	bl sub_8086700
	b _080D8CBA
	.byte 0x00, 0x00
_080D8CB4: .4byte 0x00000111
_080D8CB8:
	str r3, [r5, #0x4C]
_080D8CBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80D8CC0
sub_80D8CC0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8D12
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	movs r3, #0x00
	str r3, [r4, #0x4C]
	ldr r0, [r5, #0x28]
	ldr r1, _080D8D0C @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080D8D10
	adds r0, r5, #0x0
	bl sub_8086700
	b _080D8D12
	.byte 0x00, 0x00
_080D8D0C: .4byte 0x00000111
_080D8D10:
	str r3, [r5, #0x4C]
_080D8D12:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80D8D18
sub_80D8D18:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D8D50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087DE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8D4A
	ldr r0, _080D8D54 @ =0x080D69D9
	str r0, [r6, #0x4C]
_080D8D4A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8D50: .4byte 0x03000FD8
_080D8D54: .4byte sub_80D69D8
	thumb_func_start sub_80D8D58
sub_80D8D58:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D8DBC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D8DB6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8D8C
	cmp r1, #0x04
	bne _080D8DB2
_080D8D8C:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D8DB2:
	ldr r0, _080D8DC0 @ =0x080D3225
	str r0, [r6, #0x4C]
_080D8DB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D8DBC: .4byte 0x03000FD8
_080D8DC0: .4byte sub_80D3224
	thumb_func_start sub_80D8DC4
sub_80D8DC4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D8DDE
	adds r0, #0xFF
_080D8DDE:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D8DF8
	adds r0, #0xFF
_080D8DF8:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D8E50
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _080D8E58 @ =0x080D8E5D
	str r0, [r4, #0x50]
_080D8E50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8E58: .4byte sub_80D8E5C
	thumb_func_start sub_80D8E5C
sub_80D8E5C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080D8EE0 @ =0x080D8EE5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D8EE0: .4byte sub_80D8EE4
	thumb_func_start sub_80D8EE4
sub_80D8EE4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D8F5C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080D8F5C
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D8F64 @ =0x080D8F69
	str r0, [r4, #0x4C]
_080D8F5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8F64: .4byte sub_80D8F68
	thumb_func_start sub_80D8F68
sub_80D8F68:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080D8F8A
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D8F90 @ =0x0808750D
	str r0, [r4, #0x4C]
_080D8F8A:
	pop {r4}
	pop {r0}
	bx r0
_080D8F90: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA1, 0x8F, 0x0D, 0x08
	thumb_func_start sub_80D8FA0
sub_80D8FA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9014 @ =0x080D9019
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9014: .4byte sub_80D9018
	thumb_func_start sub_80D9018
sub_80D9018:
	push {r4, r5, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9082
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	adds r1, r4, #0x0
	adds r1, #0xB0
	adds r2, r4, #0x0
	adds r2, #0xB2
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D908C @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r4, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080D9090 @ =0x080D90BD
	str r0, [r4, #0x58]
	ldr r0, _080D9094 @ =0x080D909D
	str r0, [r4, #0x60]
	ldr r0, _080D9098 @ =0x080D8DC5
	str r0, [r4, #0x4C]
_080D9082:
	add sp, #0x018
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D908C: .4byte 0x000004CC
_080D9090: .4byte sub_80D90BC
_080D9094: .4byte sub_80D909C
_080D9098: .4byte sub_80D8DC4
	thumb_func_start sub_80D909C
sub_80D909C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8087124
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80D90BC
sub_80D90BC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_810DD7C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80D90DC
sub_80D90DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D90F8
	b _080D9286
_080D90F8:
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D9104
	adds r2, #0xFF
_080D9104:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D9110
	adds r3, #0xFF
_080D9110:
	asrs r3, r3, #0x08
	mov r5, r9
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D911C
	adds r0, #0xFF
_080D911C:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9298 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r9
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r9
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D929C @ =0x080D92B1
	str r0, [r7, #0x4C]
	ldr r0, _080D92A0 @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r9
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D92A4 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r9
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, r7, #0x0
	adds r4, #0x98
	mov r2, r9
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	mov r10, r0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	adds r0, r7, #0x0
	adds r0, #0xB2
	str r0, [sp, #0x018]
	mov r0, r10
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	mov r0, r10
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D92A8 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	ldr r2, [sp, #0x018]
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r9
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9264
	movs r2, #0x05
_080D9264:
	mov r0, r9
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r9
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D92AC @ =0x080D99D5
	str r0, [r5, #0x4C]
_080D9286:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9298: .4byte 0x00004070
_080D929C: .4byte sub_80D92B0
_080D92A0: .4byte sub_8087540
_080D92A4: .4byte sub_80D99F0
_080D92A8: .4byte 0x000004CC
_080D92AC: .4byte sub_80D99D4
	thumb_func_start sub_80D92B0
sub_80D92B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r1, #0xAE
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x98
	ldr r1, [r5, #0x00]
	cmp r0, r1
	bgt _080D9362
	str r1, [r4, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r5, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	lsrs r0, r3, #0x1F
	adds r3, r3, r0
	asrs r3, r3, #0x01
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	ldr r0, _080D9370 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_808552C
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _080D9374 @ =0x080D9379
	str r0, [r4, #0x4C]
_080D9362:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9370: .4byte 0x000004CC
_080D9374: .4byte sub_80D9378
	thumb_func_start sub_80D9378
sub_80D9378:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x3C]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080D9414
	str r1, [r5, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	movs r1, #0x16
	movs r2, #0x01
	bl sub_807B838
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r1, [r5, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8086150
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x1C]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x20]
	ldr r0, _080D941C @ =0x080D99A1
	str r0, [r6, #0x54]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_080D9414:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D941C: .4byte sub_80D99A0
	thumb_func_start sub_80D9420
sub_80D9420:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D943A
	adds r0, #0xFF
_080D943A:
	asrs r0, r0, #0x08
	mov r5, r12
	strh r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	lsls r0, r1, #0x06
	adds r0, r0, r1
	lsls r0, r0, #0x02
	cmp r0, #0x00
	bge _080D9454
	adds r0, #0xFF
_080D9454:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _080D94AC
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _080D94B4 @ =0x080D94B9
	str r0, [r4, #0x50]
_080D94AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D94B4: .4byte sub_80D94B8
	thumb_func_start sub_80D94B8
sub_80D94B8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _080D9528 @ =0x080D952D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9528: .4byte sub_80D952C
	thumb_func_start sub_80D952C
sub_80D952C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D959A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080D959A
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D95A0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080D959A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D95A0: .4byte sub_808750C
	thumb_func_start sub_80D95A4
sub_80D95A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D95C0
	b _080D9752
_080D95C0:
	mov r0, r10
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D95CC
	adds r2, #0xFF
_080D95CC:
	asrs r2, r2, #0x08
	mov r5, r10
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D95D8
	adds r3, #0xFF
_080D95D8:
	asrs r3, r3, #0x08
	mov r5, r10
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D95E4
	adds r0, #0xFF
_080D95E4:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9764 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r10
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r10
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D9768 @ =0x080D977D
	str r0, [r7, #0x4C]
	ldr r0, _080D976C @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D9770 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r10
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r7, #0x0
	adds r1, #0x98
	mov r2, r10
	ldr r0, [r2, #0x2C]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	movs r0, #0xB2
	adds r0, r0, r7
	mov r9, r0
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	mov r0, r10
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9774 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r10
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9730
	movs r2, #0x05
_080D9730:
	mov r0, r10
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r10
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D9778 @ =0x080D9985
	str r0, [r5, #0x4C]
_080D9752:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9764: .4byte 0x00004070
_080D9768: .4byte sub_80D977C
_080D976C: .4byte sub_8087540
_080D9770: .4byte sub_80D99F0
_080D9774: .4byte 0x000004CC
_080D9778: .4byte sub_80D9984
	thumb_func_start sub_80D977C
sub_80D977C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r0, r0, r1
	strh r0, [r6, #0x00]
	movs r1, #0xAE
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r5, r4, #0x0
	adds r5, #0x98
	ldr r1, [r5, #0x00]
	cmp r0, r1
	bgt _080D9836
	str r1, [r4, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r5, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	lsrs r0, r3, #0x1F
	adds r3, r3, r0
	asrs r3, r3, #0x01
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9844 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_808552C
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _080D9848 @ =0x080D984D
	str r0, [r4, #0x4C]
_080D9836:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9844: .4byte 0x000004CC
_080D9848: .4byte sub_80D984C
	thumb_func_start sub_80D984C
sub_80D984C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	adds r7, r4, #0x0
	adds r7, #0xAE
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r3, r4, #0x0
	adds r3, #0x98
	ldr r1, [r3, #0x00]
	cmp r0, r1
	bgt _080D98E4
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x00]
	subs r0, #0x08
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x38]
	subs r3, r3, r0
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x40]
	subs r2, r2, r0
	str r2, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [sp, #0x008]
	ldr r0, _080D98F0 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_808552C
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _080D98F4 @ =0x080D98F9
	str r0, [r4, #0x4C]
_080D98E4:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D98F0: .4byte 0x000004CC
_080D98F4: .4byte sub_80D98F8
	thumb_func_start sub_80D98F8
sub_80D98F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
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
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r4, #0x38]
	adds r0, r3, r0
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r5, [r4, #0x3C]
	adds r0, r5, r0
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r6, [r4, #0x40]
	adds r1, r6, r1
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D9978
	str r0, [r4, #0x18]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080D9946
	adds r0, #0xFF
_080D9946:
	asrs r7, r0, #0x08
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _080D9950
	adds r0, #0xFF
_080D9950:
	asrs r2, r0, #0x08
	adds r1, r6, #0x0
	cmp r1, #0x00
	bge _080D995A
	adds r1, #0xFF
_080D995A:
	asrs r3, r1, #0x08
	ldr r0, [r4, #0x2C]
	str r0, [sp, #0x000]
	ldr r0, _080D9980 @ =0x00000C6E
	adds r1, r7, #0x0
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080D9978:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9980: .4byte 0x00000C6E
	thumb_func_start sub_80D9984
sub_80D9984:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D999A
	adds r0, r2, #0x0
	bl sub_8087540
_080D999A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D99A0
sub_80D99A0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
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
	ldr r0, _080D99D0 @ =0x080D9A99
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D99D0: .4byte sub_80D9A98
	thumb_func_start sub_80D99D4
sub_80D99D4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D99EA
	adds r0, r2, #0x0
	bl sub_8087540
_080D99EA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D99F0
sub_80D99F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080D9A2C
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r1, #0x00
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, _080D9A34 @ =0x080D9B25
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D9A2C:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_080D9A34: .4byte sub_80D9B24
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x7D, 0x9A, 0x0D, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x09, 0x9B, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x16, 0x20, 0xA6, 0xF7
	.byte 0x17, 0xF9, 0x21, 0x1C, 0xA4, 0x31, 0x08, 0x60, 0x00, 0x28, 0x03, 0xDB, 0x00, 0x48, 0x02, 0xE0
	.byte 0x09, 0x9B, 0x0D, 0x08, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x7D, 0x9A, 0x0D, 0x08
	thumb_func_start sub_80D9A7C
sub_80D9A7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080D9A8C
	ldr r0, _080D9A94 @ =0x080D9B9D
	str r0, [r4, #0x4C]
_080D9A8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9A94: .4byte sub_80D9B9C
	thumb_func_start sub_80D9A98
sub_80D9A98:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9AF8
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	str r4, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAE
	adds r1, #0x18
	adds r2, r6, #0x0
	adds r2, #0xB2
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r3, [r6, #0x40]
	subs r4, r4, r3
	str r4, [sp, #0x004]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	str r3, [sp, #0x008]
	ldr r3, _080D9B00 @ =0x000004CC
	str r3, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x01
	str r3, [sp, #0x010]
	str r5, [sp, #0x014]
	movs r3, #0x00
	bl sub_808552C
	adds r1, r6, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080D9B04 @ =0x080D9421
	str r0, [r6, #0x4C]
_080D9AF8:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D9B00: .4byte 0x000004CC
_080D9B04: .4byte sub_80D9420
	thumb_func_start sub_80D9B08
sub_80D9B08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080D9B18
	ldr r0, _080D9B20 @ =0x080D9BE1
	str r0, [r4, #0x4C]
_080D9B18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9B20: .4byte sub_80D9BE0
	thumb_func_start sub_80D9B24
sub_80D9B24:
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
	bge _080D9B52
	adds r0, #0xFF
_080D9B52:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _080D9B5E
	adds r0, #0xFF
_080D9B5E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080D9B6A
	adds r0, #0xFF
_080D9B6A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	blt _080D9B8E
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _080D9B94
_080D9B8E:
	adds r0, r4, #0x0
	bl sub_807C298
_080D9B94:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D9B9C
sub_80D9B9C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x06
	cmp r1, r0
	bne _080D9BB6
	movs r2, #0x02
_080D9BB6:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9BDC @ =0x080D9C25
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D9BDC: .4byte sub_80D9C24
	thumb_func_start sub_80D9BE0
sub_80D9BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x06
	cmp r1, r0
	bne _080D9BFA
	movs r2, #0x02
_080D9BFA:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9C20 @ =0x080D9C6D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080D9C20: .4byte sub_80D9C6C
	thumb_func_start sub_80D9C24
sub_80D9C24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9C62
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x07
	cmp r1, r0
	bne _080D9C4A
	movs r2, #0x03
_080D9C4A:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9C68 @ =0x080D9CB5
	str r0, [r4, #0x4C]
_080D9C62:
	pop {r4}
	pop {r0}
	bx r0
_080D9C68: .4byte sub_80D9CB4
	thumb_func_start sub_80D9C6C
sub_80D9C6C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9CAA
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x07
	cmp r1, r0
	bne _080D9C92
	movs r2, #0x03
_080D9C92:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9CB0 @ =0x080D9D09
	str r0, [r4, #0x4C]
_080D9CAA:
	pop {r4}
	pop {r0}
	bx r0
_080D9CB0: .4byte sub_80D9D08
	thumb_func_start sub_80D9CB4
sub_80D9CB4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9CFE
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9CDE
	movs r2, #0x04
_080D9CDE:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9D04 @ =0x080D95A5
	str r0, [r4, #0x4C]
_080D9CFE:
	pop {r4}
	pop {r0}
	bx r0
_080D9D04: .4byte sub_80D95A4
	thumb_func_start sub_80D9D08
sub_80D9D08:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9D52
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x08
	cmp r1, r0
	bne _080D9D32
	movs r2, #0x04
_080D9D32:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
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
	ldr r0, _080D9D58 @ =0x080D90DD
	str r0, [r4, #0x4C]
_080D9D52:
	pop {r4}
	pop {r0}
	bx r0
_080D9D58: .4byte sub_80D90DC
	thumb_func_start sub_80D9D5C
sub_80D9D5C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9DCA
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, _080D9DD0 @ =0x080D9DD5
	str r0, [r4, #0x4C]
_080D9DCA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D9DD0: .4byte sub_80D9DD4
	thumb_func_start sub_80D9DD4
sub_80D9DD4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080D9E20
	adds r6, r4, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080D9E20
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080D9E28 @ =0x0000138A
	adds r0, r4, #0x0
	bl sub_8086858
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080D9E2C @ =0x080D9E35
	str r0, [r4, #0x5C]
	str r5, [r4, #0x54]
	strh r5, [r6, #0x00]
	ldr r0, _080D9E30 @ =0x080D9E9D
	str r0, [r4, #0x4C]
_080D9E20:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9E28: .4byte 0x0000138A
_080D9E2C: .4byte sub_80D9E34
_080D9E30: .4byte sub_80D9E9C
	thumb_func_start sub_80D9E34
sub_80D9E34:
	push {r4, r5, lr}
	ldr r0, [r0, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _080D9E4E
	adds r0, r5, #0x0
	bl sub_80D9F34
_080D9E4E:
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xBD, 0x9E, 0x0D, 0x08, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xF5, 0x9E, 0x0D, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x07, 0x48
	.byte 0xE0, 0x64, 0xC0, 0xF0, 0x5A, 0xF8, 0x01, 0x1C, 0x02, 0x20, 0x03, 0xF1, 0x7C, 0xFC, 0x00, 0x28
	.byte 0x01, 0xD0, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xF5, 0x9E
	.byte 0x0D, 0x08, 0xBD, 0x9E, 0x0D, 0x08
