	.syntax unified
	.text

	thumb_func_start sub_8087878
sub_8087878:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0x0
	ldr r6, [sp, #0x020]
	movs r0, #0x00
	mov r10, r0
	cmp r6, r7
	bge _080878A4
	cmp r6, r3
	bge _080878A0
	adds r0, r7, r3
	subs r6, r0, r6
	movs r1, #0x01
	mov r10, r1
	b _080878AA
_080878A0:
	adds r6, r7, #0x0
	b _080878AA
_080878A4:
	cmp r6, r3
	bge _080878AA
	adds r6, r3, #0x0
_080878AA:
	ldr r4, _080878F8 @ =0x03001038
	subs r0, r6, r3
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	subs r0, r6, r7
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	adds r0, r1, r5
	mov r2, r8
	str r0, [r2, #0x00]
	mov r2, r9
	str r1, [r2, #0x00]
	mov r2, r10
	cmp r2, #0x00
	beq _080878E0
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	negs r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
_080878E0:
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _080878E8
	adds r0, #0xFF
_080878E8:
	asrs r0, r0, #0x08
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080878F8: .4byte 0x03001038
