	.syntax unified
	.text

	thumb_func_start sub_80F8CC0
sub_80F8CC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	mov r10, r3
	ldr r3, [sp, #0x034]
	ldr r0, [sp, #0x038]
	mov r8, r0
	ldr r6, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, r10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x2C]
	mov r9, r0
	ldr r0, _080F8D60 @ =0x03000D44
	ldr r5, [r0, #0x00]
	movs r0, #0x00
	mov r12, r0
	strh r6, [r5, #0x20]
	adds r5, #0x28
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x02
	ldrb r6, [r5, #0x00]
	subs r0, #0x4C
	ands r0, r6
	orrs r0, r4
	strb r0, [r5, #0x00]
	lsrs r1, r1, #0x16
	adds r0, r7, #0x0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x30]
	movs r1, #0x02
	str r1, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldr r1, _080F8D64 @ =0x00001790
	add r9, r1
	mov r1, r9
	str r1, [sp, #0x008]
	mov r1, r12
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	adds r1, r2, #0x0
	mov r2, r10
	bl sub_80E5AA0
	ldr r2, _080F8D68 @ =0x082001D8
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80F1EE8
	str r0, [r7, #0x28]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F8D60: .4byte 0x03000D44
_080F8D64: .4byte 0x00001790
_080F8D68: .4byte 0x082001D8
