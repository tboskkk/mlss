	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806BF0C
sub_806BF0C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BF4C
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BF2E
	adds r1, #0xFF
_0806BF2E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BF38
	adds r2, #0xFF
_0806BF38:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BF42
	adds r3, #0xFF
_0806BF42:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BF6C @ =0x00001C5B
	bl sub_80DF024
_0806BF4C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806BF64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806BF64:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806BF6C: .4byte 0x00001C5B
	thumb_func_start sub_806BF70
sub_806BF70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BFC8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BFA4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BFBC
_0806BFA4:
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BFBC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BFD0 @ =0x0806BD01
	str r0, [r4, #0x4C]
_0806BFC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BFD0: .4byte sub_806BD00
	thumb_func_start sub_806BFD4
sub_806BFD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C014
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BFFC
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C008
_0806BFFC:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C008:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C01C @ =0x0806BC41
	str r0, [r4, #0x4C]
_0806C014:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C01C: .4byte sub_806BC40
	thumb_func_start sub_806C020
sub_806C020:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C032
	ldr r0, _0806C038 @ =0x0806B825
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806C032:
	pop {r4}
	pop {r1}
	bx r1
_0806C038: .4byte sub_806B824
	thumb_func_start sub_806C03C
sub_806C03C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C052
	adds r0, #0xFF
_0806C052:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C060
	adds r0, #0xFF
_0806C060:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C06E
	adds r0, #0xFF
_0806C06E:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C0D8 @ =0x00001C19
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, _0806C0DC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r7, r5, #0x0
	adds r7, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0AA
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0AA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0C2
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0C2:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806C0D8: .4byte 0x00001C19
_0806C0DC: .4byte 0x03000FD8
	thumb_func_start sub_806C0E0
sub_806C0E0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C18A
	movs r4, #0x00
_0806C0F4:
	ldr r0, _0806C12C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C136
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C130
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C136
	.byte 0x00, 0x00
_0806C12C: .4byte 0x03000FD8
_0806C130:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C136:
	adds r1, r4, #0x1
	ldr r0, _0806C170 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C17A
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C174
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C17A
	.byte 0x00, 0x00
_0806C170: .4byte 0x03000FD8
_0806C174:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C17A:
	adds r4, #0x02
	cmp r4, #0x05
	ble _0806C0F4
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807C298
_0806C18A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_806C190
sub_806C190:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1A2
	adds r0, r1, #0x0
	bl sub_807C298
_0806C1A2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
