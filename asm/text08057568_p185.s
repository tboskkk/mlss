	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807FABC
sub_807FABC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	ldr r0, _0807FAFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807FB00 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	str r5, [r4, #0x04]
	str r6, [r4, #0x08]
	mov r0, r8
	str r0, [r4, #0x0C]
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FAFC: .4byte 0x03000FD8
_0807FB00: .4byte 0x03001034
	thumb_func_start sub_807FB04
sub_807FB04:
	push {r4, lr}
	ldr r0, _0807FB2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807FB30 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0807FB2C: .4byte 0x03000FD8
_0807FB30: .4byte 0x03001034
	thumb_func_start sub_807FB34
sub_807FB34:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0807FB5C
	bl sub_807BDDC
	ldrb r0, [r4, #0x13]
	movs r1, #0x05
	negs r1, r1
	ands r1, r0
	movs r0, #0x09
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
_0807FB5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807FB64
sub_807FB64:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_807FB78
sub_807FB78:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r4, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r4, #0x13]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_80842D8
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807FBD8
sub_807FBD8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _0807FC04 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C20
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC04: .4byte 0x03000FD8
	thumb_func_start sub_807FC08
sub_807FC08:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _0807FC34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C58
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC34: .4byte 0x03000FD8
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x04, 0x48, 0x00, 0x68, 0x93, 0x22, 0x92, 0x00, 0x80, 0x18, 0x00, 0x68
	.byte 0x02, 0xF0, 0x90, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0xD8, 0x0F, 0x00, 0x03
	thumb_func_start sub_807FC54
sub_807FC54:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [sp, #0x018]
	ldr r0, _0807FC84 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082CCC
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC84: .4byte 0x03000FD8
	thumb_func_start sub_807FC88
sub_807FC88:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FCCC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r7, #0x00
	ldr r1, [r0, #0x1C]
	adds r6, r0, #0x0
	adds r6, #0x58
	adds r5, r1, #0x0
	adds r5, #0x08
_0807FC9C:
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FCD0
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FCD0
	cmp r4, #0x00
	blt _0807FCC8
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _0807FCD0
_0807FCC8:
	adds r0, r7, #0x0
	b _0807FD3E
_0807FCCC: .4byte 0x03000FD8
_0807FCD0:
	adds r3, r7, #0x1
	ldrb r0, [r5, #0x06]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FCFE
	ldr r2, [r6, #0x04]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FCFE
	cmp r4, #0x00
	blt _0807FD2C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	beq _0807FD2C
_0807FCFE:
	adds r3, r7, #0x2
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FD30
	ldr r2, [r6, #0x08]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FD30
	cmp r4, #0x00
	blt _0807FD2C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _0807FD30
_0807FD2C:
	adds r0, r3, #0x0
	b _0807FD3E
_0807FD30:
	adds r6, #0x0C
	adds r5, #0x0C
	adds r7, #0x03
	cmp r7, #0x05
	ble _0807FC9C
	movs r0, #0x01
	negs r0, r0
_0807FD3E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xF0, 0xB5, 0x04, 0x1C, 0x00, 0x23, 0x26, 0x48, 0x00, 0x68, 0x88, 0x25, 0x6D, 0x00, 0x02, 0x1C
	.byte 0x58, 0x32, 0x20, 0x26, 0x07, 0x27, 0x11, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07
	.byte 0x80, 0x0F, 0xA0, 0x42, 0x06, 0xD1, 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28
	.byte 0x00, 0xD1, 0x01, 0x33, 0x51, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F
	.byte 0xA0, 0x42, 0x06, 0xD1, 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1
	.byte 0x01, 0x33, 0x91, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F, 0xA0, 0x42
	.byte 0x06, 0xD1, 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x33
	.byte 0xD1, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F, 0xA0, 0x42, 0x06, 0xD1
	.byte 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x33, 0x10, 0x32
	.byte 0x04, 0x3F, 0x00, 0x2F, 0xBF, 0xDA, 0x18, 0x1C, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03
	thumb_func_start sub_807FDE8
sub_807FDE8:
	push {lr}
	adds r3, r0, #0x0
	ldr r2, [r3, #0x00]
	ldr r0, [r1, #0x00]
	cmp r2, #0x00
	beq _0807FDFA
	cmp r0, #0x00
	bne _0807FE06
	b _0807FDFC
_0807FDFA:
	adds r2, r3, #0x0
_0807FDFC:
	cmp r0, #0x00
	bne _0807FE02
	adds r0, r1, #0x0
_0807FE02:
	str r2, [r1, #0x00]
	str r0, [r3, #0x00]
_0807FE06:
	adds r2, r3, #0x0
	b _0807FE10
_0807FE0A:
	ldr r2, [r2, #0x00]
	cmp r2, r3
	beq _0807FE3C
_0807FE10:
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807FE0A
	adds r0, r3, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807FE2C
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x10]
_0807FE2C:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807FE3C
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x10]
_0807FE3C:
	pop {r0}
	bx r0
	thumb_func_start sub_807FE40
sub_807FE40:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0807FE76
	ldr r4, [r3, #0x00]
	adds r5, r3, #0x0
	adds r5, #0x08
	cmp r4, #0x00
	beq _0807FE70
	adds r2, r4, #0x0
	b _0807FE58
_0807FE56:
	adds r2, r0, #0x0
_0807FE58:
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x04]
	cmp r1, r0
	bne _0807FE64
	ldr r0, [r2, #0x04]
	str r0, [r2, #0x10]
_0807FE64:
	ldr r0, [r2, #0x00]
	cmp r0, r3
	bne _0807FE56
	str r4, [r2, #0x00]
	movs r0, #0x00
	str r0, [r3, #0x00]
_0807FE70:
	adds r0, r5, #0x0
	bl sub_807C298
_0807FE76:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_807FE7C
sub_807FE7C:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _0807FEAC @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r4, _0807FEB0 @ =0x0807FEB5
	ldr r2, [r3, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r3, #0x3C]
	ldr r1, [r3, #0x4C]
	str r1, [r2, #0x00]
	str r4, [r2, #0x04]
	movs r1, #0x00
	strh r1, [r2, #0x10]
	str r2, [r3, #0x4C]
	str r0, [r2, #0x08]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FEAC: .4byte 0x03000FD8
_0807FEB0: .4byte sub_807FEB4
	thumb_func_start sub_807FEB4
sub_807FEB4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x08]
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807FEE6
	adds r0, r5, #0x0
	bl sub_8085A6C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FEE6
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_0807FEE6:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x79
	cmp r0, #0x00
	beq _0807FF08
	adds r0, r5, #0x0
	bl sub_80877C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FF08
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_0807FF08:
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FF18
	str r0, [r6, #0x04]
_0807FF18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
