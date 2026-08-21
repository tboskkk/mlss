	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8111B38
sub_8111B38:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111C12
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08111BB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x80
	ldr r2, [r1, #0x00]
	adds r0, #0x84
	ldr r7, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r3, #0x06
	adds r5, r3, #0x0
	ands r5, r0
	cmp r5, #0x02
	bne _08111BDC
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08111BBC
	adds r1, r2, #0x0
	adds r1, #0x08
	movs r2, #0x08
	negs r2, r2
	subs r3, #0x08
	movs r4, #0x0A
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, _08111BB8 @ =0x081120E5
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_8111D0C
	adds r1, r7, #0x0
	adds r1, #0x08
	str r4, [sp, #0x000]
	b _08111BC4
_08111BB4: .4byte 0x03000FD8
_08111BB8: .4byte sub_81120E4
_08111BBC:
	adds r1, r2, #0x0
	adds r1, #0x08
	movs r0, #0x0A
	str r0, [sp, #0x000]
_08111BC4:
	str r5, [sp, #0x004]
	ldr r0, _08111BD8 @ =0x0811208D
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8111D0C
	b _08111BFA
	.byte 0x00, 0x00
_08111BD8: .4byte sub_811208C
_08111BDC:
	adds r1, r7, #0x0
	adds r1, #0x08
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x0A
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	ldr r0, _08111C1C @ =0x081120E5
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_8111D0C
_08111BFA:
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08111C20 @ =0x0811213D
	str r0, [r6, #0x4C]
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08111C12:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111C1C: .4byte sub_81120E4
_08111C20: .4byte sub_811213C
	thumb_func_start sub_8111C24
sub_8111C24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x0A
	bne _08111C4A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08111C9C @ =0x0810DD7D
	str r0, [r4, #0x5C]
_08111C4A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x2
	cmp r0, #0x00
	beq _08111C60
	subs r1, r2, #0x2
_08111C60:
	adds r0, r4, #0x0
	adds r0, #0x75
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8111F3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08111C94
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	ldr r2, _08111CA0 @ =0x00000113
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, _08111CA4 @ =0x08112065
	str r0, [r4, #0x4C]
_08111C94:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111C9C: .4byte sub_810DD7C
_08111CA0: .4byte 0x00000113
_08111CA4: .4byte sub_8112064
	thumb_func_start sub_8111CA8
sub_8111CA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x01
	beq _08111D00
	cmp r0, #0x00
	bne _08111CD6
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08111D00
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	b _08111D00
_08111CD6:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
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
	ldr r0, _08111D08 @ =0x08112031
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_08111D00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111D08: .4byte sub_8112030
	thumb_func_start sub_8111D0C
sub_8111D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r3, [sp, #0x024]
	ldr r0, [sp, #0x028]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, _08111DFC @ =0x00004041
	mov r0, r8
	movs r2, #0x00
	str r3, [sp, #0x000]
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r1, _08111E00 @ =0x00004042
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x08
	ldr r0, [r4, #0x38]
	adds r0, r0, r5
	str r0, [r4, #0x38]
	str r0, [r7, #0x38]
	str r0, [r4, #0x10]
	str r0, [r7, #0x10]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x08
	ldr r0, [r4, #0x3C]
	adds r0, r0, r6
	str r0, [r4, #0x3C]
	str r0, [r7, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r7, #0x14]
	ldr r3, [sp, #0x000]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	adds r0, r0, r3
	str r0, [r4, #0x40]
	str r0, [r7, #0x40]
	str r0, [r4, #0x18]
	str r0, [r7, #0x18]
	mov r0, r9
	str r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	ldr r5, [r7, #0x08]
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r3, #0x12]
	ldrb r0, [r5, #0x12]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x12]
	ldr r1, [sp, #0x02C]
	str r1, [r4, #0x4C]
	str r1, [r7, #0x4C]
	mov r3, r8
	adds r3, #0x75
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	adds r2, r7, #0x0
	adds r2, #0x75
	movs r1, #0x00
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	adds r2, r4, #0x0
	adds r2, #0x75
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	str r1, [r0, #0x00]
	adds r4, #0xA8
	movs r0, #0x01
	str r0, [r4, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x28]
	ldr r2, _08111E04 @ =0x00000113
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x02
	strb r0, [r1, #0x00]
	mov r0, r10
	cmp r0, #0x00
	beq _08111E08
	mov r1, r10
	subs r1, #0x01
	adds r3, r7, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r3, #0x01
	b _08111E16
_08111DFC: .4byte 0x00004041
_08111E00: .4byte 0x00004042
_08111E04: .4byte 0x00000113
_08111E08:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
_08111E16:
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8111E30
sub_8111E30:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	adds r6, r2, #0x0
	adds r0, #0x88
	str r0, [sp, #0x00C]
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0x02
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	add r1, sp, #0x008
	lsls r0, r6, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	bl sub_8087878
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r8, r1
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	ldr r7, _08111EF8 @ =0x03001038
	ldr r1, _08111EFC @ =0x0819832C
	ldr r0, _08111F00 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	subs r0, r6, r0
	ldr r2, [sp, #0x004]
	muls r0, r2
	cmp r0, #0x00
	bge _08111EA6
	adds r0, #0x3F
_08111EA6:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08111EB4
	adds r0, #0x3F
_08111EB4:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	adds r1, r0, #0x0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r0, r1
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _08111F04
	ldr r2, [r7, #0x00]
	add r2, r9
	mov r1, r10
	lsls r0, r1, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08111F0A
_08111EF8: .4byte 0x03001038
_08111EFC: .4byte 0x0819832C
_08111F00: .4byte 0x08198220
_08111F04:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
_08111F0A:
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x94
	ldr r0, [sp, #0x004]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8111F3C
sub_8111F3C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08111F60
	adds r0, #0xFF
_08111F60:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08111FD8 @ =0x00003FFF
	cmp r5, r0
	bgt _08111FF6
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08111F94
	adds r0, #0x3F
_08111F94:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08111FB0
	adds r0, #0x3F
_08111FB0:
	asrs r0, r0, #0x06
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08111FDC
	subs r0, #0x10
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08111FD4
	adds r0, #0x3F
_08111FD4:
	asrs r0, r0, #0x06
	b _08111FF0
_08111FD8: .4byte 0x00003FFF
_08111FDC:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	subs r0, #0x02
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
_08111FF0:
	str r0, [r4, #0x14]
	movs r0, #0x01
	b _08112028
_08111FF6:
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r6, #0x02
	ldsh r0, [r0, r6]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08112028:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
