	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F112C
sub_80F112C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldm r3!, {r1}
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080F1152
	ldr r2, [r3, #0x00]
	adds r0, r4, #0x0
	bl sub_8047B08
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x42
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _080F1168
_080F1152:
	cmp r1, #0x02
	bne _080F1162
	movs r0, #0x00
	ldsh r1, [r3, r0]
	adds r0, r4, #0x0
	bl sub_8047B5C
	b _080F1168
_080F1162:
	adds r0, r4, #0x0
	bl sub_8046A10
_080F1168:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F1170
sub_80F1170:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	adds r4, r3, #0x0
	ldr r0, [r4, #0x00]
	ldr r1, [r5, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x28]
	ldr r3, [r2, #0x0C]
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x04]
	adds r3, r3, r0
	ldr r0, [r2, #0x10]
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r2, #0x14]
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F11BA
	movs r0, #0x01
	b _080F11C8
_080F11BA:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	adds r2, r7, #0x0
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080F11C8:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F11D0
sub_80F11D0:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r3, #0x00]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	ldr r2, [r4, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F1226
	adds r0, r2, #0x0
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x1B
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _080F1226
	adds r0, r2, #0x0
	movs r2, #0x00
	bl sub_80284B0
_080F1226:
	movs r0, #0x00
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F1230
sub_80F1230:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r3, #0x0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _080F1266
	ldr r0, [r4, #0x04]
	lsls r3, r0, #0x04
	str r3, [r4, #0x04]
	ldr r0, [r4, #0x08]
	lsls r2, r0, #0x04
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _080F1266
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r4, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x08
	str r0, [r4, #0x08]
_080F1266:
	ldr r1, [r4, #0x04]
	lsls r1, r1, #0x08
	ldr r2, [r4, #0x08]
	lsls r2, r2, #0x08
	ldr r3, [r4, #0x0C]
	lsls r3, r3, #0x08
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	movs r3, #0x00
	ldr r2, [r6, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xF8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F12A8
	adds r0, r2, #0x0
	adds r0, #0xFA
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1B
	adds r1, r5, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _080F12A8
	movs r3, #0x01
_080F12A8:
	ldr r0, [r4, #0x14]
	ands r3, r0
	cmp r3, #0x00
	beq _080F12BE
	ldr r0, [r6, #0x14]
	adds r1, r5, #0x0
	adds r1, #0x54
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	bl sub_80284B0
_080F12BE:
	movs r0, #0x00
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80F12C8
sub_80F12C8:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, [r3, #0x00]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x28]
	ldr r3, [r1, #0x0C]
	asrs r3, r3, #0x08
	ldr r0, [r1, #0x10]
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F1304
	movs r0, #0x01
	b _080F1312
_080F1304:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080F1312:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F131C
sub_80F131C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	adds r0, #0x1C
	add r3, sp, #0x010
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	add r2, sp, #0x00C
	bl sub_80EA6D4
	adds r4, #0x0C
	ldm r4!, {r5}
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x01
	bne _080F136E
	ldr r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F135A
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F135C
_080F135A:
	lsls r0, r1, #0x08
_080F135C:
	str r0, [r4, #0x00]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _080F136E
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0x0
	bl sub_804794C
_080F136E:
	movs r0, #0x03
	ands r5, r0
	ldr r3, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x004]
	ldrh r0, [r4, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_8045A94
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	mov r2, r8
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F13A4
sub_80F13A4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r4, r3, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080F13C8
	ldr r0, [r4, #0x08]
	lsls r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x04
	str r0, [r4, #0x10]
_080F13C8:
	ldr r0, [r4, #0x04]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F13FA
	ldr r1, [r4, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F13E6
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F13E8
_080F13E6:
	lsls r0, r1, #0x08
_080F13E8:
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x14]
	cmp r1, #0x00
	beq _080F13FA
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	bl sub_804794C
_080F13FA:
	ldr r2, [r4, #0x04]
	asrs r1, r2, #0x01
	movs r0, #0x03
	ands r1, r0
	movs r0, #0x01
	ands r2, r0
	ldr r3, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x004]
	ldrh r0, [r4, #0x14]
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8045A94
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F1424
	movs r0, #0x01
	b _080F1432
_080F1424:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080F1432:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F143C
sub_80F143C:
	push {lr}
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F1466
	cmp r2, #0x01
	bgt _080F1458
	cmp r2, #0x00
	beq _080F145E
	b _080F1470
_080F1458:
	cmp r2, #0x02
	beq _080F146C
	b _080F1470
_080F145E:
	movs r1, #0x01
	bl sub_8047D84
	b _080F1470
_080F1466:
	bl sub_8047D64
	b _080F1470
_080F146C:
	bl sub_8047D44
_080F1470:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1478
sub_80F1478:
	push {lr}
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	ldrh r1, [r2, #0x00]
	bl sub_8047E50
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F1490
sub_80F1490:
	push {lr}
	adds r0, r1, #0x0
	ldr r3, [r3, #0x00]
	cmp r3, #0x01
	beq _080F14B2
	cmp r3, #0x01
	bgt _080F14A4
	cmp r3, #0x00
	beq _080F14AA
	b _080F14BC
_080F14A4:
	cmp r3, #0x02
	beq _080F14B8
	b _080F14BC
_080F14AA:
	movs r1, #0x01
	bl sub_8047D84
	b _080F14BC
_080F14B2:
	bl sub_8047D64
	b _080F14BC
_080F14B8:
	bl sub_8047D44
_080F14BC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F14C4
sub_80F14C4:
	push {lr}
	adds r0, r1, #0x0
	ldrh r1, [r3, #0x00]
	bl sub_8047E50
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F14D4
sub_80F14D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x0C]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _080F1518
	ldr r0, _080F1514 @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	b _080F1522
	.byte 0x00, 0x00
_080F1514: .4byte 0x00000215
_080F1518:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
_080F1522:
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	adds r3, #0x94
	adds r2, r4, r3
	ldr r2, [r2, #0x00]
	ldrb r3, [r5, #0x0C]
	ldrb r4, [r5, #0x08]
	str r4, [sp, #0x000]
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F155C
sub_80F155C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080F1598
	ldr r0, _080F1594 @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	b _080F15A2
_080F1594: .4byte 0x00000215
_080F1598:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
_080F15A2:
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x1C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	ldrb r3, [r5, #0x08]
	ldrb r1, [r5, #0x04]
	str r1, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F15DC
sub_80F15DC:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	ldr r1, [r5, #0x04]
	ldr r2, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r5, #0x0C]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F1648
sub_80F1648:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x0C]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _080F168C
	ldr r0, _080F1688 @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	b _080F1696
	.byte 0x00, 0x00
_080F1688: .4byte 0x00000215
_080F168C:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
_080F1696:
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r2, [r2, #0x00]
	ldrb r3, [r5, #0x0C]
	ldrb r4, [r5, #0x08]
	str r4, [sp, #0x000]
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80F16C0
sub_80F16C0:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r0, r4, r0
	ldrb r1, [r5, #0x04]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	ldr r1, [r5, #0x08]
	ldr r2, [r5, #0x0C]
	adds r0, r4, #0x0
	bl sub_8047154
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r5, #0x10]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1738
sub_80F1738:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	beq _080F177A
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x98
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r5, #0x04]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	b _080F1792
_080F177A:
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r4, r0
	ldrb r1, [r5, #0x04]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
_080F1792:
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	adds r1, #0x58
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r2, [r2, #0x00]
	ldrb r3, [r5, #0x10]
	ldrb r4, [r5, #0x0C]
	str r4, [sp, #0x000]
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start script_cmd_80F17C4
script_cmd_80F17C4: @ 080F17C4
	push {lr}
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	ldrb r1, [r2, #0x00]
	bl sub_8047364
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F17DC
sub_80F17DC:
	push {lr}
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	bl sub_80473DC
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F17F4
sub_80F17F4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	cmp r3, #0xFF
	beq _080F1836
	ldr r2, [r5, #0x14]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	cmp r0, r3
	beq _080F182C
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F1824
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl sub_802E854
	b _080F182C
_080F1824:
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl sub_802EC64
_080F182C:
	ldr r4, [r4, #0x00]
	ldr r0, [r5, #0x14]
	bl sub_8029830
	b _080F183E
_080F1836:
	movs r4, #0xFF
	ldr r0, [r5, #0x14]
	bl sub_8029804
_080F183E:
	ldr r0, _080F1854 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r4, [r0, #0x00]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1854: .4byte 0x03000FD0
	thumb_func_start sub_80F1858
sub_80F1858:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047364
	ldr r0, [r5, #0x00]
	cmp r0, #0xFF
	bne _080F187A
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	str r0, [r5, #0x00]
_080F187A:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	ldr r1, [r5, #0x00]
	ldr r2, [r5, #0x04]
	adds r0, r4, #0x0
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r5, #0x08]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F18C4
sub_80F18C4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080F1900
	ldr r0, _080F18FC @ =0x00000215
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	b _080F190A
_080F18FC: .4byte 0x00000215
_080F1900:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
_080F190A:
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	ldrb r3, [r5, #0x08]
	ldrb r1, [r5, #0x04]
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1934
sub_80F1934:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r0, r4, r0
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	ldr r1, [r5, #0x04]
	ldr r2, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8047154
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r5, #0x0C]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1998
sub_80F1998:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	ldr r1, [r5, #0x0C]
	adds r0, r4, #0x0
	bl sub_8047258
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _080F19D4
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x98
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r0, r4, r0
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
	b _080F19EC
_080F19D4:
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r2, [r0, #0x00]
	adds r2, #0x90
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r0, r4, r0
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x04]
	bl _call_via_r2
_080F19EC:
	ldr r1, [r5, #0x04]
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r6, #0x0
	adds r0, #0x1C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	ldrb r3, [r5, #0x0C]
	ldrb r1, [r5, #0x08]
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1A1C
sub_80F1A1C:
	push {lr}
	adds r0, r1, #0x0
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	beq _080F1A2C
	cmp r3, #0x01
	beq _080F1A32
	b _080F1A36
_080F1A2C:
	bl sub_805113C
	b _080F1A36
_080F1A32:
	bl sub_8050FD0
_080F1A36:
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F1A3C
sub_80F1A3C:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r3, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x3F
	beq _080F1A50
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x28]
_080F1A50:
	adds r4, #0x04
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r4, #0x00]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_80F1A7C
sub_80F1A7C:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r3, #0x00]
	cmp r0, #0x3F
	beq _080F1A90
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x28]
_080F1A90:
	adds r3, #0x04
	ldr r1, [r3, #0x00]
	adds r0, r4, #0x0
	bl sub_80475A0
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
