	.syntax unified
	.text

	thumb_func_start sub_818DB20
sub_818DB20:
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
	movs r2, #0x04
	str r2, [sp, #0x034]
_0818DB74:
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
	bge _0818DB8C
	adds r0, #0xFF
_0818DB8C:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _0818DB9A
	adds r0, #0xFF
_0818DB9A:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _0818DBAA
	adds r0, #0xFF
_0818DBAA:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x020]
	ands r0, r6
	lsls r1, r0, #0x01
	ldr r0, _0818DC94 @ =0x08198584
	adds r6, r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _0818DBC6
	adds r0, #0x3F
_0818DBC6:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _0818DC98 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0818DBDA
	adds r0, #0x3F
_0818DBDA:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818DBE6
	adds r0, #0xFF
_0818DBE6:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0818DBF4
	adds r0, #0x3F
_0818DBF4:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _0818DC04
	adds r0, #0x3F
_0818DC04:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818DC10
	adds r0, #0xFF
_0818DC10:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _0818DC94 @ =0x08198584
	adds r5, #0x80
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _0818DC24
	adds r0, #0x3F
_0818DC24:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r10
	adds r4, #0x80
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _0818DC36
	adds r0, #0x3F
_0818DC36:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0818DC42
	adds r0, #0xFF
_0818DC42:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _0818DC50
	adds r0, #0x3F
_0818DC50:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0818DC60
	adds r0, #0x3F
_0818DC60:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0818DC70
	adds r0, #0xFF
_0818DC70:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0818DC9C
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818DC8C
	adds r0, #0xFF
_0818DC8C:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0818DCAE
	.byte 0x00, 0x00
_0818DC94: .4byte word_8198584 @ =0x08198584
_0818DC98: .4byte word_8198504 @ =0x08198504
_0818DC9C:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0818DCAA
	adds r0, #0xFF
_0818DCAA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0818DCAE:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0818DCBE
	adds r0, #0xFF
_0818DCBE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r6, #0x16
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0818DCD2
	adds r0, #0xFF
_0818DCD2:
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
	bne _0818DD0E
	ldr r0, _0818DD70 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x030]
_0818DD0E:
	ldr r2, [sp, #0x034]
	subs r2, #0x01
	str r2, [sp, #0x034]
	cmp r2, #0x00
	blt _0818DD1A
	b _0818DB74
_0818DD1A:
	ldr r3, [sp, #0x030]
	cmp r3, #0x00
	beq _0818DD28
	ldr r0, _0818DD70 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818DD28:
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
_0818DD70: .4byte 0x03000D74
