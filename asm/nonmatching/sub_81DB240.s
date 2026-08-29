	.syntax unified
	.text

	thumb_func_start sub_81DB240
sub_81DB240:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x074
	str r0, [sp, #0x03C]
	str r1, [sp, #0x040]
	str r2, [sp, #0x044]
	str r3, [sp, #0x048]
	add r0, sp, #0x03C
	mov r1, sp
	bl sub_81DAE94
	add r0, sp, #0x044
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_81DAE94
	mov r8, sp
	add r0, sp, #0x028
	mov r10, r0
	movs r0, #0x00
	ldr r1, [sp, #0x000]
	cmp r1, #0x01
	bhi _081DB276
	movs r0, #0x01
_081DB276:
	cmp r0, #0x00
	bne _081DB2DA
	movs r2, #0x00
	ldr r0, [sp, #0x014]
	cmp r0, #0x01
	bhi _081DB284
	movs r2, #0x01
_081DB284:
	cmp r2, #0x00
	beq _081DB28C
	ldr r0, [sp, #0x004]
	b _081DB2FC
_081DB28C:
	movs r2, #0x00
	cmp r1, #0x04
	bne _081DB294
	movs r2, #0x01
_081DB294:
	cmp r2, #0x00
	beq _081DB2A6
	movs r1, #0x00
	cmp r0, #0x02
	bne _081DB2A0
	movs r1, #0x01
_081DB2A0:
	cmp r1, #0x00
	bne _081DB2BE
	b _081DB2DA
_081DB2A6:
	movs r2, #0x00
	cmp r0, #0x04
	bne _081DB2AE
	movs r2, #0x01
_081DB2AE:
	cmp r2, #0x00
	beq _081DB2CE
	movs r0, #0x00
	cmp r1, #0x02
	bne _081DB2BA
	movs r0, #0x01
_081DB2BA:
	cmp r0, #0x00
	beq _081DB2C8
_081DB2BE:
	ldr r0, _081DB2C4 @ =0x03001A20
	b _081DB4C6
	.byte 0x00, 0x00
_081DB2C4: .4byte 0x03001A20
_081DB2C8:
	mov r1, r8
	ldr r0, [r1, #0x04]
	b _081DB2FC
_081DB2CE:
	movs r2, #0x00
	cmp r1, #0x02
	bne _081DB2D6
	movs r2, #0x01
_081DB2D6:
	cmp r2, #0x00
	beq _081DB2EC
_081DB2DA:
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x018]
	eors r0, r1
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	mov r0, sp
	b _081DB4C6
_081DB2EC:
	movs r1, #0x00
	cmp r0, #0x02
	bne _081DB2F4
	movs r1, #0x01
_081DB2F4:
	cmp r1, #0x00
	beq _081DB30C
	mov r2, r8
	ldr r0, [r2, #0x04]
_081DB2FC:
	ldr r1, [sp, #0x018]
	eors r0, r1
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x018]
	adds r0, r4, #0x0
	b _081DB4C6
_081DB30C:
	mov r4, r8
	ldr r0, [r4, #0x0C]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0x0
	movs r7, #0x00
	str r1, [sp, #0x04C]
	movs r5, #0x00
	str r5, [sp, #0x050]
	ldr r0, [sp, #0x020]
	ldr r1, [sp, #0x024]
	adds r4, r0, #0x0
	str r1, [sp, #0x054]
	movs r0, #0x00
	str r0, [sp, #0x058]
	adds r1, r5, #0x0
	adds r0, r4, #0x0
	adds r3, r7, #0x0
	adds r2, r6, #0x0
	bl _muldi3
	str r0, [sp, #0x05C]
	str r1, [sp, #0x060]
	ldr r0, [sp, #0x054]
	ldr r1, [sp, #0x058]
	adds r3, r7, #0x0
	adds r2, r6, #0x0
	bl _muldi3
	adds r7, r1, #0x0
	adds r6, r0, #0x0
	adds r1, r5, #0x0
	adds r0, r4, #0x0
	ldr r2, [sp, #0x04C]
	ldr r3, [sp, #0x050]
	bl _muldi3
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, [sp, #0x054]
	ldr r1, [sp, #0x058]
	ldr r2, [sp, #0x04C]
	ldr r3, [sp, #0x050]
	bl _muldi3
	str r0, [sp, #0x064]
	str r1, [sp, #0x068]
	movs r1, #0x00
	movs r2, #0x00
	str r1, [sp, #0x06C]
	str r2, [sp, #0x070]
	adds r3, r7, #0x0
	adds r2, r6, #0x0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _081DB384
	cmp r7, r3
	bne _081DB38C
	cmp r6, r2
	bls _081DB38C
_081DB384:
	ldr r5, _081DB4DC @ =0x00000001
	ldr r4, _081DB4D8 @ =0x00000000
	str r4, [sp, #0x06C]
	str r5, [sp, #0x070]
_081DB38C:
	adds r1, r2, #0x0
	movs r6, #0x00
	adds r7, r1, #0x0
	ldr r0, [sp, #0x05C]
	ldr r1, [sp, #0x060]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _081DB3A8
	ldr r1, [sp, #0x060]
	cmp r1, r7
	bne _081DB3B8
	cmp r0, r6
	bls _081DB3B8
_081DB3A8:
	movs r0, #0x01
	movs r1, #0x00
	ldr r4, [sp, #0x06C]
	ldr r5, [sp, #0x070]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x06C]
	str r5, [sp, #0x070]
_081DB3B8:
	adds r0, r3, #0x0
	adds r2, r0, #0x0
	movs r3, #0x00
	adds r5, r3, #0x0
	adds r4, r2, #0x0
	ldr r0, [sp, #0x064]
	ldr r1, [sp, #0x068]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x06C]
	ldr r2, [sp, #0x070]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldr r0, [sp, #0x01C]
	adds r2, r2, r0
	str r2, [sp, #0x030]
	mov r0, r8
	ldr r1, [r0, #0x04]
	ldr r0, [sp, #0x018]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x02C]
	adds r2, #0x04
	str r2, [sp, #0x030]
	ldr r0, _081DB4E0 @ =0x1FFFFFFF
	cmp r5, r0
	bls _081DB43A
	movs r1, #0x01
	mov r9, r1
	mov r8, r0
	mov r12, r2
_081DB3FE:
	movs r2, #0x01
	add r12, r2
	mov r0, r9
	ands r0, r4
	cmp r0, #0x00
	beq _081DB424
	lsls r3, r7, #0x1F
	lsrs r2, r6, #0x01
	adds r0, r3, #0x0
	orrs r0, r2
	lsrs r1, r7, #0x01
	adds r7, r1, #0x0
	adds r6, r0, #0x0
	adds r0, r6, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0x0
	adds r6, r0, #0x0
_081DB424:
	lsls r3, r5, #0x1F
	lsrs r2, r4, #0x01
	adds r0, r3, #0x0
	orrs r0, r2
	lsrs r1, r5, #0x01
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	cmp r5, r8
	bhi _081DB3FE
	mov r0, r12
	str r0, [sp, #0x030]
_081DB43A:
	ldr r0, _081DB4E4 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _081DB48C
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov r9, r1
	mov r8, r0
	ldr r2, [sp, #0x030]
	mov r12, r2
_081DB44C:
	movs r0, #0x01
	negs r0, r0
	add r12, r0
	lsrs r3, r4, #0x1F
	lsls r2, r5, #0x01
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r4, #0x01
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r1, r9
	ands r1, r7
	orrs r0, r1
	cmp r0, #0x00
	beq _081DB476
	movs r0, #0x01
	orrs r0, r4
	adds r1, r5, #0x0
	adds r5, r1, #0x0
	adds r4, r0, #0x0
_081DB476:
	lsrs r3, r6, #0x1F
	lsls r2, r7, #0x01
	adds r1, r3, #0x0
	orrs r1, r2
	lsls r0, r6, #0x01
	adds r7, r1, #0x0
	adds r6, r0, #0x0
	cmp r5, r8
	bls _081DB44C
	mov r1, r12
	str r1, [sp, #0x030]
_081DB48C:
	movs r0, #0xFF
	adds r1, r4, #0x0
	ands r1, r0
	movs r2, #0x00
	cmp r1, #0x80
	bne _081DB4BA
	cmp r2, #0x00
	bne _081DB4BA
	adds r0, #0x01
	adds r1, r4, #0x0
	ands r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	bne _081DB4B2
	adds r0, r7, #0x0
	orrs r0, r6
	cmp r0, #0x00
	beq _081DB4BA
_081DB4B2:
	movs r0, #0x80
	movs r1, #0x00
	adds r4, r4, r0
	adcs r5, r1
_081DB4BA:
	str r4, [sp, #0x034]
	str r5, [sp, #0x038]
	movs r0, #0x03
	mov r2, r10
	str r0, [r2, #0x00]
	add r0, sp, #0x028
_081DB4C6:
	bl sub_81DAD4C
	add sp, #0x074
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00
_081DB4D8: .4byte 0x00000000
_081DB4DC: .4byte 0x00000001
_081DB4E0: .4byte 0x1FFFFFFF
_081DB4E4: .4byte 0x0FFFFFFF
