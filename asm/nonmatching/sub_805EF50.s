	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	movs r7, #0x8C
	adds r7, r7, r5
	mov r10, r7
	ldr r3, [r7, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r7, #0x00
	ldsh r0, [r4, r7]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EF90
	adds r0, #0xFF
_0805EF90:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805F016
	ldr r1, [r6, #0x00]
	ldr r0, _0805EFDC @ =0x00005FFF
	cmp r1, r0
	bgt _0805EFE0
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0805EFE6
	.byte 0x00, 0x00
_0805EFDC: .4byte 0x00005FFF
_0805EFE0:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, _0805F028 @ =0xFFFFE000
_0805EFE6:
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x10
	bl __divsi3
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r0, _0805F02C @ =0x0805F035
	str r0, [r5, #0x4C]
	ldr r0, _0805F030 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805F016:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F028: .4byte 0xFFFFE000
_0805F02C: .4byte sub_805F034
_0805F030: .4byte 0x0000010F
