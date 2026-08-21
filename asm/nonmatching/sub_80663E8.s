	.syntax unified
	.text

	thumb_func_start sub_80663E8
sub_80663E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r7, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r6, [r0, #0x00]
	adds r0, #0x04
	ldr r5, [r0, #0x00]
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08066414
	ldr r2, _080664D0 @ =0x000010FF
	adds r0, r1, r2
_08066414:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08066420
	adds r0, #0xFF
_08066420:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0806642C
	adds r0, #0xFF
_0806642C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x00C]
	subs r2, r7, r2
	str r2, [sp, #0x018]
	ldr r0, [sp, #0x010]
	subs r6, r6, r0
	str r6, [sp, #0x01C]
	ldr r1, [sp, #0x014]
	subs r1, r5, r1
	mov r10, r1
	adds r6, r4, #0x0
	adds r6, #0x0C
	cmp r6, #0x00
	beq _080664C0
	mov r9, r10
	ldr r2, [sp, #0x01C]
	mov r8, r2
	ldr r7, [sp, #0x018]
_08066482:
	adds r0, r7, #0x0
	movs r1, #0x06
	bl __divsi3
	adds r5, r0, #0x0
	ldr r0, [sp, #0x00C]
	adds r5, r5, r0
	mov r0, r8
	movs r1, #0x06
	bl __divsi3
	adds r4, r0, #0x0
	ldr r1, [sp, #0x010]
	adds r4, r4, r1
	mov r0, r9
	movs r1, #0x06
	bl __divsi3
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	str r5, [r6, #0x04]
	str r4, [r6, #0x08]
	str r0, [r6, #0x0C]
	ldr r6, [r6, #0x00]
	add r9, r10
	ldr r0, [sp, #0x01C]
	add r8, r0
	ldr r1, [sp, #0x018]
	adds r7, r7, r1
	cmp r6, #0x00
	bne _08066482
_080664C0:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080664D0: .4byte 0x000010FF
