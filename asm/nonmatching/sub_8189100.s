	.syntax unified
	.text

	thumb_func_start sub_8189100
sub_8189100:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r6}
	ldm r5!, {r0}
	mov r8, r0
	ldr r7, [r4, #0x08]
	ldr r0, [r7, #0x34]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	bl sub_80841B8
	mov r9, r0
	movs r1, #0x00
	str r1, [sp, #0x01C]
	ldr r0, [sp, #0x018]
	mov r1, r9
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x020]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x024]
	adds r0, #0x08
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x01C]
	mov r10, r1
_08189144:
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
	beq _0818916C
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08189166
	adds r0, #0xFF
_08189166:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818917C
_0818916C:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08189178
	adds r0, #0xFF
_08189178:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818917C:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818918A
	adds r0, #0xFF
_0818918A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818919C
	adds r0, #0xFF
_0818919C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x024]
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
	ldr r0, [sp, #0x028]
	mov r1, r9
	bl sub_807C564
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	bne _081891D8
	ldr r0, _08189218 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x01C]
_081891D8:
	movs r1, #0x01
	negs r1, r1
	add r10, r1
	mov r0, r10
	cmp r0, #0x00
	bge _08189144
	ldr r1, [sp, #0x01C]
	cmp r1, #0x00
	beq _081891F2
	ldr r0, _08189218 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081891F2:
	adds r6, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r6, r0
	ble _081891FE
	adds r6, r0, #0x0
_081891FE:
	movs r0, #0x10
	add r8, r0
	strh r6, [r7, #0x04]
	strh r6, [r7, #0x06]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818921C
	mov r1, r8
	negs r0, r1
	lsls r0, r0, #0x08
	b _08189220
_08189218: .4byte 0x03000D74
_0818921C:
	mov r1, r8
	lsls r0, r1, #0x08
_08189220:
	strh r0, [r7, #0x0C]
	ldr r5, [r4, #0x0C]
	stm r5!, {r6}
	mov r0, r8
	str r0, [r5, #0x00]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
