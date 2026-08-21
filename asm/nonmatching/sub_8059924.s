	.syntax unified
	.text

	thumb_func_start sub_8059924
sub_8059924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x004]
_08059936:
	ldr r2, _08059A84 @ =room_solidity_index_table
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r7, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08059A88 @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x018]
	cmp r1, r0
	bne _08059956
	b _08059A64
_08059956:
	ldr r5, [sp, #0x004]
	lsls r2, r5, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x14
	subs r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #0x11
	mov r10, r6
	movs r0, #0x0D
	str r0, [sp, #0x00C]
	cmp r1, #0x00
	bne _080599A8
	movs r5, #0x10
	mov r10, r5
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x09
	adds r0, r0, r5
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
_080599A8:
	adds r1, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599C0
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599C0:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bne _080599D4
	movs r6, #0x0C
	str r6, [sp, #0x00C]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080599D4:
	adds r1, #0x0A
	adds r0, r7, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599EC
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599EC:
	movs r2, #0x00
	ldr r5, [sp, #0x00C]
	cmp r2, r5
	bge _08059A64
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080599FA:
	movs r1, #0x00
	lsls r2, r2, #0x10
	str r2, [sp, #0x01C]
	cmp r1, r10
	bge _08059A52
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	asrs r0, r2, #0x10
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	lsls r3, r0, #0x10
	mov r9, r3
	ldr r2, [sp, #0x008]
	adds r6, r0, #0x0
	muls r6, r2
	mov r8, r6
_08059A1C:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x004]
	lsls r0, r3, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r7, #0x6C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r3, #0x0
	mov r6, r9
	asrs r3, r6, #0x10
	bl sub_8059A8C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r10
	blt _08059A1C
_08059A52:
	ldr r1, [sp, #0x01C]
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	blt _080599FA
_08059A64:
	ldr r5, [sp, #0x018]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _08059A72
	b _08059936
_08059A72:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059A84: .4byte room_solidity_index_table
_08059A88: .4byte 0x0000FFFF
