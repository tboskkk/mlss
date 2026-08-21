	.syntax unified
	.text

	thumb_func_start sub_818A580
sub_818A580:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r6}
	ldm r5!, {r7}
	ldr r0, [r4, #0x08]
	mov r9, r0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x018]
	mov r0, r9
	bl sub_80841B8
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x01C]
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x028]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x020]
	adds r0, #0x08
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x01C]
	mov r10, r1
_0818A5C4:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r0}
	str r0, [sp, #0x010]
	ldm r5!, {r0}
	str r0, [sp, #0x014]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818A5EC
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818A5E6
	adds r0, #0xFF
_0818A5E6:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818A5FC
_0818A5EC:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0818A5F8
	adds r0, #0xFF
_0818A5F8:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818A5FC:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818A60A
	adds r0, #0xFF
_0818A60A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818A61C
	adds r0, #0xFF
_0818A61C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x020]
	movs r3, #0x00
	bl sub_807FBD8
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x024]
	mov r1, r8
	bl sub_807C564
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	bne _0818A658
	ldr r0, _0818A6A8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x01C]
_0818A658:
	movs r1, #0x01
	negs r1, r1
	add r10, r1
	mov r0, r10
	cmp r0, #0x00
	bge _0818A5C4
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	beq _0818A672
	ldr r0, _0818A6A8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818A672:
	adds r6, r6, r7
	movs r0, #0xC0
	lsls r0, r0, #0x01
	cmp r6, r0
	ble _0818A67E
	subs r7, #0x01
_0818A67E:
	cmp r7, #0x00
	bge _0818A68A
	cmp r6, #0xFF
	bgt _0818A68A
	movs r6, #0x80
	lsls r6, r6, #0x01
_0818A68A:
	mov r0, r9
	strh r6, [r0, #0x04]
	strh r6, [r0, #0x06]
	ldr r5, [r4, #0x0C]
	stm r5!, {r6}
	str r7, [r5, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818A6A8: .4byte 0x03000D74
