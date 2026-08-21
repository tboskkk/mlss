	.syntax unified
	.text

	thumb_func_start sub_8185A00
sub_8185A00:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldm r4!, {r6}
	ldm r4!, {r7}
	ldm r4!, {r0}
	str r0, [sp, #0x01C]
	ldm r4!, {r1}
	str r1, [sp, #0x020]
	ldr r0, [r5, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	mov r8, r0
	movs r0, #0x00
	mov r10, r0
	ldr r0, [sp, #0x018]
	mov r1, r8
	bl sub_807F9A8
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x024]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x028]
	adds r1, #0x08
	str r1, [sp, #0x02C]
	mov r9, r10
_08185A46:
	ldm r4!, {r2}
	str r2, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	ldm r4!, {r0}
	str r0, [sp, #0x014]
	adds r2, r2, r6
	str r2, [sp, #0x00C]
	adds r1, r1, r7
	str r1, [sp, #0x010]
	ldrb r1, [r5, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08185A76
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08185A70
	adds r0, #0xFF
_08185A70:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _08185A86
_08185A76:
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08185A82
	adds r0, #0xFF
_08185A82:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_08185A86:
	str r0, [sp, #0x00C]
	movs r0, #0x14
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _08185A94
	adds r0, #0xFF
_08185A94:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	movs r0, #0x16
	ldsh r1, [r5, r0]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _08185AA6
	adds r0, #0xFF
_08185AA6:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x024]
	ldr r2, [sp, #0x028]
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
	ldr r0, [sp, #0x02C]
	mov r1, r8
	bl sub_807C564
	mov r1, r10
	cmp r1, #0x00
	bne _08185AE2
	ldr r0, _08185B3C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r10, r0
_08185AE2:
	movs r1, #0x01
	negs r1, r1
	add r9, r1
	mov r0, r9
	cmp r0, #0x00
	bge _08185A46
	mov r1, r10
	cmp r1, #0x00
	beq _08185AFC
	ldr r0, _08185B3C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_08185AFC:
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08185B04
	adds r0, #0x3F
_08185B04:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x01C]
	subs r1, r1, r0
	str r1, [sp, #0x01C]
	adds r6, r6, r1
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08185B16
	adds r0, #0xFF
_08185B16:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x020]
	subs r1, r1, r0
	adds r7, r7, r1
	ldr r4, [r5, #0x0C]
	stm r4!, {r6}
	stm r4!, {r7}
	ldr r0, [sp, #0x01C]
	stm r4!, {r0}
	str r1, [r4, #0x00]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08185B3C: .4byte 0x03000D74
