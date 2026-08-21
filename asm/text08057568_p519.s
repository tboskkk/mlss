	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80C7054
sub_80C7054:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C7104 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C707C
	b _080C7240
_080C707C:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C708E
	cmp r1, #0x04
	bne _080C70D0
_080C708E:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C709C
	adds r0, #0xFF
_080C709C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C70AA
	adds r0, #0xFF
_080C70AA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C70B8
	adds r0, #0xFF
_080C70B8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C70D0:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C70E4
	cmp r2, #0x04
	bne _080C7148
_080C70E4:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C710C
	ldr r2, _080C7108 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C7118
	.byte 0x00, 0x00
_080C7104: .4byte 0x03000FD8
_080C7108: .4byte 0x00002002
_080C710C:
	ldr r2, _080C71E4 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C7118:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080C712E
	movs r2, #0x01
_080C712E:
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
_080C7148:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C7156
	cmp r2, #0x04
	bne _080C7160
_080C7156:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C7160:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7174
	cmp r2, #0x04
	bne _080C71B6
_080C7174:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C7182
	adds r0, #0xFF
_080C7182:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C7190
	adds r0, #0xFF
_080C7190:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C719E
	adds r0, #0xFF
_080C719E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080C71B6:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C71C4
	cmp r1, #0x04
	bne _080C7228
_080C71C4:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C71EC
	ldr r2, _080C71E8 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C71F8
	.byte 0x00, 0x00
_080C71E4: .4byte 0x0000204F
_080C71E8: .4byte 0x00002002
_080C71EC:
	ldr r2, _080C7248 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C71F8:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080C720E
	movs r2, #0x01
_080C720E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7228:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C7236
	cmp r2, #0x04
	bne _080C7240
_080C7236:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080C7240:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7248: .4byte 0x0000204F
	thumb_func_start sub_80C724C
sub_80C724C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080C72A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r6
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	ldr r4, _080C72A4 @ =0x00000FFF
	adds r1, r4, #0x0
	ands r1, r0
	cmp r1, #0x03
	bgt _080C72AC
	ldr r2, _080C72A8 @ =0x083B89F8
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080C733E
_080C72A0: .4byte 0x03000FD8
_080C72A4: .4byte 0x00000FFF
_080C72A8: .4byte 0x083B89F8
_080C72AC:
	ldr r5, _080C72D4 @ =0x083B8A00
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C72D8
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080C72F2
	.byte 0x00, 0x00
_080C72D4: .4byte 0x083B8A00
_080C72D8:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080C72F2:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080C731E
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080C7338
_080C731E:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080C7338:
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xB2
_080C733E:
	strh r1, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _080C734A
	adds r0, #0xFF
_080C734A:
	asrs r0, r0, #0x08
	subs r1, r0, #0x4
	mov r0, r8
	ldr r2, [r0, #0x14]
	cmp r2, #0x00
	bge _080C7358
	adds r2, #0xFF
_080C7358:
	asrs r2, r2, #0x08
	mov r0, r8
	ldr r3, [r0, #0x18]
	cmp r3, #0x00
	bge _080C7364
	adds r3, #0xFF
_080C7364:
	asrs r3, r3, #0x08
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r0, _080C7400 @ =0x00002FE6
	bl sub_80DF024
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C7384
	cmp r2, #0x04
	bne _080C73A0
_080C7384:
	ldr r2, _080C7404 @ =0x00002063
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C73A0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C73AE
	cmp r2, #0x04
	bne _080C73DE
_080C73AE:
	ldr r2, _080C7408 @ =0x03001038
	ldr r0, _080C740C @ =0x0819832C
	ldr r1, _080C7410 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C73DE:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7414 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7418 @ =0x080C741D
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C7400: .4byte 0x00002FE6
_080C7404: .4byte 0x00002063
_080C7408: .4byte 0x03001038
_080C740C: .4byte 0x0819832C
_080C7410: .4byte 0x08198220
_080C7414: .4byte 0x00000FFF
_080C7418: .4byte sub_80C741C
	thumb_func_start sub_80C741C
sub_80C741C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080C750C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r8
	ldr r5, [r1, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C7500
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7462
	cmp r1, #0x04
	bne _080C74C4
_080C7462:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080C746A
	adds r0, #0xFF
_080C746A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x0A
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080C7484
	adds r0, #0xFF
_080C7484:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080C749C
	adds r3, #0xFF
_080C749C:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x15
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080C74C4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C74D6
	cmp r1, #0x04
	bne _080C74EE
_080C74D6:
	ldr r2, _080C7510 @ =0x00002034
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C74EE:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C7514 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C7518 @ =0x080C751D
	mov r1, r8
	str r0, [r1, #0x4C]
_080C7500:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C750C: .4byte 0x03000FD8
_080C7510: .4byte 0x00002034
_080C7514: .4byte 0x00000FFF
_080C7518: .4byte sub_80C751C
	thumb_func_start sub_80C751C
sub_80C751C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7644 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C7592
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7592:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C75A2
	b _080C7AE0
_080C75A2:
	mov r1, r12
	cmp r1, #0x00
	bge _080C75AA
	movs r1, #0x00
_080C75AA:
	ldr r0, _080C7648 @ =0x00007FFF
	cmp r1, r0
	ble _080C75B2
	adds r1, r0, #0x0
_080C75B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C75C8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C75CA
_080C75C8:
	movs r2, #0x00
_080C75CA:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C76B0
	ldr r2, _080C7644 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C764C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C75FE
	movs r1, #0x33
_080C75F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C75F2
_080C75FE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7612
	movs r1, #0x33
_080C7606:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7606
_080C7612:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7626
	movs r1, #0x33
_080C761A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C761A
_080C7626:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x03
_080C7630:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C763A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C763A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7630
	b _080C76A8
	.byte 0x00, 0x00
_080C7644: .4byte 0x03000FD8
_080C7648: .4byte 0x00007FFF
_080C764C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7662
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7656:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7656
_080C7662:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7678
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C766C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C766C
_080C7678:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C768E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7682:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7682
_080C768E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C76A8
	movs r1, #0x10
_080C7698:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C76A2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C76A2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7698
_080C76A8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C76B0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C76BA
	movs r1, #0x00
_080C76BA:
	mov r3, r9
	cmp r3, #0x00
	bge _080C76C2
	movs r2, #0x00
_080C76C2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C76CC
	adds r1, r0, #0x0
_080C76CC:
	ldr r0, _080C77C4 @ =0x00007FFF
	cmp r2, r0
	ble _080C76D4
	adds r2, r0, #0x0
_080C76D4:
	cmp r2, r1
	bge _080C76DA
	adds r1, r2, #0x0
_080C76DA:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C76F2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C76F4
_080C76F2:
	movs r1, #0x00
_080C76F4:
	cmp r1, #0x00
	bne _080C76FA
	b _080C7846
_080C76FA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C77C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7718
	b _080C7846
_080C7718:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C77CC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C7832
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C77D0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C777A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C776E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C776E
_080C777A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7790
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7784:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7784
_080C7790:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C77A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C779A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C779A
_080C77A6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C77B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C77BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C77BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C77B0
	b _080C782E
	.byte 0x00, 0x00
_080C77C4: .4byte 0x00007FFF
_080C77C8: .4byte 0x0300034C
_080C77CC: .4byte 0x03000FD8
_080C77D0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C77E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77DC
_080C77E8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C77FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C77F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C77F2
_080C77FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7814
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7808:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7808
_080C7814:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C782E
	movs r1, #0x10
_080C781E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7828
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7828:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C781E
_080C782E:
	bl sub_807F448
_080C7832:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C791C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7846:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7852
	b _080C7AE0
_080C7852:
	mov r1, r9
	cmp r1, #0x00
	bge _080C785A
	movs r1, #0x00
_080C785A:
	ldr r0, _080C7920 @ =0x00007FFF
	cmp r1, r0
	ble _080C7862
	adds r1, r0, #0x0
_080C7862:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C787A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C787C
_080C787A:
	movs r2, #0x00
_080C787C:
	cmp r2, #0x00
	bne _080C7882
	b _080C7990
_080C7882:
	ldr r3, _080C7924 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C791C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7928
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C78D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78C6
_080C78D2:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C78E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78DC
_080C78E8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C78FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C78F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C78F2
_080C78FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7908:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7912
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7912:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7908
	b _080C7984
	.byte 0x00, 0x00
_080C791C: .4byte 0x00000FFF
_080C7920: .4byte 0x00007FFF
_080C7924: .4byte 0x03000FD8
_080C7928:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C793E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7932:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7932
_080C793E:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7954
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7948:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7948
_080C7954:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C796A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C795E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C795E
_080C796A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7984
	movs r1, #0x10
_080C7974:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C797E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C797E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7974
_080C7984:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C7AE0
_080C7990:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C799C
	b _080C7AE0
_080C799C:
	ldr r0, _080C7A60 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C79B2
	b _080C7AE0
_080C79B2:
	ldr r2, _080C7A64 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C79E2
	b _080C7AE0
_080C79E2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7A68 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7A6C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A16
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A0A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A0A
_080C7A16:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A20
_080C7A2C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7A42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A36
_080C7A42:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7A4C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7A56
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7A56:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7A4C
	b _080C7AC8
	.byte 0x00, 0x00
_080C7A60: .4byte 0x0300034C
_080C7A64: .4byte 0x03000FD8
_080C7A68: .4byte 0x00000FFF
_080C7A6C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A76
_080C7A82:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C7A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7A8C
_080C7A98:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7AAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7AA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7AA2
_080C7AAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7AC8
	movs r1, #0x10
_080C7AB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7AC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7AC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7AB8
_080C7AC8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C7AE0:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C7B58
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C7AF6
	movs r1, #0x00
_080C7AF6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C7B00
	adds r2, r0, #0x0
_080C7B00:
	ldr r0, _080C7B4C @ =0x00007FFF
	cmp r1, r0
	ble _080C7B08
	adds r1, r0, #0x0
_080C7B08:
	cmp r1, r2
	bge _080C7B0E
	adds r2, r1, #0x0
_080C7B0E:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C7B28
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C7B2A
_080C7B28:
	movs r2, #0x00
_080C7B2A:
	cmp r2, #0x00
	beq _080C7B58
	cmp r3, #0x01
	ble _080C7B58
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C7B50 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C7B54 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7BA0
	.byte 0x00, 0x00
_080C7B4C: .4byte 0x00007FFF
_080C7B50: .4byte 0x00000FFF
_080C7B54: .4byte sub_80C65BC
_080C7B58:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7BA0
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C7B76
	cmp r1, #0x04
	bne _080C7B8E
_080C7B76:
	ldr r2, _080C7BB0 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C7B8E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7BB4 @ =0x00000FFF
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	ldr r0, _080C7BB8 @ =0x080C7BBD
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080C7BA0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7BB0: .4byte 0x00002034
_080C7BB4: .4byte 0x00000FFF
_080C7BB8: .4byte sub_80C7BBC
	thumb_func_start sub_80C7BBC
sub_80C7BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C7CE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	add r9, r0
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C7C32
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7C32:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C7C42
	b _080C8180
_080C7C42:
	mov r1, r12
	cmp r1, #0x00
	bge _080C7C4A
	movs r1, #0x00
_080C7C4A:
	ldr r0, _080C7CE8 @ =0x00007FFF
	cmp r1, r0
	ble _080C7C52
	adds r1, r0, #0x0
_080C7C52:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7C68
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7C6A
_080C7C68:
	movs r2, #0x00
_080C7C6A:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C7D50
	ldr r2, _080C7CE4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C7CEC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7C9E
	movs r1, #0x33
_080C7C92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7C92
_080C7C9E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7CB2
	movs r1, #0x33
_080C7CA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CA6
_080C7CB2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7CC6
	movs r1, #0x33
_080C7CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CBA
_080C7CC6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x03
_080C7CD0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7CDA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7CDA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7CD0
	b _080C7D48
	.byte 0x00, 0x00
_080C7CE4: .4byte 0x03000FD8
_080C7CE8: .4byte 0x00007FFF
_080C7CEC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7CF6
_080C7D02:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D0C
_080C7D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7D22
_080C7D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7D48
	movs r1, #0x10
_080C7D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7D38
_080C7D48:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C7D50:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C7D5A
	movs r1, #0x00
_080C7D5A:
	mov r3, r9
	cmp r3, #0x00
	bge _080C7D62
	movs r2, #0x00
_080C7D62:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C7D6C
	adds r1, r0, #0x0
_080C7D6C:
	ldr r0, _080C7E64 @ =0x00007FFF
	cmp r2, r0
	ble _080C7D74
	adds r2, r0, #0x0
_080C7D74:
	cmp r2, r1
	bge _080C7D7A
	adds r1, r2, #0x0
_080C7D7A:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C7D92
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C7D94
_080C7D92:
	movs r1, #0x00
_080C7D94:
	cmp r1, #0x00
	bne _080C7D9A
	b _080C7EE6
_080C7D9A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C7E68 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C7DB8
	b _080C7EE6
_080C7DB8:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C7E6C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C7ED2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7E70
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E0E
_080C7E1A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E24
_080C7E30:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7E46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E3A
_080C7E46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7E50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7E5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7E5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7E50
	b _080C7ECE
	.byte 0x00, 0x00
_080C7E64: .4byte 0x00007FFF
_080C7E68: .4byte 0x0300034C
_080C7E6C: .4byte 0x03000FD8
_080C7E70:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C7E88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E7C
_080C7E88:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C7E9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7E92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7E92
_080C7E9E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7EB4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7EA8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7EA8
_080C7EB4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C7ECE
	movs r1, #0x10
_080C7EBE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7EC8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7EC8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7EBE
_080C7ECE:
	bl sub_807F448
_080C7ED2:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C7FBC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C7EE6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C7EF2
	b _080C8180
_080C7EF2:
	mov r1, r9
	cmp r1, #0x00
	bge _080C7EFA
	movs r1, #0x00
_080C7EFA:
	ldr r0, _080C7FC0 @ =0x00007FFF
	cmp r1, r0
	ble _080C7F02
	adds r1, r0, #0x0
_080C7F02:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C7F1A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C7F1C
_080C7F1A:
	movs r2, #0x00
_080C7F1C:
	cmp r2, #0x00
	bne _080C7F22
	b _080C8030
_080C7F22:
	ldr r3, _080C7FC4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C7FBC @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C7FC8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7F72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F66
_080C7F72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7F88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F7C
_080C7F88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C7F9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7F92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7F92
_080C7F9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C7FA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C7FB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C7FB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C7FA8
	b _080C8024
	.byte 0x00, 0x00
_080C7FBC: .4byte 0x00000FFF
_080C7FC0: .4byte 0x00007FFF
_080C7FC4: .4byte 0x03000FD8
_080C7FC8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C7FDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FD2
_080C7FDE:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C7FF4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FE8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FE8
_080C7FF4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C800A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C7FFE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C7FFE
_080C800A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8024
	movs r1, #0x10
_080C8014:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C801E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C801E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8014
_080C8024:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C8180
_080C8030:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C803C
	b _080C8180
_080C803C:
	ldr r0, _080C8100 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C8052
	b _080C8180
_080C8052:
	ldr r2, _080C8104 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C8082
	b _080C8180
_080C8082:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C8108 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C810C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C80B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80AA
_080C80B6:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C80CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80C0
_080C80CC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C80E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C80D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C80D6
_080C80E2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C80EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C80F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C80F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C80EC
	b _080C8168
	.byte 0x00, 0x00
_080C8100: .4byte 0x0300034C
_080C8104: .4byte 0x03000FD8
_080C8108: .4byte 0x00000FFF
_080C810C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C8122
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8116:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8116
_080C8122:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C8138
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C812C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C812C
_080C8138:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C814E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C8142:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C8142
_080C814E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C8168
	movs r1, #0x10
_080C8158:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C8162
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C8162:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C8158
_080C8168:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C8180:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C81F8
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C8196
	movs r1, #0x00
_080C8196:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C81A0
	adds r2, r0, #0x0
_080C81A0:
	ldr r0, _080C81EC @ =0x00007FFF
	cmp r1, r0
	ble _080C81A8
	adds r1, r0, #0x0
_080C81A8:
	cmp r1, r2
	bge _080C81AE
	adds r2, r1, #0x0
_080C81AE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C81C8
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C81CA
_080C81C8:
	movs r2, #0x00
_080C81CA:
	cmp r2, #0x00
	beq _080C81F8
	cmp r3, #0x01
	ble _080C81F8
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C81F0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C81F4 @ =0x080C65BD
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C828E
	.byte 0x00, 0x00
_080C81EC: .4byte 0x00007FFF
_080C81F0: .4byte 0x00000FFF
_080C81F4: .4byte sub_80C65BC
_080C81F8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C828E
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080C82A0 @ =0x0403048B
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080C8250
	ldr r3, _080C82A4 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080C8288
_080C8250:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C8258
	adds r0, #0xFF
_080C8258:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x4
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080C8270
	adds r2, #0xFF
_080C8270:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080C82A8 @ =0x0000070B
	str r6, [sp, #0x000]
	movs r3, #0x18
	bl sub_80DF024
_080C8288:
	ldr r0, _080C82AC @ =0x080C8609
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C828E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C82A0: .4byte 0x0403048B
_080C82A4: .4byte 0x00000111
_080C82A8: .4byte 0x0000070B
_080C82AC: .4byte sub_80C8608
	thumb_func_start sub_80C82B0
sub_80C82B0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C8370 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C8368
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C82DE
	cmp r1, #0x04
	bne _080C82F6
_080C82DE:
	ldr r2, _080C8374 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C82F6:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8308
	cmp r1, #0x04
	bne _080C8364
_080C8308:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8316
	adds r0, #0xFF
_080C8316:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8328
	adds r0, #0xFF
_080C8328:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C833A
	adds r0, #0xFF
_080C833A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C8350
	adds r0, #0xFF
_080C8350:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C8364:
	ldr r0, _080C8378 @ =0x080C837D
	str r0, [r5, #0x4C]
_080C8368:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080C8370: .4byte 0x03000FD8
_080C8374: .4byte 0x00002034
_080C8378: .4byte sub_80C837C
	thumb_func_start sub_80C837C
sub_80C837C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C840C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C8402
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080C83B2
	adds r1, #0xFF
_080C83B2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080C83BC
	adds r2, #0xFF
_080C83BC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080C83C6
	adds r3, #0xFF
_080C83C6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C83E2
	cmp r1, #0x04
	bne _080C83FE
_080C83E2:
	ldr r2, _080C8410 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C83FE:
	ldr r0, _080C8414 @ =0x080C8419
	str r0, [r6, #0x4C]
_080C8402:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C840C: .4byte 0x03000FD8
_080C8410: .4byte 0x00002034
_080C8414: .4byte sub_80C8418
	thumb_func_start sub_80C8418
sub_80C8418:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080C84C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080C843A
	b _080C85FC
_080C843A:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C844C
	cmp r1, #0x04
	bne _080C848E
_080C844C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C845A
	adds r0, #0xFF
_080C845A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8468
	adds r0, #0xFF
_080C8468:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C8476
	adds r0, #0xFF
_080C8476:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080C848E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C84A2
	cmp r2, #0x04
	bne _080C8504
_080C84A2:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C84C8
	ldr r2, _080C84C4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C84D4
_080C84C0: .4byte 0x03000FD8
_080C84C4: .4byte 0x00002002
_080C84C8:
	ldr r2, _080C85A0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C84D4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C84EA
	movs r2, #0x01
_080C84EA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C8504:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C8512
	cmp r2, #0x04
	bne _080C851C
_080C8512:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080C851C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C8530
	cmp r2, #0x04
	bne _080C8572
_080C8530:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C853E
	adds r0, #0xFF
_080C853E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C854C
	adds r0, #0xFF
_080C854C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C855A
	adds r0, #0xFF
_080C855A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080C8572:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C8580
	cmp r1, #0x04
	bne _080C85E4
_080C8580:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C85A8
	ldr r2, _080C85A4 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080C85B4
	.byte 0x00, 0x00
_080C85A0: .4byte 0x0000204F
_080C85A4: .4byte 0x00002002
_080C85A8:
	ldr r2, _080C8604 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080C85B4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080C85CA
	movs r2, #0x01
_080C85CA:
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
_080C85E4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C85F2
	cmp r2, #0x04
	bne _080C85FC
_080C85F2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080C85FC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C8604: .4byte 0x0000204F
	thumb_func_start sub_80C8608
sub_80C8608:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C8674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r3, [r6, #0x2C]
	ldr r0, [r3, #0x28]
	ldr r1, _080C8678 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080C863A
	adds r0, r3, #0x0
	bl sub_8086700
_080C863A:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C864C
	cmp r1, #0x04
	bne _080C8668
_080C864C:
	ldr r2, _080C867C @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C8668:
	ldr r0, _080C8680 @ =0x080C82B1
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C8674: .4byte 0x03000FD8
_080C8678: .4byte 0x00000111
_080C867C: .4byte 0x00002034
_080C8680: .4byte sub_80C82B0
