	.syntax unified
	.text

	thumb_func_start sub_807D5E8
sub_807D5E8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r5, [sp, #0x020]
	ldr r7, [sp, #0x024]
	cmp r6, #0x00
	bge _0807D5FA
	b _0807D772
_0807D5FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807D602
	adds r0, #0xFF
_0807D602:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r3, r3, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807D61A
	adds r0, #0xFF
_0807D61A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r5, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0807D632
	adds r0, #0xFF
_0807D632:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r7, r0
	cmp r2, #0x03
	bne _0807D648
	b _0807D744
_0807D648:
	cmp r2, #0x03
	ble _0807D652
	cmp r2, #0x04
	beq _0807D684
	b _0807D772
_0807D652:
	cmp r2, #0x00
	bge _0807D658
	b _0807D772
_0807D658:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D668
	movs r0, #0x01
	b _0807D66A
_0807D668:
	movs r0, #0x00
_0807D66A:
	str r0, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D772
_0807D684:
	ldr r0, _0807D6C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x12]
	mov r12, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	mov r1, r12
	orrs r0, r1
	strh r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D6C4
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D6DE
_0807D6C0: .4byte 0x03000FD8
_0807D6C4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D6DE:
	ldr r2, _0807D724 @ =0x03001034
	ldr r0, _0807D728 @ =0x08198154
	ldr r1, _0807D72C @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D730 @ =0x084FB588
	ldr r4, _0807D734 @ =0x0300034C
	ldr r1, _0807D738 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D700
	movs r1, #0x24
_0807D700:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D73C @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D740 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D772
_0807D724: .4byte 0x03001034
_0807D728: .4byte 0x08198154
_0807D72C: .4byte 0x081980D8
_0807D730: .4byte 0x084FB588
_0807D734: .4byte 0x0300034C
_0807D738: .4byte 0x00000888
_0807D73C: .4byte 0x089F808C
_0807D740: .4byte 0x02000440
_0807D744:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D762
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D772
_0807D762:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D772:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
