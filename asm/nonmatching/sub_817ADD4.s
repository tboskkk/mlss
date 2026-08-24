	.syntax unified
	.text

	thumb_func_start sub_817ADD4
sub_817ADD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r5, r0, #0x0
	ldr r0, [r5, #0x0C]
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
	ldr r0, [r5, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x01C]
	movs r3, #0x00
	str r3, [sp, #0x020]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x01C]
	bl sub_807F9A8
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x028]
	mov r7, sp
	adds r7, #0x14
	str r7, [sp, #0x02C]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x030]
	movs r1, #0x01
	str r1, [sp, #0x024]
_0817AE2C:
	mov r2, r8
	ldm r2!, {r0}
	str r0, [sp, #0x00C]
	ldm r2!, {r1}
	str r1, [sp, #0x010]
	adds r3, r2, #0x0
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldm r3!, {r2}
	str r2, [sp, #0x014]
	mov r6, r9
	muls r6, r0
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0817AE4E
	adds r0, #0xFF
_0817AE4E:
	asrs r4, r0, #0x08
	str r4, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0817AE5C
	adds r0, #0xFF
_0817AE5C:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0817AE6A
	adds r0, #0xFF
_0817AE6A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r7, _0817AEE8 @ =0x08198584
	mov r12, r7
	mov r6, r12
	movs r7, #0x18
	ldsh r0, [r6, r7]
	cmp r0, #0x00
	bge _0817AE80
	adds r0, #0x3F
_0817AE80:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r6, _0817AEEC @ =0x08198504
	movs r7, #0x18
	ldsh r0, [r6, r7]
	cmp r0, #0x00
	bge _0817AE90
	adds r0, #0x3F
_0817AE90:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817AE9C
	adds r0, #0xFF
_0817AE9C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	mov r1, r12
	movs r7, #0x18
	ldsh r0, [r1, r7]
	cmp r0, #0x00
	bge _0817AEAC
	adds r0, #0x3F
_0817AEAC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x18
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0817AEBC
	adds r0, #0x3F
_0817AEBC:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817AEC8
	adds r0, #0xFF
_0817AEC8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817AEF0
	movs r3, #0x12
	ldsh r1, [r5, r3]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0817AEE2
	adds r0, #0xFF
_0817AEE2:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817AF00
_0817AEE8: .4byte 0x08198584
_0817AEEC: .4byte 0x08198504
_0817AEF0:
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0817AEFC
	adds r0, #0xFF
_0817AEFC:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817AF00:
	str r0, [sp, #0x00C]
	movs r7, #0x14
	ldsh r1, [r5, r7]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817AF0E
	adds r0, #0xFF
_0817AF0E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817AF20
	adds r0, #0xFF
_0817AF20:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x028]
	ldr r2, [sp, #0x02C]
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
	ldr r0, [sp, #0x030]
	ldr r1, [sp, #0x01C]
	bl sub_807C564
	ldr r1, [sp, #0x020]
	cmp r1, #0x00
	bne _0817AF5C
	ldr r0, _0817AFA4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x020]
_0817AF5C:
	ldr r3, [sp, #0x024]
	subs r3, #0x01
	str r3, [sp, #0x024]
	cmp r3, #0x00
	blt _0817AF68
	b _0817AE2C
_0817AF68:
	ldr r6, [sp, #0x020]
	cmp r6, #0x00
	beq _0817AF76
	ldr r0, _0817AFA4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817AF76:
	add r9, r10
	mov r7, r10
	lsls r0, r7, #0x02
	movs r1, #0x05
	bl __divsi3
	mov r10, r0
	ldr r5, [r5, #0x0C]
	mov r8, r5
	mov r0, r9
	mov r1, r8
	stm r1!, {r0}
	mov r2, r10
	str r2, [r1, #0x00]
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0817AFA4: .4byte 0x03000D74
