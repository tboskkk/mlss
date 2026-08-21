	.syntax unified
	.text

	thumb_func_start sub_80F2844
sub_80F2844:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r1, [sp, #0x000]
	ldr r0, _080F2908 @ =0x03000FD8
	mov r10, r0
	ldr r1, [r0, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x02
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r5, [r0, r3]
	adds r2, #0x02
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r3, [r0, r2]
	mov r8, r3
	ldr r3, _080F290C @ =0x0000035E
	adds r2, r1, r3
	movs r0, #0xD7
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	movs r4, #0x00
	strh r0, [r2, #0x00]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bge _080F288A
	adds r0, #0x0F
_080F288A:
	asrs r6, r0, #0x04
	ldr r0, _080F2910 @ =0x03001038
	mov r9, r0
	adds r0, r5, #0x0
	muls r0, r5
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	mov r3, r9
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r7, r0, #0x0
	cmp r6, r7
	bge _080F2920
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r4, _080F2914 @ =0x0819832C
	ldr r0, _080F2918 @ =0x08198220
	subs r4, r4, r0
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r2
	mov r2, r10
	ldr r1, [r2, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	ldsh r5, [r1, r2]
	adds r5, r5, r0
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r2
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldr r3, _080F291C @ =0x00000356
	adds r1, r1, r3
	movs r3, #0x00
	ldsh r2, [r1, r3]
	subs r2, r2, r0
	ldr r0, [sp, #0x004]
	adds r1, r5, #0x0
	bl sub_8082D24
	b _080F2966
	.byte 0x00, 0x00
_080F2908: .4byte 0x03000FD8
_080F290C: .4byte 0x0000035E
_080F2910: .4byte 0x03001038
_080F2914: .4byte 0x0819832C
_080F2918: .4byte 0x08198220
_080F291C: .4byte 0x00000356
_080F2920:
	mov r0, r10
	ldr r2, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xD5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	movs r3, #0x00
	ldsh r1, [r1, r3]
	adds r1, r1, r5
	ldr r3, _080F2978 @ =0x00000356
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r2, [r2, r3]
	mov r3, r8
	subs r2, r2, r3
	bl sub_8082D24
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r2, _080F297C @ =0x0000035E
	adds r1, r0, r2
	strh r4, [r1, #0x00]
	movs r3, #0xD7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strh r4, [r0, #0x00]
	ldr r2, [sp, #0x000]
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F2980 @ =0x0000FAFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F2966:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F2978: .4byte 0x00000356
_080F297C: .4byte 0x0000035E
_080F2980: .4byte 0x0000FAFF
