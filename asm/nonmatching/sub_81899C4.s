	.syntax unified
	.text

	thumb_func_start sub_81899C4
sub_81899C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r4, r0, #0x0
	ldr r5, [r4, #0x0C]
	ldr r6, [r4, #0x08]
	ldr r0, [r6, #0x34]
	str r0, [sp, #0x018]
	adds r0, r6, #0x0
	bl sub_80841B8
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r9, r0
	ldr r0, [sp, #0x018]
	adds r1, r7, #0x0
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x01C]
	adds r0, #0x04
	str r0, [sp, #0x020]
	add r0, sp, #0x018
	mov r10, r0
	mov r8, r9
_081899FE:
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
	beq _08189A26
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08189A20
	adds r0, #0xFF
_08189A20:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08189A36
_08189A26:
	movs r0, #0x12
	ldsh r1, [r4, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08189A32
	adds r0, #0xFF
_08189A32:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08189A36:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08189A44
	adds r0, #0xFF
_08189A44:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r4, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08189A56
	adds r0, #0xFF
_08189A56:
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
	mov r0, r10
	adds r1, r7, #0x0
	bl sub_807C564
	mov r0, r9
	cmp r0, #0x00
	bne _08189A92
	ldr r0, _08189AC4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r9, r0
_08189A92:
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	mov r0, r8
	cmp r0, #0x00
	bge _081899FE
	mov r0, r9
	cmp r0, #0x00
	beq _08189AAC
	ldr r0, _08189AC4 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08189AAC:
	movs r0, #0x80
	strh r0, [r6, #0x04]
	strh r0, [r6, #0x06]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08189AC4: .4byte 0x03000D74
