	.syntax unified
	.text

	thumb_func_start sub_818FE68
sub_818FE68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	mov r8, r0
	ldr r7, [r0, #0x0C]
	ldm r7!, {r0}
	mov r9, r0
	ldm r7!, {r1}
	str r1, [sp, #0x01C]
	ldm r7!, {r2}
	str r2, [sp, #0x020]
	ldm r7!, {r3}
	str r3, [sp, #0x024]
	mov r4, r8
	ldr r4, [r4, #0x08]
	str r4, [sp, #0x028]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x018]
	adds r0, r4, #0x0
	bl sub_80841B8
	str r0, [sp, #0x02C]
	movs r5, #0x00
	str r5, [sp, #0x030]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x02C]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x038]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x03C]
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0x040]
	movs r2, #0x03
	str r2, [sp, #0x034]
_0818FEBC:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	mov r3, r9
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818FED4
	adds r0, #0xFF
_0818FED4:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0818FEE2
	adds r0, #0xFF
_0818FEE2:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0818FEF2
	adds r0, #0xFF
_0818FEF2:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x020]
	ands r0, r6
	lsls r1, r0, #0x01
	ldr r0, _0818FFDC @ =0x08198584
	adds r6, r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0818FF0E
	adds r0, #0x3F
_0818FF0E:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0818FFE0 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0818FF22
	adds r0, #0x3F
_0818FF22:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818FF2E
	adds r0, #0xFF
_0818FF2E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0818FF3C
	adds r0, #0x3F
_0818FF3C:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0818FF4C
	adds r0, #0x3F
_0818FF4C:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818FF58
	adds r0, #0xFF
_0818FF58:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _0818FFDC @ =0x08198584
	adds r5, #0x80
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _0818FF6C
	adds r0, #0x3F
_0818FF6C:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r10
	adds r4, #0x80
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _0818FF7E
	adds r0, #0x3F
_0818FF7E:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818FF8A
	adds r0, #0xFF
_0818FF8A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0818FF98
	adds r0, #0x3F
_0818FF98:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0818FFA8
	adds r0, #0x3F
_0818FFA8:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818FFB8
	adds r0, #0xFF
_0818FFB8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818FFE4
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818FFD4
	adds r0, #0xFF
_0818FFD4:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818FFF6
	.byte 0x00, 0x00
_0818FFDC: .4byte 0x08198584
_0818FFE0: .4byte 0x08198504
_0818FFE4:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818FFF2
	adds r0, #0xFF
_0818FFF2:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818FFF6:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08190006
	adds r0, #0xFF
_08190006:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r6, #0x16
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0819001A
	adds r0, #0xFF
_0819001A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x038]
	ldr r2, [sp, #0x03C]
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
	ldr r0, [sp, #0x040]
	ldr r1, [sp, #0x02C]
	bl sub_807C564
	ldr r0, [sp, #0x030]
	cmp r0, #0x00
	bne _08190056
	ldr r0, _081900B8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x030]
_08190056:
	ldr r2, [sp, #0x034]
	subs r2, #0x01
	str r2, [sp, #0x034]
	cmp r2, #0x00
	blt _08190062
	b _0818FEBC
_08190062:
	ldr r3, [sp, #0x030]
	cmp r3, #0x00
	beq _08190070
	ldr r0, _081900B8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08190070:
	ldr r4, [sp, #0x01C]
	add r9, r4
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x07
	bl __divsi3
	str r0, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	subs r5, #0x04
	ldr r6, [sp, #0x024]
	subs r6, #0x06
	str r6, [sp, #0x024]
	ldr r0, [sp, #0x028]
	strh r6, [r0, #0x04]
	mov r1, sp
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x06]
	mov r2, r8
	ldr r7, [r2, #0x0C]
	mov r3, r9
	stm r7!, {r3}
	ldr r4, [sp, #0x01C]
	stm r7!, {r4}
	stm r7!, {r5}
	ldr r5, [sp, #0x024]
	str r5, [r7, #0x00]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081900B8: .4byte 0x03000D74
