	.syntax unified
	.text

	thumb_func_start sub_817DDB0
sub_817DDB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	mov r8, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r10, r1
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r8
	ldr r3, [r3, #0x08]
	str r3, [sp, #0x020]
	ldr r0, [r3, #0x34]
	str r0, [sp, #0x018]
	adds r0, r3, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r4, #0x00
	str r4, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x034]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x038]
	movs r3, #0x0B
	str r3, [sp, #0x02C]
_0817DE0E:
	mov r4, r9
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r9, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0817DE2E
	adds r0, #0xFF
_0817DE2E:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _0817DE3C
	adds r0, #0xFF
_0817DE3C:
	asrs r5, r0, #0x08
	str r5, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _0817DE4A
	adds r0, #0xFF
_0817DE4A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r2, #0x0
	ldr r7, _0817DF18 @ =0x08198584
	movs r4, #0x20
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _0817DE5C
	adds r0, #0x3F
_0817DE5C:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _0817DF1C @ =0x08198504
	movs r4, #0x20
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _0817DE6C
	adds r0, #0x3F
_0817DE6C:
	asrs r0, r0, #0x06
	muls r0, r3
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817DE78
	adds r0, #0xFF
_0817DE78:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	movs r1, #0x20
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _0817DE86
	adds r0, #0x3F
_0817DE86:
	asrs r0, r0, #0x06
	adds r1, r3, #0x0
	muls r1, r0
	movs r3, #0x20
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0817DE96
	adds r0, #0x3F
_0817DE96:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817DEA2
	adds r0, #0xFF
_0817DEA2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	adds r1, r5, #0x0
	movs r3, #0x18
	ldsh r0, [r7, r3]
	cmp r0, #0x00
	bge _0817DEB2
	adds r0, #0x3F
_0817DEB2:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r3, #0x18
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0817DEC0
	adds r0, #0x3F
_0817DEC0:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817DECC
	adds r0, #0xFF
_0817DECC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x18
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _0817DEDA
	adds r0, #0x3F
_0817DEDA:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r3, #0x18
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0817DEEA
	adds r0, #0x3F
_0817DEEA:
	asrs r0, r0, #0x06
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817DEF6
	adds r0, #0xFF
_0817DEF6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r4, r8
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817DF20
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817DF12
	adds r0, #0xFF
_0817DF12:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817DF32
_0817DF18: .4byte word_8198584 @ =0x08198584
_0817DF1C: .4byte word_8198504 @ =0x08198504
_0817DF20:
	mov r3, r8
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817DF2E
	adds r0, #0xFF
_0817DF2E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817DF32:
	str r0, [sp, #0x00C]
	mov r0, r8
	movs r2, #0x14
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817DF42
	adds r0, #0xFF
_0817DF42:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r3, r8
	movs r4, #0x16
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817DF56
	adds r0, #0xFF
_0817DF56:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x030]
	ldr r2, [sp, #0x034]
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
	ldr r0, [sp, #0x038]
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _0817DF92
	ldr r0, _0817DFE8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x028]
_0817DF92:
	ldr r2, [sp, #0x02C]
	subs r2, #0x01
	str r2, [sp, #0x02C]
	cmp r2, #0x00
	blt _0817DF9E
	b _0817DE0E
_0817DF9E:
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	beq _0817DFAC
	ldr r0, _0817DFE8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817DFAC:
	ldr r4, [sp, #0x01C]
	add r10, r4
	lsls r0, r4, #0x03
	adds r0, r0, r4
	movs r1, #0x0A
	bl __divsi3
	str r0, [sp, #0x01C]
	movs r0, #0xA0
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x020]
	strh r0, [r1, #0x04]
	strh r0, [r1, #0x06]
	mov r2, r8
	ldr r2, [r2, #0x0C]
	mov r9, r2
	mov r3, r10
	mov r4, r9
	stm r4!, {r3}
	ldr r0, [sp, #0x01C]
	str r0, [r4, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0817DFE8: .4byte 0x03000D74
