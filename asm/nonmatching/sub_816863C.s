	.syntax unified
	.text

	thumb_func_start sub_816863C
sub_816863C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	mov r10, r1
	mov r9, r2
	ldr r0, _081686C0 @ =0x03000374
	mov r12, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r6, #0x00
	movs r2, #0x00
	str r2, [sp, #0x004]
	mov r8, r2
	ldr r0, [r5, #0x50]
	cmp r0, #0x00
	beq _08168666
	b _08168784
_08168666:
	mov r4, r12
	ldrh r3, [r4, #0x00]
	movs r0, #0xF0
	ands r0, r3
	cmp r0, #0x00
	beq _0816868E
	lsrs r0, r3, #0x04
	movs r1, #0x0F
	ands r0, r1
	ldr r1, _081686C4 @ =0x08216A54
	lsls r0, r0, #0x02
	adds r2, r0, r1
	movs r4, #0x00
	ldsh r7, [r2, r4]
	mov r8, r7
	adds r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r7, [r0, r1]
	str r7, [sp, #0x004]
_0816868E:
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x6E
	movs r4, #0x00
	ldsh r1, [r2, r4]
	ldr r0, [r5, #0x04]
	adds r4, r0, #0x0
	adds r4, #0x6E
	movs r7, #0x00
	ldsh r0, [r4, r7]
	adds r1, r1, r0
	cmp r1, #0x00
	ble _081686C8
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	beq _081686B2
	movs r6, #0x04
_081686B2:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _081686DC
	subs r6, #0x04
	b _081686DC
	.byte 0x00, 0x00
_081686C0: .4byte 0x03000374
_081686C4: .4byte 0x08216A54
_081686C8:
	movs r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	beq _081686D2
	movs r6, #0x02
_081686D2:
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _081686DC
	subs r6, #0x02
_081686DC:
	mov r4, r8
	cmp r4, #0x00
	bne _081686EC
	ldr r7, [sp, #0x004]
	cmp r7, #0x00
	bne _081686EC
	cmp r6, #0x00
	beq _081686F0
_081686EC:
	movs r0, #0x01
	str r0, [sp, #0x000]
_081686F0:
	mov r2, r12
	ldrh r1, [r2, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _08168740
	ldr r0, [r5, #0x00]
	movs r1, #0x01
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _08168740
	ldr r2, _0816873C @ =0x08215770
	movs r0, #0x84
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r5, #0x00]
	adds r1, #0x18
	adds r2, r5, #0x0
	adds r2, #0x14
	movs r3, #0x01
	bl sub_816881C
	adds r4, r0, #0x0
	mov r0, r9
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_816B288
	b _08168784
_0816873C: .4byte 0x08215770
_08168740:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08168784
	ldr r0, [r5, #0x04]
	movs r1, #0x01
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _08168784
	ldr r2, _08168810 @ =0x08215770
	movs r0, #0x84
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, [r5, #0x04]
	adds r1, #0x18
	adds r2, r5, #0x0
	adds r2, #0x14
	movs r3, #0x01
	bl sub_816881C
	adds r4, r0, #0x0
	mov r0, r9
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	bl sub_816B288
_08168784:
	ldr r0, [r5, #0x2C]
	adds r0, r0, r6
	movs r2, #0xFF
	ands r0, r2
	str r0, [r5, #0x2C]
	ldr r4, [r5, #0x00]
	ldr r3, [r5, #0x04]
	ldr r1, _08168814 @ =0x08198504
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _081687A4
	adds r0, #0x3F
_081687A4:
	asrs r0, r0, #0x06
	str r0, [r5, #0x30]
	str r0, [r3, #0x74]
	str r0, [r4, #0x74]
	ldr r1, _08168818 @ =0x08198584
	ldr r0, [r5, #0x2C]
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081687C0
	adds r0, #0x3F
_081687C0:
	asrs r0, r0, #0x06
	str r0, [r5, #0x34]
	str r0, [r3, #0x78]
	str r0, [r4, #0x78]
	mov r2, r8
	str r2, [r5, #0x20]
	ldr r4, [sp, #0x004]
	str r4, [r5, #0x28]
	adds r1, r5, #0x0
	adds r1, #0x14
	adds r2, r5, #0x0
	adds r2, #0x20
	mov r0, r10
	bl sub_81695AC
	ldr r0, [r5, #0x00]
	bl sub_8163A6C
	ldr r0, [r5, #0x00]
	bl sub_8161E38
	ldr r0, [r5, #0x04]
	bl sub_8163A6C
	ldr r0, [r5, #0x04]
	bl sub_8161E38
	adds r0, r5, #0x0
	ldr r1, [sp, #0x000]
	bl sub_8168580
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08168810: .4byte 0x08215770
_08168814: .4byte 0x08198504
_08168818: .4byte 0x08198584
