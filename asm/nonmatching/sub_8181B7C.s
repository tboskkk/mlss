	.syntax unified
	.text

	thumb_func_start sub_8181B7C
sub_8181B7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x01C]
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x024]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x028]
	movs r5, #0x00
	str r5, [sp, #0x02C]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x028]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x034]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x038]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x03C]
	movs r3, #0x01
	str r3, [sp, #0x030]
_08181BE2:
	mov r4, r8
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r8, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	ldr r5, [sp, #0x01C]
	muls r0, r5
	cmp r0, #0x00
	bge _08181C00
	adds r0, #0xFF
_08181C00:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x01C]
	adds r0, r1, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _08181C10
	adds r0, #0xFF
_08181C10:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	ldr r4, [sp, #0x01C]
	adds r0, r2, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08181C22
	adds r0, #0xFF
_08181C22:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r1, [sp, #0x020]
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _08181D14 @ =0x08198584
	adds r6, r1, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08181C3E
	adds r0, #0x3F
_08181C3E:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08181D18 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08181C52
	adds r0, #0x3F
_08181C52:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08181C5E
	adds r0, #0xFF
_08181C5E:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08181C6C
	adds r0, #0x3F
_08181C6C:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08181C7C
	adds r0, #0x3F
_08181C7C:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08181C88
	adds r0, #0xFF
_08181C88:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r2, _08181D14 @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r2, r4]
	cmp r0, #0x00
	bge _08181C9A
	adds r0, #0x3F
_08181C9A:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r5, r10
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08181CAA
	adds r0, #0x3F
_08181CAA:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08181CB6
	adds r0, #0xFF
_08181CB6:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r4, _08181D14 @ =0x08198584
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08181CC6
	adds r0, #0x3F
_08181CC6:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r4, r10
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08181CD8
	adds r0, #0x3F
_08181CD8:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08181CE8
	adds r0, #0xFF
_08181CE8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x020]
	adds r0, r2, r5
	str r0, [sp, #0x010]
	mov r0, r9
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08181D1C
	mov r2, r9
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08181D0C
	adds r0, #0xFF
_08181D0C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08181D2E
	.byte 0x00, 0x00
_08181D14: .4byte 0x08198584
_08181D18: .4byte 0x08198504
_08181D1C:
	mov r5, r9
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08181D2A
	adds r0, #0xFF
_08181D2A:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08181D2E:
	str r0, [sp, #0x00C]
	mov r2, r9
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08181D3E
	adds r0, #0xFF
_08181D3E:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r9
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08181D52
	adds r0, #0xFF
_08181D52:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x034]
	ldr r2, [sp, #0x038]
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
	ldr r0, [sp, #0x03C]
	ldr r1, [sp, #0x028]
	bl sub_807C564
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _08181D8E
	ldr r0, _08181DE0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x02C]
_08181D8E:
	ldr r2, [sp, #0x030]
	subs r2, #0x01
	str r2, [sp, #0x030]
	cmp r2, #0x00
	blt _08181D9A
	b _08181BE2
_08181D9A:
	ldr r3, [sp, #0x02C]
	cmp r3, #0x00
	beq _08181DA8
	ldr r0, _08181DE0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08181DA8:
	ldr r4, [sp, #0x020]
	ldr r5, [sp, #0x024]
	adds r4, r4, r5
	str r4, [sp, #0x020]
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08181DB8
	adds r0, #0x7F
_08181DB8:
	asrs r0, r0, #0x07
	ldr r1, [sp, #0x024]
	subs r1, r1, r0
	mov r2, r9
	ldr r2, [r2, #0x0C]
	mov r8, r2
	ldr r3, [sp, #0x01C]
	mov r4, r8
	stm r4!, {r3}
	ldr r5, [sp, #0x020]
	stm r4!, {r5}
	str r1, [r4, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08181DE0: .4byte 0x03000D74
