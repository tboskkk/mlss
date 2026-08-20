	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F0BA4
sub_80F0BA4:
	push {lr}
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	ldrb r2, [r2, #0x04]
	bl sub_805C78C
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0BC0
sub_80F0BC0:
	push {lr}
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	bl sub_805C7B4
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F0BD8
sub_80F0BD8:
	push {lr}
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r2, #0x00]
	bl sub_805B490
	movs r0, #0x00
	pop {r1}
	bx r1
	thumb_func_start sub_80F0BF0
sub_80F0BF0:
	push {lr}
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r2, #0x00]
	bl sub_805B618
	movs r0, #0x00
	pop {r1}
	bx r1
	thumb_func_start sub_80F0C08
sub_80F0C08:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0x0
	ldr r1, _080F0C50 @ =0x03000FD0
	ldr r0, [r1, #0x00]
	movs r3, #0xA8
	lsls r3, r3, #0x02
	adds r3, r3, r0
	mov r12, r3
	movs r6, #0x00
	mov r8, r1
_080F0C20:
	mov r7, r8
	ldr r3, [r7, #0x00]
	ldr r1, _080F0C54 @ =0x0000055B
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	asrs r0, r6
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F0C68
	cmp r5, #0x00
	beq _080F0C58
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	mov r3, r12
	ldrb r3, [r3, #0x1C]
	cmp r0, r3
	bne _080F0C68
	b _080F0CA6
	.byte 0x00, 0x00
_080F0C50: .4byte 0x03000FD0
_080F0C54: .4byte 0x0000055B
_080F0C58:
	movs r7, #0xA9
	lsls r7, r7, #0x03
	adds r0, r3, r7
	ldrb r0, [r0, #0x00]
	mov r1, r12
	ldrb r1, [r1, #0x1C]
	cmp r0, r1
	beq _080F0CA6
_080F0C68:
	mov r4, r12
	adds r4, #0x20
	adds r1, r6, #0x1
	mov r7, r8
	ldr r3, [r7, #0x00]
	ldr r7, _080F0C94 @ =0x0000055B
	adds r0, r3, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F0CAE
	cmp r5, #0x00
	beq _080F0C98
	adds r0, r5, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	b _080F0CA0
_080F0C94: .4byte 0x0000055B
_080F0C98:
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
_080F0CA0:
	ldrb r4, [r4, #0x1C]
	cmp r0, r4
	bne _080F0CAE
_080F0CA6:
	ldr r0, [r2, #0x14]
	str r0, [r2, #0x00]
	movs r0, #0x00
	b _080F0CBA
_080F0CAE:
	movs r3, #0x40
	add r12, r3
	adds r6, #0x02
	cmp r6, #0x03
	ble _080F0C20
	movs r0, #0x01
_080F0CBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F0CC4
sub_80F0CC4:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080F0CEA
	ldr r1, [r4, #0x04]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F0CE6
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F0CE8
_080F0CE6:
	lsls r0, r1, #0x08
_080F0CE8:
	str r0, [r4, #0x04]
_080F0CEA:
	ldr r0, [r5, #0x14]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	add r3, sp, #0x00C
	add r2, sp, #0x008
	bl get_fobj_screen_pos
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	adds r1, #0x01
	ldr r3, [sp, #0x008]
	subs r3, #0x78
	ldr r2, [sp, #0x00C]
	subs r2, #0x64
	str r2, [sp, #0x000]
	movs r5, #0x04
	ldsh r2, [r4, r5]
	str r2, [sp, #0x004]
	movs r2, #0x01
	bl sub_8028AFC
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0D38
sub_80F0D38:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r4, r2, #0x0
	ldr r2, [r4, #0x04]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _080F0D50
	movs r0, #0x3F
	ands r2, r0
	lsrs r2, r2, #0x02
	b _080F0D5A
_080F0D50:
	movs r0, #0x00
	cmp r2, #0x01
	ble _080F0D58
	movs r0, #0x03
_080F0D58:
	adds r2, r0, #0x0
_080F0D5A:
	ldr r1, [r4, #0x08]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F0D6C
	movs r0, #0x3F
	ands r1, r0
	lsrs r1, r1, #0x02
	b _080F0D76
_080F0D6C:
	movs r0, #0x00
	cmp r1, #0x01
	ble _080F0D74
	movs r0, #0x03
_080F0D74:
	adds r1, r0, #0x0
_080F0D76:
	ldr r0, [r3, #0x14]
	adds r0, #0xD4
	ldr r3, [r0, #0x00]
	lsls r2, r2, #0x08
	lsls r0, r1, #0x06
	ldr r5, _080F0D9C @ =0xFFFFE000
	adds r1, r5, #0x0
	orrs r0, r1
	orrs r2, r0
	ldr r0, [r4, #0x00]
	lsls r1, r0, #0x03
	orrs r2, r1
	orrs r0, r2
	strh r0, [r3, #0x0C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0D9C: .4byte 0xFFFFE000
	thumb_func_start sub_80F0DA0
sub_80F0DA0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _080F0DBC
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x04
	str r0, [r5, #0x08]
	ldr r0, [r5, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r5, #0x0C]
_080F0DBC:
	ldr r0, [r5, #0x04]
	asrs r1, r0, #0x01
	movs r2, #0x03
	ands r1, r2
	adds r3, r0, #0x0
	cmp r1, #0x01
	bne _080F0DE0
	ldr r1, [r5, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F0DDC
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F0DDE
_080F0DDC:
	lsls r0, r1, #0x08
_080F0DDE:
	str r0, [r5, #0x10]
_080F0DE0:
	ldr r0, [r4, #0x14]
	asrs r1, r3, #0x01
	movs r2, #0x03
	ands r1, r2
	movs r2, #0x01
	ands r2, r3
	ldr r3, [r5, #0x08]
	ldr r4, [r5, #0x0C]
	str r4, [sp, #0x000]
	movs r7, #0x10
	ldsh r4, [r5, r7]
	str r4, [sp, #0x004]
	bl sub_8028AFC
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0E18
sub_80F0E18:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x01C
	adds r3, r0, #0x0
	adds r7, r2, #0x0
	ldr r0, [r7, #0x0C]
	lsls r0, r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0x08
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0x08
	str r0, [r7, #0x14]
	ldr r1, [r7, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080F0E40
	movs r0, #0x00
	str r0, [r7, #0x1C]
_080F0E40:
	ldr r0, [r3, #0x14]
	ldrh r1, [r7, #0x00]
	ldr r5, [r7, #0x04]
	movs r6, #0x01
	adds r2, r5, #0x0
	ands r2, r6
	ldrb r3, [r7, #0x08]
	ldr r4, [r7, #0x0C]
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x10]
	str r4, [sp, #0x004]
	ldr r4, [r7, #0x14]
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	ldr r4, [r7, #0x1C]
	str r4, [sp, #0x010]
	movs r4, #0x18
	ldsb r4, [r7, r4]
	str r4, [sp, #0x014]
	asrs r5, r5, #0x01
	ands r5, r6
	add r4, sp, #0x018
	strb r5, [r4, #0x00]
	bl sub_8027E90
	movs r0, #0x00
	add sp, #0x01C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0E80
sub_80F0E80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r2, #0x0
	ldr r0, [r7, #0x0C]
	lsls r0, r0, #0x0C
	str r0, [r7, #0x0C]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #0x0C
	str r0, [r7, #0x10]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0x0B
	movs r1, #0x05
	bl __divsi3
	str r0, [r7, #0x14]
	ldr r1, [r7, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080F0EAE
	movs r0, #0x00
	str r0, [r7, #0x1C]
_080F0EAE:
	ldr r0, [r4, #0x14]
	ldrh r1, [r7, #0x00]
	ldr r5, [r7, #0x04]
	movs r6, #0x01
	adds r2, r5, #0x0
	ands r2, r6
	ldrb r3, [r7, #0x08]
	ldr r4, [r7, #0x0C]
	str r4, [sp, #0x000]
	ldr r4, [r7, #0x10]
	str r4, [sp, #0x004]
	ldr r4, [r7, #0x14]
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	ldr r4, [r7, #0x1C]
	str r4, [sp, #0x010]
	movs r4, #0x18
	ldsb r4, [r7, r4]
	str r4, [sp, #0x014]
	asrs r5, r5, #0x01
	ands r5, r6
	add r4, sp, #0x018
	strb r5, [r4, #0x00]
	bl sub_8027E90
	movs r0, #0x00
	add sp, #0x01C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80F0EEC
sub_80F0EEC:
	push {lr}
	adds r2, r1, #0x0
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080F0EFE
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r2, [r0, #0x00]
_080F0EFE:
	ldr r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F0F1A
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x04
	str r0, [r3, #0x04]
	ldr r0, [r3, #0x08]
	lsls r0, r0, #0x04
	str r0, [r3, #0x08]
	ldr r0, [r3, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r3, #0x0C]
_080F0F1A:
	adds r0, r1, #0x0
	adds r3, #0x04
	cmp r0, #0x00
	blt _080F0F58
	cmp r0, #0x01
	bgt _080F0F40
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldm r3!, {r0}
	str r0, [r1, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldm r3!, {r0}
	str r0, [r1, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x02
	b _080F0F52
_080F0F40:
	cmp r1, #0x03
	bgt _080F0F58
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r2, r0
	ldm r3!, {r0}
	str r0, [r1, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x02
_080F0F52:
	adds r1, r2, r0
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
_080F0F58:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0F60
sub_80F0F60:
	push {r4, lr}
	adds r2, r1, #0x0
	ldr r1, [r3, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F0F76
	movs r4, #0xD1
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r2, [r0, #0x00]
_080F0F76:
	movs r0, #0x01
	ands r1, r0
	adds r3, #0x04
	cmp r1, #0x00
	beq _080F0F82
	movs r0, #0x10
_080F0F82:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r2, r2, r1
	adds r1, r0, #0x0
	ldm r3!, {r0}
	muls r0, r1
	strh r0, [r2, #0x30]
	ldr r0, [r3, #0x00]
	muls r0, r1
	strh r0, [r2, #0x32]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0FA0
sub_80F0FA0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, [r3, #0x00]
	subs r0, #0x02
	cmp r0, #0x0F
	bhi _080F104A
	lsls r0, r0, #0x02
	ldr r1, _080F0FB8 @ =0x080F0FBC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F0FB8: .4byte 0x080F0FBC
	.byte 0x02, 0x10, 0x0F, 0x08, 0x26, 0x10, 0x0F, 0x08, 0x0A, 0x10, 0x0F, 0x08, 0x2E, 0x10, 0x0F, 0x08
	.byte 0xFC, 0x0F, 0x0F, 0x08, 0x1A, 0x10, 0x0F, 0x08, 0x4A, 0x10, 0x0F, 0x08, 0x4A, 0x10, 0x0F, 0x08
	.byte 0x4A, 0x10, 0x0F, 0x08, 0x4A, 0x10, 0x0F, 0x08, 0x4A, 0x10, 0x0F, 0x08, 0x4A, 0x10, 0x0F, 0x08
	.byte 0x4A, 0x10, 0x0F, 0x08, 0x4A, 0x10, 0x0F, 0x08, 0x12, 0x10, 0x0F, 0x08, 0x36, 0x10, 0x0F, 0x08
	.byte 0x20, 0x1C, 0x56, 0xF7, 0xC9, 0xFC, 0x20, 0x1C, 0x56, 0xF7, 0xD0, 0xFC, 0x1F, 0xE0, 0x20, 0x1C
	.byte 0x56, 0xF7, 0xC2, 0xFC, 0x1B, 0xE0, 0x20, 0x1C, 0x56, 0xF7, 0xA0, 0xFC, 0x17, 0xE0, 0x20, 0x1C
	.byte 0x56, 0xF7, 0xFE, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x11, 0xD0, 0x20, 0x1C, 0x56, 0xF7, 0x08, 0xFD
	.byte 0x06, 0xE0, 0x20, 0x1C, 0x56, 0xF7, 0xF4, 0xFC, 0x02, 0xE0, 0x20, 0x1C, 0x56, 0xF7, 0xC0, 0xFC
	.byte 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x68, 0x69, 0x28, 0x60, 0x00, 0x20, 0x00, 0xE0
_080F104A:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F1054
sub_80F1054:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r1, #0x0
	ldr r0, [r3, #0x00]
	asrs r1, r0, #0x01
	movs r2, #0x01
	ands r1, r2
	adds r1, #0x01
	ldrh r4, [r3, #0x04]
	ands r0, r2
	movs r5, #0x01
	cmp r0, #0x00
	beq _080F1070
	subs r5, #0x02
_080F1070:
	ldrh r0, [r3, #0x08]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8047A5C
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80F1088
sub_80F1088:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r4, r3, #0x0
	ldr r2, [r4, #0x00]
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _080F10B2
	asrs r1, r2, #0x01
	movs r0, #0x01
	ands r1, r0
	adds r1, #0x01
	ands r2, r0
	movs r0, #0x04
	ldsh r3, [r4, r0]
	ldrh r0, [r4, #0x08]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_8046A90
_080F10B2:
	ldr r2, [r4, #0x00]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _080F10D4
	asrs r1, r2, #0x01
	movs r0, #0x01
	ands r1, r0
	adds r1, #0x01
	ands r2, r0
	movs r0, #0x04
	ldsh r3, [r4, r0]
	ldrh r0, [r4, #0x08]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_8046B30
_080F10D4:
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F10E0
sub_80F10E0:
	push {lr}
	adds r3, r1, #0x0
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mvns r0, r0
	lsrs r0, r0, #0x1F
	ldm r2!, {r1}
	cmp r0, r1
	bne _080F1104
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
_080F1104:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
