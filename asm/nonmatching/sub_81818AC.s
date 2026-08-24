	.syntax unified
	.text

	thumb_func_start sub_81818AC
sub_81818AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	mov r9, r0
	ldr r0, [r0, #0x0C]
	ldm r0!, {r1}
	mov r8, r1
	str r0, [sp, #0x01C]
	mov r2, r9
	ldr r2, [r2, #0x08]
	str r2, [sp, #0x020]
	ldr r0, [r2, #0x34]
	str r0, [sp, #0x018]
	adds r0, r2, #0x0
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r3, #0x00
	str r3, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x034]
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x038]
	mov r6, sp
	adds r6, #0x18
	str r6, [sp, #0x03C]
	mov r0, r8
	lsls r0, r0, #0x01
	str r0, [sp, #0x030]
	movs r1, #0x07
	str r1, [sp, #0x02C]
_081818FC:
	ldr r2, [sp, #0x01C]
	ldm r2!, {r1}
	str r1, [sp, #0x00C]
	ldm r2!, {r3}
	str r3, [sp, #0x010]
	ldm r2!, {r4}
	str r2, [sp, #0x01C]
	str r4, [sp, #0x014]
	ldr r0, [sp, #0x030]
	add r0, r8
	lsls r0, r0, #0x05
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r2, r0, r5
	adds r0, r1, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08181922
	adds r0, #0xFF
_08181922:
	asrs r1, r0, #0x08
	str r1, [sp, #0x00C]
	adds r0, r3, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08181930
	adds r0, #0xFF
_08181930:
	asrs r0, r0, #0x08
	mov r12, r0
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08181940
	adds r0, #0xFF
_08181940:
	asrs r4, r0, #0x08
	str r4, [sp, #0x014]
	adds r3, r4, #0x0
	movs r0, #0xFF
	ldr r6, [sp, #0x030]
	ands r0, r6
	lsls r2, r0, #0x01
	ldr r0, _08181AA0 @ =0x08198584
	adds r5, r2, r0
	movs r6, #0x00
	ldsh r0, [r5, r6]
	cmp r0, #0x00
	bge _0818195C
	adds r0, #0x3F
_0818195C:
	asrs r0, r0, #0x06
	muls r3, r0
	ldr r0, _08181AA4 @ =0x08198504
	mov r10, r0
	add r2, r10
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	bge _08181970
	adds r0, #0x3F
_08181970:
	asrs r0, r0, #0x06
	muls r0, r1
	subs r0, r3, r0
	cmp r0, #0x00
	bge _0818197C
	adds r0, #0xFF
_0818197C:
	asrs r6, r0, #0x08
	str r6, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x00
	bge _0818198A
	adds r0, #0x3F
_0818198A:
	asrs r0, r0, #0x06
	muls r1, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08181998
	adds r0, #0x3F
_08181998:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _081819A4
	adds r0, #0xFF
_081819A4:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r2, r12
	movs r0, #0xFF
	mov r1, r8
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r3, _08181AA0 @ =0x08198584
	adds r4, r1, r3
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _081819C0
	adds r0, #0x3F
_081819C0:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r0, r10
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _081819D2
	adds r0, #0x3F
_081819D2:
	asrs r0, r0, #0x06
	muls r0, r6
	subs r0, r2, r0
	cmp r0, #0x00
	bge _081819DE
	adds r0, #0xFF
_081819DE:
	asrs r5, r0, #0x08
	str r5, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _081819EC
	adds r0, #0x3F
_081819EC:
	asrs r0, r0, #0x06
	adds r1, r6, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _081819FC
	adds r0, #0x3F
_081819FC:
	asrs r0, r0, #0x06
	mov r6, r12
	muls r6, r0
	adds r0, r6, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08181A0C
	adds r0, #0xFF
_08181A0C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	mov r0, r8
	cmp r0, #0x00
	bge _08181A1A
	adds r0, #0x03
_08181A1A:
	asrs r0, r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r0, _08181AA0 @ =0x08198584
	adds r4, r1, r0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	bge _08181A30
	adds r0, #0x3F
_08181A30:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r6, r10
	adds r3, r1, r6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _08181A42
	adds r0, #0x3F
_08181A42:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08181A4E
	adds r0, #0xFF
_08181A4E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, #0x00
	bge _08181A5C
	adds r0, #0x3F
_08181A5C:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _08181A6C
	adds r0, #0x3F
_08181A6C:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08181A78
	adds r0, #0xFF
_08181A78:
	asrs r0, r0, #0x08
	ldr r5, _08181AA8 @ =0xFFFFF400
	adds r0, r0, r5
	str r0, [sp, #0x010]
	mov r6, r9
	ldrb r1, [r6, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08181AAC
	movs r0, #0x12
	ldsh r1, [r6, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08181A98
	adds r0, #0xFF
_08181A98:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08181ABE
	.byte 0x00, 0x00
_08181AA0: .4byte word_8198584 @ =0x08198584
_08181AA4: .4byte word_8198504 @ =0x08198504
_08181AA8: .4byte 0xFFFFF400
_08181AAC:
	mov r3, r9
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08181ABA
	adds r0, #0xFF
_08181ABA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08181ABE:
	str r0, [sp, #0x00C]
	mov r5, r9
	movs r6, #0x14
	ldsh r1, [r5, r6]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08181ACE
	adds r0, #0xFF
_08181ACE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r0, r9
	movs r2, #0x16
	ldsh r1, [r0, r2]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08181AE2
	adds r0, #0xFF
_08181AE2:
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
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	bne _08181B1E
	ldr r0, _08181B50 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r4, #0x01
	str r4, [sp, #0x028]
_08181B1E:
	ldr r5, [sp, #0x02C]
	subs r5, #0x01
	str r5, [sp, #0x02C]
	cmp r5, #0x00
	blt _08181B2A
	b _081818FC
_08181B2A:
	ldr r6, [sp, #0x028]
	cmp r6, #0x00
	beq _08181B38
	ldr r0, _08181B50 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08181B38:
	movs r0, #0x02
	add r8, r0
	mov r2, r9
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08181B54
	mov r3, r8
	negs r0, r3
	lsls r0, r0, #0x09
	b _08181B58
_08181B50: .4byte 0x03000D74
_08181B54:
	mov r4, r8
	lsls r0, r4, #0x09
_08181B58:
	ldr r5, [sp, #0x020]
	strh r0, [r5, #0x0C]
	movs r0, #0xF8
	lsls r0, r0, #0x01
	strh r0, [r5, #0x04]
	strh r0, [r5, #0x06]
	mov r6, r9
	ldr r6, [r6, #0x0C]
	mov r0, r8
	str r0, [r6, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
