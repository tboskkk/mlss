	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FACCC
sub_80FACCC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, [r0, #0x24]
	adds r0, #0xA8
	mov r12, r0
	movs r1, #0x0C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080FACEC
	ldr r0, [r2, #0x04]
	movs r1, #0xA8
	muls r0, r1
	add r12, r0
	movs r1, #0x01
_080FACEC:
	adds r3, r1, #0x0
	cmp r3, #0x00
	beq _080FAD1E
_080FACF2:
	mov r2, r12
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FAD0E
	ldrb r0, [r2, #0x04]
	cmp r0, r5
	bne _080FAD0E
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080FAD20
_080FAD0E:
	lsls r0, r3, #0x10
	ldr r1, _080FAD28 @ =0xFFFF0000
	adds r0, r0, r1
	movs r1, #0xA8
	add r12, r1
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080FACF2
_080FAD1E:
	movs r0, #0x01
_080FAD20:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FAD28: .4byte 0xFFFF0000
	thumb_func_start sub_80FAD2C
sub_80FAD2C:
	push {lr}
	ldr r3, [r2, #0x04]
	movs r1, #0xA8
	muls r1, r3
	ldr r0, [r0, #0x24]
	adds r0, r0, r1
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080FAD44
	cmp r2, #0x01
	beq _080FAD52
	b _080FAD60
_080FAD44:
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	b _080FAD5E
_080FAD52:
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _080FAD68 @ =0x0000FFFB
	ands r0, r1
_080FAD5E:
	strh r0, [r2, #0x00]
_080FAD60:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FAD68: .4byte 0x0000FFFB
	thumb_func_start sub_80FAD6C
sub_80FAD6C:
	push {r4, r5, r6, lr}
	add sp, #-0x03C
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080FADB2
	movs r0, #0x00
	b _080FADC4
_080FAD88:
	ldr r0, _080FADCC @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x24]
	ldr r6, _080FADD0 @ =0x00000908
	adds r3, r0, r6
	adds r6, #0x94
	adds r0, r0, r6
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	add r2, sp, #0x008
	bl stc_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FADC2
_080FADB2:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F9668
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080FAD88
_080FADC2:
	movs r0, #0x01
_080FADC4:
	add sp, #0x03C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080FADCC: .4byte 0x03000FC0
_080FADD0: .4byte 0x00000908
	thumb_func_start sub_80FADD4
sub_80FADD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x24]
	ldr r2, _080FAE28 @ =0x000009A2
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	lsrs r5, r1, #0x01
	ldr r1, _080FAE2C @ =0x00000888
	adds r4, r0, r1
	cmp r5, #0x00
	beq _080FAE06
_080FADEA:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FADF8
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x00]
_080FADF8:
	lsls r0, r5, #0x10
	ldr r2, _080FAE30 @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #0x04
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080FADEA
_080FAE06:
	ldr r1, [r6, #0x24]
	ldr r3, _080FAE28 @ =0x000009A2
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x01
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x24]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FAE28: .4byte 0x000009A2
_080FAE2C: .4byte 0x00000888
_080FAE30: .4byte 0xFFFF0000
	thumb_func_start sub_80FAE34
sub_80FAE34:
	push {r4, r5, lr}
	movs r5, #0x0D
	ldr r4, [r0, #0x24]
_080FAE3A:
	ldr r0, _080FAE5C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0xA8
	bl _call_via_r3
	adds r4, #0xA8
	lsls r0, r5, #0x10
	ldr r1, _080FAE60 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080FAE3A
	pop {r4, r5}
	pop {r0}
	bx r0
_080FAE5C: .4byte 0x03001034
_080FAE60: .4byte 0xFFFF0000
	thumb_func_start sub_80FAE64
sub_80FAE64:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	ldr r0, [r0, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r2, r2, #0x12
	adds r2, r2, r0
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x12]
	movs r5, #0x07
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080FAEBC
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080FAEB4
	ldrb r0, [r3, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #0x12]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	eors r0, r1
	strh r0, [r2, #0x00]
_080FAEB4:
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r3, #0x12]
_080FAEBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80FAEC4
sub_80FAEC4:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r0, [r0, #0x14]
	bl sub_8120E90
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _080FAEE6
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r2, #0x02
	eors r1, r2
	strh r1, [r0, #0x00]
_080FAEE6:
	pop {r4}
	pop {r0}
	bx r0
