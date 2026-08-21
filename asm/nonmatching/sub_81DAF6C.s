	.syntax unified
	.text

	thumb_func_start sub_81DAF6C
sub_81DAF6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	mov r10, r2
	movs r0, #0x00
	ldr r2, [r3, #0x00]
	cmp r2, #0x01
	bhi _081DAF88
	movs r0, #0x01
_081DAF88:
	cmp r0, #0x00
	beq _081DAF90
_081DAF8C:
	adds r0, r3, #0x0
	b _081DB1C8
_081DAF90:
	movs r1, #0x00
	ldr r0, [r4, #0x00]
	cmp r0, #0x01
	bhi _081DAF9A
	movs r1, #0x01
_081DAF9A:
	cmp r1, #0x00
	bne _081DB012
	movs r1, #0x00
	cmp r2, #0x04
	bne _081DAFA6
	movs r1, #0x01
_081DAFA6:
	cmp r1, #0x00
	beq _081DAFC8
	movs r1, #0x00
	cmp r0, #0x04
	bne _081DAFB2
	movs r1, #0x01
_081DAFB2:
	cmp r1, #0x00
	beq _081DAF8C
	ldr r1, [r3, #0x04]
	ldr r0, [r4, #0x04]
	cmp r1, r0
	beq _081DAF8C
	ldr r0, _081DAFC4 @ =0x03001A20
	b _081DB1C8
	.byte 0x00, 0x00
_081DAFC4: .4byte 0x03001A20
_081DAFC8:
	movs r1, #0x00
	cmp r0, #0x04
	bne _081DAFD0
	movs r1, #0x01
_081DAFD0:
	cmp r1, #0x00
	bne _081DB012
	movs r1, #0x00
	cmp r0, #0x02
	bne _081DAFDC
	movs r1, #0x01
_081DAFDC:
	cmp r1, #0x00
	beq _081DB004
	movs r0, #0x00
	cmp r2, #0x02
	bne _081DAFE8
	movs r0, #0x01
_081DAFE8:
	cmp r0, #0x00
	beq _081DAF8C
	mov r1, r10
	adds r0, r3, #0x0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #0x04]
	ldr r1, [r4, #0x04]
	ands r0, r1
	mov r6, r10
	str r0, [r6, #0x04]
	b _081DB1C6
_081DB004:
	movs r1, #0x00
	ldr r0, [r3, #0x00]
	cmp r0, #0x02
	bne _081DB00E
	movs r1, #0x01
_081DB00E:
	cmp r1, #0x00
	beq _081DB016
_081DB012:
	adds r0, r4, #0x0
	b _081DB1C8
_081DB016:
	ldr r0, [r3, #0x08]
	mov r9, r0
	ldr r1, [r4, #0x08]
	mov r8, r1
	ldr r6, [r3, #0x0C]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0x0C]
	ldr r1, [r4, #0x10]
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	mov r1, r9
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0x00
	bge _081DB036
	negs r0, r0
_081DB036:
	cmp r0, #0x3F
	bgt _081DB0B4
	ldr r3, [r3, #0x04]
	mov r12, r3
	ldr r4, [r4, #0x04]
	str r4, [sp, #0x008]
	cmp r9, r8
	ble _081DB080
	mov r3, r9
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_081DB04E:
	movs r5, #0x01
	negs r5, r5
	add r8, r5
	ldr r2, [sp, #0x000]
	movs r0, #0x01
	ands r2, r0
	movs r3, #0x00
	ldr r1, [sp, #0x004]
	lsls r5, r1, #0x1F
	ldr r0, [sp, #0x000]
	lsrs r4, r0, #0x01
	adds r0, r5, #0x0
	orrs r0, r4
	adds r4, r1, #0x0
	lsrs r1, r4, #0x01
	adds r5, r2, #0x0
	orrs r5, r0
	str r5, [sp, #0x000]
	adds r4, r3, #0x0
	orrs r4, r1
	str r4, [sp, #0x004]
	mov r5, r8
	cmp r5, #0x00
	bne _081DB04E
	mov r8, r9
_081DB080:
	cmp r8, r9
	ble _081DB0D0
	mov r0, r8
	mov r1, r9
	subs r0, r0, r1
	mov r9, r0
_081DB08C:
	movs r2, #0x01
	negs r2, r2
	add r9, r2
	movs r2, #0x01
	ands r2, r6
	movs r3, #0x00
	lsls r5, r7, #0x1F
	lsrs r4, r6, #0x01
	adds r0, r5, #0x0
	orrs r0, r4
	lsrs r1, r7, #0x01
	adds r6, r2, #0x0
	orrs r6, r0
	adds r7, r3, #0x0
	orrs r7, r1
	mov r3, r9
	cmp r3, #0x00
	bne _081DB08C
	mov r9, r8
	b _081DB0D0
_081DB0B4:
	cmp r9, r8
	ble _081DB0C2
	movs r0, #0x00
	movs r1, #0x00
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	b _081DB0C8
_081DB0C2:
	mov r9, r8
	movs r6, #0x00
	movs r7, #0x00
_081DB0C8:
	ldr r3, [r3, #0x04]
	mov r12, r3
	ldr r4, [r4, #0x04]
	str r4, [sp, #0x008]
_081DB0D0:
	ldr r1, [sp, #0x008]
	cmp r12, r1
	beq _081DB178
	mov r2, r12
	cmp r2, #0x00
	beq _081DB0F2
	adds r1, r7, #0x0
	adds r0, r6, #0x0
	bl _negdi2
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r4, [sp, #0x000]
	ldr r5, [sp, #0x004]
	adds r2, r2, r4
	adcs r3, r5
	b _081DB0FE
_081DB0F2:
	adds r3, r7, #0x0
	adds r2, r6, #0x0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x004]
	subs r2, r2, r0
	sbcs r3, r1
_081DB0FE:
	cmp r3, #0x00
	blt _081DB114
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x04]
	mov r4, r9
	str r4, [r1, #0x08]
	mov r5, r10
	str r2, [r5, #0x0C]
	str r3, [r5, #0x10]
	b _081DB12C
_081DB114:
	movs r0, #0x01
	mov r6, r10
	str r0, [r6, #0x04]
	mov r0, r9
	str r0, [r6, #0x08]
	adds r1, r3, #0x0
	adds r0, r2, #0x0
	bl _negdi2
	mov r2, r10
	str r0, [r2, #0x0C]
	str r1, [r2, #0x10]
_081DB12C:
	mov r4, r10
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	movs r0, #0x01
	negs r0, r0
	asrs r1, r0, #0x1F
_081DB138:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _081DB174 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _081DB190
	cmp r3, r0
	bne _081DB14E
	movs r0, #0x02
	negs r0, r0
	cmp r2, r0
	bhi _081DB190
_081DB14E:
	mov r5, r10
	ldr r0, [r5, #0x0C]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1F
	lsls r2, r1, #0x01
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r0, #0x01
	mov r6, r10
	str r0, [r6, #0x0C]
	str r1, [r6, #0x10]
	ldr r2, [r6, #0x08]
	subs r2, #0x01
	str r2, [r6, #0x08]
	movs r2, #0x01
	negs r2, r2
	asrs r3, r2, #0x1F
	b _081DB138
	.byte 0x00, 0x00
_081DB174: .4byte 0x0FFFFFFF
_081DB178:
	mov r0, r12
	mov r1, r10
	str r0, [r1, #0x04]
	mov r2, r9
	str r2, [r1, #0x08]
	ldr r3, [sp, #0x000]
	ldr r4, [sp, #0x004]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, r10
	str r6, [r4, #0x0C]
	str r7, [r4, #0x10]
_081DB190:
	movs r0, #0x03
	mov r5, r10
	str r0, [r5, #0x00]
	ldr r1, [r5, #0x10]
	ldr r0, _081DB1D4 @ =0x1FFFFFFF
	cmp r1, r0
	bls _081DB1C6
	ldr r4, [r5, #0x0C]
	ldr r5, [r5, #0x10]
	movs r2, #0x01
	adds r0, r4, #0x0
	ands r0, r2
	movs r1, #0x00
	lsls r6, r5, #0x1F
	mov r8, r6
	lsrs r6, r4, #0x01
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #0x01
	orrs r0, r2
	orrs r1, r3
	mov r2, r10
	str r0, [r2, #0x0C]
	str r1, [r2, #0x10]
	ldr r0, [r2, #0x08]
	adds r0, #0x01
	str r0, [r2, #0x08]
_081DB1C6:
	mov r0, r10
_081DB1C8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7, pc}
_081DB1D4: .4byte 0x1FFFFFFF
