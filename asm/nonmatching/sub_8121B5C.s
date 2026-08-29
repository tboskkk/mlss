	.syntax unified
	.text

	thumb_func_start sub_8121B5C
sub_8121B5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	mov r10, r1
	mov r8, r2
	ldr r1, [sp, #0x050]
	ldr r2, [sp, #0x054]
	ldr r5, [sp, #0x05C]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x00C]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x010]
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x014]
	mov r0, r10
	bl sub_80197C4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _08121BA0
	movs r0, #0x08
	b _08121BA4
_08121BA0:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
_08121BA4:
	str r0, [sp, #0x018]
	movs r2, #0x00
	cmp r2, r9
	blt _08121BAE
	b _08121D06
_08121BAE:
	ldr r1, [sp, #0x014]
	mov r3, r9
	subs r0, r1, r3
	ldr r1, [sp, #0x018]
	adds r6, r0, #0x0
	muls r6, r1
	str r6, [sp, #0x01C]
	asrs r3, r6, #0x01
	str r3, [sp, #0x020]
	movs r6, #0x80
	lsls r6, r6, #0x08
	orrs r6, r4
	str r6, [sp, #0x024]
_08121BC8:
	movs r5, #0x01
	mov r0, sp
	ldr r1, _08121BFC @ =0x08202F64
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [sp, #0x018]
	adds r0, r2, #0x0
	muls r0, r1
	ldr r3, [sp, #0x010]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [sp, #0x014]
	cmp r4, r9
	beq _08121C08
	movs r0, #0x18
	ldr r1, [sp, #0x00C]
	ands r0, r1
	cmp r0, #0x08
	beq _08121C00
	cmp r0, #0x10
	bne _08121C08
	ldr r3, [sp, #0x01C]
	adds r0, r6, r3
	b _08121C04
	.byte 0x00, 0x00
_08121BFC: .4byte 0x08202F64
_08121C00:
	ldr r4, [sp, #0x020]
	adds r0, r6, r4
_08121C04:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08121C08:
	mov r0, r9
	subs r3, r0, r2
	subs r0, r3, #0x1
	ldr r7, _08121CBC @ =0x0819832C
	ldr r4, _08121CC0 @ =0x08198220
	mov r1, r8
	adds r1, #0x08
	str r1, [sp, #0x028]
	adds r2, #0x01
	str r2, [sp, #0x02C]
	cmp r0, #0x00
	ble _08121C6E
	adds r2, r0, #0x0
	negs r1, r2
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08121C50
	cmp r1, #0x03
	bge _08121C44
	cmp r1, #0x02
	bge _08121C3C
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	subs r2, r3, #0x2
_08121C3C:
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	subs r2, #0x01
_08121C44:
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	subs r2, #0x01
	cmp r2, #0x00
	beq _08121C6E
_08121C50:
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r5
	lsls r5, r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r5
	lsls r5, r0, #0x01
	lsls r0, r0, #0x03
	adds r0, r0, r5
	lsls r5, r0, #0x01
	subs r2, #0x04
	cmp r2, #0x00
	bne _08121C50
_08121C6E:
	subs r4, r7, r4
	ldr r3, _08121CC4 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r10
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r1, #0x03
	ldr r2, [sp, #0x00C]
	ands r1, r2
	lsls r1, r1, #0x02
	add r1, sp
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r1, r1, r0
	adds r1, #0x20
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r3, _08121CC4 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r10
	adds r1, r5, #0x0
	bl _call_via_r2
	muls r0, r5
	mov r4, r10
	subs r4, r4, r0
	mov r10, r4
	movs r0, #0x01
	negs r0, r0
	ldr r1, [sp, #0x058]
	cmp r1, r0
	beq _08121CC8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	b _08121CE4
	.byte 0x00, 0x00
_08121CBC: .4byte 0x0819832C
_08121CC0: .4byte 0x08198220
_08121CC4: .4byte 0x03001038
_08121CC8:
	movs r0, #0x04
	ldr r2, [sp, #0x00C]
	ands r0, r2
	cmp r0, #0x00
	beq _08121CD6
	movs r0, #0x04
	b _08121CE4
_08121CD6:
	movs r0, #0x02
	ldr r3, [sp, #0x00C]
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	lsrs r0, r0, #0x1F
_08121CE4:
	mov r4, sp
	ldrh r1, [r4, #0x24]
	mov r4, r8
	strh r1, [r4, #0x00]
	strh r6, [r4, #0x02]
	lsls r0, r0, #0x0C
	movs r1, #0x80
	lsls r1, r1, #0x03
	orrs r0, r1
	orrs r0, r7
	strh r0, [r4, #0x04]
	ldr r2, [sp, #0x028]
	mov r8, r2
	ldr r2, [sp, #0x02C]
	cmp r2, r9
	bge _08121D06
	b _08121BC8
_08121D06:
	mov r0, r8
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
