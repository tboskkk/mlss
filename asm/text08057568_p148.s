	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F8A28
sub_80F8A28:
	push {r4, lr}
	adds r4, r1, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [r0, #0x2C]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r1, r1, r0
	mov r12, r1
	movs r1, #0x10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080F8A4A
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x08
	add r12, r0
	movs r1, #0x01
_080F8A4A:
	adds r2, r1, #0x0
	cmp r2, #0x00
	beq _080F8A82
_080F8A50:
	mov r0, r12
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F8A70
	mov r0, r12
	adds r0, #0xA4
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	bne _080F8A70
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F8A84
_080F8A70:
	lsls r0, r2, #0x10
	ldr r1, _080F8A8C @ =0xFFFF0000
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r12, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _080F8A50
_080F8A82:
	movs r0, #0x01
_080F8A84:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8A8C: .4byte 0xFFFF0000
	thumb_func_start sub_80F8A90
sub_80F8A90:
	push {lr}
	ldr r1, [r2, #0x04]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x2C]
	adds r0, r0, r1
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F8AA6
	cmp r2, #0x01
	beq _080F8AB4
	b _080F8AC2
_080F8AA6:
	movs r1, #0xF4
	lsls r1, r1, #0x03
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	b _080F8AC0
_080F8AB4:
	movs r1, #0xF4
	lsls r1, r1, #0x03
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8AC8 @ =0x0000FFFB
	ands r0, r1
_080F8AC0:
	strh r0, [r2, #0x00]
_080F8AC2:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F8AC8: .4byte 0x0000FFFB
	thumb_func_start ybai_script_update_80F8ACC
ybai_script_update_80F8ACC: @ 080F8ACC
	push {r4, r5, lr}
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
	beq _080F8B18
	movs r0, #0x00
	b _080F8B28
_080F8AE8:
	ldr r0, _080F8B30 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r3, r0, r1
	adds r1, #0x94
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl script_read_next_line
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	add r2, sp, #0x008
	bl btl_script_execute_next_command
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F8B26
_080F8B18:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F2AD8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F8AE8
_080F8B26:
	movs r0, #0x01
_080F8B28:
	add sp, #0x03C
	pop {r4, r5}
	pop {r1}
	bx r1
_080F8B30: .4byte 0x03000FC0
	thumb_func_start sub_80F8B34
sub_80F8B34:
	push {lr}
	adds r3, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x07
	bhi _080F8B54
	ldr r0, _080F8B50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F8B64
_080F8B50: .4byte 0x03000FD8
_080F8B54:
	ldr r1, _080F8B7C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F8B64:
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F8B78
	adds r2, r3, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8B80 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8B78:
	pop {r0}
	bx r0
_080F8B7C: .4byte 0x03000FDC
_080F8B80: .4byte 0x0000FFFD
	thumb_func_start sub_80F8B84
sub_80F8B84:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r0, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r0
	mov r12, r1
	movs r5, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x05
	mov r8, r0
	ldr r7, _080F8BD8 @ =0x00000FF7
_080F8BA4:
	cmp r12, r4
	beq _080F8BEA
	mov r0, r12
	adds r0, #0xA0
	ldrh r3, [r0, #0x00]
	mov r0, r8
	ands r0, r3
	cmp r0, #0x00
	beq _080F8BE2
	adds r0, r4, #0x0
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1D
	mov r0, r12
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r3, r0, #0x1D
	cmp r6, r5
	ble _080F8BDC
	adds r0, r1, #0x1
	cmp r3, r0
	blt _080F8C50
	b _080F8BEA
	.byte 0x00, 0x00
_080F8BD8: .4byte 0x00000FF7
_080F8BDC:
	cmp r3, r1
	bge _080F8BEA
	b _080F8C50
_080F8BE2:
	adds r0, r7, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080F8C50
_080F8BEA:
	adds r2, r5, #0x1
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r12, r1
	cmp r12, r4
	beq _080F8C32
	mov r0, r12
	adds r0, #0xA0
	ldrh r3, [r0, #0x00]
	mov r0, r8
	ands r0, r3
	cmp r0, #0x00
	beq _080F8C2A
	adds r0, r4, #0x0
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1D
	mov r0, r12
	adds r0, #0xFE
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r3, r0, #0x1D
	cmp r6, r2
	ble _080F8C24
	adds r0, r1, #0x1
	cmp r3, r0
	blt _080F8C50
	b _080F8C32
_080F8C24:
	cmp r3, r1
	bge _080F8C32
	b _080F8C50
_080F8C2A:
	adds r0, r7, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080F8C50
_080F8C32:
	adds r5, #0x02
	movs r0, #0x80
	lsls r0, r0, #0x01
	add r12, r0
	cmp r5, #0x05
	ble _080F8BA4
	movs r0, #0x01
	cmp r0, #0x00
	beq _080F8C50
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8C5C @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8C50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F8C5C: .4byte 0x0000EFFF
	thumb_func_start sub_80F8C60
sub_80F8C60:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, [r0, #0x2C]
	ldr r1, _080F8C84 @ =0x00001788
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _080F8C80
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8C88 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8C80:
	pop {r0}
	bx r0
_080F8C84: .4byte 0x00001788
_080F8C88: .4byte 0x0000FDFF
	thumb_func_start sub_80F8C8C
sub_80F8C8C:
	push {lr}
	adds r2, r1, #0x0
	adds r1, #0xFD
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x04
	ldr r0, [r0, #0x2C]
	lsls r1, r1, #0x08
	adds r1, r1, r0
	movs r0, #0xF4
	lsls r0, r0, #0x03
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080F8CB6
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8CBC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8CB6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F8CBC: .4byte 0x0000F7FF
	thumb_func_start sub_80F8CC0
sub_80F8CC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	mov r10, r3
	ldr r3, [sp, #0x034]
	ldr r0, [sp, #0x038]
	mov r8, r0
	ldr r6, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r0, r10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r7, #0x2C]
	mov r9, r0
	ldr r0, _080F8D60 @ =0x03000D44
	ldr r5, [r0, #0x00]
	movs r0, #0x00
	mov r12, r0
	strh r6, [r5, #0x20]
	adds r5, #0x28
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x02
	ldrb r6, [r5, #0x00]
	subs r0, #0x4C
	ands r0, r6
	orrs r0, r4
	strb r0, [r5, #0x00]
	lsrs r1, r1, #0x16
	adds r0, r7, #0x0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x30]
	movs r1, #0x02
	str r1, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldr r1, _080F8D64 @ =0x00001790
	add r9, r1
	mov r1, r9
	str r1, [sp, #0x008]
	mov r1, r12
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	adds r1, r2, #0x0
	mov r2, r10
	bl sub_80E5AA0
	ldr r2, _080F8D68 @ =0x082001D8
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80F1EE8
	str r0, [r7, #0x28]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F8D60: .4byte 0x03000D44
_080F8D64: .4byte 0x00001790
_080F8D68: .4byte 0x082001D8
	thumb_func_start sub_80F8D6C
sub_80F8D6C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r7, [sp, #0x014]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r4, #0x20
	adds r4, r4, r1
	ldr r2, _080F8DA0 @ =0x082001D0
	movs r0, #0x08
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl sub_80E588C
	str r0, [r4, #0x00]
	bl sub_80E92A8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F8DA0: .4byte 0x082001D0
