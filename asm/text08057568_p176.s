	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810F9FC
sub_810F9FC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FA80
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FA1E
	adds r0, #0xFF
_0810FA1E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x22
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FA30
	adds r0, #0xFF
_0810FA30:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FA3E
	adds r0, #0xFF
_0810FA3E:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0810FA88 @ =0x0810FC35
	str r0, [r4, #0x4C]
_0810FA80:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0810FA88: .4byte sub_810FC34
	thumb_func_start sub_810FA8C
sub_810FA8C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FB0C
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FAAE
	adds r0, #0xFF
_0810FAAE:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FABC
	adds r0, #0xFF
_0810FABC:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x20
	negs r1, r1
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0810FB14 @ =0x00001830
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _0810FB18 @ =0x0810FBBD
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0810FB1C @ =0x0810FB21
	str r0, [r4, #0x4C]
_0810FB0C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0810FB14: .4byte 0x00001830
_0810FB18: .4byte 0x0810FBBD
_0810FB1C: .4byte sub_810FB20
	thumb_func_start sub_810FB20
sub_810FB20:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FBAE
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x86
	bl stop_sfx_80195A8
	ldr r1, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	adds r2, r1, #0x0
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	adds r3, r1, #0x0
	adds r3, #0xE0
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FB66
	adds r0, #0xFF
_0810FB66:
	asrs r1, r0, #0x08
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0810FB70
	adds r0, #0xFF
_0810FB70:
	asrs r2, r0, #0x08
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0810FB7A
	adds r0, #0xFF
_0810FB7A:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _0810FBB8 @ =0x0810FBFD
	str r0, [r4, #0x4C]
_0810FBAE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FBB8: .4byte sub_810FBFC
	.byte 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_810FBC4
sub_810FBC4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0810FBF2
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	movs r0, #0x00
	b _0810FBF4
_0810FBF2:
	adds r0, r4, #0x0
_0810FBF4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_810FBFC
sub_810FBFC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FC2A
	adds r0, r4, #0x0
	movs r1, #0x08
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
	ldr r0, _0810FC30 @ =0x0810FE1D
	str r0, [r4, #0x4C]
_0810FC2A:
	pop {r4}
	pop {r0}
	bx r0
_0810FC30: .4byte sub_810FE1C
	thumb_func_start sub_810FC34
sub_810FC34:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FC66
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x28
	bl sub_80883A0
	movs r0, #0x89
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _0810FC6C @ =0x0810FE45
	str r0, [r4, #0x4C]
_0810FC66:
	pop {r4}
	pop {r0}
	bx r0
_0810FC6C: .4byte sub_810FE44
	thumb_func_start sub_810FC70
sub_810FC70:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FCCE
	adds r0, r4, #0x0
	movs r1, #0x06
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
	movs r0, #0x89
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0810FCAC
	adds r1, #0xFF
_0810FCAC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0810FCB6
	adds r2, #0xFF
_0810FCB6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0810FCC0
	adds r3, #0xFF
_0810FCC0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0810FCD8 @ =0x0000215C
	bl sub_80DF024
	ldr r0, _0810FCDC @ =0x0810FE95
	str r0, [r4, #0x4C]
_0810FCCE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FCD8: .4byte 0x0000215C
_0810FCDC: .4byte sub_810FE94
	thumb_func_start sub_810FCE0
sub_810FCE0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _0810FD06
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0810FD0C @ =0x0000011B
	bl stop_sfx_80195A8
	str r5, [r4, #0x4C]
_0810FD06:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810FD0C: .4byte 0x0000011B
	thumb_func_start sub_810FD10
sub_810FD10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FD44
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x0C
	bl sub_80883A0
	ldr r0, _0810FD4C @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0810FD50 @ =0x0810F825
	str r0, [r4, #0x4C]
_0810FD44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FD4C: .4byte 0x0000010F
_0810FD50: .4byte sub_810F824
	thumb_func_start sub_810FD54
sub_810FD54:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FD8A
	adds r0, r4, #0x0
	movs r1, #0x0F
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
	movs r0, #0x89
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _0810FD90 @ =0x0810FEF5
	str r0, [r4, #0x4C]
_0810FD8A:
	pop {r4}
	pop {r0}
	bx r0
_0810FD90: .4byte sub_810FEF4
	thumb_func_start sub_810FD94
sub_810FD94:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FDF2
	adds r0, r4, #0x0
	movs r1, #0x06
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
	movs r0, #0x89
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0810FDD0
	adds r1, #0xFF
_0810FDD0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0810FDDA
	adds r2, #0xFF
_0810FDDA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0810FDE4
	adds r3, #0xFF
_0810FDE4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0810FDFC @ =0x0000215C
	bl sub_80DF024
	ldr r0, _0810FE00 @ =0x0810FF19
	str r0, [r4, #0x4C]
_0810FDF2:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FDFC: .4byte 0x0000215C
_0810FE00: .4byte sub_810FF18
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xC9, 0xFE, 0x10, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x4D, 0xFF, 0x10, 0x08
	thumb_func_start sub_810FE1C
sub_810FE1C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FE3E
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0810FE3E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_810FE44
sub_810FE44:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0810FE5C
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
_0810FE5C:
	adds r0, r4, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FE88
	adds r0, r4, #0x0
	movs r1, #0x0B
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
	ldr r0, _0810FE90 @ =0x0810FA8D
	str r0, [r4, #0x4C]
_0810FE88:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FE90: .4byte sub_810FA8C
	thumb_func_start sub_810FE94
sub_810FE94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810FEBC
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x1E
	bl sub_80883A0
	ldr r0, _0810FEC4 @ =0x0810FF79
	str r0, [r4, #0x4C]
_0810FEBC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FEC4: .4byte sub_810FF78
	thumb_func_start sub_810FEC8
sub_810FEC8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
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
	ldr r0, _0810FEF0 @ =0x0810FFB1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0810FEF0: .4byte sub_810FFB0
