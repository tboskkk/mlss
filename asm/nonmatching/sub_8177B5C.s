	.syntax unified
	.text

	thumb_func_start sub_8177B5C
sub_8177B5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x048
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
	ldm r7!, {r4}
	str r4, [sp, #0x028]
	mov r5, r8
	ldr r5, [r5, #0x08]
	str r5, [sp, #0x02C]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x018]
	adds r0, r5, #0x0
	bl sub_80841B8
	str r0, [sp, #0x030]
	movs r6, #0x00
	str r6, [sp, #0x034]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x030]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x03C]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x040]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x044]
	movs r3, #0x05
	str r3, [sp, #0x038]
_08177BB4:
	ldm r7!, {r0}
	str r0, [sp, #0x00C]
	ldm r7!, {r1}
	str r1, [sp, #0x010]
	ldm r7!, {r2}
	str r2, [sp, #0x014]
	mov r4, r9
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08177BCC
	adds r0, #0xFF
_08177BCC:
	asrs r5, r0, #0x08
	str r5, [sp, #0x00C]
	mov r0, r9
	muls r0, r1
	cmp r0, #0x00
	bge _08177BDA
	adds r0, #0xFF
_08177BDA:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	mov r0, r9
	muls r0, r2
	cmp r0, #0x00
	bge _08177BEA
	adds r0, #0xFF
_08177BEA:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r2, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x024]
	ands r0, r6
	lsls r1, r0, #0x01
	ldr r0, _08177CD4 @ =0x08198584
	adds r6, r1, r0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	cmp r0, #0x00
	bge _08177C06
	adds r0, #0x3F
_08177C06:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08177CD8 @ =0x08198504
	mov r10, r0
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08177C1A
	adds r0, #0x3F
_08177C1A:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08177C26
	adds r0, #0xFF
_08177C26:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _08177C34
	adds r0, #0x3F
_08177C34:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08177C44
	adds r0, #0x3F
_08177C44:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08177C50
	adds r0, #0xFF
_08177C50:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _08177CD4 @ =0x08198584
	adds r5, #0x40
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _08177C64
	adds r0, #0x3F
_08177C64:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r10
	adds r4, #0x40
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08177C76
	adds r0, #0x3F
_08177C76:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08177C82
	adds r0, #0xFF
_08177C82:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08177C90
	adds r0, #0x3F
_08177C90:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _08177CA0
	adds r0, #0x3F
_08177CA0:
	asrs r0, r0, #0x06
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08177CB0
	adds r0, #0xFF
_08177CB0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	mov r5, r8
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08177CDC
	movs r6, #0x12
	ldsh r1, [r5, r6]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08177CCC
	adds r0, #0xFF
_08177CCC:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08177CEE
	.byte 0x00, 0x00
_08177CD4: .4byte word_8198584 @ =0x08198584
_08177CD8: .4byte word_8198504 @ =0x08198504
_08177CDC:
	mov r0, r8
	movs r2, #0x12
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08177CEA
	adds r0, #0xFF
_08177CEA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08177CEE:
	str r0, [sp, #0x00C]
	mov r3, r8
	movs r4, #0x14
	ldsh r1, [r3, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08177CFE
	adds r0, #0xFF
_08177CFE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r6, #0x16
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08177D12
	adds r0, #0xFF
_08177D12:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x03C]
	ldr r2, [sp, #0x040]
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
	ldr r0, [sp, #0x044]
	ldr r1, [sp, #0x030]
	bl sub_807C564
	ldr r0, [sp, #0x034]
	cmp r0, #0x00
	bne _08177D4E
	ldr r0, _08177DC8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x034]
_08177D4E:
	ldr r2, [sp, #0x038]
	subs r2, #0x01
	str r2, [sp, #0x038]
	cmp r2, #0x00
	blt _08177D5A
	b _08177BB4
_08177D5A:
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	beq _08177D68
	ldr r0, _08177DC8 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08177D68:
	ldr r4, [sp, #0x01C]
	add r9, r4
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x0B
	bl __divsi3
	str r0, [sp, #0x01C]
	ldr r5, [sp, #0x024]
	adds r5, #0x06
	str r5, [sp, #0x024]
	mov r6, sp
	ldrh r0, [r6, #0x20]
	ldr r6, [sp, #0x02C]
	strh r0, [r6, #0x04]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r6, #0x06]
	ldr r2, [sp, #0x028]
	adds r2, #0x01
	str r2, [sp, #0x028]
	cmp r2, #0x0A
	ble _08177D9E
	ldr r3, [sp, #0x020]
	subs r3, #0x20
	str r3, [sp, #0x020]
_08177D9E:
	mov r4, r8
	ldr r7, [r4, #0x0C]
	mov r5, r9
	stm r7!, {r5}
	ldr r6, [sp, #0x01C]
	stm r7!, {r6}
	ldr r0, [sp, #0x020]
	stm r7!, {r0}
	ldr r1, [sp, #0x024]
	stm r7!, {r1}
	ldr r2, [sp, #0x028]
	str r2, [r7, #0x00]
	add sp, #0x048
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08177DC8: .4byte 0x03000D74
