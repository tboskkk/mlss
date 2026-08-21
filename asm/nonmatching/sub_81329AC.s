	.syntax unified
	.text

	thumb_func_start sub_81329AC
sub_81329AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08132A98 @ =0xFFFFFC00
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	movs r2, #0x88
	adds r2, r2, r5
	mov r9, r2
	ldr r1, [r2, #0x00]
	muls r0, r1
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xB0
	adds r3, r3, r5
	mov r10, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r1, #0xB2
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	cmp r4, r0
	bge _08132A86
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r4, _08132A9C @ =0xFFFF3800
	mov r0, r9
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x0B
	negs r0, r0
	ldr r1, [r6, #0x00]
	bl __divsi3
	str r0, [sp, #0x000]
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	movs r0, #0x80
	lsls r0, r0, #0x03
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	str r1, [sp, #0x014]
	adds r0, r7, #0x0
	mov r1, r10
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _08132AA0 @ =0x08132CE9
	str r0, [r5, #0x4C]
_08132A86:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132A98: .4byte 0xFFFFFC00
_08132A9C: .4byte 0xFFFF3800
_08132AA0: .4byte sub_8132CE8
