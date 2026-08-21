	.syntax unified
	.text

	thumb_func_start sub_81DAD4C
sub_81DAD4C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r1, r0, #0x0
	ldr r4, [r1, #0x0C]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #0x04]
	movs r6, #0x00
	movs r2, #0x00
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	bhi _081DAD64
	movs r2, #0x01
_081DAD64:
	cmp r2, #0x00
	beq _081DAD84
	ldr r6, _081DAD78 @ =0x000007FF
	ldr r2, _081DAD7C @ =0x00000000
	ldr r3, _081DAD80 @ =0x00080000
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	orrs r1, r3
	b _081DAE3C
	.byte 0x00, 0x00
_081DAD78: .4byte 0x000007FF
_081DAD7C: .4byte 0x00000000
_081DAD80: .4byte 0x00080000
_081DAD84:
	movs r2, #0x00
	cmp r0, #0x04
	bne _081DAD8C
	movs r2, #0x01
_081DAD8C:
	cmp r2, #0x00
	bne _081DADD8
	movs r2, #0x00
	cmp r0, #0x02
	bne _081DAD98
	movs r2, #0x01
_081DAD98:
	cmp r2, #0x00
	beq _081DADA2
	movs r4, #0x00
	movs r5, #0x00
	b _081DAE40
_081DADA2:
	adds r0, r5, #0x0
	orrs r0, r4
	cmp r0, #0x00
	beq _081DAE40
	ldr r2, [r1, #0x08]
	ldr r0, _081DADC0 @ =0xFFFFFC02
	cmp r2, r0
	bge _081DADD2
	subs r2, r0, r2
	cmp r2, #0x38
	ble _081DADC4
	movs r4, #0x00
	movs r5, #0x00
	b _081DAE32
	.byte 0x00, 0x00
_081DADC0: .4byte 0xFFFFFC02
_081DADC4:
	adds r1, r5, #0x0
	adds r0, r4, #0x0
	bl _lshrdi3
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	b _081DAE32
_081DADD2:
	ldr r0, _081DADE0 @ =0x000003FF
	cmp r2, r0
	ble _081DADE8
_081DADD8:
	ldr r6, _081DADE4 @ =0x000007FF
	movs r4, #0x00
	movs r5, #0x00
	b _081DAE40
_081DADE0: .4byte 0x000003FF
_081DADE4: .4byte 0x000007FF
_081DADE8:
	ldr r0, _081DAE10 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xFF
	adds r1, r4, #0x0
	ands r1, r0
	movs r2, #0x00
	cmp r1, #0x80
	bne _081DAE14
	cmp r2, #0x00
	bne _081DAE14
	adds r0, #0x01
	adds r1, r4, #0x0
	ands r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081DAE1C
	movs r0, #0x80
	movs r1, #0x00
	b _081DAE18
_081DAE10: .4byte 0x000003FF
_081DAE14:
	movs r0, #0x7F
	movs r1, #0x00
_081DAE18:
	adds r4, r4, r0
	adcs r5, r1
_081DAE1C:
	ldr r0, _081DAE80 @ =0x1FFFFFFF
	cmp r5, r0
	bls _081DAE32
	lsls r3, r5, #0x1F
	lsrs r2, r4, #0x01
	adds r0, r3, #0x0
	orrs r0, r2
	lsrs r1, r5, #0x01
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	adds r6, #0x01
_081DAE32:
	lsls r3, r5, #0x18
	lsrs r2, r4, #0x08
	adds r0, r3, #0x0
	orrs r0, r2
	lsrs r1, r5, #0x08
_081DAE3C:
	adds r5, r1, #0x0
	adds r4, r0, #0x0
_081DAE40:
	str r4, [sp, #0x000]
	ldr r2, _081DAE84 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #0x004]
	ldr r1, _081DAE88 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x004]
	mov r2, sp
	ldr r1, _081DAE8C @ =0x000007FF
	adds r0, r1, #0x0
	ands r6, r0
	lsls r1, r6, #0x04
	ldr r0, _081DAE90 @ =0xFFFF800F
	ldrh r3, [r2, #0x06]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #0x06]
	lsls r1, r7, #0x07
	movs r0, #0x7F
	ldrb r3, [r2, #0x07]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x07]
	ldr r1, [sp, #0x000]
	ldr r0, [sp, #0x004]
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x004]
	add sp, #0x008
	pop {r4, r5, r6, r7, pc}
_081DAE80: .4byte 0x1FFFFFFF
_081DAE84: .4byte 0x000FFFFF
_081DAE88: .4byte 0xFFF00000
_081DAE8C: .4byte 0x000007FF
_081DAE90: .4byte 0xFFFF800F
