	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801D680
sub_801D680:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r10, r0
	ldr r5, [sp, #0x040]
	mov r0, sp
	strh r1, [r0, #0x00]
	mov r4, sp
	adds r4, #0x02
	strh r2, [r4, #0x00]
	add r1, sp, #0x004
	strh r3, [r1, #0x00]
	adds r0, #0x06
	strh r5, [r0, #0x00]
	mov r5, sp
	adds r7, r4, #0x0
	mov r9, r1
	mov r8, r0
	movs r1, #0x00
	movs r6, #0x00
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	bge _0801D6BA
	movs r1, #0x04
	b _0801D6C0
_0801D6BA:
	cmp r0, #0x9F
	ble _0801D6C0
	movs r1, #0x08
_0801D6C0:
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0801D6D0
	movs r0, #0x04
	orrs r6, r0
	b _0801D6DC
_0801D6D0:
	cmp r0, #0x9F
	ble _0801D6DC
	movs r0, #0x08
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_0801D6DC:
	cmp r1, #0x00
	bne _0801D6E4
	cmp r6, #0x00
	beq _0801D7B0
_0801D6E4:
	adds r4, r1, #0x0
	ands r4, r6
	cmp r4, #0x00
	beq _0801D6F0
	movs r0, #0x00
	b _0801D7B2
_0801D6F0:
	cmp r1, #0x00
	beq _0801D742
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0801D710
	mov r0, r9
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	subs r1, r1, r0
	movs r0, #0x00
	ldsh r2, [r7, r0]
	negs r0, r2
	b _0801D72C
_0801D710:
	movs r0, #0x08
	ands r1, r0
	cmp r1, #0x00
	beq _0801D742
	mov r4, r9
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	subs r1, r1, r0
	movs r3, #0x00
	ldsh r2, [r7, r3]
	movs r4, #0x9F
	subs r0, r4, r2
_0801D72C:
	muls r0, r1
	mov r1, r8
	movs r3, #0x00
	ldsh r1, [r1, r3]
	subs r1, r1, r2
	bl __divsi3
	ldrh r1, [r5, #0x00]
	adds r1, r1, r0
	strh r1, [r5, #0x00]
	strh r4, [r7, #0x00]
_0801D742:
	cmp r6, #0x00
	beq _0801D7B0
	movs r0, #0x04
	ands r0, r6
	cmp r0, #0x00
	beq _0801D77C
	mov r4, r9
	movs r6, #0x00
	ldsh r1, [r4, r6]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	subs r1, r1, r0
	movs r3, #0x00
	ldsh r2, [r7, r3]
	negs r0, r2
	muls r0, r1
	mov r4, r8
	movs r6, #0x00
	ldsh r1, [r4, r6]
	subs r1, r1, r2
	bl __divsi3
	ldrh r1, [r5, #0x00]
	adds r1, r1, r0
	mov r7, r9
	strh r1, [r7, #0x00]
	movs r0, #0x00
	strh r0, [r4, #0x00]
	b _0801D7B0
_0801D77C:
	movs r0, #0x08
	ands r6, r0
	cmp r6, #0x00
	beq _0801D7B0
	mov r0, r9
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	subs r1, r1, r0
	movs r4, #0x00
	ldsh r2, [r7, r4]
	movs r4, #0x9F
	subs r0, r4, r2
	muls r0, r1
	mov r6, r8
	movs r7, #0x00
	ldsh r1, [r6, r7]
	subs r1, r1, r2
	bl __divsi3
	ldrh r1, [r5, #0x00]
	adds r1, r1, r0
	mov r0, r9
	strh r1, [r0, #0x00]
	strh r4, [r6, #0x00]
_0801D7B0:
	movs r0, #0x01
_0801D7B2:
	cmp r0, #0x00
	bne _0801D7B8
	b _0801DA3A
_0801D7B8:
	mov r0, sp
	ldrh r2, [r0, #0x04]
	ldrh r0, [r0, #0x00]
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov r4, sp
	adds r4, #0x06
	mov r3, sp
	adds r3, #0x02
	ldrh r0, [r4, #0x00]
	ldrh r1, [r3, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsrs r6, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bne _0801D7E2
	cmp r7, #0x00
	bne _0801D7E2
	b _0801DA3A
_0801D7E2:
	movs r1, #0x01
	mov r9, r1
	cmp r0, #0x00
	bge _0801D7F4
	ldr r2, _0801D928 @ =0x0000FFFF
	mov r9, r2
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801D7F4:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x02
	str r5, [sp, #0x008]
	cmp r0, #0x00
	bge _0801D80A
	ldr r7, _0801D92C @ =0x0000FFFE
	str r7, [sp, #0x008]
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0801D80A:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r12, r0
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r12, r2
	bge _0801D81A
	b _0801D930
_0801D81A:
	mov r1, r12
	negs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	lsls r0, r0, #0x02
	mov r7, r10
	ldr r1, [r7, #0x08]
	adds r3, r1, r0
	movs r5, #0x00
	ldsh r0, [r4, r5]
	lsls r0, r0, #0x02
	adds r5, r1, r0
	movs r7, #0x00
	mov r8, r7
	mov r1, r12
	adds r1, #0x01
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	cmp r8, r0
	bge _0801D8F4
	mov r4, sp
	mov r0, r9
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	mov r7, r12
	lsls r7, r7, #0x01
	str r7, [sp, #0x00C]
	mov r9, r1
	lsls r2, r2, #0x01
	mov r12, r2
_0801D860:
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldrh r2, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r1, r0
	ble _0801D870
	strh r2, [r3, #0x00]
_0801D870:
	movs r0, #0x02
	ldsh r1, [r3, r0]
	ldrh r2, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r1, r0
	bge _0801D880
	strh r2, [r3, #0x02]
_0801D880:
	movs r0, #0x00
	ldsh r1, [r5, r0]
	mov r2, sp
	ldrh r7, [r2, #0x04]
	strh r7, [r2, #0x1C]
	movs r7, #0x04
	ldsh r0, [r2, r7]
	cmp r1, r0
	ble _0801D896
	ldrh r0, [r2, #0x1C]
	strh r0, [r5, #0x00]
_0801D896:
	movs r2, #0x02
	ldsh r1, [r5, r2]
	mov r7, sp
	ldrh r0, [r7, #0x04]
	strh r0, [r7, #0x1C]
	movs r2, #0x04
	ldsh r0, [r7, r2]
	cmp r1, r0
	bge _0801D8AC
	ldrh r7, [r7, #0x1C]
	strh r7, [r5, #0x02]
_0801D8AC:
	ldrh r0, [r4, #0x00]
	add r0, r10
	strh r0, [r4, #0x00]
	mov r1, sp
	ldrh r0, [r1, #0x04]
	mov r2, r10
	subs r0, r0, r2
	strh r0, [r1, #0x04]
	ldr r7, [sp, #0x018]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	add r0, r12
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x018]
	asrs r1, r0, #0x10
	cmp r1, #0x00
	blt _0801D8E4
	ldr r2, [sp, #0x008]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x0F
	adds r3, r3, r0
	subs r5, r5, r0
	ldr r7, [sp, #0x00C]
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
_0801D8E4:
	movs r0, #0x01
	add r8, r0
	mov r1, r9
	lsrs r0, r1, #0x1F
	add r0, r9
	asrs r0, r0, #0x01
	cmp r8, r0
	blt _0801D860
_0801D8F4:
	movs r0, #0x01
	eors r6, r0
	ands r6, r0
	cmp r6, #0x00
	bne _0801D900
	b _0801DA3A
_0801D900:
	mov r0, sp
	movs r2, #0x00
	ldsh r1, [r3, r2]
	ldrh r2, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _0801D912
	strh r2, [r3, #0x00]
_0801D912:
	mov r0, sp
	movs r5, #0x02
	ldsh r1, [r3, r5]
	ldrh r2, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _0801D924
	b _0801DA3A
_0801D924:
	strh r2, [r3, #0x02]
	b _0801DA3A
_0801D928: .4byte 0x0000FFFF
_0801D92C: .4byte 0x0000FFFE
_0801D930:
	negs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r1, sp
	movs r3, #0x02
	ldsh r0, [r1, r3]
	lsls r0, r0, #0x02
	mov r4, r10
	ldr r1, [r4, #0x08]
	adds r4, r1, r0
	mov r5, sp
	movs r6, #0x06
	ldsh r0, [r5, r6]
	lsls r0, r0, #0x02
	adds r6, r1, r0
	adds r0, r2, #0x1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r1, r0, #0x01
	cmp r1, #0x00
	ble _0801DA0C
	ldr r3, [sp, #0x008]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x0F
	mov r10, r0
	mov r3, r9
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r9, r0
	lsls r2, r2, #0x01
	str r2, [sp, #0x014]
	mov r0, r12
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	mov r12, r1
_0801D978:
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldrh r2, [r5, #0x00]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r1, r0
	ble _0801D988
	strh r2, [r4, #0x00]
_0801D988:
	movs r0, #0x02
	ldsh r1, [r4, r0]
	ldrh r2, [r5, #0x00]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r1, r0
	bge _0801D998
	strh r2, [r4, #0x02]
_0801D998:
	add r2, sp, #0x004
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldrh r0, [r2, #0x00]
	mov r3, sp
	strh r0, [r3, #0x1E]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r1, r0
	ble _0801D9B2
	mov r0, sp
	ldrh r0, [r0, #0x1E]
	strh r0, [r6, #0x00]
_0801D9B2:
	movs r3, #0x02
	ldsh r1, [r6, r3]
	ldrh r3, [r2, #0x00]
	mov r0, sp
	strh r3, [r0, #0x1E]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r1, r0
	bge _0801D9CA
	mov r0, sp
	ldrh r0, [r0, #0x1E]
	strh r0, [r6, #0x02]
_0801D9CA:
	add r4, r10
	mov r1, r10
	subs r6, r6, r1
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r1, r0, #0x10
	cmp r1, #0x00
	blt _0801DA00
	ldrh r0, [r5, #0x00]
	add r0, r9
	strh r0, [r5, #0x00]
	mov r2, sp
	ldrh r0, [r2, #0x04]
	mov r3, r9
	subs r0, r0, r3
	strh r0, [r2, #0x04]
	ldr r2, [sp, #0x014]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0801DA00:
	movs r3, #0x01
	negs r3, r3
	add r12, r3
	mov r0, r12
	cmp r0, #0x00
	bne _0801D978
_0801DA0C:
	movs r0, #0x01
	eors r7, r0
	ands r7, r0
	cmp r7, #0x00
	beq _0801DA3A
	mov r0, sp
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldrh r2, [r0, #0x00]
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	ble _0801DA28
	strh r2, [r4, #0x00]
_0801DA28:
	mov r0, sp
	movs r5, #0x02
	ldsh r1, [r4, r5]
	ldrh r2, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	bge _0801DA3A
	strh r2, [r4, #0x02]
_0801DA3A:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_801DA4C
sub_801DA4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	ldr r1, [r0, #0x08]
	ldr r6, [r0, #0x00]
	movs r5, #0x00
	ldr r0, [sp, #0x004]
	lsls r0, r0, #0x04
	mov r10, r0
	ldr r0, [sp, #0x004]
	mov r2, r10
	orrs r0, r2
	lsls r0, r0, #0x18
	str r0, [sp, #0x000]
_0801DA74:
	ldrh r0, [r1, #0x00]
	movs r3, #0x00
	ldsh r2, [r1, r3]
	ldrh r4, [r1, #0x02]
	movs r7, #0x02
	ldsh r3, [r1, r7]
	adds r5, #0x01
	mov r8, r5
	adds r1, #0x04
	mov r9, r1
	movs r1, #0x80
	adds r1, r1, r6
	mov r12, r1
	cmp r2, r3
	bgt _0801DB3A
	cmp r2, #0x00
	bge _0801DA98
	movs r0, #0x00
_0801DA98:
	cmp r3, #0xEF
	ble _0801DA9E
	movs r4, #0xEF
_0801DA9E:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	adds r3, r6, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r7, #0x01
	ands r1, r7
	cmp r1, #0x00
	beq _0801DAD4
	ldrb r0, [r3, #0x00]
	movs r1, #0x0F
	ands r1, r0
	mov r0, r10
	orrs r1, r0
	strb r1, [r3, #0x00]
	adds r3, #0x01
	lsls r0, r2, #0x10
	ldr r1, _0801DB54 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_0801DAD4:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0x0
	cmp r1, #0x01
	ble _0801DB24
	ldr r2, [sp, #0x000]
	lsrs r4, r2, #0x18
	lsrs r0, r5, #0x1F
	adds r0, r1, r0
	asrs r2, r0, #0x01
	cmp r2, #0x00
	beq _0801DB24
	negs r1, r2
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0801DB14
	cmp r1, #0x03
	bge _0801DB0A
	cmp r1, #0x02
	bge _0801DB04
	strb r4, [r3, #0x00]
	adds r3, #0x01
	subs r2, #0x01
_0801DB04:
	strb r4, [r3, #0x00]
	adds r3, #0x01
	subs r2, #0x01
_0801DB0A:
	strb r4, [r3, #0x00]
	adds r3, #0x01
	subs r2, #0x01
	cmp r2, #0x00
	beq _0801DB24
_0801DB14:
	strb r4, [r3, #0x00]
	strb r4, [r3, #0x01]
	strb r4, [r3, #0x02]
	strb r4, [r3, #0x03]
	adds r3, #0x04
	subs r2, #0x04
	cmp r2, #0x00
	bne _0801DB14
_0801DB24:
	asrs r0, r5, #0x10
	movs r7, #0x01
	ands r0, r7
	cmp r0, #0x00
	beq _0801DB3A
	ldrb r1, [r3, #0x00]
	movs r0, #0xF0
	ands r0, r1
	ldr r1, [sp, #0x004]
	orrs r0, r1
	strb r0, [r3, #0x00]
_0801DB3A:
	mov r5, r8
	mov r1, r9
	mov r6, r12
	cmp r5, #0x9F
	ble _0801DA74
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801DB54: .4byte 0xFFFF0000
	thumb_func_start sub_801DB58
sub_801DB58:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0801DBF0 @ =0x04000208
	movs r0, #0x00
	strh r0, [r6, #0x00]
	ldr r0, [r5, #0x04]
	ldrh r1, [r5, #0x0C]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0xA0
	lsls r2, r2, #0x05
	mov r8, r2
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0x01
	mov r9, r0
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	add r0, r8
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBF4 @ =0x06001400
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	movs r1, #0xA0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBF8 @ =0x06002800
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBFC @ =0x06003C00
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801DBF0: .4byte 0x04000208
_0801DBF4: .4byte 0x06001400
_0801DBF8: .4byte 0x06002800
_0801DBFC: .4byte 0x06003C00
	thumb_func_start sub_801DC00
sub_801DC00:
	push {lr}
	add sp, #-0x004
	adds r3, r1, #0x0
	lsls r1, r3, #0x04
	orrs r1, r3
	lsls r2, r3, #0x08
	orrs r1, r2
	lsls r2, r3, #0x0C
	orrs r1, r2
	lsls r2, r3, #0x10
	orrs r1, r2
	lsls r2, r3, #0x14
	orrs r1, r2
	lsls r2, r3, #0x18
	orrs r1, r2
	lsls r2, r3, #0x1C
	orrs r1, r2
	str r1, [sp, #0x000]
	ldr r1, [r0, #0x00]
	ldr r2, _0801DC34 @ =0x01001400
	mov r0, sp
	bl CpuFastSet
	add sp, #0x004
	pop {r0}
	bx r0
_0801DC34: .4byte 0x01001400
