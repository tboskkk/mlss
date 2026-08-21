	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80CCF10
sub_80CCF10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080CD018 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r0, #0x03
	strb r0, [r1, #0x0E]
	ldr r4, [r7, #0x00]
	ldr r0, _080CD01C @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x0B]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	movs r2, #0x01
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r0, [r3, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r2
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r1, [r7, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r9, r0
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCF7E
	cmp r1, #0x04
	bne _080CCFC2
_080CCF7E:
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x0C
	ldr r0, [r7, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCFC2:
	adds r2, r5, #0x0
	adds r2, #0x88
	mov r1, r9
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080CCFD0
	adds r0, #0xFF
_080CCFD0:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CCFDC
	adds r0, #0xFF
_080CCFDC:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCFF8
	cmp r2, #0x04
	bne _080CD060
_080CCFF8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD024
	ldr r2, _080CD020 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD030
	.byte 0x00, 0x00
_080CD018: .4byte 0x03000FD8
_080CD01C: .4byte 0x03000FF4
_080CD020: .4byte 0x00002002
_080CD024:
	ldr r2, _080CD124 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD030:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD046
	movs r2, #0x01
_080CD046:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CD060:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD06E
	cmp r2, #0x04
	bne _080CD078
_080CD06E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CD078:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080CD08C
	cmp r2, #0x04
	bne _080CD0D4
_080CD08C:
	ldr r5, _080CD128 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080CD0D4:
	adds r2, r6, #0x0
	adds r2, #0x88
	mov r4, r9
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080CD0E2
	adds r0, #0xFF
_080CD0E2:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080CD0EE
	adds r0, #0xFF
_080CD0EE:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD104
	cmp r2, #0x04
	bne _080CD16C
_080CD104:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD130
	ldr r2, _080CD12C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD13C
	.byte 0x00, 0x00
_080CD124: .4byte 0x0000204F
_080CD128: .4byte 0x03000FD8
_080CD12C: .4byte 0x00002002
_080CD130:
	ldr r2, _080CD184 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD13C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD152
	movs r2, #0x01
_080CD152:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CD16C:
	ldr r0, _080CD188 @ =0x080D2EF1
	mov r1, r10
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CD184: .4byte 0x0000204F
_080CD188: .4byte sub_80D2EF0
