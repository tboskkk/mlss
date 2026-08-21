	.syntax unified
	.text

	thumb_func_start sub_8173004
sub_8173004:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldm r5!, {r0}
	str r0, [sp, #0x01C]
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	ldr r0, [sp, #0x018]
	adds r1, r6, #0x0
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x020]
	add r0, sp, #0x014
	mov r10, r0
	add r0, sp, #0x018
	mov r9, r0
	mov r7, r8
_08173040:
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
	beq _08173068
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08173062
	adds r0, #0xFF
_08173062:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08173078
_08173068:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08173074
	adds r0, #0xFF
_08173074:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08173078:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08173086
	adds r0, #0xFF
_08173086:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08173098
	adds r0, #0xFF
_08173098:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x020]
	mov r2, r10
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
	mov r0, r9
	adds r1, r6, #0x0
	bl sub_807C564
	mov r0, r8
	cmp r0, #0x00
	bne _081730D4
	ldr r0, _08173100 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r8, r0
_081730D4:
	subs r7, #0x01
	cmp r7, #0x00
	bge _08173040
	mov r0, r8
	cmp r0, #0x00
	beq _081730E8
	ldr r0, _08173100 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_081730E8:
	ldr r5, [r4, #0x0C]
	ldr r0, [sp, #0x01C]
	str r0, [r5, #0x00]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08173100: .4byte 0x03000D74
