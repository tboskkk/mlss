	.syntax unified
	.text

	thumb_func_start sub_801BE84
sub_801BE84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r1, #0x0
	mov r8, r2
	mov r10, r3
	movs r6, #0x00
	mov r9, r6
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _0801BEA4
	movs r6, #0x01
	b _0801BEAA
_0801BEA4:
	cmp r0, #0xEF
	ble _0801BEAA
	movs r6, #0x02
_0801BEAA:
	mov r2, r8
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bge _0801BEBA
	movs r0, #0x04
	orrs r6, r0
	b _0801BEC6
_0801BEBA:
	cmp r0, #0x9F
	ble _0801BEC6
	movs r0, #0x08
	orrs r6, r0
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_0801BEC6:
	mov r5, r10
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0801BED6
	movs r2, #0x01
	mov r9, r2
	b _0801BEDE
_0801BED6:
	cmp r0, #0xEF
	ble _0801BEDE
	movs r3, #0x02
	mov r9, r3
_0801BEDE:
	ldr r5, [sp, #0x020]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0801BEF2
	movs r0, #0x04
	mov r2, r9
	orrs r2, r0
	mov r9, r2
	b _0801BF02
_0801BEF2:
	cmp r0, #0x9F
	ble _0801BF02
	movs r0, #0x08
	mov r3, r9
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
_0801BF02:
	cmp r6, #0x00
	bne _0801BF0E
	mov r5, r9
	cmp r5, #0x00
	bne _0801BF0E
	b _0801C100
_0801BF0E:
	adds r5, r6, #0x0
	mov r0, r9
	ands r5, r0
	cmp r5, #0x00
	beq _0801BF1C
_0801BF18:
	movs r0, #0x00
	b _0801C102
_0801BF1C:
	cmp r6, #0x00
	beq _0801C002
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0801BF58
	ldr r2, [sp, #0x020]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	mov r0, r8
	movs r2, #0x00
	ldsh r4, [r0, r2]
	subs r1, r1, r4
	movs r3, #0x00
	ldsh r2, [r7, r3]
	negs r0, r2
	muls r0, r1
	mov r1, r10
	movs r3, #0x00
	ldsh r1, [r1, r3]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0x9F
	bhi _0801BF90
	strh r5, [r7, #0x00]
	mov r5, r8
	strh r0, [r5, #0x00]
	b _0801C002
_0801BF58:
	movs r0, #0x02
	ands r0, r6
	cmp r0, #0x00
	beq _0801BF90
	ldr r0, [sp, #0x020]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r3, r8
	movs r5, #0x00
	ldsh r4, [r3, r5]
	subs r1, r1, r4
	movs r0, #0x00
	ldsh r2, [r7, r0]
	movs r3, #0xEF
	subs r0, r3, r2
	muls r0, r1
	mov r5, r10
	movs r3, #0x00
	ldsh r1, [r5, r3]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0x9F
	bhi _0801BF90
	movs r5, #0xEF
	strh r5, [r7, #0x00]
	b _0801BFC4
_0801BF90:
	movs r0, #0x04
	ands r0, r6
	cmp r0, #0x00
	beq _0801BFCA
	mov r0, r10
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r3, #0x00
	ldsh r4, [r7, r3]
	subs r1, r1, r4
	mov r5, r8
	movs r6, #0x00
	ldsh r2, [r5, r6]
	negs r0, r2
	muls r0, r1
	ldr r3, [sp, #0x020]
	movs r5, #0x00
	ldsh r1, [r3, r5]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0xEF
	bhi _0801BF18
	strh r0, [r7, #0x00]
	movs r0, #0x00
_0801BFC4:
	mov r6, r8
	strh r0, [r6, #0x00]
	b _0801C002
_0801BFCA:
	movs r0, #0x08
	ands r6, r0
	cmp r6, #0x00
	beq _0801BF18
	mov r0, r10
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r3, #0x00
	ldsh r4, [r7, r3]
	subs r1, r1, r4
	mov r5, r8
	movs r6, #0x00
	ldsh r2, [r5, r6]
	movs r5, #0x9F
	subs r0, r5, r2
	muls r0, r1
	ldr r3, [sp, #0x020]
	movs r6, #0x00
	ldsh r1, [r3, r6]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0xEF
	bhi _0801BF18
	strh r0, [r7, #0x00]
	mov r0, r8
	strh r5, [r0, #0x00]
_0801C002:
	mov r1, r9
	cmp r1, #0x00
	beq _0801C100
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801C044
	ldr r2, [sp, #0x020]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	mov r5, r8
	movs r6, #0x00
	ldsh r4, [r5, r6]
	subs r1, r1, r4
	movs r0, #0x00
	ldsh r2, [r7, r0]
	negs r0, r2
	muls r0, r1
	mov r3, r10
	movs r5, #0x00
	ldsh r1, [r3, r5]
	subs r1, r1, r2
	bl __divsi3
	adds r1, r0, r4
	cmp r1, #0x9F
	bhi _0801C082
	movs r0, #0x00
	mov r6, r10
	strh r0, [r6, #0x00]
	ldr r0, [sp, #0x020]
	strh r1, [r0, #0x00]
	b _0801C100
_0801C044:
	movs r0, #0x02
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0801C082
	ldr r2, [sp, #0x020]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	mov r5, r8
	movs r6, #0x00
	ldsh r4, [r5, r6]
	subs r1, r1, r4
	movs r0, #0x00
	ldsh r2, [r7, r0]
	movs r5, #0xEF
	subs r0, r5, r2
	muls r0, r1
	mov r3, r10
	movs r6, #0x00
	ldsh r1, [r3, r6]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0x9F
	bhi _0801C082
	mov r1, r10
	strh r5, [r1, #0x00]
	ldr r2, [sp, #0x020]
	strh r0, [r2, #0x00]
	b _0801C100
_0801C082:
	movs r0, #0x04
	mov r3, r9
	ands r0, r3
	cmp r0, #0x00
	beq _0801C0C0
	mov r5, r10
	movs r6, #0x00
	ldsh r1, [r5, r6]
	movs r0, #0x00
	ldsh r4, [r7, r0]
	subs r1, r1, r4
	mov r3, r8
	movs r5, #0x00
	ldsh r2, [r3, r5]
	negs r0, r2
	muls r0, r1
	ldr r6, [sp, #0x020]
	movs r3, #0x00
	ldsh r1, [r6, r3]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0xEF
	bls _0801C0B6
	b _0801BF18
_0801C0B6:
	mov r5, r10
	strh r0, [r5, #0x00]
	movs r0, #0x00
	strh r0, [r6, #0x00]
	b _0801C100
_0801C0C0:
	movs r0, #0x08
	mov r6, r9
	ands r6, r0
	cmp r6, #0x00
	bne _0801C0CC
	b _0801BF18
_0801C0CC:
	mov r0, r10
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r3, #0x00
	ldsh r4, [r7, r3]
	subs r1, r1, r4
	mov r5, r8
	movs r6, #0x00
	ldsh r2, [r5, r6]
	movs r5, #0x9F
	subs r0, r5, r2
	muls r0, r1
	ldr r3, [sp, #0x020]
	movs r6, #0x00
	ldsh r1, [r3, r6]
	subs r1, r1, r2
	bl __divsi3
	adds r0, r0, r4
	cmp r0, #0xEF
	bls _0801C0F8
	b _0801BF18
_0801C0F8:
	mov r1, r10
	strh r0, [r1, #0x00]
	ldr r2, [sp, #0x020]
	strh r5, [r2, #0x00]
_0801C100:
	movs r0, #0x01
_0801C102:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
