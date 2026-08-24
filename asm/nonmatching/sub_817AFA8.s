	.syntax unified
	.text

	thumb_func_start sub_817AFA8
sub_817AFA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r7, r0, #0x0
	ldr r0, [r7, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r9, r1
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	mov r10, r2
	ldr r3, [r7, #0x08]
	str r3, [sp, #0x01C]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r6, #0x00
	str r6, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x02C]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x030]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x034]
	movs r3, #0x07
	str r3, [sp, #0x028]
_0817B004:
	mov r6, r8
	ldm r6!, {r0}
	str r0, [sp, #0x00C]
	ldm r6!, {r1}
	str r1, [sp, #0x010]
	adds r6, #0x04
	mov r8, r6
	subs r6, #0x04
	ldm r6!, {r2}
	str r2, [sp, #0x014]
	mov r3, r9
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817B024
	adds r0, #0xFF
_0817B024:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0817B032
	adds r0, #0xFF
_0817B032:
	asrs r4, r0, #0x08
	str r4, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0817B040
	adds r0, #0xFF
_0817B040:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r4, #0x0
	ldr r0, _0817B0CC @ =0x08198584
	adds r0, #0x80
	mov r12, r0
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _0817B056
	adds r0, #0x3F
_0817B056:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r3, _0817B0D0 @ =0x08198584
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, #0x00
	bge _0817B066
	adds r0, #0x3F
_0817B066:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817B072
	adds r0, #0xFF
_0817B072:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r1, r12
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _0817B082
	adds r0, #0x3F
_0817B082:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r2, _0817B0D0 @ =0x08198584
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _0817B094
	adds r0, #0x3F
_0817B094:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817B0A0
	adds r0, #0xFF
_0817B0A0:
	asrs r1, r0, #0x08
	ldr r2, _0817B0D4 @ =0xFFFFF400
	adds r0, r3, r2
	str r0, [sp, #0x010]
	ldr r3, _0817B0D8 @ =0xFFFFFF00
	adds r1, r1, r3
	str r1, [sp, #0x014]
	ldrb r1, [r7, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817B0DC
	movs r6, #0x12
	ldsh r1, [r7, r6]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0817B0C4
	adds r0, #0xFF
_0817B0C4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817B0EC
	.byte 0x00, 0x00
_0817B0CC: .4byte word_8198584 @ =0x08198584
_0817B0D0: .4byte word_8198584 @ =0x08198584
_0817B0D4: .4byte 0xFFFFF400
_0817B0D8: .4byte 0xFFFFFF00
_0817B0DC:
	movs r0, #0x12
	ldsh r1, [r7, r0]
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0817B0E8
	adds r0, #0xFF
_0817B0E8:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817B0EC:
	str r0, [sp, #0x00C]
	movs r2, #0x14
	ldsh r1, [r7, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817B0FA
	adds r0, #0xFF
_0817B0FA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r3, #0x16
	ldsh r1, [r7, r3]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817B10C
	adds r0, #0xFF
_0817B10C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x02C]
	ldr r2, [sp, #0x030]
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
	ldr r0, [sp, #0x034]
	ldr r1, [sp, #0x020]
	bl sub_807C564
	ldr r6, [sp, #0x024]
	cmp r6, #0x00
	bne _0817B148
	ldr r0, _0817B19C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	str r0, [sp, #0x024]
_0817B148:
	ldr r1, [sp, #0x028]
	subs r1, #0x01
	str r1, [sp, #0x028]
	cmp r1, #0x00
	blt _0817B154
	b _0817B004
_0817B154:
	ldr r2, [sp, #0x024]
	cmp r2, #0x00
	beq _0817B162
	ldr r0, _0817B19C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817B162:
	add r9, r10
	mov r3, r10
	lsls r0, r3, #0x03
	subs r0, r0, r3
	cmp r0, #0x00
	bge _0817B170
	adds r0, #0x07
_0817B170:
	asrs r0, r0, #0x03
	mov r10, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r6, [sp, #0x01C]
	strh r0, [r6, #0x04]
	strh r0, [r6, #0x06]
	ldr r7, [r7, #0x0C]
	mov r8, r7
	mov r0, r9
	mov r1, r8
	stm r1!, {r0}
	mov r2, r10
	str r2, [r1, #0x00]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817B19C: .4byte 0x03000D74
