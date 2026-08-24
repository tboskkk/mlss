	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08026568 @ =0x0000010D
	adds r4, r7, r1
	adds r1, r4, #0x0
	bl sub_80FB790
	adds r1, r7, #0x0
	adds r1, #0xCC
	str r0, [r1, #0x00]
	adds r5, r0, #0x0
	movs r6, #0x00
	ldrb r4, [r4, #0x00]
	cmp r6, r4
	bge _08026540
_08026518:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	adds r6, #0x01
	adds r5, #0x02
	ldr r1, _08026568 @ =0x0000010D
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _08026518
_08026540:
	ldr r1, _0802656C @ =0x00000246
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	movs r2, #0x1C
	ands r2, r0
	cmp r2, #0x10
	bne _08026574
	ldr r1, _08026570 @ =0x00001003
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	b _08026590
_08026568: .4byte 0x0000010D
_0802656C: .4byte 0x00000246
_08026570: .4byte 0x00001003
_08026574:
	cmp r2, #0x04
	bne _08026590
	ldr r1, _080265E0 @ =0x00001004
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
_08026590:
	ldr r1, _080265E4 @ =0x00008003
	movs r4, #0x00
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0D
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0E
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, _080265E8 @ =0x00008001
	str r4, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0F
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080265E0: .4byte 0x00001004
_080265E4: .4byte 0x00008003
_080265E8: .4byte 0x00008001
