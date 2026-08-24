	.syntax unified
	.text

	thumb_func_start sub_8180E78
sub_8180E78:
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
	str r1, [sp, #0x01C]
	mov r2, r9
	adds r2, #0x04
	mov r9, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x020]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r5, #0x00
	str r5, [sp, #0x028]
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
	movs r4, #0x01
	str r4, [sp, #0x02C]
_08180ED2:
	mov r5, r9
	ldm r5!, {r1}
	str r1, [sp, #0x00C]
	ldm r5!, {r2}
	str r2, [sp, #0x010]
	adds r5, #0x04
	mov r9, r5
	subs r5, #0x04
	ldm r5!, {r3}
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r4, r0, #0x03
	str r4, [sp, #0x00C]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x03
	mov r12, r0
	str r0, [sp, #0x010]
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r3, r0, #0x03
	str r3, [sp, #0x014]
	adds r2, r3, #0x0
	movs r0, #0xFF
	ldr r1, [sp, #0x020]
	ands r0, r1
	lsls r1, r0, #0x01
	ldr r5, _08180FE8 @ =0x08198584
	adds r6, r1, r5
	movs r5, #0x00
	ldsh r0, [r6, r5]
	cmp r0, #0x00
	bge _08180F16
	adds r0, #0x3F
_08180F16:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r0, _08180FEC @ =0x08198504
	mov r10, r0
	adds r5, r1, r0
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _08180F2A
	adds r0, #0x3F
_08180F2A:
	asrs r0, r0, #0x06
	muls r0, r4
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08180F36
	adds r0, #0xFF
_08180F36:
	asrs r7, r0, #0x08
	str r7, [sp, #0x014]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08180F44
	adds r0, #0x3F
_08180F44:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08180F54
	adds r0, #0x3F
_08180F54:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180F60
	adds r0, #0xFF
_08180F60:
	asrs r3, r0, #0x08
	str r3, [sp, #0x00C]
	mov r1, r12
	ldr r5, _08180FE8 @ =0x08198584
	movs r2, #0x18
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08180F72
	adds r0, #0x3F
_08180F72:
	asrs r0, r0, #0x06
	muls r1, r0
	mov r4, r10
	movs r5, #0x18
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _08180F82
	adds r0, #0x3F
_08180F82:
	asrs r0, r0, #0x06
	muls r0, r7
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08180F8E
	adds r0, #0xFF
_08180F8E:
	asrs r2, r0, #0x08
	str r2, [sp, #0x010]
	ldr r1, _08180FE8 @ =0x08198584
	movs r4, #0x18
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _08180F9E
	adds r0, #0x3F
_08180F9E:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	mov r5, r10
	movs r4, #0x18
	ldsh r0, [r5, r4]
	cmp r0, #0x00
	bge _08180FB0
	adds r0, #0x3F
_08180FB0:
	asrs r0, r0, #0x06
	mov r5, r12
	muls r5, r0
	adds r0, r5, #0x0
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08180FC0
	adds r0, #0xFF
_08180FC0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x01C]
	adds r0, r2, r1
	str r0, [sp, #0x010]
	mov r2, r8
	ldrb r1, [r2, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08180FF0
	movs r4, #0x12
	ldsh r1, [r2, r4]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08180FE2
	adds r0, #0xFF
_08180FE2:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08181002
_08180FE8: .4byte word_8198584 @ =0x08198584
_08180FEC: .4byte word_8198504 @ =0x08198504
_08180FF0:
	mov r5, r8
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _08180FFE
	adds r0, #0xFF
_08180FFE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08181002:
	str r0, [sp, #0x00C]
	mov r2, r8
	movs r4, #0x14
	ldsh r1, [r2, r4]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08181012
	adds r0, #0xFF
_08181012:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r5, r8
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08181026
	adds r0, #0xFF
_08181026:
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
	ldr r1, [sp, #0x028]
	cmp r1, #0x00
	bne _08181062
	ldr r0, _081810A4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r2, #0x01
	str r2, [sp, #0x028]
_08181062:
	ldr r4, [sp, #0x02C]
	subs r4, #0x01
	str r4, [sp, #0x02C]
	cmp r4, #0x00
	blt _0818106E
	b _08180ED2
_0818106E:
	ldr r5, [sp, #0x028]
	cmp r5, #0x00
	beq _0818107C
	ldr r0, _081810A4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0818107C:
	ldr r0, [sp, #0x01C]
	ldr r1, _081810A8 @ =0xFFFFFF00
	adds r0, r0, r1
	ldr r2, [sp, #0x020]
	adds r2, #0x0C
	mov r4, r8
	ldr r4, [r4, #0x0C]
	mov r9, r4
	mov r5, r9
	stm r5!, {r0}
	str r2, [r5, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081810A4: .4byte 0x03000D74
_081810A8: .4byte 0xFFFFFF00
