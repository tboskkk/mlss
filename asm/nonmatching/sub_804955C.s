	.syntax unified
	.text

	thumb_func_start sub_804955C
sub_804955C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _080496A0 @ =0x0000105A
	adds r2, r1, #0x0
	cmp r0, #0x00
	bne _0804957A
	ldr r3, _080496A4 @ =0x00001059
	adds r2, r3, #0x0
_0804957A:
	movs r4, #0xDC
	lsls r4, r4, #0x02
	adds r1, r7, r4
	movs r0, #0x00
	mov r8, r0
	strh r2, [r1, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r0, [r5, #0x00]
	ldrh r2, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80210A8
	ldr r0, [r5, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sub_8021ED8
	lsls r2, r6, #0x01
	adds r2, r2, r6
	lsls r2, r2, #0x03
	ldr r0, _080496A8 @ =0x083A09E4
	adds r2, r2, r0
	ldr r4, _080496AC @ =0x00000353
	adds r3, r7, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x24
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, _080496B0 @ =0x00000372
	adds r1, r1, r7
	mov r9, r1
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x01]
	adds r4, #0x20
	adds r4, r4, r7
	mov r8, r4
	strb r0, [r4, #0x00]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	lsls r0, r1, #0x01
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x02]
	movs r1, #0xDD
	lsls r1, r1, #0x02
	adds r1, r1, r7
	mov r12, r1
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r4, [r5, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	mov r4, r9
	movs r0, #0x00
	ldsb r0, [r4, r0]
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	mov r4, r8
	movs r0, #0x00
	ldsb r0, [r4, r0]
	ldrh r1, [r1, #0x02]
	adds r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r2, [r5, #0x00]
	ldr r1, [r3, #0x00]
	mov r3, r12
	movs r0, #0x00
	ldsb r0, [r3, r0]
	ldrh r1, [r1, #0x0E]
	adds r0, r0, r1
	strh r0, [r2, #0x0E]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080496A0: .4byte 0x0000105A
_080496A4: .4byte 0x00001059
_080496A8: .4byte 0x083A09E4
_080496AC: .4byte 0x00000353
_080496B0: .4byte 0x00000372
