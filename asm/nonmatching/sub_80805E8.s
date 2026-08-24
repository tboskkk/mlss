	.syntax unified
	.text

	thumb_func_start sub_80805E8
sub_80805E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	mov r8, r0
	ldr r7, _0808065C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x1C
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08080608
	b _08080806
_08080608:
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808061A
	movs r1, #0x03
	bl sub_80F2130
_0808061A:
	ldr r4, [r7, #0x00]
	adds r4, r4, r6
	ldr r5, _08080660 @ =0x082000CC
	movs r0, #0x34
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	adds r2, r5, #0x0
	bl init_ybai_process_80F2070
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl process_disable
	ldr r2, [r7, #0x00]
	ldr r1, _08080664 @ =0x000002B6
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldr r1, _08080668 @ =0x0850300C
	adds r0, r0, r1
	str r0, [r2, #0x1C]
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	ands r4, r0
	movs r5, #0x64
	b _0808068E
	.byte 0x00, 0x00
_0808065C: .4byte 0x03000FD8
_08080660: .4byte dword_82000CC @ =0x082000CC
_08080664: .4byte 0x000002B6
_08080668: .4byte dword_850300C @ =0x0850300C
_0808066C:
	ldr r0, _080806EC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _080806F0 @ =0x000002B6
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x1C]
	adds r0, #0x20
	str r0, [r2, #0x1C]
	subs r5, r5, r4
	cmp r5, #0x00
	bge _08080688
	movs r5, #0x00
_08080688:
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	ands r4, r0
_0808068E:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r4, r0
	bcc _0808066C
	ldr r0, _080806EC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x1C]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x02
	ldr r1, _080806F4 @ =0x0850476C
	adds r4, r0, r1
	movs r1, #0xB8
	lsls r1, r1, #0x02
	adds r5, r3, r1
	adds r7, r2, #0x0
	adds r7, #0x08
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	movs r3, #0x00
	ldr r6, _080806F8 @ =0x08500AA0
	adds r2, r7, #0x0
_080806C6:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x00
	bne _080806FC
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	b _08080718
_080806EC: .4byte 0x03000FD8
_080806F0: .4byte 0x000002B6
_080806F4: .4byte dword_850476C @ =0x0850476C
_080806F8: .4byte dword_8500AA0 @ =0x08500AA0
_080806FC:
	cmp r3, #0x05
	beq _08080706
	adds r2, #0x04
	adds r3, #0x01
	b _080806C6
_08080706:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x11
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_08080718:
	str r0, [r5, #0x00]
	movs r3, #0x00
	ldr r6, _08080748 @ =0x08500AA0
	adds r2, r7, #0x0
_08080720:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x02
	bne _0808074C
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x0C
	lsrs r2, r2, #0x16
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	b _0808076A
	.byte 0x00, 0x00
_08080748: .4byte dword_8500AA0 @ =0x08500AA0
_0808074C:
	cmp r3, #0x05
	beq _08080756
	adds r2, #0x04
	adds r3, #0x01
	b _08080720
_08080756:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x0C
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x05
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_0808076A:
	str r0, [r5, #0x04]
	movs r3, #0x00
	ldr r4, [r4, #0x00]
	ldr r0, _0808079C @ =0x08500AA0
	mov r12, r0
	adds r2, r7, #0x0
	lsls r6, r4, #0x02
_08080778:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x04
	bne _080807A0
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	movs r0, #0x00
	lsrs r2, r6, #0x16
	movs r3, #0x01
	bl sub_80213A0
	b _080807BC
	.byte 0x00, 0x00
_0808079C: .4byte dword_8500AA0 @ =0x08500AA0
_080807A0:
	cmp r3, #0x05
	beq _080807AA
	adds r2, #0x04
	adds r3, #0x01
	b _08080778
_080807AA:
	lsls r1, r4, #0x02
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x05
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_080807BC:
	str r0, [r5, #0x08]
	ldr r5, _08080814 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r4, _08080818 @ =0x000002B9
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080807D4
	ldr r0, _0808081C @ =0x084FCCD8
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
_080807D4:
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _080807E6
	ldr r0, _08080820 @ =0x084FCCE0
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
_080807E6:
	movs r1, #0xE0
	lsls r1, r1, #0x07
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	movs r0, #0x0B
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r0, _08080824 @ =0x08080829
	mov r1, r8
	str r0, [r1, #0x04]
_08080806:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080814: .4byte 0x03000FD8
_08080818: .4byte 0x000002B9
_0808081C: .4byte word_84FCCD8 @ =0x084FCCD8
_08080820: .4byte word_84FCCE0 @ =0x084FCCE0
_08080824: .4byte sub_8080828
