	.syntax unified
	.text

	thumb_func_start sub_8147728
sub_8147728:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r5
	mov r10, r0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081477C6
	add r4, sp, #0x014
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x14
	movs r3, #0x22
	bl sub_8139CAC
	ldr r3, _081477AC @ =0x000007FF
	ldr r0, _081477B0 @ =0x00007FFF
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8148AB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081477B8
	ldr r0, _081477B4 @ =0x08147811
	str r0, [r7, #0x00]
	b _081477F8
_081477AC: .4byte 0x000007FF
_081477B0: .4byte 0x00007FFF
_081477B4: .4byte sub_8147810
_081477B8:
	mov r0, r8
	ldrh r1, [r0, #0x1A]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	b _081477CA
_081477C6:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_081477CA:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081477F8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _08147808 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _0814780C @ =0x0814765D
	str r0, [r7, #0x0C]
_081477F8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08147808: .4byte sub_813B1E8
_0814780C: .4byte sub_814765C
