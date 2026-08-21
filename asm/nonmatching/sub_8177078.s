	.syntax unified
	.text

	thumb_func_start sub_8177078
sub_8177078:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r6}
	ldr r7, [r4, #0x08]
	ldr r0, [r7, #0x34]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	bl sub_80841B8
	mov r8, r0
	movs r0, #0x00
	mov r10, r0
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x01C]
	adds r0, #0x04
	str r0, [sp, #0x020]
	adds r0, #0x04
	str r0, [sp, #0x024]
	mov r9, r10
_081770B4:
	ldm r5!, {r2}
	str r2, [sp, #0x00C]
	ldm r5!, {r0}
	str r0, [sp, #0x010]
	ldm r5!, {r0}
	str r0, [sp, #0x014]
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081770DC
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081770D6
	adds r0, #0xFF
_081770D6:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _081770EC
_081770DC:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _081770E8
	adds r0, #0xFF
_081770E8:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_081770EC:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _081770FA
	adds r0, #0xFF
_081770FA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817710C
	adds r0, #0xFF
_0817710C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x020]
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
	ldr r0, [sp, #0x024]
	mov r1, r8
	bl sub_807C564
	mov r0, r10
	cmp r0, #0x00
	bne _08177148
	ldr r0, _0817717C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r10, r0
_08177148:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	mov r0, r9
	cmp r0, #0x00
	bge _081770B4
	mov r0, r10
	cmp r0, #0x00
	beq _08177162
	ldr r0, _0817717C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08177162:
	adds r6, #0x40
	strh r6, [r7, #0x04]
	strh r6, [r7, #0x06]
	ldr r5, [r4, #0x0C]
	str r6, [r5, #0x00]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817717C: .4byte 0x03000D74
