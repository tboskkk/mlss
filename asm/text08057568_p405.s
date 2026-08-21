	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8079C3C
sub_8079C3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079C64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079C6C @ =0x03000ED0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
_08079C64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079C6C: .4byte 0x03000ED0
	thumb_func_start sub_8079C70
sub_8079C70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _08079C94 @ =0x00004029
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079C98 @ =0x08079C9D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r4, #0xA8
	str r1, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08079C94: .4byte 0x00004029
_08079C98: .4byte sub_8079C9C
	thumb_func_start sub_8079C9C
sub_8079C9C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08079D0C
	adds r0, r5, #0x0
	bl sub_80790CC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	movs r0, #0x06
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x05
	ble _08079D0C
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079D0C
	ldr r0, _08079CF4 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079CFC
	ldr r2, _08079CF8 @ =0x00004029
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _08079D08
	.byte 0x00, 0x00
_08079CF4: .4byte 0x03000F6C
_08079CF8: .4byte 0x00004029
_08079CFC:
	ldr r2, _08079D14 @ =0x00004029
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
_08079D08:
	ldr r0, _08079D18 @ =0x08079019
	str r0, [r5, #0x4C]
_08079D0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079D14: .4byte 0x00004029
_08079D18: .4byte sub_8079018
	thumb_func_start sub_8079D1C
sub_8079D1C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	ldr r4, [sp, #0x01C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0x0
	bl process_add
	ldr r0, _08079D60 @ =0x08CDC2D8
	str r0, [r6, #0x18]
	adds r0, r4, #0x0
	ldr r1, [sp, #0x020]
	bl sub_80E53E8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08079D64
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x1C]
	cmp r6, #0x00
	bne _08079D54
	b _08079F06
_08079D54:
	adds r0, r6, #0x0
	movs r1, #0x03
	bl sub_807A658
	b _08079F06
	.byte 0x00, 0x00
_08079D60: .4byte 0x08CDC2D8
_08079D64:
	movs r0, #0x00
	str r0, [r6, #0x1C]
	adds r0, r6, #0x0
	adds r0, #0x33
	strb r7, [r0, #0x00]
	adds r0, #0x0F
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x024]
	str r0, [r6, #0x20]
	ldr r0, [sp, #0x018]
	str r0, [r6, #0x24]
	cmp r7, #0x11
	bls _08079D80
	b _08079F06
_08079D80:
	lsls r0, r7, #0x02
	ldr r1, _08079D8C @ =0x08079D90
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08079D8C: .4byte 0x08079D90
	.byte 0xD8, 0x9D, 0x07, 0x08, 0xD8, 0x9D, 0x07, 0x08, 0xEC, 0x9D, 0x07, 0x08, 0xEC, 0x9D, 0x07, 0x08
	.byte 0x30, 0x9E, 0x07, 0x08, 0x30, 0x9E, 0x07, 0x08, 0x7C, 0x9E, 0x07, 0x08, 0x7C, 0x9E, 0x07, 0x08
	.byte 0xB4, 0x9E, 0x07, 0x08, 0xB4, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08
	.byte 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08
	.byte 0xDC, 0x9E, 0x07, 0x08, 0xDC, 0x9E, 0x07, 0x08, 0x31, 0x1C, 0x32, 0x31, 0x0A, 0x20, 0x08, 0x70
	.byte 0x01, 0x4A, 0x01, 0x20, 0x50, 0x21, 0x6C, 0xE0, 0x24, 0x00, 0x20, 0x08, 0x31, 0x1C, 0x32, 0x31
	.byte 0x00, 0x24, 0x08, 0x20, 0x08, 0x70, 0x0D, 0x4A, 0x01, 0x20, 0x40, 0x21, 0x9E, 0xF7, 0x76, 0xFF
	.byte 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0xF0, 0x69, 0xF0, 0x23, 0xDB, 0x01, 0x83, 0x60
	.byte 0xC4, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x81, 0x61, 0xA0, 0x22, 0xD2, 0x01, 0xC2, 0x61, 0x83, 0x62
	.byte 0xA0, 0x21, 0x09, 0x02, 0xC1, 0x62, 0x84, 0x63, 0xC2, 0x63, 0x50, 0xE0, 0x24, 0x00, 0x20, 0x08
	.byte 0x31, 0x1C, 0x32, 0x31, 0x00, 0x24, 0x08, 0x20, 0x08, 0x70, 0x0F, 0x4A, 0x01, 0x20, 0x40, 0x21
	.byte 0x9E, 0xF7, 0x54, 0xFF, 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0xF0, 0x69, 0x04, 0x60
	.byte 0x44, 0x60, 0xF0, 0x23, 0xDB, 0x01, 0x83, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x01, 0x61, 0x44, 0x61
	.byte 0xA0, 0x22, 0xD2, 0x01, 0xC2, 0x61, 0x01, 0x62, 0xA0, 0x21, 0x09, 0x02, 0x41, 0x62, 0x83, 0x62
	.byte 0x04, 0x63, 0x41, 0x63, 0xC2, 0x63, 0x2A, 0xE0, 0x24, 0x00, 0x20, 0x08, 0x31, 0x1C, 0x32, 0x31
	.byte 0x00, 0x24, 0x04, 0x20, 0x08, 0x70, 0x0A, 0x4A, 0x01, 0x20, 0x20, 0x21, 0x9E, 0xF7, 0x2E, 0xFF
	.byte 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0xF1, 0x69, 0x0C, 0x60, 0x4C, 0x60, 0xF0, 0x20
	.byte 0x00, 0x02, 0x08, 0x61, 0xA0, 0x20, 0x00, 0x02, 0x48, 0x61, 0x8C, 0x61, 0xC8, 0x61, 0x0E, 0xE0
	.byte 0x24, 0x00, 0x20, 0x08, 0x31, 0x1C, 0x32, 0x31, 0x04, 0x20, 0x08, 0x70, 0x06, 0x4A, 0x01, 0x20
	.byte 0x20, 0x21, 0x9E, 0xF7, 0x13, 0xFF, 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0x30, 0x1C
	.byte 0x00, 0xF0, 0x20, 0xF8, 0x17, 0xE0, 0x00, 0x00, 0x24, 0x00, 0x20, 0x08, 0x01, 0x20, 0x40, 0x42
	.byte 0x71, 0x6A, 0x60, 0xF1, 0xC3, 0xFD, 0x31, 0x1C, 0x32, 0x31, 0x08, 0x70, 0x09, 0x78, 0xC9, 0x00
	.byte 0x07, 0x4A, 0x01, 0x20, 0x9E, 0xF7, 0xFA, 0xFE, 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80
	.byte 0x30, 0x1C, 0x00, 0xF0, 0x07, 0xF8
_08079F06:
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x24, 0x00, 0x20, 0x08
	thumb_func_start wipe_update
wipe_update: @ 08079F14
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	adds r0, #0x40
	ldrh r1, [r0, #0x00]
	subs r1, #0x01
	strh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08079F78
	mov r0, r8
	cmp r0, #0x00
	bne _08079F3E
	b _0807A648
_08079F3E:
	ldr r0, _08079F74 @ =0x08CDC2D8
	mov r2, r8
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	cmp r0, r1
	beq _08079F68
	bl sub_80E4FC8
	mov r3, r8
	ldr r0, [r3, #0x1C]
	cmp r0, #0x00
	beq _08079F5A
	bl free_heap_memory_8018C68
_08079F5A:
	mov r4, r8
	ldr r1, [r4, #0x20]
	cmp r1, #0x00
	beq _08079F68
	ldr r0, [r4, #0x24]
	bl _call_via_r1
_08079F68:
	mov r0, r8
	movs r1, #0x03
	bl process_remove
	b _0807A648
	.byte 0x00, 0x00
_08079F74: .4byte 0x08CDC2D8
_08079F78:
	mov r0, r8
	adds r0, #0x33
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x11
	bls _08079F86
	b _0807A648
_08079F86:
	lsls r0, r1, #0x02
	ldr r1, _08079F90 @ =0x08079F94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08079F90: .4byte 0x08079F94
	.byte 0xDC, 0x9F, 0x07, 0x08, 0xDC, 0x9F, 0x07, 0x08, 0xE8, 0xA0, 0x07, 0x08, 0xE8, 0xA0, 0x07, 0x08
	.byte 0x6C, 0xA1, 0x07, 0x08, 0x6C, 0xA1, 0x07, 0x08, 0xF4, 0xA1, 0x07, 0x08, 0xF4, 0xA1, 0x07, 0x08
	.byte 0x94, 0xA2, 0x07, 0x08, 0x94, 0xA2, 0x07, 0x08, 0x9C, 0xA4, 0x07, 0x08, 0x9C, 0xA4, 0x07, 0x08
	.byte 0x00, 0xA5, 0x07, 0x08, 0x00, 0xA5, 0x07, 0x08, 0x58, 0xA5, 0x07, 0x08, 0x58, 0xA5, 0x07, 0x08
	.byte 0xE0, 0xA5, 0x07, 0x08, 0xE0, 0xA5, 0x07, 0x08, 0x30, 0x78, 0x01, 0x28, 0x06, 0xD1, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x25, 0x44, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32
	.byte 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x0C, 0x1A, 0x17, 0x1C, 0x33, 0x4A
	.byte 0x33, 0x48, 0x34, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18, 0xA0, 0x01, 0x39, 0x88, 0x60, 0xF1
	.byte 0x2D, 0xFD, 0x00, 0x90, 0x30, 0x78, 0x00, 0x28, 0x00, 0xD1, 0x64, 0x42, 0x00, 0x25, 0xAC, 0x46
	.byte 0x40, 0x46, 0x32, 0x30, 0x46, 0x46, 0xF6, 0x69, 0xB2, 0x46, 0x02, 0x90, 0x00, 0x78, 0x84, 0x45
	.byte 0x48, 0xDA, 0x29, 0x49, 0x88, 0x46, 0x60, 0x00, 0x00, 0x19, 0x00, 0x06, 0x00, 0x0E, 0x81, 0x46
	.byte 0x42, 0x46, 0x00, 0x23, 0xD1, 0x5E, 0x0B, 0x1C, 0x02, 0x24, 0x12, 0x5F, 0x4D, 0x46, 0x00, 0x2D
	.byte 0x22, 0xD0, 0x6C, 0x00, 0x21, 0x4E, 0xA0, 0x19, 0x00, 0x25, 0x47, 0x5F, 0x38, 0x1C, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x86, 0x11, 0x73, 0x43, 0x1D, 0x4D, 0x60, 0x19, 0x00, 0x24, 0x05, 0x5F
	.byte 0x28, 0x1C, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x84, 0x11, 0x10, 0x1C, 0x60, 0x43, 0x18, 0x1A
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x03, 0x12, 0x72, 0x43, 0x08, 0x1C, 0x60, 0x43, 0x10, 0x18
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x02, 0x12, 0x00, 0x9D, 0x6B, 0x43, 0x6A, 0x43, 0xF0, 0x26
	.byte 0xF6, 0x01, 0x9B, 0x19, 0xA0, 0x20, 0xC0, 0x01, 0x12, 0x18, 0x61, 0x46, 0xC8, 0x00, 0x50, 0x44
	.byte 0x03, 0x60, 0x42, 0x60, 0x04, 0x22, 0x90, 0x44, 0x01, 0x23, 0x9C, 0x44, 0x02, 0x9C, 0x24, 0x78
	.byte 0xA4, 0x45, 0xBD, 0xDB, 0x02, 0x9D, 0x29, 0x78, 0xD5, 0xE1, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x0C, 0x88, 0x3B, 0x08, 0x84, 0x85, 0x19, 0x08
	.byte 0x04, 0x85, 0x19, 0x08, 0x30, 0x78, 0x02, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x26
	.byte 0x83, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x0B, 0x1A, 0x17, 0x1C, 0x14, 0x4E, 0x14, 0x4C, 0x15, 0x48
	.byte 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0x18, 0x01, 0xC0, 0x1A, 0xC0, 0x02, 0x39, 0x88, 0x03, 0x93
	.byte 0x60, 0xF1, 0xA4, 0xFC, 0x05, 0x1C, 0x32, 0x68, 0x12, 0x19, 0x03, 0x9B, 0x98, 0x00, 0xC0, 0x18
	.byte 0x00, 0x03, 0x39, 0x88, 0x60, 0xF1, 0x9A, 0xFC, 0x02, 0x1C, 0x44, 0x46, 0xE0, 0x69, 0x05, 0x60
	.byte 0x42, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x49, 0x1B, 0x01, 0x61, 0x42, 0x61, 0x01, 0x62, 0xA0, 0x21
	.byte 0x09, 0x02, 0x89, 0x1A, 0x41, 0x62, 0x05, 0x63, 0x41, 0x63, 0x3C, 0xE0, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x30, 0x78, 0x04, 0x28, 0x06, 0xD1, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x25, 0x43, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32
	.byte 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x26, 0x80, 0x5F, 0x0B, 0x1A, 0x17, 0x1C, 0x15, 0x4D
	.byte 0x15, 0x4C, 0x16, 0x48, 0x24, 0x1A, 0x2A, 0x68, 0x12, 0x19, 0x18, 0x01, 0xC0, 0x1A, 0xC0, 0x02
	.byte 0x39, 0x88, 0x03, 0x93, 0x60, 0xF1, 0x62, 0xFC, 0x06, 0x1C, 0x2A, 0x68, 0x12, 0x19, 0x03, 0x9B
	.byte 0x98, 0x00, 0xC0, 0x18, 0x00, 0x03, 0x39, 0x88, 0x60, 0xF1, 0x58, 0xFC, 0x02, 0x1C, 0x41, 0x46
	.byte 0xC8, 0x69, 0xC2, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x89, 0x1B, 0x81, 0x61, 0xA0, 0x21, 0x09, 0x02
	.byte 0x89, 0x1A, 0xC1, 0x62, 0x86, 0x63, 0x41, 0x46, 0x32, 0x31, 0x09, 0x78, 0x6A, 0xF0, 0x9A, 0xFF
	.byte 0x30, 0xE2, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08
	.byte 0x30, 0x78, 0x06, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x22, 0x83, 0x5E, 0x47, 0x46
	.byte 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23
	.byte 0xC0, 0x5E, 0x0B, 0x1A, 0x17, 0x1C, 0x19, 0x4A, 0x19, 0x48, 0x1A, 0x49, 0x40, 0x1A, 0x12, 0x68
	.byte 0x12, 0x18, 0x98, 0x01, 0x39, 0x88, 0x60, 0xF1, 0x21, 0xFC, 0x44, 0x46, 0xE3, 0x69, 0x16, 0x4A
	.byte 0xFF, 0x21, 0x01, 0x40, 0x4C, 0x00, 0xA2, 0x18, 0x00, 0x25, 0x50, 0x5F, 0x00, 0x28, 0x00, 0xDA
	.byte 0x3F, 0x30, 0x80, 0x11, 0xC1, 0x00, 0x09, 0x18, 0x09, 0x01, 0x09, 0x18, 0x49, 0x00, 0x99, 0x60
	.byte 0x0E, 0x48, 0x20, 0x18, 0x00, 0x26, 0x80, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x81, 0x11
	.byte 0xC8, 0x00, 0x40, 0x18, 0x00, 0x01, 0x40, 0x18, 0x40, 0x00, 0xD8, 0x60, 0x40, 0x46, 0x32, 0x30
	.byte 0x01, 0x78, 0x18, 0x1C, 0x6A, 0xF0, 0x4E, 0xFF, 0xE4, 0xE1, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x84, 0x85, 0x19, 0x08, 0x04, 0x85, 0x19, 0x08
	.byte 0x30, 0x78, 0x09, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x21, 0x43, 0x5E, 0x47, 0x46
	.byte 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23
	.byte 0xC0, 0x5E, 0x0B, 0x1A, 0x17, 0x1C, 0x72, 0x4A, 0x72, 0x48, 0x73, 0x49, 0x40, 0x1A, 0x12, 0x68
	.byte 0x12, 0x18, 0x98, 0x02, 0x39, 0x88, 0x60, 0xF1, 0xD1, 0xFB, 0x03, 0x1C, 0x18, 0x01, 0xC0, 0x1A
	.byte 0xC0, 0x00, 0x40, 0x42, 0x00, 0x28, 0x01, 0xDA, 0x6C, 0x4C, 0x00, 0x19, 0x82, 0x12, 0x98, 0x00
	.byte 0xC0, 0x18, 0x00, 0x01, 0x40, 0x42, 0x00, 0x28, 0x01, 0xDA, 0x68, 0x4D, 0x40, 0x19, 0x84, 0x12
	.byte 0x30, 0x78, 0x08, 0x28, 0x00, 0xD1, 0x5B, 0x42, 0x18, 0x1C, 0x46, 0x46, 0xF6, 0x69, 0xB2, 0x46
	.byte 0x00, 0x2B, 0x00, 0xDA, 0xD8, 0x1D, 0xC0, 0x10, 0x01, 0x90, 0xFF, 0x20, 0x01, 0x99, 0x08, 0x40
	.byte 0x41, 0x00, 0x5F, 0x4D, 0x4F, 0x19, 0x00, 0x26, 0xB8, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30
	.byte 0x80, 0x11, 0x15, 0x1C, 0x45, 0x43, 0x5B, 0x48, 0x0E, 0x18, 0x00, 0x21, 0x70, 0x5E, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x60, 0x43, 0x28, 0x1A, 0xF0, 0x25, 0xED, 0x01, 0xA9, 0x46
	.byte 0x48, 0x44, 0x51, 0x46, 0x08, 0x60, 0x00, 0x25, 0x78, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30
	.byte 0x80, 0x11, 0x21, 0x1C, 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30
	.byte 0x80, 0x11, 0x50, 0x43, 0x08, 0x18, 0xA0, 0x21, 0xC9, 0x01, 0x8C, 0x46, 0x60, 0x44, 0x55, 0x46
	.byte 0x68, 0x60, 0x52, 0x42, 0x00, 0x21, 0x78, 0x5E, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x11, 0x1C, 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x60, 0x43, 0x08, 0x1A, 0x48, 0x44, 0x51, 0x46, 0x88, 0x60, 0x00, 0x25, 0x78, 0x5F, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x21, 0x1C, 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x50, 0x43, 0x08, 0x18, 0x60, 0x44, 0x51, 0x46, 0xC8, 0x60
	.byte 0x64, 0x42, 0x00, 0x25, 0x78, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x11, 0x1C
	.byte 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x60, 0x43
	.byte 0x08, 0x1A, 0x48, 0x44, 0x56, 0x46, 0x30, 0x61, 0xFF, 0x20, 0x01, 0x99, 0x08, 0x40, 0x41, 0x00
	.byte 0x27, 0x4E, 0x8D, 0x19, 0x00, 0x26, 0xA8, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x26, 0x1C, 0x46, 0x43, 0x23, 0x48, 0x0F, 0x18, 0x00, 0x21, 0x78, 0x5E, 0x00, 0x28, 0x00, 0xDA
	.byte 0x3F, 0x30, 0x80, 0x11, 0x50, 0x43, 0x30, 0x18, 0x60, 0x44, 0x56, 0x46, 0x70, 0x61, 0x52, 0x42
	.byte 0x50, 0x46, 0x04, 0x90, 0x00, 0x21, 0x68, 0x5E, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x11, 0x1C, 0x41, 0x43, 0x00, 0x26, 0xB8, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x60, 0x43, 0x08, 0x1A, 0x48, 0x44, 0x04, 0x99, 0x88, 0x61, 0x00, 0x26, 0xA8, 0x5F, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x21, 0x1C, 0x41, 0x43, 0x00, 0x23, 0xF8, 0x5E, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x50, 0x43, 0x08, 0x18, 0x60, 0x44, 0x54, 0x46, 0xE0, 0x61
	.byte 0x40, 0x46, 0x32, 0x30, 0x01, 0x78, 0x50, 0x46, 0x6A, 0xF0, 0x4C, 0xFE, 0xE2, 0xE0, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x03, 0x00, 0x00
	.byte 0x84, 0x85, 0x19, 0x08, 0x04, 0x85, 0x19, 0x08, 0x30, 0x78, 0x0B, 0x28, 0x06, 0xD1, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x25, 0x41, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32
	.byte 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x26, 0x80, 0x5F, 0x09, 0x1A, 0x17, 0x1C, 0x0C, 0x4E
	.byte 0x0C, 0x4C, 0x0D, 0x48, 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0x96, 0x20, 0x05, 0x1C, 0x4D, 0x43
	.byte 0x39, 0x88, 0x28, 0x1C, 0x60, 0xF1, 0xCA, 0xFA, 0x80, 0x46, 0x32, 0x68, 0x12, 0x19, 0x39, 0x88
	.byte 0x28, 0x1C, 0x60, 0xF1, 0xC3, 0xFA, 0x03, 0x1C, 0x78, 0x20, 0x50, 0x21, 0x6B, 0xE0, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x30, 0x78, 0x0D, 0x28
	.byte 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x21, 0x43, 0x5E, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0
	.byte 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x0B, 0x1A
	.byte 0x17, 0x1C, 0x09, 0x4A, 0x09, 0x48, 0x0A, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18, 0x96, 0x20
	.byte 0x58, 0x43, 0x39, 0x88, 0x60, 0xF1, 0x9A, 0xFA, 0x03, 0x1C, 0x78, 0x20, 0x50, 0x21, 0x96, 0x22
	.byte 0x6A, 0xF0, 0xA8, 0xFE, 0x7E, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0x78, 0x24, 0xA2, 0x46, 0x50, 0x25, 0xA9, 0x46, 0x96, 0x25, 0x41, 0x46
	.byte 0x48, 0x6A, 0x00, 0x28, 0x07, 0xD0, 0x00, 0x23, 0xC2, 0x5E, 0x92, 0x46, 0x02, 0x25, 0x44, 0x5F
	.byte 0xA1, 0x46, 0x04, 0x21, 0x45, 0x5E, 0x30, 0x78, 0x0F, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30
	.byte 0x00, 0x22, 0x81, 0x5E, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88
	.byte 0x40, 0x46, 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x09, 0x1A, 0x17, 0x1C, 0x0C, 0x4E, 0x0D, 0x4C
	.byte 0x0D, 0x48, 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0x4D, 0x43, 0x39, 0x88, 0x28, 0x1C, 0x60, 0xF1
	.byte 0x5D, 0xFA, 0x80, 0x46, 0x32, 0x68, 0x12, 0x19, 0x39, 0x88, 0x28, 0x1C, 0x60, 0xF1, 0x56, 0xFA
	.byte 0x03, 0x1C, 0x50, 0x46, 0x49, 0x46, 0x42, 0x46, 0x6A, 0xF0, 0x64, 0xFE, 0x3A, 0xE0, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x30, 0x78, 0x10, 0x28
	.byte 0x04, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x24, 0x00, 0x5F, 0x07, 0xE0, 0x40, 0x46, 0x42, 0x30
	.byte 0x00, 0x88, 0x41, 0x46, 0x40, 0x31, 0x00, 0x25, 0x49, 0x5F, 0x40, 0x1A, 0x46, 0x46, 0x71, 0x6A
	.byte 0x60, 0xF1, 0x32, 0xFA, 0x02, 0x1C, 0x00, 0x20, 0x84, 0x46, 0x43, 0x46, 0x32, 0x33, 0x02, 0x93
	.byte 0x19, 0x78, 0x8C, 0x45, 0x10, 0xDA, 0xF1, 0x69, 0x02, 0x32, 0x00, 0x24, 0x10, 0x5F, 0x00, 0x02
	.byte 0x08, 0x60, 0x02, 0x32, 0x00, 0x25, 0x50, 0x5F, 0x00, 0x02, 0x48, 0x60, 0x08, 0x31, 0x01, 0x26
	.byte 0xB4, 0x44, 0x18, 0x78, 0x84, 0x45, 0xEF, 0xDB, 0x41, 0x46, 0xC8, 0x69, 0x02, 0x9A, 0x11, 0x78
	.byte 0x6A, 0xF0, 0x68, 0xFD
_0807A648:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807A658
sub_807A658:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0807A694 @ =0x08CDC2D8
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807A686
	bl sub_80E4FC8
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0807A67A
	bl free_heap_memory_8018C68
_0807A67A:
	ldr r1, [r4, #0x20]
	cmp r1, #0x00
	beq _0807A686
	ldr r0, [r4, #0x24]
	bl _call_via_r1
_0807A686:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0807A694: .4byte 0x08CDC2D8
	thumb_func_start sub_807A698
sub_807A698:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r3, _0807A6F4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	bics r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0A]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0A]
	movs r6, #0x00
	mov r12, r3
	movs r4, #0x00
_0807A6CE:
	movs r3, #0x01
	lsls r3, r6
	mov r0, r12
	ldr r2, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r0, r4, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807A6F8
	ldrh r0, [r2, #0x14]
	bics r0, r3
	strh r0, [r2, #0x14]
	b _0807A6FE
_0807A6F4: .4byte 0x03000FD8
_0807A6F8:
	ldrh r0, [r2, #0x14]
	orrs r3, r0
	strh r3, [r2, #0x14]
_0807A6FE:
	adds r1, r4, #0x0
	adds r1, #0x1C
	adds r0, r6, #0x1
	movs r3, #0x01
	lsls r3, r0
	mov r5, r12
	ldr r2, [r5, #0x00]
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r1, r0
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807A72A
	ldrh r0, [r2, #0x14]
	bics r0, r3
	strh r0, [r2, #0x14]
	b _0807A730
_0807A72A:
	ldrh r0, [r2, #0x14]
	orrs r3, r0
	strh r3, [r2, #0x14]
_0807A730:
	adds r4, #0x38
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A6CE
	movs r6, #0x00
_0807A73A:
	ldr r0, _0807A8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807A762
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807A762
	adds r0, r2, #0x0
	bl sub_807BDDC
_0807A762:
	adds r1, r6, #0x1
	ldr r0, _0807A8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807A78C
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807A78C
	adds r0, r2, #0x0
	bl sub_807BDDC
_0807A78C:
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A73A
	movs r6, #0x00
	ldr r7, _0807A8F0 @ =0x03000FD8
	mov r12, r7
_0807A798:
	mov r1, r12
	ldr r0, [r1, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0807A7EC
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807A7EC
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807A7EC
	ldr r1, [r3, #0x18]
	ldr r0, [r3, #0x40]
	subs r5, r1, r0
	ldr r1, [r3, #0x1C]
	ldr r0, [r3, #0x44]
	subs r4, r1, r0
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x48]
	subs r1, r1, r0
	cmp r2, r3
	beq _0807A7EC
_0807A7D4:
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	adds r0, r0, r4
	str r0, [r2, #0x1C]
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r2, [r2, #0x00]
	cmp r2, r3
	bne _0807A7D4
_0807A7EC:
	adds r1, r6, #0x1
	mov r2, r12
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0807A842
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807A842
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807A842
	ldr r1, [r3, #0x18]
	ldr r0, [r3, #0x40]
	subs r5, r1, r0
	ldr r1, [r3, #0x1C]
	ldr r0, [r3, #0x44]
	subs r4, r1, r0
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x48]
	subs r1, r1, r0
	cmp r2, r3
	beq _0807A842
_0807A82A:
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	adds r0, r0, r4
	str r0, [r2, #0x1C]
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r2, [r2, #0x00]
	cmp r2, r3
	bne _0807A82A
_0807A842:
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A798
	movs r6, #0x00
_0807A84A:
	mov r5, r12
	ldr r0, [r5, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r2, [r1, #0x18]
	ldr r0, [r1, #0x40]
	subs r7, r2, r0
	ldr r2, [r1, #0x1C]
	ldr r0, [r1, #0x44]
	subs r4, r2, r0
	ldr r2, [r1, #0x20]
	ldr r0, [r1, #0x48]
	subs r2, r2, r0
	ldr r3, [r1, #0x38]
	adds r5, r6, #0x1
	cmp r3, #0x00
	beq _0807A898
	movs r6, #0x08
_0807A872:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807A892
	ldr r0, [r3, #0x10]
	adds r0, r0, r7
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x14]
	adds r0, r0, r4
	str r0, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r0, r0, r2
	str r0, [r3, #0x18]
_0807A892:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _0807A872
_0807A898:
	adds r6, r5, #0x0
	cmp r6, #0x07
	ble _0807A84A
	mov r7, r12
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0807A8AE
	b _0807AB72
_0807A8AE:
	ldr r6, [r2, #0x70]
	adds r0, r6, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807A8BE
	b _0807A9CA
_0807A8BE:
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r2, [r2, #0x74]
	mov r8, r2
	mov r5, r8
	adds r5, #0x08
	ldr r2, [r5, #0x08]
	ldrh r3, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r4, r0, #0x1C
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A8F4 @ =0x0000206D
	cmp r0, r1
	bne _0807A8F8
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A8F0: .4byte 0x03000FD8
_0807A8F4: .4byte 0x0000206D
_0807A8F8:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A92C @ =0x0000206E
	cmp r0, r1
	bne _0807A93A
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0807A930
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bhi _0807A930
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807A92C: .4byte 0x0000206E
_0807A930:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807A93A:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A964 @ =0x00002075
	cmp r0, r1
	bne _0807A976
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807A968
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807A964: .4byte 0x00002075
_0807A968:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A976:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r3, r0
	ldr r0, _0807A994 @ =0x0000206C
	cmp r3, r0
	beq _0807A998
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A994: .4byte 0x0000206C
_0807A998:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r1, #0x02
	bne _0807A9AA
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _0807A9C0
_0807A9AA:
	cmp r1, #0x03
	beq _0807A9C0
	cmp r1, #0x05
	beq _0807A9B4
	b _0807AACE
_0807A9B4:
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _0807A9C0
	b _0807AACE
_0807A9C0:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807A9CA:
	ldr r2, [r2, #0x74]
	mov r8, r2
	mov r7, r8
	adds r7, #0x08
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r2, [r5, #0x08]
	ldrh r3, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r4, r0, #0x1C
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A9FC @ =0x0000203E
	cmp r0, r1
	bne _0807AA00
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807A9FC: .4byte 0x0000203E
_0807AA00:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807AA34 @ =0x0000203F
	cmp r0, r1
	bne _0807AA42
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0807AA38
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bhi _0807AA38
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807AA34: .4byte 0x0000203F
_0807AA38:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807AA42:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807AA6C @ =0x00002046
	cmp r0, r1
	bne _0807AA7E
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807AA70
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807AA6C: .4byte 0x00002046
_0807AA70:
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807AA7E:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r3, r0
	ldr r0, _0807AA9C @ =0x0000203D
	cmp r3, r0
	beq _0807AAA0
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807AA9C: .4byte 0x0000203D
_0807AAA0:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r1, #0x02
	bne _0807AAB2
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _0807AAC4
_0807AAB2:
	cmp r1, #0x03
	beq _0807AAC4
	cmp r1, #0x05
	bne _0807AACE
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0807AACE
_0807AAC4:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807AACE:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
_0807AAD6:
	adds r1, r5, #0x0
	adds r1, #0x75
_0807AADA:
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x06]
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x08]
	strh r0, [r1, #0x08]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0A]
	strh r0, [r1, #0x0A]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0C]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x11]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x11]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x12]
	movs r1, #0x06
	ands r1, r0
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldrb r2, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
_0807AB72:
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r5, [r0, #0x78]
	cmp r5, #0x00
	bne _0807AB7E
	b _0807AD20
_0807AB7E:
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r2, [r5, #0x08]
	cmp r2, #0x00
	bne _0807AB92
	b _0807AD18
_0807AB92:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807AB9E
	b _0807AD18
_0807AB9E:
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _0807ABB0
	movs r0, #0x78
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	b _0807AD18
_0807ABB0:
	ldr r1, [r5, #0x28]
	cmp r1, #0x00
	beq _0807ABBE
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _0807ABD8
_0807ABBE:
	ldr r0, _0807ABD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl sub_8082B6C
	b _0807AD18
	.byte 0x00, 0x00
_0807ABD4: .4byte 0x03000FD8
_0807ABD8:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807ABE6
	b _0807AD18
_0807ABE6:
	ldr r0, _0807AD08 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl sub_8082B6C
	ldr r6, [r5, #0x28]
	cmp r6, #0x00
	bne _0807AC00
	b _0807AD18
_0807AC00:
	adds r0, r6, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _0807AC0A
	b _0807AD18
_0807AC0A:
	adds r0, #0xE4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807AC16
	b _0807AD18
_0807AC16:
	movs r7, #0x8F
	lsls r7, r7, #0x01
	adds r0, r6, r7
	ldrh r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x00
	beq _0807AD10
	ldr r4, _0807AD0C @ =0x08392B58
	subs r7, #0x0C
	adds r2, r6, r7
	ldrb r1, [r2, #0x00]
	adds r0, r1, #0x1
	strb r0, [r2, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r4
	adds r3, r6, #0x0
	adds r3, #0xCF
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r7, #0x00
	mov r12, r7
_0807AC4E:
	movs r7, #0x04
	ldsh r0, [r4, r7]
	cmp r0, r1
	bge _0807AC66
	adds r4, #0x06
	movs r7, #0x04
	ldsh r0, [r4, r7]
	cmp r0, r9
	bne _0807AC4E
	mov r4, r8
	mov r0, r12
	strb r0, [r2, #0x00]
_0807AC66:
	ldrh r0, [r4, #0x00]
	strb r0, [r3, #0x00]
	ldr r1, [r6, #0x10]
	ldrh r0, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x10]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	beq _0807ACAE
	movs r3, #0x08
_0807AC86:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807ACA8
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x00]
	ldrh r7, [r1, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
_0807ACA8:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _0807AC86
_0807ACAE:
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0807AD18
	adds r3, r0, #0x0
	cmp r3, r6
	beq _0807AD18
_0807ACBA:
	ldr r1, [r3, #0x10]
	ldrh r0, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x10]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	beq _0807AD00
	movs r0, #0x08
	mov r8, r0
_0807ACD8:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0807ACFA
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x00]
	ldrh r7, [r1, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
_0807ACFA:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _0807ACD8
_0807AD00:
	ldr r3, [r3, #0x00]
	cmp r3, r6
	bne _0807ACBA
	b _0807AD18
_0807AD08: .4byte 0x03000FD8
_0807AD0C: .4byte 0x08392B58
_0807AD10:
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strb r0, [r1, #0x00]
_0807AD18:
	ldr r5, [r5, #0x00]
	cmp r5, #0x00
	beq _0807AD20
	b _0807AB7E
_0807AD20:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807AD2C
sub_807AD2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0807AD7C @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, _0807AD80 @ =0x00000205
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807AD8C
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	movs r2, #0x81
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807AD88
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r2, _0807AD84 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, #0x1F
	b _0807AD8E
	.byte 0x00, 0x00
_0807AD7C: .4byte 0x03000FC0
_0807AD80: .4byte 0x00000205
_0807AD84: .4byte 0x00000203
_0807AD88:
	movs r5, #0x02
	b _0807AD94
_0807AD8C:
	movs r5, #0x03
_0807AD8E:
	cmp r5, #0x00
	bne _0807AD94
	b _0807AF52
_0807AD94:
	movs r4, #0x00
	ldr r0, _0807AE28 @ =0x03001034
	mov r9, r0
	ldr r1, _0807AE2C @ =0x08198154
	ldr r0, _0807AE30 @ =0x081980D8
	subs r7, r1, r0
	ldr r1, _0807AE34 @ =0x03000BD4
	mov r8, r1
	ldr r6, _0807AE38 @ =0x089F808C
_0807ADA6:
	ldr r0, _0807AE3C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	movs r2, #0x88
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r2, r0, r1
	ldr r3, [r2, #0x00]
	adds r4, #0x01
	mov r10, r4
	cmp r3, #0x00
	bne _0807ADC0
	b _0807AF4A
_0807ADC0:
	ldrb r0, [r3, #0x13]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0807ADCC
	b _0807AF4A
_0807ADCC:
	str r1, [r2, #0x00]
	movs r1, #0x00
	ldrh r2, [r3, #0x14]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0807ADE8
	movs r4, #0x01
_0807ADDC:
	adds r1, #0x01
	adds r0, r2, #0x0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0x00
	beq _0807ADDC
_0807ADE8:
	lsls r0, r1, #0x05
	ldr r1, _0807AE40 @ =0x02000280
	adds r4, r0, r1
	ldr r0, _0807AE3C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x70]
	ldr r0, [r1, #0x10]
	cmp r0, r3
	beq _0807AE70
	ldr r1, [r2, #0x74]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807AE48
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AE44 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x32
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x34
	b _0807AE98
	.byte 0x00, 0x00
_0807AE28: .4byte 0x03001034
_0807AE2C: .4byte 0x08198154
_0807AE30: .4byte 0x081980D8
_0807AE34: .4byte 0x03000BD4
_0807AE38: .4byte 0x089F808C
_0807AE3C: .4byte 0x03000FD8
_0807AE40: .4byte 0x02000280
_0807AE44: .4byte 0x084FB588
_0807AE48:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEE8
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AE6C @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2E
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x30
	b _0807AE98
	.byte 0x00, 0x00
_0807AE6C: .4byte 0x084FB588
_0807AE70:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEB4
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AEB0 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2A
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x2C
_0807AE98:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	adds r1, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
	b _0807AEE8
	.byte 0x00, 0x00
_0807AEB0: .4byte 0x084FB588
_0807AEB4:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEE8
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AF00 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x26
	cmp r0, #0x00
	beq _0807AED4
	movs r1, #0x28
_0807AED4:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	adds r1, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_0807AEE8:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0807AF24
	cmp r5, #0x01
	bne _0807AF08
	ldr r1, _0807AF04 @ =0x0000214A
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF00: .4byte 0x084FB588
_0807AF04: .4byte 0x0000214A
_0807AF08:
	cmp r5, #0x02
	bne _0807AF14
	ldr r2, _0807AF10 @ =0x000056F7
	b _0807AF46
_0807AF10: .4byte 0x000056F7
_0807AF14:
	cmp r5, #0x03
	bne _0807AF4A
	ldr r1, _0807AF20 @ =0x000033BF
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF20: .4byte 0x000033BF
_0807AF24:
	cmp r5, #0x01
	bne _0807AF30
	ldr r2, _0807AF2C @ =0x000014E6
	b _0807AF46
_0807AF2C: .4byte 0x000014E6
_0807AF30:
	cmp r5, #0x02
	bne _0807AF40
	ldr r1, _0807AF3C @ =0x00004A93
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF3C: .4byte 0x00004A93
_0807AF40:
	cmp r5, #0x03
	bne _0807AF4A
	ldr r2, _0807AF60 @ =0x0000275B
_0807AF46:
	adds r0, r2, #0x0
_0807AF48:
	strh r0, [r4, #0x02]
_0807AF4A:
	mov r4, r10
	cmp r4, #0x01
	bgt _0807AF52
	b _0807ADA6
_0807AF52:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807AF60: .4byte 0x0000275B
	thumb_func_start sub_807AF64
sub_807AF64:
	push {r4, lr}
	ldr r0, _0807AFB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x44]
	cmp r4, #0x00
	beq _0807AFCE
_0807AF70:
	ldr r1, [r4, #0x08]
	ldrh r0, [r4, #0x10]
	subs r0, #0x01
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	beq _0807AFB4
	ldrb r2, [r1, #0x12]
	cmp r0, #0x00
	bge _0807AF8E
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _0807AFB4
_0807AF8E:
	movs r0, #0x78
	strh r0, [r1, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807AFC8
	adds r0, r1, #0x0
	bl sub_807BC90
	ldr r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	b _0807AFC8
	.byte 0x00, 0x00
_0807AFB0: .4byte 0x03000FD8
_0807AFB4:
	adds r0, r1, #0x0
	bl sub_807FB34
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0807AFC4
	bl free_heap_memory_8018C68
_0807AFC4:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0807AFC8:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807AF70
_0807AFCE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_807AFD4
sub_807AFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r4, [sp, #0x054]
	ldr r0, _0807B184 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldr r0, [r7, #0x04]
	str r0, [r1, #0x00]
	movs r0, #0xF6
	adds r0, r0, r7
	mov r10, r0
	ldrh r0, [r0, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFC
	ldrh r1, [r0, #0x00]
	adds r2, #0x06
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	adds r2, #0x26
	adds r2, r2, r3
	mov r8, r2
	adds r1, #0x5E
	ands r1, r0
	ldrh r2, [r2, #0x00]
	ldr r0, _0807B188 @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x88
	adds r0, r7, #0x0
	bl sub_8107E6C
	adds r0, r7, #0x0
	bl sub_807B7A8
	adds r0, r7, #0x0
	bl sub_807FE40
	ldr r0, _0807B18C @ =0x03001034
	movs r2, #0x98
	lsls r2, r2, #0x01
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	str r7, [r7, #0x30]
	ldr r2, _0807B184 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xF4
	mov r3, sp
	ldrb r3, [r3, #0x04]
	strb r3, [r0, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	movs r0, #0x01
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xEC
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r0, #0x00]
	subs r0, #0x14
	lsls r5, r5, #0x08
	str r5, [r7, #0x18]
	str r5, [r7, #0x40]
	str r5, [r0, #0x00]
	adds r0, #0x04
	lsls r6, r6, #0x08
	str r6, [r7, #0x1C]
	str r6, [r7, #0x44]
	str r6, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [sp, #0x050]
	lsls r1, r2, #0x08
	str r1, [r7, #0x20]
	str r1, [r7, #0x48]
	str r1, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x98
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	blt _0807B0CC
	b _0807B368
_0807B0CC:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	bne _0807B0E0
	ldr r0, _0807B190 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x3C
	mov r9, r0
	ldr r4, _0807B194 @ =0x084FCCE0
	str r4, [sp, #0x00C]
_0807B0E0:
	movs r4, #0x01
	negs r4, r4
	ldr r5, [sp, #0x008]
	cmp r5, r4
	bne _0807B0F4
	ldr r0, _0807B190 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r6, _0807B198 @ =0x084FCCD8
	str r6, [sp, #0x00C]
_0807B0F4:
	ldr r0, _0807B184 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r2, r9
	ldrh r3, [r2, #0x0E]
	cmp r3, #0x00
	beq _0807B19C
	ldr r0, [r1, #0x78]
	str r0, [r7, #0x08]
	adds r0, r7, #0x0
	adds r0, #0x08
	str r0, [r1, #0x78]
	adds r5, r7, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r6, #0x02
	orrs r0, r6
	strb r0, [r5, #0x00]
	ldr r3, [sp, #0x00C]
	ldrh r1, [r3, #0x00]
	mov r0, r8
	bl sub_807FB78
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r8
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r2, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r0, r8
	movs r3, #0x00
	bl sub_801E150
	mov r2, r8
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1F]
	str r5, [sp, #0x018]
	b _0807B1C2
_0807B184: .4byte 0x03000FD8
_0807B188: .4byte 0xFFFFFE7F
_0807B18C: .4byte 0x03001034
_0807B190: .4byte 0x03000FF4
_0807B194: .4byte 0x084FCCE0
_0807B198: .4byte 0x084FCCD8
_0807B19C:
	adds r2, r7, #0x0
	adds r2, #0x7E
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r4, r8
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	subs r1, #0x24
	ands r0, r1
	strb r0, [r4, #0x1F]
	strh r3, [r4, #0x0E]
	str r2, [sp, #0x018]
_0807B1C2:
	movs r5, #0x88
	lsls r5, r5, #0x01
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	mov r6, r8
	ldrb r2, [r6, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x11]
	movs r3, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x06]
	strh r0, [r6, #0x04]
	mov r0, r9
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	mov r1, r9
	ldrh r0, [r1, #0x0E]
	adds r1, r7, #0x0
	adds r1, #0xF6
	strh r0, [r1, #0x00]
	mov r2, r9
	ldrh r1, [r2, #0x12]
	adds r0, r7, #0x0
	adds r0, #0xF8
	strh r1, [r0, #0x00]
	ldrh r0, [r2, #0x20]
	movs r4, #0x83
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x1C]
	subs r5, #0x0E
	adds r1, r7, r5
	strh r0, [r1, #0x00]
	ldrh r1, [r2, #0x24]
	movs r6, #0x82
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x28]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r4, #0x18]
	adds r1, r7, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x80
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x64
	ldr r5, [sp, #0x00C]
	str r5, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xE8
	str r3, [r0, #0x00]
	mov r6, r8
	str r6, [r7, #0x10]
	mov r0, r9
	adds r0, #0x35
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _0807B2B4 @ =0x0000012B
	adds r1, r7, r3
	strb r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0x37
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _0807B2B8 @ =0x0000012D
	adds r1, r7, r5
	strb r0, [r1, #0x00]
	mov r10, r2
	cmp r7, #0x00
	beq _0807B330
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	bne _0807B330
	ldr r0, _0807B2BC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	beq _0807B2C0
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0807B2C2
_0807B2B4: .4byte 0x0000012B
_0807B2B8: .4byte 0x0000012D
_0807B2BC: .4byte 0x03000FF4
_0807B2C0:
	movs r1, #0x00
_0807B2C2:
	adds r2, r1, #0x0
	ldr r3, [r3, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B2DA
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_0807B2DA:
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B2EA
	movs r1, #0x4C
	muls r0, r1
	adds r2, r2, r0
_0807B2EA:
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r4, [r0, #0x28]
	adds r1, r3, #0x0
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B310
	movs r1, #0x66
	muls r0, r1
	adds r0, r2, r0
	b _0807B312
_0807B310:
	adds r0, r2, #0x0
_0807B312:
	cmp r0, #0x00
	bge _0807B318
	adds r0, #0xFF
_0807B318:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r2, r7, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0807B35C @ =0x000003E7
	cmp r0, r1
	ble _0807B330
	strh r1, [r2, #0x00]
_0807B330:
	ldr r2, _0807B360 @ =0x0000012D
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0xCB
	str r3, [sp, #0x01C]
	adds r4, r7, #0x0
	adds r4, #0xCC
	str r4, [sp, #0x020]
	adds r5, r7, #0x0
	adds r5, #0xCD
	str r5, [sp, #0x024]
	cmp r0, #0x1D
	beq _0807B34E
	b _0807B632
_0807B34E:
	ldr r0, _0807B364 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0D]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0D]
	b _0807B632
_0807B35C: .4byte 0x000003E7
_0807B360: .4byte 0x0000012D
_0807B364: .4byte 0x03000FD8
_0807B368:
	ldr r6, _0807B510 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r7, #0x08]
	adds r3, r7, #0x0
	adds r3, #0x08
	str r3, [r1, #0x78]
	movs r0, #0x2C
	ldr r1, [sp, #0x008]
	muls r0, r1
	ldr r4, _0807B514 @ =0x08500A98
	adds r0, r0, r4
	mov r9, r0
	ldr r2, [r0, #0x08]
	str r2, [sp, #0x010]
	adds r2, r7, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x010]
	ldrb r0, [r5, #0x0A]
	adds r1, r7, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	mov r6, r9
	ldrb r0, [r6, #0x04]
	adds r5, r7, #0x0
	adds r5, #0xF5
	strb r0, [r5, #0x00]
	ldrh r0, [r6, #0x06]
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x06]
	adds r1, r7, #0x0
	adds r1, #0xF8
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x1A]
	movs r6, #0x83
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r8, r6
	strh r0, [r6, #0x00]
	mov r6, r9
	ldrh r0, [r6, #0x06]
	mov r6, r10
	strh r0, [r6, #0x00]
	mov r6, r9
	ldrh r0, [r6, #0x06]
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x1A]
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrh r1, [r6, #0x18]
	movs r6, #0x82
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldrb r5, [r5, #0x00]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	mov r12, r5
	mov r6, r12
	subs r6, #0x01
	str r3, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r1, #0xE4
	adds r1, r1, r7
	mov r10, r1
	adds r2, #0x6A
	str r2, [sp, #0x028]
	adds r3, #0xE8
	str r3, [sp, #0x02C]
	adds r4, r7, #0x0
	adds r4, #0xCB
	str r4, [sp, #0x01C]
	adds r5, r7, #0x0
	adds r5, #0xCC
	str r5, [sp, #0x020]
	adds r0, r7, #0x0
	adds r0, #0xCD
	str r0, [sp, #0x024]
	cmp r6, #0x00
	blt _0807B4DE
	ldr r0, _0807B518 @ =0x083BAEAC
	lsls r1, r6, #0x01
	adds r1, r1, r6
	lsls r1, r1, #0x02
	movs r3, #0x95
	lsls r3, r3, #0x03
	adds r2, r1, r3
	adds r5, r2, r0
	adds r4, r1, r0
	movs r0, #0x03
	bics r0, r6
	cmp r6, #0x00
	blt _0807B46A
	cmp r0, #0x00
	beq _0807B488
	cmp r0, #0x03
	bge _0807B46A
	cmp r0, #0x02
	bge _0807B450
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r8, r1
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
_0807B450:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
_0807B46A:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
	cmp r6, #0x00
	blt _0807B4DE
_0807B488:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	adds r3, r5, #0x0
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x0C
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x18
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x24
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x30
	subs r4, #0x30
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807B488
_0807B4DE:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	ldr r5, [sp, #0x010]
	ldrb r1, [r5, #0x07]
	cmp r1, #0x00
	beq _0807B51C
	subs r1, #0x01
	adds r3, r7, #0x0
	adds r3, #0x80
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _0807B528
	.byte 0x00, 0x00
_0807B510: .4byte 0x03000FD8
_0807B514: .4byte 0x08500A98
_0807B518: .4byte 0x083BAEAC
_0807B51C:
	adds r2, r7, #0x0
	adds r2, #0x81
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807B528:
	ldr r6, [sp, #0x010]
	mov r0, r10
	str r6, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x20]
	ldr r2, [sp, #0x028]
	str r0, [r2, #0x00]
	movs r4, #0x2C
	ldr r3, [sp, #0x004]
	adds r1, r3, #0x0
	muls r1, r4
	ldr r3, _0807B614 @ =0x000033E0
	adds r0, r1, r3
	ldr r5, _0807B618 @ =0x03000FDC
	ldr r2, [r5, #0x00]
	adds r0, r2, r0
	ldr r6, [sp, #0x02C]
	str r0, [r6, #0x00]
	adds r1, r1, r2
	ldr r2, [sp, #0x008]
	adds r0, r2, #0x0
	muls r0, r4
	adds r1, r1, r3
	ldr r3, _0807B61C @ =0x08500A98
	adds r0, r0, r3
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r5, r10
	ldr r0, [r5, #0x00]
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807B5F8
	ldr r0, _0807B620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x8C
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	movs r6, #0x00
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r2, r0, #0x0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x1F]
	movs r6, #0x88
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x04]
	str r4, [r7, #0x10]
_0807B5F8:
	ldr r0, _0807B620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807B632
	mov r0, r9
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _0807B632
	adds r0, r7, #0x0
	b _0807B628
	.byte 0x00, 0x00
_0807B614: .4byte 0x000033E0
_0807B618: .4byte 0x03000FDC
_0807B61C: .4byte 0x08500A98
_0807B620: .4byte 0x03000FD8
_0807B624:
	ldr r1, [r7, #0x54]
	ldr r0, [sp, #0x014]
_0807B628:
	bl _call_via_r1
	ldr r0, [r7, #0x54]
	cmp r0, #0x00
	bne _0807B624
_0807B632:
	movs r1, #0x85
	lsls r1, r1, #0x01
	adds r0, r7, r1
	subs r1, #0x0A
	strh r1, [r0, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	mov r4, r10
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x04]
	ldr r5, [sp, #0x01C]
	strb r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x05]
	ldr r6, [sp, #0x020]
	strb r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x06]
	ldr r1, [sp, #0x024]
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x058]
	cmp r0, #0x01
	bne _0807B6CE
	ldr r4, _0807B6E8 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	adds r3, #0x62
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF6
	strh r0, [r1, #0x00]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r6, #0x88
	lsls r6, r6, #0x01
	adds r3, r7, r6
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, [r4, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	subs r5, #0x76
	adds r4, r7, r5
	movs r1, #0xC0
	lsls r1, r1, #0x01
	ands r1, r0
	ldrh r2, [r4, #0x00]
	ldr r0, _0807B6EC @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x88
	adds r1, r7, #0x0
	bl sub_8107E6C
_0807B6CE:
	ldr r6, [sp, #0x018]
	ldrb r0, [r6, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	bne _0807B6F0
	ldr r2, _0807B6E8 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x04]
	adds r0, #0x01
	strb r0, [r1, #0x04]
	b _0807B6FE
	.byte 0x00, 0x00
_0807B6E8: .4byte 0x03000FD8
_0807B6EC: .4byte 0xFFFFFE7F
_0807B6F0:
	ldr r2, _0807B72C @ =0x03000FD8
	cmp r1, #0x04
	bne _0807B6FE
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x05]
	adds r0, #0x01
	strb r0, [r1, #0x05]
_0807B6FE:
	ldr r1, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x05]
	bl sub_80F8DE0
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	bge _0807B792
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x14
	beq _0807B746
	cmp r0, #0x14
	bgt _0807B730
	cmp r0, #0x13
	beq _0807B736
	b _0807B792
	.byte 0x00, 0x00
_0807B72C: .4byte 0x03000FD8
_0807B730:
	cmp r0, #0x15
	beq _0807B756
	b _0807B792
_0807B736:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	movs r5, #0x90
	lsls r5, r5, #0x01
	adds r0, r7, r5
	b _0807B78A
_0807B746:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
	movs r6, #0x90
	lsls r6, r6, #0x01
	adds r0, r7, r6
	b _0807B78A
_0807B756:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	cmp r0, #0x00
	beq _0807B76C
	cmp r0, #0x01
	beq _0807B77C
	b _0807B792
_0807B76C:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	b _0807B78A
_0807B77C:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r0, r7, r2
_0807B78A:
	ldr r1, [r0, #0x00]
	ldr r2, _0807B7A4 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_0807B792:
	adds r0, r7, #0x0
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807B7A4: .4byte 0xFFFC7FFF
	thumb_func_start sub_807B7A8
sub_807B7A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0807B828
	adds r1, r5, #0x0
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	bne _0807B7D0
	ldr r0, _0807B7CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x04]
	subs r0, #0x01
	strb r0, [r1, #0x04]
	b _0807B7DE
_0807B7CC: .4byte 0x03000FD8
_0807B7D0:
	cmp r2, #0x04
	bne _0807B7DE
	ldr r0, _0807B830 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x05]
	subs r0, #0x01
	strb r0, [r1, #0x05]
_0807B7DE:
	adds r4, r5, #0x0
	adds r4, #0x08
	cmp r4, #0x00
	beq _0807B7F2
_0807B7E6:
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _0807B7E6
_0807B7F2:
	ldr r4, _0807B830 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x05]
	bl sub_80F8DE0
	ldrb r0, [r6, #0x00]
	movs r1, #0x06
	orrs r0, r1
	movs r1, #0x39
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	ldr r1, _0807B834 @ =0x0000012D
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1D
	bne _0807B828
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
_0807B828:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807B830: .4byte 0x03000FD8
_0807B834: .4byte 0x0000012D
	thumb_func_start sub_807B838
sub_807B838:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r2, _0807B858 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	lsls r1, r5, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807B85C
	movs r0, #0x00
	b _0807B8BC
_0807B858: .4byte 0x03000FD8
_0807B85C:
	cmp r6, #0x00
	blt _0807B880
	adds r1, r0, #0x0
	adds r1, #0xF0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0807B880
	cmp r4, #0x00
	beq _0807B880
	ldrh r0, [r0, #0x24]
	ldrh r4, [r3, #0x16]
	adds r0, r0, r4
	strh r0, [r3, #0x16]
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_0807B880:
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x1C]
	ldrb r0, [r0, #0x01]
	lsls r4, r0, #0x01
	adds r4, r4, r0
	lsls r4, r4, #0x03
	lsls r0, r5, #0x02
	ldr r1, _0807B8C4 @ =0x08502B14
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r4, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r0, [r4, #0x02]
	lsls r0, r0, #0x12
	asrs r0, r0, #0x16
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_807AFD4
_0807B8BC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807B8C4: .4byte 0x08502B14
	thumb_func_start sub_807B8C8
sub_807B8C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807B8EA
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x04]
	b _0807BA2A
_0807B8EA:
	ldrb r1, [r4, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807B8F6
	b _0807BA2A
_0807B8F6:
	ldr r0, _0807B914 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bhi _0807B906
	b _0807BA2A
_0807B906:
	ldrh r0, [r4, #0x14]
	cmp r0, #0x00
	bne _0807B91E
	mov r2, r8
	str r0, [r2, #0x04]
	b _0807BA2A
	.byte 0x00, 0x00
_0807B914: .4byte 0x03000FD8
_0807B918:
	mov r7, r8
	str r4, [r7, #0x04]
	b _0807BA2A
_0807B91E:
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r1, r1, r7
	ldrh r2, [r4, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r6, #0x00
	ldrh r4, [r4, #0x14]
	movs r1, #0x01
	adds r0, r4, #0x0
	b _0807B954
_0807B94E:
	adds r6, #0x01
	adds r0, r4, #0x0
	asrs r0, r6
_0807B954:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807B94E
	movs r5, #0x00
	ldr r0, _0807BA3C @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	str r1, [sp, #0x008]
	movs r3, #0x01
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r2, r2, r1
	mov r12, r2
	movs r2, #0x00
_0807B972:
	ldr r7, [sp, #0x008]
	ldrh r4, [r7, #0x14]
	asrs r4, r5
	eors r4, r3
	ands r4, r3
	cmp r4, #0x00
	bne _0807B99C
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807B99C
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807B918
_0807B99C:
	adds r1, r2, #0x0
	adds r1, #0x1C
	adds r0, r5, #0x1
	ldr r7, [sp, #0x008]
	ldrh r4, [r7, #0x14]
	asrs r4, r0
	eors r4, r3
	ands r4, r3
	cmp r4, #0x00
	bne _0807B9CC
	mov r7, r12
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807B9CC
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807B918
_0807B9CC:
	adds r2, #0x38
	adds r5, #0x02
	cmp r5, #0x07
	ble _0807B972
	movs r4, #0x00
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrh r1, [r0, #0x14]
	movs r0, #0x01
	ands r0, r1
	mov r2, r10
	lsls r7, r2, #0x10
	adds r3, r6, #0x0
	adds r3, #0x10
	cmp r0, #0x00
	beq _0807B9FA
	movs r5, #0x01
_0807B9EE:
	adds r4, #0x01
	adds r0, r1, #0x0
	asrs r0, r4
	ands r0, r5
	cmp r0, #0x00
	bne _0807B9EE
_0807B9FA:
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	lsls r0, r4
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x14]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r7, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0807BA40 @ =0x0000FFFF
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	bl sub_8114C1C
	mov r2, r8
	str r5, [r2, #0x04]
_0807BA2A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807BA3C: .4byte 0x03000FD8
_0807BA40: .4byte 0x0000FFFF
	thumb_func_start sub_807BA44
sub_807BA44:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r3, [r0, #0x08]
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807BA66
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x04]
	b _0807BBC2
_0807BA66:
	ldrb r1, [r3, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BA72
	b _0807BBC2
_0807BA72:
	ldr r1, _0807BA90 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bhi _0807BA82
	b _0807BBC2
_0807BA82:
	ldrh r0, [r3, #0x14]
	cmp r0, #0x00
	bne _0807BAD0
	mov r3, r8
	str r0, [r3, #0x04]
	b _0807BBC2
	.byte 0x00, 0x00
_0807BA90: .4byte 0x03000FD8
_0807BA94:
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8115048
	ldr r1, _0807BAC8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r3, r10
	lsrs r2, r3, #0x10
	ldr r1, [sp, #0x008]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _0807BACC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	bl sub_8114C1C
	mov r3, r8
	str r5, [r3, #0x04]
	b _0807BBC2
	.byte 0x00, 0x00
_0807BAC8: .4byte 0x03000FD8
_0807BACC: .4byte 0x0000FFFF
_0807BAD0:
	mov r4, r8
	ldr r2, [r4, #0x0C]
	movs r7, #0x00
	ldrh r3, [r3, #0x14]
	movs r1, #0x01
	adds r0, r3, #0x0
	b _0807BAE4
_0807BADE:
	adds r7, #0x01
	adds r0, r3, #0x0
	asrs r0, r7
_0807BAE4:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807BADE
	movs r4, #0x00
	lsls r2, r2, #0x10
	mov r10, r2
	adds r0, r7, #0x0
	adds r0, #0x10
	str r0, [sp, #0x008]
	ldr r1, _0807BBD4 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	mov r12, r1
	movs r2, #0x01
	movs r6, #0x00
_0807BB02:
	mov r3, r12
	ldrh r5, [r3, #0x14]
	asrs r5, r4
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _0807BB32
	movs r0, #0x92
	lsls r0, r0, #0x02
	mov r9, r0
	add r0, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r6, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BB32
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BA94
_0807BB32:
	adds r1, r6, #0x0
	adds r1, #0x1C
	adds r4, #0x01
	mov r3, r12
	ldrh r5, [r3, #0x14]
	asrs r5, r4
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _0807BB68
	movs r0, #0x92
	lsls r0, r0, #0x02
	mov r9, r0
	add r0, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BB68
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BA94
_0807BB68:
	adds r6, #0x38
	adds r4, #0x01
	cmp r4, #0x07
	ble _0807BB02
	movs r3, #0x00
	ldr r1, _0807BBD4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrh r1, [r0, #0x14]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807BB8E
	movs r4, #0x01
_0807BB82:
	adds r3, #0x01
	adds r0, r1, #0x0
	asrs r0, r3
	ands r0, r4
	cmp r0, #0x00
	bne _0807BB82
_0807BB8E:
	ldr r4, _0807BBD4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x14]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	mov r3, r10
	lsrs r2, r3, #0x10
	ldr r4, [sp, #0x008]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0807BBD8 @ =0x0000FFFF
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	bl sub_8114C1C
	mov r0, r8
	str r5, [r0, #0x04]
_0807BBC2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807BBD4: .4byte 0x03000FD8
_0807BBD8: .4byte 0x0000FFFF
	thumb_func_start sub_807BBDC
sub_807BBDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r1
	ldrh r1, [r0, #0x14]
	movs r7, #0x00
	cmp r1, #0x00
	beq _0807BC80
_0807BBF0:
	movs r0, #0x01
	ands r0, r1
	lsrs r1, r1, #0x01
	mov r8, r1
	adds r1, r7, #0x1
	mov r9, r1
	cmp r0, #0x00
	beq _0807BC78
	movs r2, #0x00
	ldr r3, _0807BC34 @ =0x03000FD8
	mov r12, r3
	movs r5, #0x00
	mov r0, r10
	lsls r6, r0, #0x18
_0807BC0C:
	mov r1, r12
	ldr r0, [r1, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r5, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BC38
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BC38
	lsls r1, r2, #0x18
	b _0807BC64
_0807BC34: .4byte 0x03000FD8
_0807BC38:
	adds r1, r5, #0x0
	adds r1, #0x1C
	adds r4, r2, #0x1
	mov r3, r12
	ldr r0, [r3, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BC70
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BC70
	lsls r1, r4, #0x18
_0807BC64:
	lsrs r1, r1, #0x18
	adds r0, r3, #0x0
	lsrs r2, r6, #0x18
	bl sub_8115048
	b _0807BC78
_0807BC70:
	adds r5, #0x38
	adds r2, #0x02
	cmp r2, #0x07
	ble _0807BC0C
_0807BC78:
	mov r1, r8
	mov r7, r9
	cmp r1, #0x00
	bne _0807BBF0
_0807BC80:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807BC90
sub_807BC90:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0807BC9A
	b _0807BDD6
_0807BC9A:
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BCA6
	b _0807BDD6
_0807BCA6:
	adds r0, r4, #0x0
	bl sub_8084294
	ldr r0, [r4, #0x1C]
	ldr r1, _0807BD14 @ =0x00F0FFFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x0F
	cmp r0, r1
	beq _0807BDB0
	ldrh r6, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1E
	lsrs r5, r0, #0x1E
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	cmp r5, #0x00
	beq _0807BCD8
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #0x13]
_0807BCD8:
	ldrh r2, [r4, #0x14]
	ldr r3, _0807BD18 @ =0x03000FD8
	cmp r6, r2
	beq _0807BCE8
	ldr r1, [r3, #0x00]
	ldrh r0, [r1, #0x12]
	orrs r0, r2
	strh r0, [r1, #0x12]
_0807BCE8:
	ldrh r1, [r4, #0x1C]
	ldrb r0, [r4, #0x1E]
	lsls r2, r0, #0x1C
	lsrs r0, r2, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r0, r0, r5
	orrs r1, r0
	ldr r0, _0807BD1C @ =0xFFFFE000
	adds r1, r1, r0
	cmp r1, #0x01
	bhi _0807BD2E
	ldr r2, [r3, #0x00]
	movs r5, #0x88
	lsls r5, r5, #0x02
	adds r1, r2, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0807BD20
	str r4, [r1, #0x00]
	b _0807BDD6
	.byte 0x00, 0x00
_0807BD14: .4byte 0x00F0FFFF
_0807BD18: .4byte 0x03000FD8
_0807BD1C: .4byte 0xFFFFE000
_0807BD20:
	cmp r0, r4
	beq _0807BDD6
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r2, r1
	str r4, [r0, #0x00]
	b _0807BDD6
_0807BD2E:
	ldr r0, [r3, #0x00]
	movs r5, #0x92
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	lsrs r1, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	ldrh r2, [r4, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	lsls r0, r0, #0x10
	ldr r1, _0807BDA0 @ =0xFFFF0000
	cmp r0, r1
	beq _0807BDD6
	ldr r0, _0807BDA4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _0807BD84
_0807BD5E:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BD7E
	cmp r2, r4
	beq _0807BD7E
	ldrh r0, [r2, #0x14]
	ldrh r5, [r4, #0x14]
	cmp r0, r5
	bne _0807BD7E
	ldrb r1, [r2, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BDD6
_0807BD7E:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _0807BD5E
_0807BD84:
	ldr r3, _0807BDA8 @ =0x0807B8C9
	ldr r0, _0807BDAC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r4, [r1, #0x08]
	b _0807BDD6
_0807BDA0: .4byte 0xFFFF0000
_0807BDA4: .4byte 0x03000D74
_0807BDA8: .4byte sub_807B8C8
_0807BDAC: .4byte 0x03000FD8
_0807BDB0:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _0807BDD6
	ldrb r1, [r4, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x12]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	strh r0, [r4, #0x14]
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
_0807BDD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_807BDDC
sub_807BDDC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807BDE6
	b _0807BF2E
_0807BDE6:
	ldrb r1, [r5, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807BDF2
	b _0807BF2E
_0807BDF2:
	ldrh r4, [r5, #0x14]
	cmp r4, #0x00
	bne _0807BDFA
	b _0807BF2E
_0807BDFA:
	movs r6, #0x00
	movs r1, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	adds r2, r5, #0x0
	adds r2, #0x29
	cmp r0, #0x00
	beq _0807BE1A
_0807BE0C:
	lsrs r4, r4, #0x01
	adds r6, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807BE0C
_0807BE1A:
	ldrb r1, [r2, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0807BE8C
	ldr r0, _0807BE4C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _0807BE56
	movs r7, #0x20
	movs r3, #0x01
_0807BE32:
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0807BE50
	cmp r2, r5
	beq _0807BE50
	ldrh r0, [r2, #0x14]
	asrs r0, r6
	ands r0, r3
	cmp r0, #0x00
	beq _0807BE50
_0807BE4A:
	b _0807BE4A
_0807BE4C: .4byte 0x03000D74
_0807BE50:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _0807BE32
_0807BE56:
	adds r3, r6, #0x0
	cmp r4, #0x00
	beq _0807BE88
	movs r2, #0x01
	ldr r0, _0807BEA4 @ =0x03000D74
	mov r12, r0
	ldr r1, _0807BEA8 @ =0x0000FFFF
	adds r7, r1, #0x0
_0807BE66:
	adds r0, r4, #0x0
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _0807BE80
	mov r1, r12
	ldr r0, [r1, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	orrs r1, r7
	strh r1, [r0, #0x00]
_0807BE80:
	lsrs r4, r4, #0x01
	adds r3, #0x01
	cmp r4, #0x00
	bne _0807BE66
_0807BE88:
	movs r0, #0x00
	strh r0, [r5, #0x14]
_0807BE8C:
	ldr r0, [r5, #0x1C]
	ldr r1, _0807BEAC @ =0x00F0FFFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x0F
	cmp r0, r1
	bne _0807BEB0
	ldrb r0, [r5, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	b _0807BF2E
_0807BEA4: .4byte 0x03000D74
_0807BEA8: .4byte 0x0000FFFF
_0807BEAC: .4byte 0x00F0FFFF
_0807BEB0:
	movs r3, #0x00
	ldr r4, _0807BEE4 @ =0x03000FD8
	movs r2, #0x00
_0807BEB6:
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807BF20
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BF20
	ldr r0, _0807BEE8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	lsls r3, r3, #0x18
	b _0807BF08
	.byte 0x00, 0x00
_0807BEE4: .4byte 0x03000FD8
_0807BEE8: .4byte 0x03000D74
_0807BEEC:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF06
	cmp r2, r5
	beq _0807BF06
	ldrh r0, [r2, #0x14]
	asrs r0, r6
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF28
_0807BF06:
	ldr r2, [r2, #0x68]
_0807BF08:
	cmp r2, #0x00
	bne _0807BEEC
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r1, r3, #0x18
	movs r2, #0x00
	bl sub_8115048
	b _0807BF28
_0807BF20:
	adds r2, #0x1C
	adds r3, #0x01
	cmp r3, #0x07
	ble _0807BEB6
_0807BF28:
	adds r0, r5, #0x0
	bl sprite_hide_8021F20
_0807BF2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807BF34
sub_807BF34:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	mov r10, r2
	str r3, [sp, #0x010]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0807C0C0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0807C0C4 @ =0x00001076
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _0807C0C8 @ =0x03001034
	cmp r0, #0x00
	beq _0807BF7A
	movs r2, #0x06
_0807BF68:
	movs r0, #0xD0
	add r8, r0
	mov r0, r8
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF68
_0807BF7A:
	mov r1, r8
	ldr r7, [r1, #0x08]
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	movs r2, #0xD0
	bl _call_via_r3
	mov r2, r8
	str r7, [r2, #0x08]
	mov r0, r9
	str r0, [r2, #0x28]
	ldr r0, _0807C0CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r2, #0x00]
	str r2, [r1, #0x78]
	cmp r5, #0x00
	beq _0807C03C
	adds r0, r7, #0x0
	bl sub_807BDDC
	ldrb r1, [r7, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r7, #0x13]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r7, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r6, #0x08
	orrs r0, r6
	strb r0, [r7, #0x13]
	movs r5, #0x00
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r7, #0x0
	bl sub_80842D8
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r7, #0x0
	bl sub_807BC90
	ldrb r1, [r7, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r6
	subs r1, #0x24
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1F]
	movs r0, #0x01
	ldr r1, [sp, #0x038]
	ands r1, r0
	lsls r2, r1, #0x06
	ldrb r1, [r7, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x11]
_0807C03C:
	mov r2, r8
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r10
	lsls r0, r2, #0x08
	mov r1, r8
	str r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r2, [sp, #0x010]
	lsls r0, r2, #0x08
	str r0, [r1, #0x14]
	str r0, [r1, #0x3C]
	ldr r0, [sp, #0x034]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r1, #0x90
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0xCC
	mov r0, r9
	cmp r0, #0x00
	beq _0807C0A6
	adds r0, #0xD0
	ldrh r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0xC8
	strh r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0xD4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r0, r9
	adds r0, #0xD2
	ldrh r0, [r0, #0x00]
	mov r1, r8
	adds r1, #0xCA
	strh r0, [r1, #0x00]
_0807C0A6:
	ldrb r1, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r0, r8
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807C0C0: .4byte 0x03000FDC
_0807C0C4: .4byte 0x00001076
_0807C0C8: .4byte 0x03001034
_0807C0CC: .4byte 0x03000FD8
	thumb_func_start sub_807C0D0
sub_807C0D0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #0x00
	bne _0807C0E2
	adds r0, r5, #0x0
_0807C0E2:
	ldr r6, [r5, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _0807C0EC
	adds r2, #0xFF
_0807C0EC:
	asrs r2, r2, #0x08
	ldr r3, [r0, #0x3C]
	cmp r3, #0x00
	bge _0807C0F6
	adds r3, #0xFF
_0807C0F6:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _0807C100
	adds r0, #0xFF
_0807C100:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r3, #0x30]
	str r3, [r5, #0x30]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x76
	adds r1, r1, r3
	mov r12, r1
	movs r1, #0x06
	ands r1, r0
	mov r0, r12
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	mov r0, r12
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	movs r0, #0x00
	str r0, [r3, #0x4C]
	str r0, [r3, #0x68]
	adds r0, r5, #0x0
	adds r0, #0x7C
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x9C
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_807C1C8
sub_807C1C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0x0
	mov r8, r1
	cmp r2, #0x07
	ble _0807C1FC
	cmp r2, #0x0F
	bgt _0807C1FC
	ldr r1, _0807C200 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	movs r2, #0x98
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldr r1, [r1, #0x00]
	adds r7, r1, r0
	ldr r0, _0807C204 @ =0xFFFFF980
	adds r6, r7, r0
	ldr r1, _0807C208 @ =0xFFFFF9F6
	adds r5, r7, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _0807C20C
_0807C1FC:
	movs r0, #0x00
	b _0807C27A
_0807C200: .4byte 0x03000FDC
_0807C204: .4byte 0xFFFFF980
_0807C208: .4byte 0xFFFFF9F6
_0807C20C:
	ldr r4, [r6, #0x08]
	ldr r0, _0807C284 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0xD0
	bl _call_via_r3
	str r4, [r6, #0x08]
	ldr r0, _0807C288 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r6, #0x00]
	str r6, [r1, #0x78]
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r2, _0807C28C @ =0xFFFFFA10
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x1F]
	subs r0, #0x14
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, _0807C290 @ =0xFFFFFF00
	cmp r8, r0
	beq _0807C278
	ldr r1, _0807C294 @ =0xFFFFFA45
	adds r0, r7, r1
	mov r2, r8
	strb r2, [r0, #0x00]
_0807C278:
	adds r0, r6, #0x0
_0807C27A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807C284: .4byte 0x03001034
_0807C288: .4byte 0x03000FD8
_0807C28C: .4byte 0xFFFFFA10
_0807C290: .4byte 0xFFFFFF00
_0807C294: .4byte 0xFFFFFA45
	thumb_func_start sub_807C298
sub_807C298:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807C2A2
	b _0807C3D4
_0807C2A2:
	adds r4, r5, #0x0
	adds r4, #0x76
	ldrb r1, [r4, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r1, [r5, #0x68]
	adds r6, r4, #0x0
	cmp r1, #0x00
	beq _0807C2CA
	ldr r0, _0807C2FC @ =0x0807C299
	cmp r1, r0
	beq _0807C2CA
	adds r0, r5, #0x0
	bl _call_via_r1
_0807C2CA:
	ldr r0, [r5, #0x28]
	cmp r0, #0x00
	beq _0807C31E
	adds r0, #0x08
	cmp r5, r0
	bne _0807C300
	ldr r2, [r5, #0x30]
	cmp r2, #0x00
	beq _0807C31E
_0807C2DC:
	ldr r4, [r2, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807C2F2
	adds r0, r2, #0x0
	bl sub_807C298
_0807C2F2:
	adds r2, r4, #0x0
	cmp r2, #0x00
	bne _0807C2DC
	b _0807C31E
	.byte 0x00, 0x00
_0807C2FC: .4byte sub_807C298
_0807C300:
	adds r1, r0, #0x0
	b _0807C30C
_0807C304:
	ldr r0, [r5, #0x00]
	str r0, [r2, #0x00]
	b _0807C3B6
_0807C30A:
	ldr r1, [r1, #0x30]
_0807C30C:
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	beq _0807C31E
	cmp r5, r0
	bne _0807C30A
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	movs r0, #0x00
	str r0, [r5, #0x30]
_0807C31E:
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _0807C32C
_0807C324:
	bl sub_807FA94
	cmp r0, #0x00
	bne _0807C324
_0807C32C:
	ldr r1, [r5, #0x04]
	cmp r1, #0x00
	beq _0807C338
	movs r0, #0x00
	str r0, [r1, #0x04]
	str r0, [r5, #0x04]
_0807C338:
	ldr r4, [r5, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r3, #0x00
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r0, #0xF0
	strh r0, [r4, #0x04]
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x08]
	strh r0, [r4, #0x0A]
	strh r3, [r4, #0x0C]
	ldrb r1, [r4, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	ands r2, r0
	strb r2, [r4, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	adds r0, r4, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	movs r2, #0x00
	ldr r1, _0807C3A8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x78]
_0807C39A:
	cmp r0, #0x00
	beq _0807C3B6
	cmp r0, r5
	beq _0807C3AC
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	b _0807C39A
_0807C3A8: .4byte 0x03000FD8
_0807C3AC:
	cmp r2, #0x00
	bne _0807C304
	ldr r1, [r1, #0x00]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x78]
_0807C3B6:
	ldr r0, _0807C3DC @ =0xFFFFF000
	adds r1, r5, r0
	ldr r0, _0807C3E0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r0, _0807C3E4 @ =0x00000CFF
	cmp r1, r0
	bhi _0807C3D0
	ldrb r1, [r6, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_0807C3D0:
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807C3D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C3DC: .4byte 0xFFFFF000
_0807C3E0: .4byte 0x03000FDC
_0807C3E4: .4byte 0x00000CFF
	thumb_func_start sub_807C3E8
sub_807C3E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x01C
	movs r0, #0x00
	mov r9, r0
	ldr r0, _0807C43C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x1B
	lsrs r6, r0, #0x1B
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	bne _0807C40E
	b _0807C538
_0807C40E:
	ldr r7, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807C440
	mov r9, r4
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	adds r5, r0, #0x0
	movs r3, #0x00
	mov r8, r3
	cmp r5, #0x00
	bne _0807C42E
	b _0807C530
_0807C42E:
	ldrb r2, [r4, #0x0C]
	movs r3, #0x1F
	movs r0, #0x1F
	ands r0, r2
	cmp r0, #0x00
	beq _0807C48E
	b _0807C470
_0807C43C: .4byte 0x03000FD8
_0807C440:
	mov r0, r9
	cmp r0, #0x00
	beq _0807C450
	str r7, [r0, #0x00]
	ldr r1, _0807C44C @ =0x03000FD8
	b _0807C45C
_0807C44C: .4byte 0x03000FD8
_0807C450:
	ldr r1, _0807C46C @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r7, [r0, #0x00]
_0807C45C:
	ldr r1, [r1, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	b _0807C530
_0807C46C: .4byte 0x03000FD8
_0807C470:
	adds r1, r6, #0x0
	ands r1, r3
	movs r3, #0x20
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0C]
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_807F920
	subs r6, #0x01
	b _0807C496
_0807C48E:
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	bl sub_807F9A8
_0807C496:
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	beq _0807C522
_0807C49C:
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0807C51C
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _0807C4B2
	adds r0, #0xFF
_0807C4B2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bge _0807C4BE
	adds r0, #0xFF
_0807C4BE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _0807C4CA
	adds r0, #0xFF
_0807C4CA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r1, [sp, #0x000]
	add r1, sp, #0x00C
	add r2, sp, #0x010
	add r3, sp, #0x014
	bl sub_8082C58
	ldrb r1, [r4, #0x1B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldrb r0, [r4, #0x1B]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x008]
	add r0, sp, #0x018
	adds r1, r5, #0x0
	bl sub_807C564
	mov r3, r8
	cmp r3, #0x00
	bne _0807C51C
	ldr r0, _0807C560 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r8, r0
_0807C51C:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807C49C
_0807C522:
	mov r2, r8
	cmp r2, #0x00
	beq _0807C530
	ldr r0, _0807C560 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0807C530:
	adds r4, r7, #0x0
	cmp r4, #0x00
	beq _0807C538
	b _0807C40E
_0807C538:
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r0, #0x1F
	ands r6, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x07]
	add sp, #0x01C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C55C: .4byte 0x03000FD8
_0807C560: .4byte 0x03000D74
	thumb_func_start sub_807C564
sub_807C564:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	mov r9, r3
	ldr r0, [sp, #0x028]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0x40
	negs r0, r0
	cmp r12, r0
	bge _0807C58A
	b _0807C6BE
_0807C58A:
	cmp r9, r0
	bge _0807C590
	b _0807C6BE
_0807C590:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _0807C59A
	b _0807C6BE
_0807C59A:
	cmp r3, #0xE0
	ble _0807C5A0
	b _0807C6BE
_0807C5A0:
	ldr r0, _0807C614 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807C618 @ =0x000037E8
	adds r3, r0, r1
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _0807C620
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BA
	b _0807C6BE
_0807C5BA:
	movs r4, #0xC0
	lsls r4, r4, #0x04
_0807C5BE:
	ldr r2, [r6, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r9
	movs r1, #0xFF
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	mov r7, r8
	orrs r0, r7
	strh r0, [r2, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	add r0, r12
	ldr r7, _0807C61C @ =0x000001FF
	adds r1, r7, #0x0
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x04]
	ldrh r0, [r3, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r1, [sp, #0x024]
	orrs r0, r1
	str r0, [r2, #0x08]
	movs r0, #0x00
	strh r0, [r2, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BE
	b _0807C6BE
_0807C614: .4byte 0x03000FDC
_0807C618: .4byte 0x000037E8
_0807C61C: .4byte 0x000001FF
_0807C620:
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C6BE
	ldr r2, _0807C668 @ =0x000001FF
	mov r10, r2
_0807C62E:
	ldr r7, [r6, #0x00]
	str r7, [sp, #0x000]
	ldrh r0, [r3, #0x00]
	mov r2, r9
	adds r1, r0, r2
	movs r0, #0xFF
	ands r1, r0
	adds r3, #0x02
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r2
	adds r4, r7, #0x0
	cmp r0, #0x00
	beq _0807C66C
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	b _0807C68C
	.byte 0x00, 0x00
_0807C668: .4byte 0x000001FF
_0807C66C:
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r2, r7, #0x0
	eors r1, r2
_0807C68C:
	orrs r0, r1
	strh r0, [r4, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x04]
	ldrh r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x04
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r2, [sp, #0x024]
	orrs r0, r2
	str r0, [r4, #0x08]
	movs r0, #0x00
	strh r0, [r4, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C62E
_0807C6BE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807C6D0
sub_807C6D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r7, r0, #0x0
	ldr r2, _0807C878 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0x03
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _0807C6F0
	b _0807CC14
_0807C6F0:
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	str r0, [sp, #0x01C]
	ldr r3, [r3, #0x78]
	str r3, [sp, #0x020]
	cmp r3, #0x00
	bne _0807C702
	b _0807CC00
_0807C702:
	ldr r1, [sp, #0x020]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	bne _0807C70C
	b _0807CBF2
_0807C70C:
	ldrb r1, [r0, #0x12]
	movs r3, #0x20
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807C71A
	b _0807CBF2
_0807C71A:
	ldr r2, [sp, #0x020]
	adds r2, #0x79
	mov r8, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C72C
	b _0807CBF2
_0807C72C:
	ldr r4, [sp, #0x020]
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	bne _0807C736
	b _0807C880
_0807C736:
	ldrb r1, [r2, #0x0C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807C742
	b _0807CBF2
_0807C742:
	ldr r6, [r2, #0x08]
	cmp r6, #0x00
	bne _0807C74A
	b _0807CBF2
_0807C74A:
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	bge _0807C752
	b _0807C86E
_0807C752:
	ldr r0, [r6, #0x04]
	cmp r0, #0x00
	bge _0807C75A
	adds r0, #0xFF
_0807C75A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r6, #0x08]
	cmp r0, #0x00
	bge _0807C766
	adds r0, #0xFF
_0807C766:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r4, _0807C878 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	add r1, sp, #0x004
	add r2, sp, #0x008
	add r3, sp, #0x00C
	bl sub_8082C58
	ldr r3, [sp, #0x004]
	movs r0, #0x40
	negs r0, r0
	cmp r3, r0
	blt _0807C86E
	ldr r2, [sp, #0x008]
	cmp r2, r0
	blt _0807C86E
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r3, r0
	bgt _0807C86E
	cmp r2, #0xE0
	bgt _0807C86E
	ldr r1, [r4, #0x00]
	ldr r0, [sp, #0x020]
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x01
	adds r1, r1, r4
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	ldrh r5, [r1, #0x00]
	movs r0, #0x02
	add r12, r0
	subs r5, #0x01
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807C86E
	mov r9, r2
	mov r8, r3
	movs r2, #0xFF
	mov r10, r2
	subs r0, r1, r5
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C812
	mov r4, r12
	ldrh r0, [r4, #0x00]
	add r0, r9
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r4, #0x04]
	add r0, r8
	ldr r2, _0807C87C @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	movs r4, #0x0A
	add r12, r4
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C86E
_0807C812:
	mov r1, r12
	ldrh r0, [r1, #0x00]
	add r0, r9
	mov r2, r10
	ands r0, r2
	ldrh r1, [r1, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	mov r4, r12
	ldrh r0, [r4, #0x04]
	add r0, r8
	ldr r1, _0807C87C @ =0x000001FF
	adds r3, r1, #0x0
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r7, #0x04]
	adds r2, r7, #0x0
	adds r2, #0x08
	adds r4, #0x0A
	mov r1, r12
	ldrh r0, [r1, #0x0A]
	add r0, r9
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldrh r0, [r4, #0x04]
	add r0, r8
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r2, #0x04]
	adds r7, #0x10
	movs r2, #0x14
	add r12, r2
	subs r5, #0x02
	movs r4, #0x01
	negs r4, r4
	cmp r5, r4
	bne _0807C812
_0807C86E:
	ldr r6, [r6, #0x00]
	cmp r6, #0x00
	beq _0807C876
	b _0807C74A
_0807C876:
	b _0807CBF2
_0807C878: .4byte 0x03000FD8
_0807C87C: .4byte 0x000001FF
_0807C880:
	ldr r1, [sp, #0x020]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bge _0807C88A
	b _0807CBF2
_0807C88A:
	ldr r1, [r1, #0x38]
	cmp r1, #0x00
	bge _0807C892
	adds r1, #0xFF
_0807C892:
	asrs r1, r1, #0x08
	ldr r0, [sp, #0x020]
	adds r0, #0xC7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	str r1, [sp, #0x010]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807C8AC
	adds r0, #0xFF
_0807C8AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r2, [sp, #0x000]
	add r1, sp, #0x010
	add r2, sp, #0x014
	add r3, sp, #0x018
	bl sub_8082C58
	ldr r6, [sp, #0x010]
	movs r0, #0x40
	negs r0, r0
	cmp r6, r0
	bge _0807C8D4
	b _0807CBF2
_0807C8D4:
	ldr r4, [sp, #0x014]
	cmp r4, r0
	bge _0807C8DC
	b _0807CBF2
_0807C8DC:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r6, r0
	ble _0807C8E6
	b _0807CBF2
_0807C8E6:
	cmp r4, #0xE0
	ble _0807C8EC
	b _0807CBF2
_0807C8EC:
	ldr r1, [r5, #0x00]
	ldr r0, [sp, #0x020]
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x02
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	mov r9, r0
	adds r5, #0x02
	ldr r1, [sp, #0x020]
	ldr r2, [r1, #0x40]
	cmp r2, #0x00
	beq _0807C920
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _0807C9D0
_0807C920:
	movs r1, #0x01
	negs r1, r1
	add r9, r1
	cmp r9, r1
	bne _0807C92C
	b _0807CBF2
_0807C92C:
	mov r8, r4
	movs r2, #0xFF
	mov r10, r2
	mov r4, r9
	subs r0, r1, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C970
	ldrh r0, [r5, #0x00]
	add r0, r8
	mov r2, r10
	ands r0, r2
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r6
	ldr r4, _0807C9CC @ =0x000001FF
	adds r1, r4, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r5, #0x0A
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	cmp r9, r0
	bne _0807C970
	b _0807CBF2
_0807C970:
	ldrh r0, [r5, #0x00]
	add r0, r8
	mov r1, r10
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r6
	ldr r2, _0807C9CC @ =0x000001FF
	adds r3, r2, #0x0
	ands r0, r3
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r2, r7, #0x0
	adds r2, #0x08
	adds r4, r5, #0x0
	adds r4, #0x0A
	ldrh r0, [r5, #0x0A]
	add r0, r8
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldrh r0, [r4, #0x04]
	adds r0, r0, r6
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r2, #0x04]
	adds r7, #0x10
	adds r5, #0x14
	movs r2, #0x02
	negs r2, r2
	add r9, r2
	movs r4, #0x01
	negs r4, r4
	cmp r9, r4
	bne _0807C970
	b _0807CBF2
_0807C9CC: .4byte 0x000001FF
_0807C9D0:
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807C9D8
	adds r0, #0x7F
_0807C9D8:
	asrs r0, r0, #0x07
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	str r0, [sp, #0x024]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x024]
	cmp r2, r0
	ble _0807C9F0
	str r0, [sp, #0x024]
_0807C9F0:
	ldr r2, _0807CA60 @ =0x0300034C
	ldr r4, _0807CA64 @ =0x00000888
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	mov r1, sp
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r3, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r3, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r2, sp
	ldrh r2, [r2, #0x24]
	strh r2, [r0, #0x1E]
	mov r4, r9
	cmp r4, #0x01
	bne _0807CA6C
	ldr r1, [sp, #0x014]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r1, [sp, #0x010]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r1
	ldr r2, _0807CA68 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x09
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	subs r4, #0x01
	str r4, [sp, #0x02C]
	b _0807CBEE
	.byte 0x00, 0x00
_0807CA60: .4byte 0x0300034C
_0807CA64: .4byte 0x00000888
_0807CA68: .4byte 0x000001FF
_0807CA6C:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	ldr r1, [sp, #0x01C]
	subs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r9, r0
	bne _0807CA7E
	b _0807CBEE
_0807CA7E:
	ldr r1, _0807CC28 @ =0x0819832C
	ldr r0, _0807CC2C @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x028]
	movs r2, #0x01
	negs r2, r2
	mov r4, r9
	subs r0, r2, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807CB04
	movs r2, #0x00
	ldsh r4, [r5, r2]
	movs r0, #0x04
	ldsh r6, [r5, r0]
	cmp r4, #0x00
	beq _0807CAB4
	ldr r1, _0807CC30 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r4, r0, #0x0
_0807CAB4:
	cmp r6, #0x00
	beq _0807CACA
	ldr r1, _0807CC30 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r6, r0, #0x0
_0807CACA:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r1, #0xFF
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r2, _0807CC34 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x09
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r5, #0x0A
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	cmp r9, r0
	beq _0807CBEE
_0807CB04:
	movs r1, #0x00
	ldsh r4, [r5, r1]
	movs r2, #0x04
	ldsh r6, [r5, r2]
	cmp r4, #0x00
	beq _0807CB22
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r4, r0, #0x0
_0807CB22:
	cmp r6, #0x00
	beq _0807CB38
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r6, r0, #0x0
_0807CB38:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r2, #0xFF
	ands r0, r2
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x01
	orrs r0, r4
	strh r0, [r7, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r1, _0807CC34 @ =0x000001FF
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r2, [sp, #0x01C]
	lsls r2, r2, #0x09
	mov r10, r2
	orrs r0, r2
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r3, r7, #0x0
	adds r3, #0x08
	movs r4, #0x0A
	adds r4, r4, r5
	mov r8, r4
	movs r0, #0x0A
	ldsh r4, [r5, r0]
	mov r1, r8
	movs r2, #0x04
	ldsh r6, [r1, r2]
	cmp r4, #0x00
	beq _0807CB94
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	str r3, [sp, #0x030]
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r3, [sp, #0x030]
_0807CB94:
	cmp r6, #0x00
	beq _0807CBAE
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	str r3, [sp, #0x030]
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r3, [sp, #0x030]
_0807CBAE:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r2, #0xFF
	ands r0, r2
	mov r4, r8
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r2, _0807CC34 @ =0x000001FF
	ands r0, r2
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	mov r4, r10
	orrs r0, r4
	strh r0, [r3, #0x02]
	mov r1, r8
	ldrh r0, [r1, #0x08]
	strh r0, [r3, #0x04]
	adds r7, #0x10
	adds r5, #0x14
	movs r2, #0x02
	negs r2, r2
	add r9, r2
	movs r4, #0x01
	negs r4, r4
	cmp r9, r4
	bne _0807CB04
_0807CBEE:
	ldr r0, [sp, #0x02C]
	str r0, [sp, #0x01C]
_0807CBF2:
	ldr r1, [sp, #0x020]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x020]
	ldr r5, _0807CC38 @ =0x03000FD8
	cmp r1, #0x00
	beq _0807CC00
	b _0807C702
_0807CC00:
	ldr r2, [r5, #0x00]
	movs r0, #0x1F
	ldr r4, [sp, #0x01C]
	ands r4, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x07]
_0807CC14:
	adds r0, r7, #0x0
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CC28: .4byte 0x0819832C
_0807CC2C: .4byte 0x08198220
_0807CC30: .4byte 0x03001038
_0807CC34: .4byte 0x000001FF
_0807CC38: .4byte 0x03000FD8
	thumb_func_start sub_807CC3C
sub_807CC3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, [sp, #0x02C]
	ldr r1, [sp, #0x034]
	mov r8, r1
	cmp r0, #0x01
	bne _0807CC66
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x000]
	mov r0, r9
	ldr r1, [sp, #0x004]
	bl sub_807CE0C
	b _0807CCF4
_0807CC66:
	ldr r4, _0807CD04 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r2, _0807CD08 @ =0x0807F8C5
	ldr r7, [r1, #0x3C]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r7, #0x00]
	str r2, [r7, #0x04]
	movs r5, #0x00
	strh r5, [r7, #0x10]
	str r7, [r1, #0x48]
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, [r6, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CD0C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r0, r8
	cmp r0, #0x00
	beq _0807CCBC
	movs r0, #0x01
	mov r1, r8
	strb r0, [r1, #0x00]
_0807CCBC:
	mov r0, r8
	str r0, [r6, #0x0C]
	ldr r0, [sp, #0x004]
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r6, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x10
	lsls r0, r0, #0x08
	str r0, [r6, #0x08]
	ldr r0, _0807CD10 @ =0x0000FD9A
	strh r0, [r6, #0x12]
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r6, #0x18]
	movs r0, #0x0E
	strh r0, [r6, #0x16]
	ldr r0, _0807CD14 @ =0x0807CD19
	str r0, [r7, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r6, [r7, #0x0C]
	adds r0, r7, #0x0
_0807CCF4:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CD04: .4byte 0x03000FD8
_0807CD08: .4byte sub_807F8C4
_0807CD0C: .4byte 0x03001034
_0807CD10: .4byte 0x0000FD9A
_0807CD14: .4byte sub_807CD18
	thumb_func_start sub_807CD18
sub_807CD18:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CD2E
	adds r0, #0xFF
_0807CD2E:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CD54
	adds r1, #0xFF
_0807CD54:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CD5C
	adds r0, #0xFF
_0807CD5C:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CD94 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CD8C
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CD98 @ =0x0807CD9D
	str r0, [r6, #0x04]
_0807CD8C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CD94: .4byte 0x03000FD8
_0807CD98: .4byte sub_807CD9C
	thumb_func_start sub_807CD9C
sub_807CD9C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CDAE
	adds r1, #0xFF
_0807CDAE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CDB8
	adds r2, #0xFF
_0807CDB8:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CE08 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CE00
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CDEC
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CDEC:
	cmp r4, #0x00
	beq _0807CDFE
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CDFE:
	str r2, [r5, #0x04]
_0807CE00:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CE08: .4byte 0x03000FD8
	thumb_func_start sub_807CE0C
sub_807CE0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r7, [sp, #0x02C]
	ldr r6, _0807CEAC @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r2, _0807CEB0 @ =0x0807F869
	ldr r5, [r1, #0x3C]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r5, #0x00]
	str r2, [r5, #0x04]
	movs r0, #0x00
	mov r8, r0
	mov r0, r8
	strh r0, [r5, #0x10]
	str r5, [r1, #0x48]
	ldr r0, [r6, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CEB4 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	mov r1, r8
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	subs r0, #0x0C
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, _0807CEB8 @ =0x0000FF34
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	ldr r0, _0807CEBC @ =0x0000FE9A
	strh r0, [r4, #0x12]
	strh r7, [r4, #0x18]
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807CEC0 @ =0x0807CEC5
	str r0, [r5, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r5, #0x08]
	str r4, [r5, #0x0C]
	adds r0, r5, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807CEAC: .4byte 0x03000FD8
_0807CEB0: .4byte sub_807F868
_0807CEB4: .4byte 0x03001034
_0807CEB8: .4byte 0x0000FF34
_0807CEBC: .4byte 0x0000FE9A
_0807CEC0: .4byte sub_807CEC4
	thumb_func_start sub_807CEC4
sub_807CEC4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CEDA
	adds r0, #0xFF
_0807CEDA:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CF00
	adds r1, #0xFF
_0807CF00:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CF08
	adds r0, #0xFF
_0807CF08:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CF40 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CF38
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CF44 @ =0x0807CF49
	str r0, [r6, #0x04]
_0807CF38:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CF40: .4byte 0x03000FD8
_0807CF44: .4byte sub_807CF48
	thumb_func_start sub_807CF48
sub_807CF48:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CF5A
	adds r1, #0xFF
_0807CF5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CF64
	adds r2, #0xFF
_0807CF64:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CFB4 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CFAC
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CF98
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CF98:
	cmp r4, #0x00
	beq _0807CFAA
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CFAA:
	str r2, [r5, #0x04]
_0807CFAC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CFB4: .4byte 0x03000FD8
	thumb_func_start sub_807CFB8
sub_807CFB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r8, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, _0807D06C @ =0x03001034
	mov r9, r0
	ldr r0, _0807D070 @ =0x08198154
	ldr r1, _0807D074 @ =0x081980D8
	subs r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D078 @ =0x084FB588
	ldr r4, _0807D07C @ =0x0300034C
	ldr r1, _0807D080 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x1A
	cmp r0, #0x00
	beq _0807CFF0
	movs r1, #0x1C
_0807CFF0:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D084 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D088 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	movs r6, #0x00
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r5, _0807D08C @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldr r3, _0807D090 @ =0x0807F835
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x48]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	strh r6, [r1, #0x10]
	str r1, [r2, #0x48]
	adds r7, r1, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	mov r2, r9
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r2, r8
	cmp r2, #0x09
	bhi _0807D094
	ldr r0, [sp, #0x004]
	adds r0, #0x04
	b _0807D098
	.byte 0x00, 0x00
_0807D06C: .4byte 0x03001034
_0807D070: .4byte 0x08198154
_0807D074: .4byte 0x081980D8
_0807D078: .4byte 0x084FB588
_0807D07C: .4byte 0x0300034C
_0807D080: .4byte 0x00000888
_0807D084: .4byte 0x089F808C
_0807D088: .4byte 0x02000440
_0807D08C: .4byte 0x03000FD8
_0807D090: .4byte sub_807F834
_0807D094:
	ldr r0, [sp, #0x004]
	adds r0, #0x08
_0807D098:
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	movs r0, #0xFF
	lsls r0, r0, #0x08
	strh r0, [r4, #0x12]
	movs r0, #0x0A
	strh r0, [r4, #0x16]
	mov r0, r8
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r4, [r7, #0x0C]
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807D0CC
sub_807D0CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldrh r0, [r4, #0x12]
	subs r0, #0xB4
	movs r7, #0x00
	strh r0, [r4, #0x12]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r2, r0, r1
	str r2, [r4, #0x08]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807D0F6
	adds r1, #0xFF
_0807D0F6:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807D100
	adds r0, #0xFF
_0807D100:
	asrs r2, r0, #0x08
	movs r3, #0x16
	ldsh r0, [r4, r3]
	lsls r3, r0, #0x01
	adds r3, r3, r0
	lsls r3, r3, #0x02
	str r7, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807D154
	ldr r3, _0807D150 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0807D128
	adds r1, #0xFF
_0807D128:
	asrs r1, r1, #0x08
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bgt _0807D146
	cmp r4, #0x00
	beq _0807D144
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807D144:
	str r7, [r5, #0x04]
_0807D146:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D150: .4byte 0x03000FD8
	thumb_func_start sub_807D154
sub_807D154:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	mov r8, r3
	cmp r3, #0x00
	bgt _0807D16E
	b _0807D29A
_0807D16E:
	cmp r3, #0xFF
	ble _0807D1C8
	adds r4, r7, #0x0
	adds r2, r5, #0x0
	movs r5, #0xFF
	mov r0, r9
	ands r5, r0
	ldr r0, _0807D1BC @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r12, r0
	movs r3, #0x0F
	ldr r7, _0807D1C0 @ =0x000001FF
	ldr r6, _0807D1C4 @ =0xFFFF8000
	adds r0, r6, #0x0
	orrs r5, r0
	movs r6, #0xE0
	lsls r6, r6, #0x08
_0807D196:
	adds r0, r4, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	ands r2, r7
	strh r5, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r6
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r4, r4, #0x04
	cmp r4, #0x00
	bne _0807D196
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r1, [r0, #0x00]
	b _0807D29A
_0807D1BC: .4byte 0x0300034C
_0807D1C0: .4byte 0x000001FF
_0807D1C4: .4byte 0xFFFF8000
_0807D1C8:
	ldr r0, _0807D2AC @ =0x0300034C
	mov r10, r0
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r10
	ldr r6, [r0, #0x00]
	ldr r0, _0807D2B0 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r3, r3, #0x1B
	str r3, [sp, #0x000]
	ldr r2, _0807D2B4 @ =0x03001038
	ldr r0, _0807D2B8 @ =0x0819832C
	ldr r1, _0807D2BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	mov r1, r8
	bl _call_via_r2
	ldr r1, _0807D2C0 @ =0x00000888
	add r1, r10
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0A
	ldr r3, [sp, #0x000]
	lsls r2, r3, #0x05
	mov r3, r10
	adds r3, #0x80
	adds r2, r2, r3
	adds r1, r1, r2
	ldrh r2, [r1, #0x06]
	movs r2, #0x00
	strh r0, [r1, #0x06]
	ldrh r0, [r1, #0x0E]
	strh r2, [r1, #0x0E]
	ldrh r0, [r1, #0x16]
	strh r2, [r1, #0x16]
	ldrh r0, [r1, #0x1E]
	mov r0, r8
	strh r0, [r1, #0x1E]
	movs r1, #0x08
	negs r1, r1
	add r9, r1
	movs r0, #0xFF
	mov r3, r9
	ands r3, r0
	mov r9, r3
	subs r5, #0x04
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	beq _0807D254
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_810D260
	adds r5, r0, #0x0
_0807D254:
	mov r12, r10
	movs r0, #0x0F
	mov r10, r0
	ldr r1, _0807D2C4 @ =0x000001FF
	mov r8, r1
	ldr r3, _0807D2C8 @ =0xFFFF8300
	adds r0, r3, #0x0
	mov r4, r9
	orrs r4, r0
	ldr r0, [sp, #0x000]
	lsls r2, r0, #0x09
	ldr r1, _0807D2CC @ =0xFFFFE000
	adds r3, r1, #0x0
_0807D26E:
	adds r1, r7, #0x0
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0x49
	subs r5, #0x08
	mov r0, r8
	ands r5, r0
	strh r4, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r2
	strh r0, [r6, #0x02]
	orrs r1, r3
	strh r1, [r6, #0x04]
	adds r6, #0x08
	lsrs r7, r7, #0x04
	cmp r7, #0x00
	bne _0807D26E
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r6, [r0, #0x00]
_0807D29A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D2AC: .4byte 0x0300034C
_0807D2B0: .4byte 0x03000FD8
_0807D2B4: .4byte 0x03001038
_0807D2B8: .4byte 0x0819832C
_0807D2BC: .4byte 0x08198220
_0807D2C0: .4byte 0x00000888
_0807D2C4: .4byte 0x000001FF
_0807D2C8: .4byte 0xFFFF8300
_0807D2CC: .4byte 0xFFFFE000
	thumb_func_start sub_807D2D0
sub_807D2D0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _0807D324 @ =0x0807D531
	movs r0, #0x03
	bl sub_8018B78
	ldr r3, _0807D328 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0807D32C @ =0x02000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D330 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	ldr r0, _0807D334 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x3C]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x00
	b _0807D33C
_0807D324: .4byte sub_807D530
_0807D328: .4byte 0x04000208
_0807D32C: .4byte 0x02000004
_0807D330: .4byte 0x04000200
_0807D334: .4byte 0x03000FD8
_0807D338:
	adds r3, r1, #0x0
	ldr r1, [r3, #0x00]
_0807D33C:
	cmp r1, #0x00
	beq _0807D348
	movs r7, #0x10
	ldsh r0, [r1, r7]
	cmp r4, r0
	bge _0807D338
_0807D348:
	str r1, [r2, #0x00]
	cmp r3, #0x00
	beq _0807D358
	str r2, [r3, #0x00]
_0807D350:
	cmp r5, #0x00
	beq _0807D36C
	str r5, [r2, #0x04]
	b _0807D370
_0807D358:
	ldr r0, _0807D368 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	b _0807D350
	.byte 0x00, 0x00
_0807D368: .4byte 0x03000FD8
_0807D36C:
	ldr r0, _0807D37C @ =0x0807F7B9
	str r0, [r2, #0x04]
_0807D370:
	str r6, [r2, #0x0C]
	strh r4, [r2, #0x10]
	adds r0, r2, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807D37C: .4byte 0x0807F7B9
	thumb_func_start sub_807D380
sub_807D380:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _0807D3C4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D39C
	str r1, [sp, #0x000]
	bl _call_via_r0
	ldr r1, [sp, #0x000]
_0807D39C:
	ldr r0, [r1, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x50
	movs r6, #0x00
	ldr r4, [r0, #0x50]
	cmp r4, #0x00
	beq _0807D402
_0807D3AA:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D3C8
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D3C8
	adds r6, r4, #0x0
	b _0807D3FC
	.byte 0x00, 0x00
_0807D3C4: .4byte 0x03000FD8
_0807D3C8:
	cmp r6, #0x00
	beq _0807D3D8
	str r5, [r6, #0x00]
	ldr r1, _0807D3D4 @ =0x03000FD8
	b _0807D3F4
	.byte 0x00, 0x00
_0807D3D4: .4byte 0x03000FD8
_0807D3D8:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D3E8
	str r5, [r7, #0x00]
	ldr r1, _0807D3E4 @ =0x03000FD8
	b _0807D3F4
_0807D3E4: .4byte 0x03000FD8
_0807D3E8:
	ldr r1, _0807D448 @ =0x03000FD8
_0807D3EA:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D3EA
	str r5, [r6, #0x00]
_0807D3F4:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D3FC:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D3AA
_0807D402:
	ldr r1, _0807D448 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D41A
	str r1, [sp, #0x000]
	bl sub_8085328
	ldr r1, [sp, #0x000]
_0807D41A:
	ldr r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807D512
	adds r7, r0, #0x0
	movs r6, #0x00
	adds r4, r1, #0x0
_0807D42E:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D44C
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D44C
	adds r6, r4, #0x0
	b _0807D480
	.byte 0x00, 0x00
_0807D448: .4byte 0x03000FD8
_0807D44C:
	cmp r6, #0x00
	beq _0807D45C
	str r5, [r6, #0x00]
	ldr r1, _0807D458 @ =0x03000FD8
	b _0807D478
	.byte 0x00, 0x00
_0807D458: .4byte 0x03000FD8
_0807D45C:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D46C
	str r5, [r7, #0x00]
	ldr r1, _0807D468 @ =0x03000FD8
	b _0807D478
_0807D468: .4byte 0x03000FD8
_0807D46C:
	ldr r1, _0807D4D4 @ =0x03000FD8
_0807D46E:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D46E
	str r5, [r6, #0x00]
_0807D478:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D480:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D42E
	ldr r0, _0807D4D4 @ =0x03000FD8
	ldr r6, [r0, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	beq _0807D4E4
	ldr r3, _0807D4D8 @ =0x04000208
	strh r4, [r3, #0x00]
	ldr r2, _0807D4DC @ =0x04000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x08
	movs r1, #0x20
	orrs r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D4E0 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r5, [r0, #0x00]
	b _0807D512
	.byte 0x00, 0x00
_0807D4D4: .4byte 0x03000FD8
_0807D4D8: .4byte 0x04000208
_0807D4DC: .4byte 0x04000004
_0807D4E0: .4byte 0x04000200
_0807D4E4:
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _0807D51C @ =0x04000208
	strh r5, [r3, #0x00]
	ldr r2, _0807D520 @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D524 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0807D528 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D52C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_0807D512:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D51C: .4byte 0x04000208
_0807D520: .4byte 0x02000004
_0807D524: .4byte 0x0000FFDF
_0807D528: .4byte 0x04000200
_0807D52C: .4byte 0x0000FFFB
	thumb_func_start sub_807D530
sub_807D530:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r2, #0x10
	ldsh r6, [r4, r2]
	ldr r7, _0807D5C0 @ =0x0807F7A5
	ldr r3, _0807D5C4 @ =0x04000208
	mov r10, r3
	ldr r5, _0807D5C8 @ =0x04000004
	ldr r0, _0807D5CC @ =0x04000200
	mov r8, r0
	movs r1, #0x04
	mov r9, r1
_0807D55A:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807D566
	adds r0, r4, #0x0
	bl _call_via_r1
_0807D566:
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0807D5D8
	movs r3, #0x10
	ldsh r2, [r1, r3]
	cmp r6, r2
	bge _0807D5D4
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r1, [r0, #0x00]
	lsls r4, r2, #0x08
_0807D582:
	bl _call_via_r7
	cmp r0, #0x00
	beq _0807D582
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	movs r0, #0x20
	orrs r4, r0
	ldrh r0, [r5, #0x00]
	orrs r4, r0
	strh r4, [r5, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x00]
	mov r3, r9
	orrs r0, r3
	strh r0, [r2, #0x00]
	ldr r1, _0807D5D0 @ =0x04000202
	ldrh r0, [r1, #0x00]
	orrs r0, r3
	strh r0, [r1, #0x00]
	movs r0, #0x01
	mov r1, r10
	strh r0, [r1, #0x00]
	b _0807D5D8
_0807D5BC: .4byte 0x03000FD8
_0807D5C0: .4byte 0x0807F7A5
_0807D5C4: .4byte 0x04000208
_0807D5C8: .4byte 0x04000004
_0807D5CC: .4byte 0x04000200
_0807D5D0: .4byte 0x04000202
_0807D5D4:
	adds r4, r1, #0x0
	b _0807D55A
_0807D5D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807D5E8
sub_807D5E8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r5, [sp, #0x020]
	ldr r7, [sp, #0x024]
	cmp r6, #0x00
	bge _0807D5FA
	b _0807D772
_0807D5FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807D602
	adds r0, #0xFF
_0807D602:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r3, r3, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807D61A
	adds r0, #0xFF
_0807D61A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r5, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0807D632
	adds r0, #0xFF
_0807D632:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r7, r0
	cmp r2, #0x03
	bne _0807D648
	b _0807D744
_0807D648:
	cmp r2, #0x03
	ble _0807D652
	cmp r2, #0x04
	beq _0807D684
	b _0807D772
_0807D652:
	cmp r2, #0x00
	bge _0807D658
	b _0807D772
_0807D658:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D668
	movs r0, #0x01
	b _0807D66A
_0807D668:
	movs r0, #0x00
_0807D66A:
	str r0, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D772
_0807D684:
	ldr r0, _0807D6C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x12]
	mov r12, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	mov r1, r12
	orrs r0, r1
	strh r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D6C4
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D6DE
_0807D6C0: .4byte 0x03000FD8
_0807D6C4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D6DE:
	ldr r2, _0807D724 @ =0x03001034
	ldr r0, _0807D728 @ =0x08198154
	ldr r1, _0807D72C @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D730 @ =0x084FB588
	ldr r4, _0807D734 @ =0x0300034C
	ldr r1, _0807D738 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D700
	movs r1, #0x24
_0807D700:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D73C @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D740 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D772
_0807D724: .4byte 0x03001034
_0807D728: .4byte 0x08198154
_0807D72C: .4byte 0x081980D8
_0807D730: .4byte 0x084FB588
_0807D734: .4byte 0x0300034C
_0807D738: .4byte 0x00000888
_0807D73C: .4byte 0x089F808C
_0807D740: .4byte 0x02000440
_0807D744:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D762
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D772
_0807D762:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D772:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807D77C
sub_807D77C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r0, #0xB8
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	adds r0, #0xBA
	ldrh r4, [r0, #0x00]
	adds r0, #0x02
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r1
	adds r6, r5, #0x0
	adds r6, #0xBE
	movs r1, #0x00
	ldsh r0, [r6, r1]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0xC0
	movs r2, #0x00
	ldsh r7, [r0, r2]
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x28]
	mov r10, r0
	cmp r4, #0x00
	bge _0807D7C0
	b _0807D8F4
_0807D7C0:
	adds r0, r5, #0x0
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	mov r12, r1
	mov r3, r12
	ands r3, r0
	cmp r3, #0x00
	beq _0807D7D4
	b _0807D8F4
_0807D7D4:
	ldr r2, [sp, #0x010]
	cmp r2, #0x03
	beq _0807D8C8
	cmp r2, #0x03
	ble _0807D7E4
	cmp r2, #0x04
	beq _0807D814
	b _0807D8F4
_0807D7E4:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0807D7EC
	b _0807D8F4
_0807D7EC:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D7FE
	mov r2, r12
	str r2, [sp, #0x000]
	b _0807D800
_0807D7FE:
	str r3, [sp, #0x000]
_0807D800:
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D8F4
_0807D814:
	ldr r0, _0807D848 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	ldrh r1, [r2, #0x12]
	orrs r0, r1
	strh r0, [r2, #0x12]
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D84C
	mov r0, r12
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D860
_0807D848: .4byte 0x03000FD8
_0807D84C:
	str r3, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D860:
	ldr r2, _0807D8A8 @ =0x03001034
	ldr r0, _0807D8AC @ =0x08198154
	ldr r1, _0807D8B0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D8B4 @ =0x084FB588
	ldr r4, _0807D8B8 @ =0x0300034C
	ldr r1, _0807D8BC @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D882
	movs r1, #0x24
_0807D882:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D8C0 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D8C4 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D8F4
	.byte 0x00, 0x00
_0807D8A8: .4byte 0x03001034
_0807D8AC: .4byte 0x08198154
_0807D8B0: .4byte 0x081980D8
_0807D8B4: .4byte 0x084FB588
_0807D8B8: .4byte 0x0300034C
_0807D8BC: .4byte 0x00000888
_0807D8C0: .4byte 0x089F808C
_0807D8C4: .4byte 0x02000440
_0807D8C8:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D8E6
	mov r2, r12
	str r2, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D8F4
_0807D8E6:
	str r3, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D8F4:
	adds r0, r5, #0x0
	adds r0, #0x78
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bne _0807D902
	b _0807DA4A
_0807D902:
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0807D90E
	b _0807DA4A
_0807D90E:
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bge _0807D9A4
	ldr r1, _0807D950 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r3, [r4, #0x0C]
	movs r0, #0x80
	ands r0, r3
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0807D95C
	mov r0, r10
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807D95C
	movs r0, #0x7F
	ands r0, r3
	strb r0, [r4, #0x0C]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807D954
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x74]
	b _0807D958
_0807D950: .4byte 0x03000FD8
_0807D954:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x70]
_0807D958:
	ldr r0, _0807D99C @ =0x0807F53D
	str r0, [r1, #0x54]
_0807D95C:
	ldr r3, _0807D9A0 @ =0x0807F649
	ldr r2, [r2, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	movs r1, #0x00
	ldsh r2, [r6, r1]
	adds r2, #0x01
	ldr r0, [sp, #0x00C]
	subs r2, r0, r2
	adds r0, r5, #0x0
	movs r1, #0x00
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
	b _0807DA38
	.byte 0x00, 0x00
_0807D99C: .4byte sub_807F53C
_0807D9A0: .4byte sub_807F648
_0807D9A4:
	ldr r4, _0807DA00 @ =0x00000111
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0807D9C0
	str r5, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_80DF024
_0807D9C0:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _0807DA4A
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807DA0C
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x09]
	ldr r3, _0807DA04 @ =0x0807F681
	ldr r0, _0807DA08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	strh r6, [r0, #0x10]
	str r0, [r2, #0x4C]
	str r5, [r0, #0x08]
	movs r1, #0x0C
	strh r1, [r0, #0x10]
	b _0807DA14
_0807DA00: .4byte 0x00000111
_0807DA04: .4byte sub_807F680
_0807DA08: .4byte 0x03000FD8
_0807DA0C:
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x08]
_0807DA14:
	lsls r0, r4, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807DA2A
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DA2A:
	ldr r2, _0807DA5C @ =0x00000111
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807DA38:
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807DA4A:
	ldr r1, [sp, #0x010]
	cmp r1, #0x04
	bhi _0807DA9A
	lsls r0, r1, #0x02
	ldr r1, _0807DA60 @ =0x0807DA64
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807DA5C: .4byte 0x00000111
_0807DA60: .4byte 0x0807DA64
	.byte 0x9A, 0xDA, 0x07, 0x08, 0x78, 0xDA, 0x07, 0x08, 0x8A, 0xDA, 0x07, 0x08, 0x9A, 0xDA, 0x07, 0x08
	.byte 0x9A, 0xDA, 0x07, 0x08, 0x20, 0x22, 0x52, 0x42, 0x13, 0x23, 0x5B, 0x42, 0x04, 0x20, 0x29, 0x1C
	.byte 0x01, 0xF0, 0x2E, 0xF8, 0x07, 0xE0, 0x20, 0x22, 0x52, 0x42, 0x13, 0x23, 0x5B, 0x42, 0x05, 0x20
	.byte 0x29, 0x1C, 0x01, 0xF0, 0x25, 0xF8
_0807DA9A:
	ldr r0, [sp, #0x014]
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1F
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	lsls r1, r0, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x014]
	strb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB4
	movs r0, #0x00
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807DAD4
sub_807DAD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	cmp r1, #0x02
	beq _0807DBB4
	cmp r1, #0x02
	bgt _0807DAEE
	cmp r1, #0x01
	beq _0807DB80
	b _0807DC7C
_0807DAEE:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0807DB00
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _0807DB40
	b _0807DC7C
_0807DB00:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB28
	ldr r2, _0807DB24 @ =0x00002028
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA4
	lsls r0, r0, #0x01
	b _0807DBD4
_0807DB24: .4byte 0x00002028
_0807DB28:
	ldr r2, _0807DB3C @ =0x00002057
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA6
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB3C: .4byte 0x00002057
_0807DB40:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB68
	ldr r2, _0807DB64 @ =0x00002029
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xE7
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB64: .4byte 0x00002029
_0807DB68:
	ldr r2, _0807DB78 @ =0x00002058
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DB7C @ =0x0000014B
	b _0807DBD4
_0807DB78: .4byte 0x00002058
_0807DB7C: .4byte 0x0000014B
_0807DB80:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB9C
	ldr r2, _0807DB98 @ =0x0000202A
	b _0807DBC8
	.byte 0x00, 0x00
_0807DB98: .4byte 0x0000202A
_0807DB9C:
	ldr r2, _0807DBB0 @ =0x00002059
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DBB0: .4byte 0x00002059
_0807DBB4:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DBE4
	ldr r2, _0807DBDC @ =0x0000202C
_0807DBC8:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DBE0 @ =0x00000149
_0807DBD4:
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	b _0807DBFA
_0807DBDC: .4byte 0x0000202C
_0807DBE0: .4byte 0x00000149
_0807DBE4:
	ldr r2, _0807DC68 @ =0x0000205B
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_0807DBFA:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r3, #0x00
	strh r3, [r0, #0x00]
	ldr r4, _0807DC6C @ =0x0807F649
	ldr r6, _0807DC70 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r4, [r1, #0x04]
	strh r3, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DC7C
	mov r0, r8
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bne _0807DC7C
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r0, #0x00
	ldsh r1, [r7, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DC74
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x74]
	b _0807DC78
_0807DC68: .4byte 0x0000205B
_0807DC6C: .4byte sub_807F648
_0807DC70: .4byte 0x03000FD8
_0807DC74:
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
_0807DC78:
	ldr r0, _0807DC88 @ =0x0807F53D
	str r0, [r1, #0x54]
_0807DC7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DC88: .4byte sub_807F53C
	thumb_func_start sub_807DC8C
sub_807DC8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0807DCCC
	ldr r0, _0807DCC8 @ =0x00000111
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807DD38
	movs r0, #0x24
	bl sub_8082898
	b _0807DD32
_0807DCC8: .4byte 0x00000111
_0807DCCC:
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DCEC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DCF8
_0807DCEC:
	ldr r2, _0807DD24 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DCF8:
	ldr r2, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807DD2E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0807DD28
	movs r0, #0x47
	bl play_sfx_80195B4
	b _0807DD2E
_0807DD24: .4byte 0x0000204D
_0807DD28:
	movs r0, #0x47
	bl play_sfx_80195B4
_0807DD2E:
	movs r0, #0x00
	str r0, [r5, #0x04]
_0807DD32:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_807DD38
sub_807DD38:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	movs r0, #0x00
	str r0, [r4, #0x4C]
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _0807DD78
	ldr r2, _0807DD74 @ =0x00002028
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _0807DD8C
	.byte 0x00, 0x00
_0807DD74: .4byte 0x00002028
_0807DD78:
	ldr r2, _0807DDDC @ =0x00002057
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_0807DD8C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807DDA0
	adds r0, #0xFF
_0807DDA0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x16
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807DDAE
	adds r2, #0xFF
_0807DDAE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807DDB8
	adds r3, #0xFF
_0807DDB8:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x80
	bl sub_80880C4
	ldr r0, _0807DDE0 @ =0x0807F5B9
	str r0, [r6, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DDDC: .4byte 0x00002057
_0807DDE0: .4byte sub_807F5B8
	thumb_func_start sub_807DDE4
sub_807DDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, [r4, #0x4C]
	ldr r0, _0807DE5C @ =0x08086961
	mov r8, r4
	cmp r1, r0
	bne _0807DE02
	ldr r0, [r4, #0x30]
	mov r8, r0
_0807DE02:
	adds r0, r7, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	lsls r1, r5, #0x02
	mov r0, r8
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE26
	b _0807DFD6
_0807DE26:
	mov r0, r8
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE3E
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE3E
	b _0807DFD6
_0807DE3E:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0807DE60
	movs r0, #0x10
	b _0807DE6A
	.byte 0x00, 0x00
_0807DE5C: .4byte sub_8086960
_0807DE60:
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DE72
	movs r0, #0x08
_0807DE6A:
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	b _0807DFD6
_0807DE72:
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_80875E0
	str r0, [sp, #0x000]
	cmp r0, #0x00
	bne _0807DE82
	b _0807DFD6
_0807DE82:
	cmp r8, r4
	beq _0807DE8C
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x54]
_0807DE8C:
	cmp r5, #0x00
	bne _0807DE92
	b _0807DFC4
_0807DE92:
	cmp r6, #0x00
	bne _0807DE98
	b _0807DFC4
_0807DE98:
	cmp r5, #0x01
	beq _0807DEFA
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _0807DEB2
	b _0807DFD6
_0807DEB2:
	cmp r6, #0x00
	bne _0807DEF4
	movs r5, #0x00
	ldr r1, _0807DED8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x54]
	mov r9, r1
	cmp r2, #0x00
	beq _0807DEF4
	mov r0, r9
	movs r3, #0x00
_0807DEC8:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DEEC
	cmp r5, #0x00
	beq _0807DEDC
	str r1, [r5, #0x34]
	b _0807DEE0
	.byte 0x00, 0x00
_0807DED8: .4byte 0x03000FD8
_0807DEDC:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DEE0:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DEF4
_0807DEEC:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DEC8
_0807DEF4:
	cmp r6, #0x00
	ble _0807DFD6
	b _0807DFC4
_0807DEFA:
	ldr r2, _0807DF54 @ =0x03000FD8
	mov r9, r2
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	movs r3, #0x02
	mov r10, r3
	cmp r7, r0
	bne _0807DF10
	movs r0, #0x01
	mov r10, r0
_0807DF10:
	ldrb r0, [r1, #0x0D]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	bne _0807DFD6
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _0807DFD6
	cmp r6, #0x00
	bne _0807DF8A
	movs r5, #0x00
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x54]
	cmp r2, #0x00
	beq _0807DF70
	mov r0, r9
	movs r3, #0x00
_0807DF46:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DF68
	cmp r5, #0x00
	beq _0807DF58
	str r1, [r5, #0x34]
	b _0807DF5C
_0807DF54: .4byte 0x03000FD8
_0807DF58:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DF5C:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DF70
_0807DF68:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DF46
_0807DF70:
	mov r0, r9
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0D]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	orrs r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0D]
_0807DF8A:
	cmp r6, #0x00
	bgt _0807DFC4
	ldr r2, [sp, #0x000]
	cmp r2, #0x03
	bne _0807DFD6
	adds r1, r7, #0x0
	adds r1, #0x94
	ldr r0, [r1, #0x00]
	movs r2, #0x30
	negs r2, r2
	cmp r0, r2
	ble _0807DFA4
	str r2, [r1, #0x00]
_0807DFA4:
	ldr r0, [r1, #0x00]
	negs r0, r0
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r7, #0x0
	adds r2, #0xB2
	strh r1, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DFD6
_0807DFC4:
	mov r0, r8
	ldr r3, [r0, #0x58]
	cmp r3, #0x00
	beq _0807DFD6
	ldr r1, [r7, #0x28]
	adds r1, #0x08
	ldr r2, [sp, #0x000]
	bl _call_via_r3
_0807DFD6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807DFE8
sub_807DFE8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x00
	beq _0807E07C
	ldr r1, [r4, #0x4C]
	ldr r0, _0807E058 @ =0x08086961
	adds r5, r4, #0x0
	cmp r1, r0
	bne _0807E008
	ldr r5, [r4, #0x30]
_0807E008:
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1B
	adds r0, r5, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0807E07C
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_80875E0
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _0807E07C
	cmp r5, r4
	beq _0807E02E
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807E02E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r7
	cmp r0, #0x00
	bne _0807E07C
	movs r5, #0x00
	ldr r2, _0807E05C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x54]
	cmp r1, #0x00
	beq _0807E078
	adds r0, r2, #0x0
	movs r3, #0x00
_0807E04A:
	ldr r2, [r1, #0x34]
	cmp r1, r4
	bne _0807E070
	cmp r5, #0x00
	beq _0807E060
	str r2, [r5, #0x34]
	b _0807E064
_0807E058: .4byte sub_8086960
_0807E05C: .4byte 0x03000FD8
_0807E060:
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x54]
_0807E064:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807E078
_0807E070:
	adds r5, r1, #0x0
	adds r1, r2, #0x0
	cmp r1, #0x00
	bne _0807E04A
_0807E078:
	movs r0, #0x01
	b _0807E07E
_0807E07C:
	movs r0, #0x00
_0807E07E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_807E084
sub_807E084:
	push {r4, r5, r6, lr}
	ldr r3, _0807E0DC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
	ldr r0, [r3, #0x00]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	beq _0807E154
_0807E09C:
	ldr r6, [r5, #0x34]
	ldr r0, _0807E0DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807E0F6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0807E0F6
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	beq _0807E0CE
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0807E0E0
_0807E0CE:
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
	b _0807E0F6
	.byte 0x00, 0x00
_0807E0DC: .4byte 0x03000FD8
_0807E0E0:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807DFE8
	cmp r0, #0x00
	bne _0807E0F6
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
_0807E0F6:
	ldr r0, _0807E134 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807E14E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0807E14E
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	beq _0807E126
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0807E138
_0807E126:
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
	b _0807E14E
	.byte 0x00, 0x00
_0807E134: .4byte 0x03000FD8
_0807E138:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807DFE8
	cmp r0, #0x00
	bne _0807E14E
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
_0807E14E:
	adds r5, r6, #0x0
	cmp r5, #0x00
	bne _0807E09C
_0807E154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x86, 0xB0, 0x03, 0x1C
	.byte 0x89, 0x46, 0x16, 0x48, 0x88, 0x21, 0x09, 0x01, 0x40, 0x18, 0x07, 0x68, 0x18, 0x1C, 0x49, 0x30
	.byte 0x00, 0x21, 0x41, 0x56, 0x02, 0x91, 0x02, 0x38, 0x00, 0x22, 0x82, 0x56, 0x03, 0x92, 0x02, 0x38
	.byte 0x00, 0x25, 0x45, 0x57, 0x01, 0x38, 0x00, 0x24, 0x04, 0x57, 0x28, 0x1B, 0x82, 0x46, 0x18, 0x1C
	.byte 0x48, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x1A, 0x04, 0x91, 0x18, 0x1C, 0x46, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x1A, 0x05, 0x92, 0x98, 0x68, 0x41, 0x7C, 0x40, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x05, 0xD0, 0x68, 0x42, 0x01, 0x90, 0x03, 0xE0, 0x00, 0x00, 0x4C, 0x03
	.byte 0x00, 0x03, 0x01, 0x94, 0x99, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x01, 0x98
	.byte 0x40, 0x18, 0x01, 0x90, 0xD9, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x02, 0x98
	.byte 0x40, 0x18, 0x02, 0x90, 0x18, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x01, 0x12, 0x03, 0x98
	.byte 0x40, 0x18, 0x03, 0x90, 0x2E, 0x48, 0x00, 0x68, 0x93, 0x21, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68
	.byte 0x02, 0xAA, 0x03, 0xAB, 0x00, 0x21, 0x88, 0x46, 0x00, 0x91, 0x01, 0xA9, 0x04, 0xF0, 0x1F, 0xFD
	.byte 0x52, 0x46, 0x08, 0x2A, 0x5B, 0xDC, 0x05, 0x9B, 0x20, 0x2B, 0x58, 0xDC, 0x25, 0x49, 0x25, 0x4A
	.byte 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F, 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31
	.byte 0x40, 0x18, 0x24, 0x18, 0x21, 0x4E, 0x21, 0x4D, 0x22, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19
	.byte 0x80, 0x20, 0x00, 0x01, 0x51, 0x46, 0x5C, 0xF1, 0x0E, 0xFC, 0xE1, 0x88, 0xE0, 0x80, 0xE0, 0x89
	.byte 0x40, 0x46, 0xE0, 0x81, 0xE0, 0x8A, 0x41, 0x46, 0xE1, 0x82, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20
	.byte 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0xFF, 0xFB, 0xE1, 0x8B, 0xE0, 0x83, 0x08, 0x20, 0x52, 0x46
	.byte 0x80, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B, 0x1B, 0x1A, 0x12, 0x48, 0x03, 0x40
	.byte 0x01, 0x93, 0x20, 0x20, 0x05, 0x99, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x02, 0x99
	.byte 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x0C, 0x4A, 0x15, 0x1C, 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80
	.byte 0x48, 0x46, 0x42, 0x02, 0x1A, 0x43, 0x80, 0x23, 0xDB, 0x01, 0x03, 0xE1, 0x00, 0x00, 0xD8, 0x0F
	.byte 0x00, 0x03, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x85, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x10, 0x2B, 0x54, 0xDC, 0x23, 0x49, 0x23, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x1F, 0x4E, 0x1F, 0x4D
	.byte 0x20, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x00, 0x01, 0x51, 0x46, 0x5C, 0xF1
	.byte 0xB2, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89, 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82
	.byte 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0xA4, 0xFB, 0xE1, 0x8B
	.byte 0xE0, 0x83, 0x10, 0x20, 0x51, 0x46, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B
	.byte 0x1B, 0x1A, 0x10, 0x48, 0x03, 0x40, 0x01, 0x93, 0x40, 0x20, 0x05, 0x9A, 0x80, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x02, 0x99, 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x0B, 0x48, 0x05, 0x1C
	.byte 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80, 0x48, 0x46, 0x42, 0x02, 0x1A, 0x43, 0x80, 0x23, 0xDB, 0x01
	.byte 0xA8, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x87, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x20, 0x2B, 0x4C, 0xDC, 0x1F, 0x49, 0x1F, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x1B, 0x4E, 0x1B, 0x4D
	.byte 0x1C, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x40, 0x01, 0x51, 0x46, 0x5C, 0xF1
	.byte 0x5A, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89, 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82
	.byte 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0x4C, 0xFB, 0xE1, 0x8B
	.byte 0xE0, 0x83, 0x20, 0x20, 0x51, 0x46, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B
	.byte 0x1B, 0x1A, 0x0C, 0x48, 0x03, 0x40, 0x01, 0x93, 0x40, 0x20, 0x05, 0x9A, 0x80, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x02, 0x99, 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x07, 0x48, 0x05, 0x1C
	.byte 0x51, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x87, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x40, 0x2B, 0x6E, 0xDC, 0x2E, 0x49, 0x2E, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x2A, 0x48, 0x80, 0x46
	.byte 0x2A, 0x4D, 0x2A, 0x48, 0x2D, 0x1A, 0x41, 0x46, 0x0A, 0x68, 0x52, 0x19, 0x80, 0x26, 0xB6, 0x01
	.byte 0x30, 0x1C, 0x51, 0x46, 0x5C, 0xF1, 0x07, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89
	.byte 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82, 0x43, 0x46, 0x1A, 0x68, 0x52, 0x19, 0x30, 0x1C, 0x05, 0x99
	.byte 0x5C, 0xF1, 0xF9, 0xFA, 0xE1, 0x8B, 0xE0, 0x83, 0x40, 0x22, 0x51, 0x46, 0x50, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B, 0x1B, 0x1A, 0x1A, 0x48, 0x03, 0x40, 0x01, 0x93, 0x05, 0x98
	.byte 0x12, 0x1A, 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x02, 0x99, 0x89, 0x1A, 0xFF, 0x24, 0x21, 0x40
	.byte 0xE0, 0x22, 0xD2, 0x00, 0x15, 0x1C, 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80, 0x48, 0x46, 0x42, 0x02
	.byte 0x1A, 0x43, 0x10, 0x4B, 0x18, 0x1C, 0x02, 0x43, 0x7A, 0x80, 0x0F, 0x4B, 0x18, 0x1C, 0xB8, 0x80
	.byte 0x04, 0x98, 0x09, 0x1A, 0x21, 0x40, 0x02, 0x91, 0x29, 0x43, 0x39, 0x81, 0x7A, 0x81, 0x01, 0x21
	.byte 0x49, 0x42, 0x89, 0x44, 0x0A, 0x4A, 0x10, 0x1C, 0xB8, 0x81, 0x13, 0xE0, 0x00, 0x00, 0x4C, 0x03
	.byte 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82
	.byte 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xB0, 0xBB, 0x00, 0x00, 0xB0, 0xCB
	.byte 0x00, 0x00, 0x10, 0x3F, 0x08, 0x48, 0x88, 0x23, 0x1B, 0x01, 0xC0, 0x18, 0x39, 0x1C, 0x10, 0x31
	.byte 0x01, 0x60, 0x48, 0x46, 0x06, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03
	thumb_func_start sub_807E534
sub_807E534:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	ldr r6, _0807E584 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0807E554
	b _0807E656
_0807E554:
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0807E588
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r4, [r0, #0x34]
	movs r1, #0x01
	bl sub_81165CC
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x34]
	b _0807E5DA
_0807E584: .4byte 0x03000FD8
_0807E588:
	ldr r0, [r6, #0x00]
	movs r4, #0x92
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0807E656
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	lsls r0, r1, #0x08
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0xFF
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_81151E4
_0807E5DA:
	ldr r4, _0807E674 @ =0x03000FD8
	mov r8, r4
	ldr r3, [r4, #0x00]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r3, r3, r6
	ldr r0, [r3, #0x00]
	adds r0, #0x4A
	movs r1, #0x00
	mov r9, r1
	mov r4, r10
	strh r4, [r0, #0x00]
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldrh r1, [r1, #0x34]
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	ldr r5, [r0, #0x00]
	adds r5, r5, r6
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x1C]
	ldr r2, _0807E678 @ =0x02000080
	ldrh r4, [r0, #0x36]
	str r4, [sp, #0x000]
	ldr r4, [r5, #0x00]
	ldrh r4, [r4, #0x30]
	str r4, [sp, #0x004]
	mov r4, r9
	str r4, [sp, #0x008]
	bl sub_8116488
	ldr r3, _0807E67C @ =0x0300034C
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	ldr r1, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	ldrh r1, [r1, #0x36]
	orrs r0, r1
	strh r0, [r3, #0x02]
	ldr r0, [r2, #0x00]
	bl sub_8116610
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0C]
_0807E656:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807E668: .4byte 0x03001038
_0807E66C: .4byte 0x0819832C
_0807E670: .4byte 0x08198220
_0807E674: .4byte 0x03000FD8
_0807E678: .4byte 0x02000080
_0807E67C: .4byte 0x0300034C
	thumb_func_start sub_807E680
sub_807E680:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r9, r2
	mov r10, r3
	ldr r7, [sp, #0x030]
	ldr r0, _0807E6D0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E6E2
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _0807E6D8
	ldr r0, _0807E6D4 @ =0x00FFFFFF
	ands r5, r0
	b _0807E6E2
	.byte 0x00, 0x00
_0807E6D0: .4byte 0x03000FD8
_0807E6D4: .4byte 0x00FFFFFF
_0807E6D8:
	movs r5, #0x02
	negs r5, r5
	cmp r1, #0x40
	bne _0807E6E2
	adds r5, #0x01
_0807E6E2:
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807E78C
	cmp r5, #0x01
	bne _0807E6F2
	movs r1, #0x00
	b _0807E6F8
_0807E6F2:
	cmp r5, #0x02
	bne _0807E6F8
	movs r1, #0x01
_0807E6F8:
	movs r2, #0x01
	negs r2, r2
	cmp r1, r2
	beq _0807E78C
	cmp r4, #0x00
	bne _0807E770
	ldr r0, _0807E76C @ =0x000020B1
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r2, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r2
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1F]
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r3, #0x08]
	ldrb r1, [r1, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	movs r2, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0xFF
	strh r0, [r4, #0x0E]
	b _0807E78C
_0807E76C: .4byte 0x000020B1
_0807E770:
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _0807E78C
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
_0807E78C:
	movs r0, #0x02
	negs r0, r0
	ldr r2, _0807E800 @ =0x03000FD8
	cmp r5, r0
	beq _0807E7BE
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	ldr r1, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1, #0x00]
_0807E7BE:
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0807E7CC
	b _0807EA0E
_0807E7CC:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E812
	ldrb r0, [r2, #0x0A]
	movs r2, #0xC0
	ands r2, r0
	cmp r2, #0x80
	bne _0807E808
	ldr r0, _0807E804 @ =0x00FFFFFF
	ands r5, r0
	b _0807E812
_0807E800: .4byte 0x03000FD8
_0807E804: .4byte 0x00FFFFFF
_0807E808:
	cmp r2, #0x40
	beq _0807E80E
	b _0807EA0E
_0807E80E:
	movs r5, #0x01
	negs r5, r5
_0807E812:
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807E8D4
	mov r0, r9
	mov r1, r10
	bl sub_8199480
	cmp r0, #0x00
	bge _0807E828
	adds r0, #0x0F
_0807E828:
	asrs r0, r0, #0x04
	adds r0, #0x05
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	movs r0, #0x07
	ands r7, r0
	cmp r6, #0x00
	bne _0807E844
	ldr r0, _0807E840 @ =0x000020B2
	adds r1, r7, #0x0
	b _0807E9A8
_0807E840: .4byte 0x000020B2
_0807E844:
	ldrh r1, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r4, _0807E8AC @ =0x000020B2
	cmp r1, r4
	beq _0807E8B0
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
	str r4, [sp, #0x000]
	b _0807E8C0
	.byte 0x00, 0x00
_0807E8AC: .4byte 0x000020B2
_0807E8B0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r7
	bne _0807E8BC
	b _0807E9E2
_0807E8BC:
	movs r0, #0x00
	str r0, [sp, #0x000]
_0807E8C0:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	b _0807E9E2
_0807E8D4:
	movs r3, #0x00
	cmp r5, #0x60
	beq _0807E97A
	cmp r5, #0x60
	bgt _0807E916
	cmp r5, #0x10
	beq _0807E966
	cmp r5, #0x10
	bgt _0807E8FE
	cmp r5, #0x01
	beq _0807E94E
	cmp r5, #0x01
	bgt _0807E8F4
	cmp r5, #0x00
	beq _0807E95E
	b _0807E99C
_0807E8F4:
	cmp r5, #0x02
	beq _0807E952
	cmp r5, #0x03
	beq _0807E956
	b _0807E99C
_0807E8FE:
	cmp r5, #0x30
	beq _0807E982
	cmp r5, #0x30
	bgt _0807E90C
	cmp r5, #0x20
	beq _0807E96E
	b _0807E99C
_0807E90C:
	cmp r5, #0x40
	beq _0807E962
	cmp r5, #0x50
	beq _0807E972
	b _0807E99C
_0807E916:
	cmp r5, #0xB0
	beq _0807E996
	cmp r5, #0xB0
	bgt _0807E936
	cmp r5, #0x80
	beq _0807E96A
	cmp r5, #0x80
	bgt _0807E92C
	cmp r5, #0x70
	beq _0807E98E
	b _0807E99C
_0807E92C:
	cmp r5, #0x90
	beq _0807E97E
	cmp r5, #0xA0
	beq _0807E986
	b _0807E99C
_0807E936:
	cmp r5, #0xD0
	beq _0807E98A
	cmp r5, #0xD0
	bgt _0807E944
	cmp r5, #0xC0
	beq _0807E976
	b _0807E99C
_0807E944:
	cmp r5, #0xE0
	beq _0807E992
	cmp r5, #0xF0
	beq _0807E99A
	b _0807E99C
_0807E94E:
	movs r3, #0x02
	b _0807E99C
_0807E952:
	movs r3, #0x03
	b _0807E99C
_0807E956:
	lsls r1, r7, #0x01
	movs r0, #0x1A
	subs r3, r0, r1
	b _0807E99E
_0807E95E:
	movs r3, #0x0A
	b _0807E99C
_0807E962:
	movs r3, #0x0B
	b _0807E99C
_0807E966:
	movs r3, #0x0C
	b _0807E99C
_0807E96A:
	movs r3, #0x0D
	b _0807E99C
_0807E96E:
	movs r3, #0x0E
	b _0807E99C
_0807E972:
	movs r3, #0x0F
	b _0807E99C
_0807E976:
	movs r3, #0x10
	b _0807E99C
_0807E97A:
	movs r3, #0x11
	b _0807E99C
_0807E97E:
	movs r3, #0x12
	b _0807E99C
_0807E982:
	movs r3, #0x13
	b _0807E99C
_0807E986:
	movs r3, #0x14
	b _0807E99C
_0807E98A:
	movs r3, #0x15
	b _0807E99C
_0807E98E:
	movs r3, #0x16
	b _0807E99C
_0807E992:
	movs r3, #0x17
	b _0807E99C
_0807E996:
	movs r3, #0x18
	b _0807E99C
_0807E99A:
	movs r3, #0x19
_0807E99C:
	lsls r1, r7, #0x01
_0807E99E:
	adds r3, r3, r1
	cmp r6, #0x00
	bne _0807E9C0
	ldr r0, _0807E9BC @ =0x00002083
	adds r1, r3, #0x0
_0807E9A8:
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r6, r0, #0x0
	bl sub_807BC90
	movs r0, #0x00
	strh r0, [r6, #0x0E]
	b _0807E9E2
_0807E9BC: .4byte 0x00002083
_0807E9C0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	beq _0807E9E2
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
_0807E9E2:
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	add r0, r9
	strh r0, [r6, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	add r0, r10
	strh r0, [r6, #0x02]
	ldr r0, _0807EA20 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r6, [r1, #0x00]
_0807EA0E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807EA20: .4byte 0x03000FD8
	thumb_func_start sub_807EA24
sub_807EA24:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _0807EAE0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EA82
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EA82:
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EADA
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807EAE0: .4byte 0x03000FD8
	thumb_func_start sub_807EAE4
sub_807EAE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x08C
	mov r9, r0
	adds r7, r1, #0x0
	str r2, [sp, #0x080]
	str r3, [sp, #0x084]
	ldr r0, _0807EBAC @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x28]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	mov r0, r9
	cmp r0, #0x06
	bne _0807EB22
	ldrb r1, [r6, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807EB22
	b _0807EF40
_0807EB22:
	ldr r1, _0807EBB0 @ =0x0820002C
	add r0, sp, #0x010
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x018
	ldr r1, _0807EBB4 @ =0x08200034
	adds r0, r5, #0x0
	movs r2, #0x10
	bl memcpy
	add r1, sp, #0x028
	mov r8, r1
	ldr r1, _0807EBB8 @ =0x08200044
	mov r0, r8
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x030
	ldr r1, _0807EBBC @ =0x0820004C
	adds r0, r4, #0x0
	movs r2, #0x50
	bl memcpy
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0807EB5A
	adds r0, #0xFF
_0807EB5A:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x084]
	subs r0, r0, r1
	adds r0, #0x40
	str r0, [sp, #0x088]
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0807EB6C
	adds r1, #0xFF
_0807EB6C:
	asrs r1, r1, #0x08
	ldr r0, [sp, #0x080]
	adds r0, r0, r1
	str r0, [sp, #0x080]
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0807EB7C
	adds r0, #0xFF
_0807EB7C:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x084]
	mov r0, r8
	add r0, r9
	ldrb r5, [r0, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r1, sp, #0x080
	add r2, sp, #0x084
	add r3, sp, #0x088
	movs r4, #0x00
	str r4, [sp, #0x000]
	bl sub_8082C58
	ldr r1, [sp, #0x080]
	cmp r1, r5
	bge _0807EBC0
	str r5, [sp, #0x080]
	b _0807EBCA
_0807EBAC: .4byte 0x03000FD8
_0807EBB0: .4byte 0x0820002C
_0807EBB4: .4byte 0x08200034
_0807EBB8: .4byte 0x08200044
_0807EBBC: .4byte 0x0820004C
_0807EBC0:
	movs r0, #0xF0
	subs r0, r0, r5
	cmp r0, r1
	bge _0807EBCA
	str r0, [sp, #0x080]
_0807EBCA:
	ldr r0, [sp, #0x084]
	cmp r0, #0x1B
	bgt _0807EBD4
	movs r0, #0x1C
	str r0, [sp, #0x084]
_0807EBD4:
	ldrh r4, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r4, r0
	ldr r2, _0807ECEC @ =0x03001038
	ldr r0, _0807ECF0 @ =0x08198350
	ldr r1, _0807ECF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0807ECF8 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r5, r0, r1
	ldrb r0, [r5, #0x00]
	movs r1, #0x05
	bl _call_via_r2
	mov r2, r9
	lsls r7, r2, #0x01
	lsls r0, r0, #0x04
	adds r0, r7, r0
	add r0, sp
	adds r0, #0x30
	ldrh r0, [r0, #0x00]
	cmp r4, r0
	beq _0807EC6E
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x04
	adds r0, r7, r0
	add r0, sp
	adds r0, #0x30
	ldrh r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
_0807EC6E:
	mov r0, sp
	add r0, r9
	adds r0, #0x10
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	ldr r0, [sp, #0x080]
	strh r0, [r6, #0x00]
	ldr r0, [sp, #0x084]
	strh r0, [r6, #0x02]
	ldr r0, [sp, #0x088]
	strh r0, [r6, #0x0E]
	ldrb r1, [r6, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r6, #0x12]
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x18
	ldrh r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	mov r0, r9
	cmp r0, #0x02
	beq _0807ECBE
	b _0807EF40
_0807ECBE:
	ldr r3, _0807ECFC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r3, [r3, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0xC0
	beq _0807ECD8
	b _0807EF40
_0807ECD8:
	ldrb r0, [r3, #0x0E]
	cmp r0, #0x07
	bls _0807ECE0
	b _0807EF40
_0807ECE0:
	lsls r0, r0, #0x02
	ldr r1, _0807ED00 @ =0x0807ED04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807ECEC: .4byte 0x03001038
_0807ECF0: .4byte 0x08198350
_0807ECF4: .4byte 0x08198220
_0807ECF8: .4byte 0x0300034C
_0807ECFC: .4byte 0x03000FD8
_0807ED00: .4byte 0x0807ED04
	.byte 0x24, 0xED, 0x07, 0x08, 0x70, 0xED, 0x07, 0x08, 0xD0, 0xED, 0x07, 0x08, 0x08, 0xEE, 0x07, 0x08
	.byte 0x3C, 0xEE, 0x07, 0x08, 0xA0, 0xEE, 0x07, 0x08, 0xD8, 0xEE, 0x07, 0x08, 0x10, 0xEF, 0x07, 0x08
	.byte 0x11, 0x49, 0x88, 0x46, 0x0B, 0x68, 0xDC, 0x7A, 0xA0, 0x09, 0x19, 0x7B, 0x0F, 0x25, 0x29, 0x40
	.byte 0x89, 0x00, 0x01, 0x43, 0x01, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26
	.byte 0x30, 0x1C, 0x20, 0x40, 0x10, 0x43, 0xD8, 0x72, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x7B, 0x10, 0x20
	.byte 0x40, 0x42, 0x10, 0x40, 0x08, 0x43, 0x18, 0x73, 0x42, 0x46, 0x13, 0x68, 0x9A, 0x68, 0x91, 0x03
	.byte 0x89, 0x0E, 0x02, 0x20, 0x40, 0x42, 0x24, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0x15, 0x48, 0x80, 0x46
	.byte 0x03, 0x68, 0xDC, 0x7A, 0xA0, 0x09, 0x19, 0x7B, 0x0F, 0x25, 0x29, 0x40, 0x89, 0x00, 0x01, 0x43
	.byte 0x02, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26, 0x30, 0x1C, 0x20, 0x40
	.byte 0x10, 0x43, 0xD8, 0x72, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x7B, 0x10, 0x20, 0x40, 0x42, 0x10, 0x40
	.byte 0x08, 0x43, 0x18, 0x73, 0x41, 0x46, 0x0B, 0x68, 0x9A, 0x68, 0x91, 0x03, 0x89, 0x0E, 0x03, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x31, 0x40, 0x09, 0x03, 0x03, 0x48, 0x10, 0x40, 0x08, 0x43, 0x98, 0x60
	.byte 0xBC, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xFF, 0x0F, 0xFC, 0xFF, 0x0B, 0x48, 0x02, 0x68
	.byte 0x93, 0x89, 0x99, 0x05, 0x89, 0x0E, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01, 0x08, 0x48, 0x18, 0x40
	.byte 0x08, 0x43, 0x90, 0x81, 0x93, 0x7A, 0x99, 0x08, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x89, 0x00
	.byte 0x03, 0x20, 0x18, 0x40, 0x08, 0x43, 0x90, 0x72, 0xA0, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0F, 0xFC, 0xFF, 0xFF, 0x0B, 0x4C, 0x23, 0x68, 0x5A, 0x7B, 0x91, 0x08, 0x01, 0x20, 0x01, 0x43
	.byte 0x89, 0x00, 0x03, 0x20, 0x10, 0x40, 0x08, 0x43, 0x58, 0x73, 0x23, 0x68, 0xDA, 0x7A, 0x91, 0x06
	.byte 0x89, 0x0E, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x3E, 0x38, 0x10, 0x40, 0x08, 0x43, 0xD8, 0x72
	.byte 0x84, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x16, 0x4A, 0x90, 0x46, 0x13, 0x68, 0x1F, 0x1C
	.byte 0x47, 0x37, 0x3C, 0x78, 0xA0, 0x09, 0x48, 0x33, 0x19, 0x78, 0x0F, 0x25, 0x29, 0x40, 0x89, 0x00
	.byte 0x01, 0x43, 0x01, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26, 0x30, 0x1C
	.byte 0x20, 0x40, 0x10, 0x43, 0x38, 0x70, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x78, 0x10, 0x20, 0x40, 0x42
	.byte 0x10, 0x40, 0x08, 0x43, 0x18, 0x70, 0x40, 0x46, 0x03, 0x68, 0x5A, 0x6C, 0x91, 0x03, 0x89, 0x0E
	.byte 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x31, 0x40, 0x09, 0x03, 0x03, 0x48, 0x10, 0x40, 0x08, 0x43
	.byte 0x58, 0x64, 0x53, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0xFF, 0x0F, 0xFC, 0xFF, 0x0B, 0x48, 0x02, 0x68
	.byte 0x14, 0x1C, 0x48, 0x34, 0x23, 0x88, 0x99, 0x05, 0x89, 0x0E, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01
	.byte 0x07, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x80, 0x46, 0x32, 0x13, 0x78, 0x99, 0x08, 0x02, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x89, 0x00, 0x03, 0x20, 0x35, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0F, 0xFC, 0xFF, 0xFF, 0x0B, 0x48, 0x02, 0x68, 0x14, 0x1C, 0x48, 0x34, 0x23, 0x88, 0x99, 0x05
	.byte 0x89, 0x0E, 0x02, 0x20, 0x01, 0x43, 0x09, 0x01, 0x07, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x80
	.byte 0x46, 0x32, 0x13, 0x78, 0x99, 0x08, 0x03, 0x20, 0x40, 0x42, 0x01, 0x40, 0x89, 0x00, 0x03, 0x20
	.byte 0x19, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x0F, 0xFC, 0xFF, 0xFF, 0x0F, 0x4C, 0x22, 0x68
	.byte 0x49, 0x32, 0x13, 0x78, 0x99, 0x08, 0x01, 0x20, 0x01, 0x43, 0x89, 0x00, 0x03, 0x20, 0x18, 0x40
	.byte 0x08, 0x43, 0x10, 0x70, 0x22, 0x68, 0x47, 0x32, 0x13, 0x78, 0x99, 0x06, 0x89, 0x0E, 0x02, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x3E, 0x38, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70
_0807EF40:
	add sp, #0x08C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xF4, 0x0F, 0x00, 0x03
	thumb_func_start sub_807EF54
sub_807EF54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	ldr r6, _0807EFC0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807EF6E
	b _0807F39C
_0807EF6E:
	ldr r1, _0807EFC4 @ =0x0820009C
	mov r0, sp
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x008
	ldr r1, _0807EFC8 @ =0x082000A4
	adds r0, r5, #0x0
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x010
	ldr r1, _0807EFCC @ =0x082000AC
	adds r0, r4, #0x0
	movs r2, #0x08
	bl memcpy
	movs r7, #0x00
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r9, r5
	mov r8, r4
	cmp r1, r0
	bne _0807F014
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0807EFE8
	cmp r0, #0x01
	bgt _0807EFD0
	cmp r0, #0x00
	beq _0807EFDA
	b _0807F076
	.byte 0x00, 0x00
_0807EFC0: .4byte 0x03000FD8
_0807EFC4: .4byte 0x0820009C
_0807EFC8: .4byte 0x082000A4
_0807EFCC: .4byte 0x082000AC
_0807EFD0:
	cmp r0, #0x03
	beq _0807EFF4
	cmp r0, #0x06
	beq _0807F004
	b _0807F076
_0807EFDA:
	mov r1, sp
	ldr r6, _0807EFE4 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x00]
	b _0807F06C
_0807EFE4: .4byte 0x00001CD8
_0807EFE8:
	mov r0, sp
	ldrb r0, [r0, #0x01]
	ldr r1, _0807EFF0 @ =0x00001CD8
	b _0807F06C
_0807EFF0: .4byte 0x00001CD8
_0807EFF4:
	mov r0, sp
	ldrb r0, [r0, #0x02]
	ldr r2, _0807F000 @ =0x00001CD8
	adds r0, r0, r2
	b _0807F06E
	.byte 0x00, 0x00
_0807F000: .4byte 0x00001CD8
_0807F004:
	mov r0, sp
	ldrb r0, [r0, #0x03]
	ldr r3, _0807F010 @ =0x00001CD8
	adds r0, r0, r3
	b _0807F06E
	.byte 0x00, 0x00
_0807F010: .4byte 0x00001CD8
_0807F014:
	ldr r5, _0807F028 @ =0x0000034D
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0807F044
	cmp r0, #0x03
	bgt _0807F02C
	cmp r0, #0x00
	beq _0807F036
	b _0807F076
_0807F028: .4byte 0x0000034D
_0807F02C:
	cmp r0, #0x04
	beq _0807F054
	cmp r0, #0x06
	beq _0807F064
	b _0807F076
_0807F036:
	mov r1, sp
	ldr r6, _0807F040 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x04]
	b _0807F06C
_0807F040: .4byte 0x00001CD8
_0807F044:
	mov r1, sp
	ldr r2, _0807F050 @ =0x00001CD8
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x05]
	b _0807F06C
	.byte 0x00, 0x00
_0807F050: .4byte 0x00001CD8
_0807F054:
	mov r1, sp
	ldr r3, _0807F060 @ =0x00001CD8
	adds r0, r3, #0x0
	ldrb r1, [r1, #0x06]
	b _0807F06C
	.byte 0x00, 0x00
_0807F060: .4byte 0x00001CD8
_0807F064:
	mov r1, sp
	ldr r5, _0807F0BC @ =0x00001CD8
	adds r0, r5, #0x0
	ldrb r1, [r1, #0x07]
_0807F06C:
	adds r0, r0, r1
_0807F06E:
	bl sub_80E9B8C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0807F076:
	ldr r0, _0807F0C0 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _0807F0C4 @ =0x0000022F
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807F090
	b _0807F39C
_0807F090:
	ldr r0, _0807F0C8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807F0A6
	b _0807F228
_0807F0A6:
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	cmp r1, #0x01
	beq _0807F134
	cmp r1, #0x01
	bgt _0807F0CC
	cmp r1, #0x00
	beq _0807F0D8
	b _0807F39C
_0807F0BC: .4byte 0x00001CD8
_0807F0C0: .4byte 0x03000FC0
_0807F0C4: .4byte 0x0000022F
_0807F0C8: .4byte 0x03000FD8
_0807F0CC:
	cmp r1, #0x03
	beq _0807F190
	cmp r1, #0x06
	bne _0807F0D6
	b _0807F1DC
_0807F0D6:
	b _0807F39C
_0807F0D8:
	mov r6, r8
	ldrb r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0807F0E2
	b _0807F39C
_0807F0E2:
	ldr r0, _0807F12C @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x01
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F0F8
	b _0807F39C
_0807F0F8:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F10E
	b _0807F39C
_0807F10E:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, r7
	ble _0807F118
	b _0807F39C
_0807F118:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F130 @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	b _0807F39E
	.byte 0x00, 0x00
_0807F12C: .4byte 0x03000FF4
_0807F130: .4byte 0xFFFC0FFF
_0807F134:
	mov r3, r8
	ldrb r0, [r3, #0x01]
	cmp r0, #0x00
	bne _0807F13E
	b _0807F39C
_0807F13E:
	ldr r0, _0807F188 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x02
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F154
	b _0807F39C
_0807F154:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F16A
	b _0807F39C
_0807F16A:
	mov r1, r9
	ldrb r0, [r1, #0x01]
	cmp r0, r7
	ble _0807F174
	b _0807F39C
_0807F174:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F18C @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x01]
	b _0807F39E
	.byte 0x00, 0x00
_0807F188: .4byte 0x03000FF4
_0807F18C: .4byte 0xFFFC0FFF
_0807F190:
	mov r3, r8
	ldrb r0, [r3, #0x02]
	cmp r0, #0x00
	bne _0807F19A
	b _0807F39C
_0807F19A:
	ldr r0, _0807F1D8 @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r5, [r3, #0x0A]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1AE
	b _0807F39C
_0807F1AE:
	ldrh r0, [r3, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1BC
	b _0807F39C
_0807F1BC:
	mov r6, r9
	ldrb r0, [r6, #0x02]
	cmp r0, r7
	ble _0807F1C6
	b _0807F39C
_0807F1C6:
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x0A]
	mov r1, r8
	ldrb r0, [r1, #0x02]
	b _0807F39E
	.byte 0x00, 0x00
_0807F1D8: .4byte 0x03000FF4
_0807F1DC:
	mov r2, r8
	ldrb r0, [r2, #0x03]
	cmp r0, #0x00
	bne _0807F1E6
	b _0807F39C
_0807F1E6:
	ldr r0, _0807F224 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldrb r4, [r2, #0x0B]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0807F1FC
	b _0807F39C
_0807F1FC:
	ldrb r0, [r2, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	beq _0807F208
	b _0807F39C
_0807F208:
	mov r5, r9
	ldrb r0, [r5, #0x03]
	cmp r0, r7
	ble _0807F212
	b _0807F39C
_0807F212:
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, #0x0B]
	mov r6, r8
	ldrb r0, [r6, #0x03]
	b _0807F39E
_0807F224: .4byte 0x03000FF4
_0807F228:
	ldr r1, _0807F23C @ =0x0000034D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x03
	beq _0807F2B0
	cmp r1, #0x03
	bgt _0807F240
	cmp r1, #0x00
	beq _0807F24C
	b _0807F39C
_0807F23C: .4byte 0x0000034D
_0807F240:
	cmp r1, #0x04
	beq _0807F300
	cmp r1, #0x06
	bne _0807F24A
	b _0807F350
_0807F24A:
	b _0807F39C
_0807F24C:
	mov r2, r8
	ldrb r0, [r2, #0x04]
	cmp r0, #0x00
	bne _0807F256
	b _0807F39C
_0807F256:
	ldr r0, _0807F2A8 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r6, [r0, #0x44]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r4, #0x01
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F26E
	b _0807F39C
_0807F26E:
	mov r0, r12
	adds r0, #0x47
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x06
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r2
	ands r0, r4
	cmp r0, #0x00
	beq _0807F28A
	b _0807F39C
_0807F28A:
	mov r5, r9
	ldrb r0, [r5, #0x04]
	cmp r0, r7
	ble _0807F294
	b _0807F39C
_0807F294:
	orrs r3, r4
	lsls r0, r3, #0x0C
	ldr r1, _0807F2AC @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	mov r6, r12
	str r1, [r6, #0x44]
	mov r1, r8
	ldrb r0, [r1, #0x04]
	b _0807F39E
_0807F2A8: .4byte 0x03000FF4
_0807F2AC: .4byte 0xFFFC0FFF
_0807F2B0:
	mov r2, r8
	ldrb r0, [r2, #0x05]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F2FC @ =0x03000FF4
	ldr r3, [r0, #0x00]
	movs r5, #0x46
	adds r5, r5, r3
	mov r12, r5
	ldrb r5, [r5, #0x00]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r3, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	mov r6, r9
	ldrb r0, [r6, #0x05]
	cmp r0, r7
	bgt _0807F39C
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	mov r0, r12
	strb r1, [r0, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x05]
	b _0807F39E
	.byte 0x00, 0x00
_0807F2FC: .4byte 0x03000FF4
_0807F300:
	mov r2, r8
	ldrb r0, [r2, #0x06]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F34C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r3, #0x46
	adds r3, r3, r2
	mov r12, r3
	ldrb r4, [r3, #0x00]
	lsrs r1, r4, #0x02
	movs r3, #0x02
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x06]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	lsls r0, r1, #0x02
	movs r1, #0x03
	ands r1, r4
	orrs r1, r0
	mov r6, r12
	strb r1, [r6, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x06]
	b _0807F39E
_0807F34C: .4byte 0x03000FF4
_0807F350:
	mov r2, r8
	ldrb r0, [r2, #0x07]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F398 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r6, r2, #0x0
	adds r6, #0x47
	ldrb r4, [r6, #0x00]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x49
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x07]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6, #0x00]
	mov r6, r8
	ldrb r0, [r6, #0x07]
	b _0807F39E
_0807F398: .4byte 0x03000FF4
_0807F39C:
	movs r0, #0x00
_0807F39E:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_807F3AC
sub_807F3AC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r5, [r4, #0x28]
	cmp r5, #0x00
	beq _0807F43C
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bne _0807F3C4
	adds r4, r5, #0x0
	adds r4, #0x08
_0807F3C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807F3CC
	adds r0, #0xFF
_0807F3CC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807F3E4
	adds r0, #0xFF
_0807F3E4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _0807F434 @ =0x00000193
	strh r0, [r1, #0x00]
	ldr r1, _0807F438 @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086700
	movs r0, #0x01
	negs r0, r0
	b _0807F43E
	.byte 0x00, 0x00
_0807F434: .4byte 0x00000193
_0807F438: .4byte 0x00000111
_0807F43C:
	movs r0, #0x00
_0807F43E:
	add sp, #0x00C
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807F448
sub_807F448:
	push {r4, lr}
	ldr r4, _0807F478 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807F472
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_81165CC
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0807F472:
	pop {r4}
	pop {r0}
	bx r0
_0807F478: .4byte 0x03000FD8
