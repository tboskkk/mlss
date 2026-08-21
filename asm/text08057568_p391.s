	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806BAB8
sub_806BAB8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BAF8
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BADA
	adds r1, #0xFF
_0806BADA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BAE4
	adds r2, #0xFF
_0806BAE4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BAEE
	adds r3, #0xFF
_0806BAEE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BB20 @ =0x00001C52
	bl sub_80DF024
_0806BAF8:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB3C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB24
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB30
_0806BB20: .4byte 0x00001C52
_0806BB24:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB30:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _0806BB44 @ =0x0806BB49
	str r0, [r4, #0x4C]
_0806BB3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806BB44: .4byte sub_806BB48
	thumb_func_start sub_806BB48
sub_806BB48:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BC2A
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BC2A
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB82
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB8E
_0806BB82:
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB8E:
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _0806BB98
	adds r2, #0xFF
_0806BB98:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0806BBA2
	adds r3, #0xFF
_0806BBA2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806BBAC
	adds r0, #0xFF
_0806BBAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806BC34 @ =0x000040D0
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	movs r2, #0x77
	adds r2, r2, r0
	mov r12, r2
	adds r3, r4, #0x0
	ands r3, r1
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r1
	orrs r2, r3
	mov r1, r12
	strb r2, [r1, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	ands r4, r1
	lsls r4, r4, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r2, r1
	orrs r2, r4
	mov r1, r12
	strb r2, [r1, #0x00]
	ldr r1, _0806BC38 @ =0x08087541
	str r1, [r0, #0x68]
	ldr r1, [r5, #0x6C]
	str r1, [r0, #0x6C]
	ldr r1, [r5, #0x2C]
	str r1, [r0, #0x2C]
	adds r1, r5, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	adds r0, #0x75
	strb r1, [r0, #0x00]
	ldr r0, _0806BC3C @ =0x0806BFD5
	str r0, [r5, #0x4C]
_0806BC2A:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BC34: .4byte 0x000040D0
_0806BC38: .4byte sub_8087540
_0806BC3C: .4byte sub_806BFD4
	thumb_func_start sub_806BC40
sub_806BC40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BCE8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BCE8
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806BCB4 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BCBC
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCB8 @ =0x00001534
	b _0806BCD6
	.byte 0x00, 0x00
_0806BCB4: .4byte 0x00000119
_0806BCB8: .4byte 0x00001534
_0806BCBC:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCF0 @ =0x0000159E
_0806BCD6:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BCF4 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BCF8 @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BCFC @ =0x0806BF71
	str r0, [r4, #0x4C]
_0806BCE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BCF0: .4byte 0x0000159E
_0806BCF4: .4byte 0x03000E3C
_0806BCF8: .4byte sub_806BEA8
_0806BCFC: .4byte sub_806BF70
	thumb_func_start sub_806BD00
sub_806BD00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BD8C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BD8C
	subs r1, #0x28
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _0806BD58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BD60
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD5C @ =0x00001569
	b _0806BD7A
	.byte 0x00, 0x00
_0806BD58: .4byte 0x00000119
_0806BD5C: .4byte 0x00001569
_0806BD60:
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD94 @ =0x000015D3
_0806BD7A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BD98 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BD9C @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BDA0 @ =0x0806BDA5
	str r0, [r4, #0x4C]
_0806BD8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BD94: .4byte 0x000015D3
_0806BD98: .4byte 0x03000E3C
_0806BD9C: .4byte sub_806BEA8
_0806BDA0: .4byte sub_806BDA4
	thumb_func_start sub_806BDA4
sub_806BDA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE26
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806BDF8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BDDA
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BDE6
_0806BDDA:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BDE6:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BDF4 @ =0x0806BC41
	b _0806BE24
	.byte 0x00, 0x00
_0806BDF4: .4byte sub_806BC40
_0806BDF8:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BE16
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BE22
_0806BE16:
	adds r0, r4, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BE22:
	ldr r0, _0806BE2C @ =0x0806BE31
_0806BE24:
	str r0, [r4, #0x4C]
_0806BE26:
	pop {r4}
	pop {r0}
	bx r0
_0806BE2C: .4byte sub_806BE30
	thumb_func_start sub_806BE30
sub_806BE30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE9E
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806BEA4 @ =0x0806BF0D
	str r0, [r4, #0x4C]
_0806BE9E:
	pop {r4}
	pop {r0}
	bx r0
_0806BEA4: .4byte sub_806BF0C
	thumb_func_start sub_806BEA8
sub_806BEA8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BEB8
	adds r1, #0xFF
_0806BEB8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BEC2
	adds r2, #0xFF
_0806BEC2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BECC
	adds r3, #0xFF
_0806BECC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806BEF0 @ =0x00001C4A
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BEF8
	ldr r0, _0806BEF4 @ =0x0806BF71
	b _0806BEFA
	.byte 0x00, 0x00
_0806BEF0: .4byte 0x00001C4A
_0806BEF4: .4byte sub_806BF70
_0806BEF8:
	ldr r0, _0806BF08 @ =0x0806BDA5
_0806BEFA:
	str r0, [r5, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806BF08: .4byte sub_806BDA4
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
