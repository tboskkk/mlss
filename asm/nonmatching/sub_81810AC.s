	.syntax unified
	.text

	thumb_func_start sub_81810AC
sub_81810AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	mov r9, r0
	ldr r0, [r0, #0x0C]
	ldm r0!, {r1}
	mov r8, r1
	str r0, [sp, #0x01C]
	mov r2, r9
	ldr r0, [r2, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x020]
	movs r3, #0x00
	str r3, [sp, #0x024]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x020]
	bl sub_807F9A8
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x030]
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x034]
	mov r6, sp
	adds r6, #0x18
	str r6, [sp, #0x038]
	mov r0, r8
	lsls r0, r0, #0x01
	str r0, [sp, #0x02C]
	movs r1, #0x09
	str r1, [sp, #0x028]
_081810F8:
	ldr r2, [sp, #0x01C]
	ldm r2!, {r1}
	str r1, [sp, #0x00C]
	ldm r2!, {r3}
	str r3, [sp, #0x010]
	ldm r2!, {r4}
	str r2, [sp, #0x01C]
	str r4, [sp, #0x014]
	ldr r0, [sp, #0x02C]
	add r0, r8
	lsls r0, r0, #0x05
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r2, r0, r5
	adds r0, r1, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _0818111E
	adds r0, #0xFF
_0818111E:
	asrs r1, r0, #0x08
	str r1, [sp, #0x00C]
	adds r0, r3, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _0818112C
	adds r0, #0xFF
_0818112C:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _0818113C
	adds r0, #0xFF
_0818113C:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r3, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x02C]
	ands r0, r6
	lsls r2, r0, #0x01
	ldr r0, _0818129C @ =0x08198584
	adds r5, r2, r0
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _08181158
	adds r0, #0x3F
_08181158:
	asrs r0, r0, #0x06
	muls r3, r0
	ldr r0, _081812A0 @ =0x08198504
	mov r10, r0
	add r2, r10
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _0818116C
	adds r0, #0x3F
_0818116C:
	asrs r0, r0, #0x06
	muls r0, r1
	subs r0, r3, r0
	cmp r0, #0x00
	bge _08181178
	adds r0, #0xFF
_08181178:
	asrs r6, r0, #0x08
	str r6, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _08181186
	adds r0, #0x3F
_08181186:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08181194
	adds r0, #0x3F
_08181194:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081811A0
	adds r0, #0xFF
_081811A0:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r2, r12
	movs r0, #0xFF
	mov r1, r8
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _0818129C @ =0x08198584
	adds r4, r1, r3
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _081811BC
	adds r0, #0x3F
_081811BC:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r0, r10
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _081811CE
	adds r0, #0x3F
_081811CE:
	asrs r0, r0, #0x06
	muls r0, r6
	subs r0, r2, r0
	cmp r0, #0x00
	bge _081811DA
	adds r0, #0xFF
_081811DA:
	asrs r5, r0, #0x08
	str r5, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _081811E8
	adds r0, #0x3F
_081811E8:
	asrs r0, r0, #0x06
	adds r1, r6, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081811F8
	adds r0, #0x3F
_081811F8:
	asrs r0, r0, #0x06
	mov r6, r12
	muls r6, r0
	adds r0, r6, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08181208
	adds r0, #0xFF
_08181208:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	mov r0, r8
	cmp r0, #0x00
	bge _08181216
	adds r0, #0x03
_08181216:
	asrs r0, r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r0, _0818129C @ =0x08198584
	adds r4, r1, r0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	bge _0818122C
	adds r0, #0x3F
_0818122C:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r6, r10
	adds r3, r1, r6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0818123E
	adds r0, #0x3F
_0818123E:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0818124A
	adds r0, #0xFF
_0818124A:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08181258
	adds r0, #0x3F
_08181258:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _08181268
	adds r0, #0x3F
_08181268:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08181274
	adds r0, #0xFF
_08181274:
	asrs r0, r0, #0x08
	ldr r5, _081812A4 @ =0xFFFFF800
	adds r0, r0, r5
	str r0, [sp, #0x010]
	mov r6, r9
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081812A8
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08181294
	adds r0, #0xFF
_08181294:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081812BA
	.byte 0x00, 0x00
_0818129C: .4byte 0x08198584
_081812A0: .4byte 0x08198504
_081812A4: .4byte 0xFFFFF800
_081812A8:
	mov r3, r9
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081812B6
	adds r0, #0xFF
_081812B6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081812BA:
	str r0, [sp, #0x00C]
	mov r5, r9
	movs r6, #0x14
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081812CA
	adds r0, #0xFF
_081812CA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r0, r9
	movs r2, #0x16
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _081812DE
	adds r0, #0xFF
_081812DE:
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
	ldr r1, [sp, #0x020]
	bl sub_807C564
	ldr r3, [sp, #0x024]
	cmp r3, #0x00
	bne _0818131A
	ldr r0, _08181350 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r4, #0x01
	str r4, [sp, #0x024]
_0818131A:
	ldr r5, [sp, #0x028]
	subs r5, #0x01
	str r5, [sp, #0x028]
	cmp r5, #0x00
	blt _08181326
	b _081810F8
_08181326:
	ldr r6, [sp, #0x024]
	cmp r6, #0x00
	beq _08181334
	ldr r0, _08181350 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08181334:
	movs r0, #0x02
	add r8, r0
	mov r1, r9
	ldr r1, [r1, #0x0C]
	mov r2, r8
	str r2, [r1, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08181350: .4byte 0x03000D74
