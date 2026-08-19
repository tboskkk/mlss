	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8070C8C
sub_8070C8C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070CEC @ =0x08070F99
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070CEC: .4byte sub_8070F98
	thumb_func_start sub_8070CF0
sub_8070CF0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08070D48
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08070D50 @ =0x08071019
	str r0, [r4, #0x58]
	ldr r0, _08070D54 @ =0x08070FD1
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _08070D58 @ =0xFFFFE000
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070D5C @ =0x08071055
	str r0, [r4, #0x4C]
_08070D48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070D50: .4byte sub_8071018
_08070D54: .4byte sub_8070FD0
_08070D58: .4byte 0xFFFFE000
_08070D5C: .4byte sub_8071054
	thumb_func_start sub_8070D60
sub_8070D60:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
	ldr r0, _08070D84 @ =0x08071081
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070D84: .4byte sub_8071080
	thumb_func_start sub_8070D88
sub_8070D88:
	push {lr}
	adds r2, r0, #0x0
	adds r3, r2, #0x0
	adds r3, #0x8C
	ldr r0, [r2, #0x18]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x00]
	subs r0, #0x80
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bgt _08070DC2
	movs r0, #0x00
	str r0, [r2, #0x18]
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08070DBE
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r3, #0x00]
	b _08070DC2
_08070DBE:
	ldr r0, _08070DC8 @ =0x0806F47D
	str r0, [r2, #0x4C]
_08070DC2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070DC8: .4byte sub_806F47C
	thumb_func_start sub_8070DCC
sub_8070DCC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070E36
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070DFC
	adds r1, #0xFF
_08070DFC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070E06
	adds r2, #0xFF
_08070E06:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070E10
	adds r3, #0xFF
_08070E10:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070E40 @ =0x00002061
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x2C]
	ldr r0, _08070E44 @ =0x0808750D
	str r0, [r1, #0x4C]
	ldr r0, _08070E48 @ =0x080710E1
	str r0, [r4, #0x4C]
_08070E36:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070E40: .4byte 0x00002061
_08070E44: .4byte sub_808750C
_08070E48: .4byte sub_80710E0
	thumb_func_start sub_8070E4C
sub_8070E4C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070EB8 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08070EBC @ =0x08071111
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070EB8: .4byte 0x0000011B
_08070EBC: .4byte sub_8071110
	thumb_func_start sub_8070EC0
sub_8070EC0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070ED8 @ =0x0806EB19
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08070ED8: .4byte sub_806EB18
	thumb_func_start sub_8070EDC
sub_8070EDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070EFC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070EFC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8070F04
sub_8070F04:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08070F56
	adds r0, r4, #0x0
	movs r1, #0x24
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xA8
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _08070F5C @ =0x00000199
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070F60 @ =0x0807116D
	str r0, [r4, #0x4C]
_08070F56:
	pop {r4, r5}
	pop {r0}
	bx r0
_08070F5C: .4byte 0x00000199
_08070F60: .4byte sub_807116C
	thumb_func_start sub_8070F64
sub_8070F64:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070F8C
	adds r0, r4, #0x0
	movs r1, #0x1D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x05
	strh r1, [r0, #0x00]
	ldr r0, _08070F94 @ =0x0806FBD1
	str r0, [r4, #0x4C]
_08070F8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070F94: .4byte sub_806FBD0
	thumb_func_start sub_8070F98
sub_8070F98:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070FC4
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08070FCC @ =0x0806F90D
	str r0, [r4, #0x4C]
_08070FC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070FCC: .4byte sub_806F90C
	thumb_func_start sub_8070FD0
sub_8070FD0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_80871A8
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08071010
	movs r0, #0xA7
	bl stop_sfx_80195A8
	ldr r2, _08071008 @ =0x000040E7
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	ldr r0, _0807100C @ =0x080711A5
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r0, #0x00
	b _08071012
_08071008: .4byte 0x000040E7
_0807100C: .4byte sub_80711A4
_08071010:
	adds r0, r4, #0x0
_08071012:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8071018
sub_8071018:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xA7
	bl stop_sfx_80195A8
	ldr r2, _0807104C @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08071050 @ =0x080711A5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0807104C: .4byte 0x000040E7
_08071050: .4byte sub_80711A4
	thumb_func_start sub_8071054
sub_8071054:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071078
	movs r0, #0xA7
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_08071078:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8071080
sub_8071080:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807108E
	adds r1, #0xFF
_0807108E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071098
	adds r2, #0xFF
_08071098:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080710A2
	adds r3, #0xFF
_080710A2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080710D4 @ =0x0000209E
	bl sub_80DF024
	ldr r2, _080710D8 @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _080710DC @ =0x0806F84D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080710D4: .4byte 0x0000209E
_080710D8: .4byte 0x000040E7
_080710DC: .4byte sub_806F84C
	thumb_func_start sub_80710E0
sub_80710E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071106
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807110C @ =0x0808750D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x2C]
	movs r0, #0x00
	str r0, [r1, #0x4C]
_08071106:
	pop {r4}
	pop {r0}
	bx r0
_0807110C: .4byte sub_808750C
	thumb_func_start sub_8071110
sub_8071110:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071156
	ldr r0, _0807115C @ =0x0000011B
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0A
	strh r1, [r0, #0x00]
	subs r0, #0x10
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071160 @ =0x08071245
	str r0, [r4, #0x58]
	ldr r0, _08071164 @ =0x08071205
	str r0, [r4, #0x60]
	ldr r0, _08071168 @ =0x0806EDBD
	str r0, [r4, #0x4C]
_08071156:
	pop {r4}
	pop {r0}
	bx r0
_0807115C: .4byte 0x0000011B
_08071160: .4byte sub_8071244
_08071164: .4byte sub_8071204
_08071168: .4byte sub_806EDBC
	thumb_func_start sub_807116C
sub_807116C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071198
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080711A0 @ =0x0806FCF1
	str r0, [r4, #0x4C]
_08071198:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080711A0: .4byte sub_806FCF0
	thumb_func_start sub_80711A4
sub_80711A4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080711F2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080711BE
	adds r1, #0xFF
_080711BE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080711C8
	adds r2, #0xFF
_080711C8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080711D2
	adds r3, #0xFF
_080711D2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080711FC @ =0x0000207A
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x05
	strh r0, [r1, #0x00]
	ldr r0, _08071200 @ =0x080712B1
	str r0, [r4, #0x4C]
_080711F2:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080711FC: .4byte 0x0000207A
_08071200: .4byte sub_80712B0
	thumb_func_start sub_8071204
sub_8071204:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08071236
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807123C @ =0x0807127D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x2C]
	ldr r0, _08071240 @ =0x0808750D
	str r0, [r1, #0x4C]
	movs r0, #0x00
_08071236:
	pop {r4}
	pop {r1}
	bx r1
_0807123C: .4byte sub_807127C
_08071240: .4byte sub_808750C
	thumb_func_start sub_8071244
sub_8071244:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xD2
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0807125A
	bl _call_via_r1
_0807125A:
	ldr r1, [r4, #0x2C]
	ldr r0, _08071274 @ =0x080712AD
	str r0, [r1, #0x4C]
	ldr r0, [r1, #0x08]
	bl sub_807FB64
	ldr r0, _08071278 @ =0x0806EDBD
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08071274: .4byte 0x080712AD
_08071278: .4byte sub_806EDBC
	thumb_func_start sub_807127C
sub_807127C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080712A0
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080712A8 @ =0x0808750D
	str r0, [r4, #0x4C]
_080712A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080712A8: .4byte sub_808750C
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_80712B0
sub_80712B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080712D0
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_080712D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80712D8
sub_80712D8:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071378
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080712F4
	adds r2, #0xFF
_080712F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _080712FE
	adds r3, #0xFF
_080712FE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08071308
	adds r0, #0xFF
_08071308:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071380 @ =0x000040B5
	bl sub_807BF34
	mov r12, r0
	str r0, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r12
	adds r1, #0x75
	strb r0, [r1, #0x00]
	mov r3, r12
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r0, r12
	str r2, [r0, #0x4C]
	ldr r2, _08071384 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08071388 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	ldr r0, [r0, #0x10]
	bl sub_807FB64
	ldr r0, _0807138C @ =0x08071391
	str r0, [r4, #0x4C]
_08071378:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08071380: .4byte 0x000040B5
_08071384: .4byte 0x000040B4
_08071388: .4byte 0x03000FD8
_0807138C: .4byte sub_8071390
	thumb_func_start sub_8071390
sub_8071390:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08071416
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r2, _0807141C @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x08
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08071420 @ =0x08071425
	str r0, [r4, #0x4C]
_08071416:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807141C: .4byte 0x000040B4
_08071420: .4byte sub_8071424
	thumb_func_start sub_8071424
sub_8071424:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08071464
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071442
	adds r1, #0xFF
_08071442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807144C
	adds r2, #0xFF
_0807144C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071456
	adds r3, #0xFF
_08071456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071484 @ =0x000021A6
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08071464:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807147C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _08071488 @ =0x0807249D
	str r0, [r4, #0x4C]
_0807147C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08071484: .4byte 0x000021A6
_08071488: .4byte sub_807249C
	thumb_func_start sub_807148C
sub_807148C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	mov r9, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080714A8
	b _080715E8
_080714A8:
	ldr r2, _080715F8 @ =0x000040B4
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080714CE
	adds r1, #0xFF
_080714CE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080714D8
	adds r2, #0xFF
_080714D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080714E2
	adds r3, #0xFF
_080714E2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080715FC @ =0x000021C6
	bl sub_80DF024
	ldr r0, _08071600 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x58]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	bl sub_807BC90
	ldr r2, _08071604 @ =0x000040AE
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x10]
	ldr r1, _08071608 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r6, #0x18]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r0, r0, r4
	str r0, [r5, #0x18]
	ldr r0, _0807160C @ =0x080716C5
	str r0, [r5, #0x4C]
	adds r2, r7, #0x0
	adds r2, #0x7F
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08071610 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08071614 @ =0x08071859
	str r0, [r5, #0x58]
	ldr r0, _08071618 @ =0x08072401
	str r0, [r5, #0x60]
	adds r0, r7, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	adds r0, #0x14
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _0807161C @ =0x08071621
	str r0, [r6, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0807157C
	adds r0, #0xFF
_0807157C:
	asrs r0, r0, #0x08
	adds r3, r7, #0x0
	adds r3, #0xB6
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0807158C
	adds r0, #0xFF
_0807158C:
	asrs r0, r0, #0x08
	adds r2, r7, #0x0
	adds r2, #0xBA
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r5, r0, r1
	movs r1, #0xB3
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl __divsi3
	cmp r0, #0x01
	bne _080715C2
	movs r0, #0x02
_080715C2:
	adds r1, r7, #0x0
	adds r1, #0xB0
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	subs r1, #0x04
	negs r0, r5
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB4
	mov r1, r8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_080715E8:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080715F8: .4byte 0x000040B4
_080715FC: .4byte 0x000021C6
_08071600: .4byte 0x03000FD8
_08071604: .4byte 0x000040AE
_08071608: .4byte 0xFFFFE000
_0807160C: .4byte sub_80716C4
_08071610: .4byte sub_8087540
_08071614: .4byte sub_8071858
_08071618: .4byte sub_8072400
_0807161C: .4byte sub_8071620
	thumb_func_start sub_8071620
sub_8071620:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08071654 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080716B6
	cmp r0, #0x01
	bne _08071660
	ldr r2, _08071658 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807165C @ =0x08072429
	b _080716B4
	.byte 0x00, 0x00
_08071654: .4byte 0x03000FD8
_08071658: .4byte 0x000040B4
_0807165C: .4byte sub_8072428
_08071660:
	ldr r2, _080716BC @ =0x000040B3
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080716C0 @ =0x0808750D
_080716B4:
	str r0, [r4, #0x4C]
_080716B6:
	pop {r4}
	pop {r0}
	bx r0
_080716BC: .4byte 0x000040B3
_080716C0: .4byte sub_808750C
	thumb_func_start sub_80716C4
sub_80716C4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	blt _08071750
	adds r2, #0xAA
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08071758 @ =0x0808750D
	str r0, [r6, #0x4C]
_08071750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071758: .4byte sub_808750C
	thumb_func_start sub_807175C
sub_807175C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _080717E2
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldr r2, _080717E8 @ =0x000040AE
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080717EC @ =0x080717F1
	str r0, [r5, #0x4C]
_080717E2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080717E8: .4byte 0x000040AE
_080717EC: .4byte sub_80717F0
	thumb_func_start sub_80717F0
sub_80717F0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08071830
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807180E
	adds r1, #0xFF
_0807180E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071818
	adds r2, #0xFF
_08071818:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071822
	adds r3, #0xFF
_08071822:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071850 @ =0x000021E9
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08071830:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08071848
	ldr r2, _08071854 @ =0x000040AA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08071848:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08071850: .4byte 0x000021E9
_08071854: .4byte 0x000040AA
	thumb_func_start sub_8071858
sub_8071858:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_807F47C
	ldr r1, [r4, #0x2C]
	ldr r2, [r1, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, _080718F4 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080718B2
	adds r1, #0xFF
_080718B2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080718BC
	adds r2, #0xFF
_080718BC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080718C6
	adds r3, #0xFF
_080718C6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080718F8 @ =0x000021E1
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _080718FC @ =0x0807175D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_080718F4: .4byte 0x000040AE
_080718F8: .4byte 0x000021E1
_080718FC: .4byte sub_807175C
	thumb_func_start sub_8071900
sub_8071900:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldr r2, _08071974 @ =0x000040AE
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08071978 @ =0x080717F1
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071974: .4byte 0x000040AE
_08071978: .4byte sub_80717F0
	thumb_func_start sub_807197C
sub_807197C:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071A48
	ldr r0, _08071A50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	ldr r0, [r0, #0x10]
	bl sub_807FB64
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080719A4
	adds r2, #0xFF
_080719A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _080719AE
	adds r3, #0xFF
_080719AE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080719B8
	adds r0, #0xFF
_080719B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071A54 @ =0x000040B8
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	str r5, [r3, #0x4C]
	ldr r2, _08071A58 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071A20
	adds r1, #0xFF
_08071A20:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071A2A
	adds r2, #0xFF
_08071A2A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071A34
	adds r3, #0xFF
_08071A34:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071A5C @ =0x000021F2
	bl sub_80DF024
	ldr r0, _08071A60 @ =0x08072391
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_08071A48:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08071A50: .4byte 0x03000FD8
_08071A54: .4byte 0x000040B8
_08071A58: .4byte 0x000040B7
_08071A5C: .4byte 0x000021F2
_08071A60: .4byte sub_8072390
	thumb_func_start sub_8071A64
sub_8071A64:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071AFE
	ldr r2, _08071B08 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071A96
	adds r1, #0xFF
_08071A96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071AA0
	adds r2, #0xFF
_08071AA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071AAA
	adds r3, #0xFF
_08071AAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071B0C @ =0x000021FB
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r2, #0xA0
	lsls r2, r2, #0x08
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	subs r1, #0x0C
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x69
	bl play_sfx_80195B4
	ldr r0, _08071B10 @ =0x08072371
	str r0, [r4, #0x4C]
_08071AFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071B08: .4byte 0x000040B7
_08071B0C: .4byte 0x000021FB
_08071B10: .4byte sub_8072370
	thumb_func_start sub_8071B14
sub_8071B14:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08071BBE
	ldr r2, _08071BC8 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x66
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _08071B5A
	adds r2, #0xFF
_08071B5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _08071B64
	adds r3, #0xFF
_08071B64:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08071B6E
	adds r0, #0xFF
_08071B6E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071BCC @ =0x000040BB
	bl sub_807BF34
	adds r2, r0, #0x0
	ldr r0, [r4, #0x30]
	str r2, [r0, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x0A
	adds r1, r2, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x00
	str r0, [r2, #0x4C]
	ldr r0, _08071BD0 @ =0x08071BD5
	str r0, [r4, #0x4C]
_08071BBE:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071BC8: .4byte 0x000040B7
_08071BCC: .4byte 0x000040BB
_08071BD0: .4byte sub_8071BD4
	thumb_func_start sub_8071BD4
sub_8071BD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x30]
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x18]
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	ble _08071C10
	b _08071E70
_08071C10:
	movs r0, #0x00
	str r0, [r5, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r2, _08071E80 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08071C46
	adds r1, #0xFF
_08071C46:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _08071C50
	adds r2, #0xFF
_08071C50:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08071C5A
	adds r3, #0xFF
_08071C5A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08071E84 @ =0x00002204
	bl sub_80DF024
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08071C6C
	adds r1, #0xFF
_08071C6C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _08071C76
	adds r2, #0xFF
_08071C76:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08071C80
	adds r3, #0xFF
_08071C80:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08071E88 @ =0x0000220C
	bl sub_80DF024
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071C9C
	adds r2, #0xFF
_08071C9C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071CA6
	adds r3, #0xFF
_08071CA6:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071CB0
	adds r0, #0xFF
_08071CB0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r4, [r0, #0x30]
	movs r1, #0x74
	adds r1, r1, r5
	mov r9, r1
	ldrb r1, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r7, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r2, #0x7F
	strb r2, [r0, #0x00]
	adds r0, #0x27
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08071E90 @ =0x08087541
	str r2, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071E94 @ =0x080722E1
	str r0, [r4, #0x58]
	str r7, [r4, #0x5C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	ldr r2, _08071E98 @ =0x08072351
	mov r10, r2
	str r2, [r4, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071D38
	adds r2, #0xFF
_08071D38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071D42
	adds r3, #0xFF
_08071D42:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071D4C
	adds r0, #0xFF
_08071D4C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r4, #0x30]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x0C
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	mov r2, r10
	str r2, [r6, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071D8E
	adds r2, #0xFF
_08071D8E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071D98
	adds r3, #0xFF
_08071D98:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071DA2
	adds r0, #0xFF
_08071DA2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	str r7, [r0, #0x00]
	adds r0, #0x04
	movs r2, #0x33
	mov r10, r2
	str r2, [r0, #0x00]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r6, _08071E9C @ =0x0807223D
	str r6, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08071E90 @ =0x08087541
	str r2, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071EA0 @ =0x08072295
	str r0, [r4, #0x58]
	str r7, [r4, #0x5C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071E1E
	adds r2, #0xFF
_08071E1E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071E28
	adds r3, #0xFF
_08071E28:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071E32
	adds r0, #0xFF
_08071E32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r4, #0x30]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	str r1, [r0, #0x00]
	str r6, [r2, #0x4C]
	ldr r0, [r2, #0x08]
	movs r2, #0x80
	strh r2, [r0, #0x04]
	ldr r0, _08071EA4 @ =0x08071EA9
	str r0, [r5, #0x4C]
_08071E70:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08071E80: .4byte 0x000040B7
_08071E84: .4byte 0x00002204
_08071E88: .4byte 0x0000220C
_08071E8C: .4byte 0x000040BA
_08071E90: .4byte sub_8087540
_08071E94: .4byte sub_80722E0
_08071E98: .4byte sub_8072350
_08071E9C: .4byte sub_807223C
_08071EA0: .4byte sub_8072294
_08071EA4: .4byte sub_8071EA8
	thumb_func_start sub_8071EA8
sub_8071EA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08071EC2
	b _08072080
_08071EC2:
	movs r0, #0xAC
	adds r0, r0, r5
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08071ED8
	b _08072080
_08071ED8:
	ldr r0, _08072090 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x58]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x18]
	ldr r2, _08072094 @ =0x000040AA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072098 @ =0x080720A9
	str r0, [r4, #0x4C]
	movs r2, #0x8C
	adds r2, r2, r6
	mov r8, r2
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x90
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r7, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08071F26
	adds r0, #0xFF
_08071F26:
	asrs r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0xB6
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08071F36
	adds r0, #0xFF
_08071F36:
	asrs r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0xB8
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08071F46
	adds r0, #0xFF
_08071F46:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xBA
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r1, [r3, #0x00]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r3, _0807209C @ =0x03001038
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r1, #0x66
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	mov r10, r0
	bl __divsi3
	cmp r0, #0x01
	bne _08071F9C
	movs r0, #0x02
_08071F9C:
	adds r1, r6, #0x0
	adds r1, #0xA4
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	movs r2, #0x00
	strh r2, [r0, #0x00]
	ldr r2, _080720A0 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08071FF2
	adds r0, #0xFF
_08071FF2:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08072002
	adds r0, #0xFF
_08072002:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08072012
	adds r0, #0xFF
_08072012:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r6, r1, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r2, _0807209C @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x01
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	mov r0, r10
	bl __divsi3
	cmp r0, #0x01
	bne _08072060
	movs r0, #0x02
_08072060:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	movs r0, #0x00
	mov r3, r9
	strh r0, [r3, #0x00]
	ldr r0, _080720A4 @ =0x08072151
	str r0, [r5, #0x4C]
_08072080:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072090: .4byte 0x03000FD8
_08072094: .4byte 0x000040AA
_08072098: .4byte sub_80720A8
_0807209C: .4byte 0x03001038
_080720A0: .4byte 0x000040B7
_080720A4: .4byte sub_8072150
	thumb_func_start sub_80720A8
sub_80720A8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _08072148
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _08072148
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	movs r0, #0x00
	str r0, [r6, #0x4C]
_08072148:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8072150
sub_8072150:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _08072228
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _08072228
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080721F6
	adds r1, #0xFF
_080721F6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _08072200
	adds r2, #0xFF
_08072200:
	asrs r2, r2, #0x08
	cmp r0, #0x00
	bge _08072208
	adds r0, #0xFF
_08072208:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08072230 @ =0x00002214
	bl sub_80DF024
	ldr r2, _08072234 @ =0x000040B3
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	bl sub_807C298
	ldr r0, _08072238 @ =0x0808750D
	str r0, [r6, #0x4C]
_08072228:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08072230: .4byte 0x00002214
_08072234: .4byte 0x000040B3
_08072238: .4byte sub_808750C
	thumb_func_start sub_807223C
sub_807223C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08072274
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072262
	adds r0, #0xFF
_08072262:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0807228C
	adds r0, r4, #0x0
	bl sub_807F47C
	b _08072286
_08072274:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072280
	adds r0, #0xFF
_08072280:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _0807228C
_08072286:
	adds r0, r4, #0x0
	bl sub_807C298
_0807228C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8072294
sub_8072294:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x32
	bhi _080722D0
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xF6
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	beq _080722D0
	adds r0, r2, #0x0
	movs r1, #0xC8
	bl sub_810835C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080722D0:
	ldr r1, _080722DC @ =0x0807223D
	str r1, [r5, #0x4C]
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080722DC: .4byte sub_807223C
	thumb_func_start sub_80722E0
sub_80722E0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, _080722F4 @ =0x080722F9
	str r1, [r4, #0x4C]
	pop {r4}
	pop {r1}
	bx r1
_080722F4: .4byte sub_80722F8
	thumb_func_start sub_80722F8
sub_80722F8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807232A
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807231E
	adds r0, #0xFF
_0807231E:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08072348
	b _0807233C
_0807232A:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072336
	adds r0, #0xFF
_08072336:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _08072348
_0807233C:
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	bl sub_807C298
_08072348:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8072350
sub_8072350:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08072368
	ldr r0, _0807236C @ =0x080722F9
	str r0, [r2, #0x4C]
_08072368:
	pop {r0}
	bx r0
_0807236C: .4byte sub_80722F8
	thumb_func_start sub_8072370
sub_8072370:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08072388
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0807238C @ =0x08071B15
	str r0, [r2, #0x4C]
_08072388:
	pop {r0}
	bx r0
_0807238C: .4byte sub_8071B14
	thumb_func_start sub_8072390
sub_8072390:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x46
	bne _080723B0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
_080723B0:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x14
	bne _080723C2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
_080723C2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080723F0
	ldr r2, _080723F8 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080723FC @ =0x08071A65
	str r0, [r5, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
_080723F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080723F8: .4byte 0x000040B7
_080723FC: .4byte sub_8071A64
	thumb_func_start sub_8072400
sub_8072400:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _0807241C
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08072424 @ =0x08071901
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0807241C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08072424: .4byte sub_8071900
	thumb_func_start sub_8072428
sub_8072428:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807248E
	ldr r2, _08072494 @ =0x000040B3
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08072498 @ =0x0808750D
	str r0, [r4, #0x4C]
_0807248E:
	pop {r4}
	pop {r0}
	bx r0
_08072494: .4byte 0x000040B3
_08072498: .4byte sub_808750C
	thumb_func_start sub_807249C
sub_807249C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080724D8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080724D8
	ldr r2, _080724E0 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080724E4 @ =0x0807148D
	str r0, [r4, #0x4C]
_080724D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080724E0: .4byte 0x000040B4
_080724E4: .4byte sub_807148C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x01, 0x25, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x29, 0x25, 0x07, 0x08
	thumb_func_start sub_8072500
sub_8072500:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08072520 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0x08
	movs r1, #0x2F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072524 @ =0x08072551
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08072520: .4byte 0x03000FD8
_08072524: .4byte sub_8072550
	thumb_func_start sub_8072528
sub_8072528:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08072548 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0x08
	movs r1, #0x2F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807254C @ =0x080725D1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08072548: .4byte 0x03000FD8
_0807254C: .4byte sub_80725D0
	thumb_func_start sub_8072550
sub_8072550:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080725C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080725C2
	adds r0, r5, #0x0
	movs r1, #0x30
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080725CC @ =0x08072651
	str r0, [r4, #0x4C]
_080725C2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080725C8: .4byte 0x03000FD8
_080725CC: .4byte sub_8072650
	thumb_func_start sub_80725D0
sub_80725D0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08072648 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072642
	adds r0, r5, #0x0
	movs r1, #0x30
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0807264C @ =0x08072679
	str r0, [r4, #0x4C]
_08072642:
	pop {r4, r5}
	pop {r0}
	bx r0
_08072648: .4byte 0x03000FD8
_0807264C: .4byte sub_8072678
	thumb_func_start sub_8072650
sub_8072650:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807266C
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072674 @ =0x0807197D
	str r0, [r4, #0x4C]
_0807266C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072674: .4byte sub_807197C
	thumb_func_start sub_8072678
sub_8072678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080726C2
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807269A
	adds r1, #0xFF
_0807269A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080726A4
	adds r2, #0xFF
_080726A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080726AE
	adds r3, #0xFF
_080726AE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080726CC @ =0x00002222
	bl sub_80DF024
	ldr r0, _080726D0 @ =0x080726D5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_080726C2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080726CC: .4byte 0x00002222
_080726D0: .4byte sub_80726D4
	thumb_func_start sub_80726D4
sub_80726D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x37
	bne _080726F4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
_080726F4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072724
	ldr r0, _0807272C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x58]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08072730 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072734 @ =0x08072739
	str r0, [r5, #0x4C]
_08072724:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807272C: .4byte 0x03000FD8
_08072730: .4byte 0x000040AE
_08072734: .4byte sub_8072738
	thumb_func_start sub_8072738
sub_8072738:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072758
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072760 @ =0x080712D9
	str r0, [r4, #0x4C]
_08072758:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072760: .4byte sub_80712D8
	thumb_func_start sub_8072764
sub_8072764:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08072778
	b _080728A6
_08072778:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807278C
	adds r1, #0xFF
_0807278C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08072796
	adds r2, #0xFF
_08072796:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080727A0
	adds r3, #0xFF
_080727A0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080728B0 @ =0x00002266
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080727B4
	adds r2, #0xFF
_080727B4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080727BE
	adds r3, #0xFF
_080727BE:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080727C8
	adds r0, #0xFF
_080727C8:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080728B4 @ =0x00004144
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080728B8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080728BC @ =0x08074325
	str r0, [r5, #0x58]
	ldr r0, _080728C0 @ =0x080742FD
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _080728C4 @ =0x080743C5
	str r0, [r5, #0x4C]
	ldr r0, _080728C8 @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080728CC @ =0x0807442D
	str r0, [r6, #0x4C]
_080728A6:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080728B0: .4byte 0x00002266
_080728B4: .4byte 0x00004144
_080728B8: .4byte sub_8087540
_080728BC: .4byte sub_8074324
_080728C0: .4byte sub_80742FC
_080728C4: .4byte sub_80743C4
_080728C8: .4byte 0x0000010B
_080728CC: .4byte sub_807442C
	thumb_func_start sub_80728D0
sub_80728D0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807293A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08072940 @ =0x080743AD
	str r0, [r4, #0x4C]
_0807293A:
	pop {r4}
	pop {r0}
	bx r0
_08072940: .4byte sub_80743AC
	thumb_func_start sub_8072944
sub_8072944:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072980
	adds r0, #0xFF
_08072980:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072990
	adds r0, #0xFF
_08072990:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080729A0
	adds r0, #0xFF
_080729A0:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r5, r1, r0
	ldr r2, _08072A18 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080729D6
	ldr r1, _08072A1C @ =0x000003FF
	adds r0, r0, r1
_080729D6:
	asrs r7, r0, #0x0A
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _080729F0
	movs r0, #0x02
_080729F0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08072A20 @ =0x08072A25
	str r0, [r4, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072A18: .4byte 0x03001038
_08072A1C: .4byte 0x000003FF
_08072A20: .4byte sub_8072A24
	thumb_func_start sub_8072A24
sub_8072A24:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r7, #0x00
	ldsh r1, [r1, r7]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r7, #0x00
	ldsh r1, [r1, r7]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r7, #0xC0
	lsls r7, r7, #0x06
	adds r0, r0, r7
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08072B5A
	movs r5, #0x01
	negs r5, r5
	movs r0, #0xCC
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AD8
	adds r0, #0xFF
_08072AD8:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AE6
	adds r0, #0xFF
_08072AE6:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AF4
	adds r0, #0xFF
_08072AF4:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08072B2C @ =0x0000226E
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08072B0E
	adds r2, #0xFF
_08072B0E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08072B18
	adds r3, #0xFF
_08072B18:
	asrs r3, r3, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r5
	beq _08072B30
	movs r0, #0x13
	b _08072B32
	.byte 0x00, 0x00
_08072B2C: .4byte 0x0000226E
_08072B30:
	movs r0, #0x12
_08072B32:
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x1E
	str r0, [r1, #0x00]
	ldr r0, _08072B64 @ =0x0807438D
	str r0, [r6, #0x4C]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
_08072B5A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072B64: .4byte sub_807438C
	thumb_func_start sub_8072B68
sub_8072B68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072BDE
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08072BDE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD3
	bl play_sfx_80195B4
	ldr r0, _08072BE4 @ =0x080742D5
	str r0, [r4, #0x4C]
_08072BDE:
	pop {r4}
	pop {r0}
	bx r0
_08072BE4: .4byte sub_80742D4
	thumb_func_start sub_8072BE8
sub_8072BE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r9, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072C12
	adds r0, #0xFF
_08072C12:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072C22
	adds r0, #0xFF
_08072C22:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08072C32
	adds r0, #0xFF
_08072C32:
	asrs r0, r0, #0x08
	movs r1, #0xB2
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	movs r6, #0x00
	ldsh r0, [r5, r6]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	adds r2, #0xDC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _08072CDC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	mov r2, r8
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	muls r1, r5
	bl __divsi3
	cmp r0, #0x01
	bne _08072C8C
	movs r0, #0x02
_08072C8C:
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x41
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08072CE0 @ =0x08074261
	str r0, [r4, #0x60]
	ldr r0, _08072CE4 @ =0x08072CE9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x05
	str r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072CDC: .4byte 0x03001038
_08072CE0: .4byte sub_8074260
_08072CE4: .4byte sub_8072CE8
	thumb_func_start sub_8072CE8
sub_8072CE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08072D26
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08072D04
	adds r1, #0xFF
_08072D04:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08072D0E
	adds r2, #0xFF
_08072D0E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08072D18
	adds r3, #0xFF
_08072D18:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08072DC4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r4, #0x00]
_08072D26:
	ldr r4, [r5, #0x08]
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x0E
	negs r0, r0
	adds r7, r5, #0x0
	adds r7, #0xA0
	ldr r1, [r7, #0x00]
	bl __divsi3
	strh r0, [r4, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r1, [r7, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	muls r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r7, #0x00]
	cmp r1, r0
	ble _08072DBC
	movs r0, #0xC0
	lsls r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _08072DC8 @ =0x08072DCD
	str r0, [r5, #0x4C]
_08072DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072DC4: .4byte 0x00002276
_08072DC8: .4byte sub_8072DCC
	thumb_func_start sub_8072DCC
sub_8072DCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08072E0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08072DEC
	adds r1, #0xFF
_08072DEC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08072DF6
	adds r2, #0xFF
_08072DF6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08072E00
	adds r3, #0xFF
_08072E00:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08072EE4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r5, #0x00]
_08072E0E:
	adds r3, r4, #0x0
	adds r3, #0xAC
	ldr r0, _08072EE8 @ =0xFFFFFE80
	adds r1, r0, #0x0
	ldrh r2, [r3, #0x00]
	adds r1, r1, r2
	movs r5, #0x00
	mov r8, r5
	movs r7, #0x01
	negs r7, r7
	strh r1, [r3, #0x00]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r5, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x07
	adds r6, r0, r2
	str r1, [r4, #0x14]
	ldr r1, _08072EEC @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _08072E4E
	adds r0, #0xFF
_08072E4E:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E62
	adds r0, #0x3F
_08072E62:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x04
	adds r0, r5, r0
	str r0, [r4, #0x10]
	ldr r1, _08072EF0 @ =0x08198504
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08072E7A
	adds r0, #0xFF
_08072E7A:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E8C
	adds r0, #0x3F
_08072E8C:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, r6, r1
	str r1, [r4, #0x18]
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r2, r0
	bls _08072EAA
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
_08072EAA:
	ldr r0, _08072EF4 @ =0x00003FFF
	cmp r2, r0
	bhi _08072F34
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08072F34
	ldr r0, [r4, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08072EF8
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r2, r8
	strh r2, [r0, #0x0C]
	b _08072F30
_08072EE4: .4byte 0x00002276
_08072EE8: .4byte 0xFFFFFE80
_08072EEC: .4byte 0x08198584
_08072EF0: .4byte 0x08198504
_08072EF4: .4byte 0x00003FFF
_08072EF8:
	mov r5, r8
	str r5, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08072F16
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	b _08072F34
_08072F16:
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r1, r8
	strh r1, [r0, #0x0C]
_08072F30:
	ldr r0, _08072F40 @ =0x0808750D
	str r0, [r4, #0x4C]
_08072F34:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072F40: .4byte sub_808750C
	thumb_func_start sub_8072F44
sub_8072F44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08072FD2
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x08
	strh r0, [r1, #0x0C]
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
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	ldr r0, _08072FD8 @ =0x080741ED
	str r0, [r4, #0x4C]
_08072FD2:
	pop {r4, r5}
	pop {r0}
	bx r0
_08072FD8: .4byte sub_80741EC
	thumb_func_start sub_8072FDC
sub_8072FDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080730B8
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_0807303C:
	ldr r0, _080730A0 @ =0x03000E80
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080730A4
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _080730AE
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _080730AE
_080730A0: .4byte 0x03000E80
_080730A4:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_080730AE:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _0807303C
_080730B8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80730C8
sub_80730C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080731A4
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_08073128:
	ldr r0, _0807318C @ =0x03000E98
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08073190
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _0807319A
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _0807319A
_0807318C: .4byte 0x03000E98
_08073190:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_0807319A:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _08073128
_080731A4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80731B4
sub_80731B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080731D0
	b _08073788
_080731D0:
	mov r0, r9
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073588 @ =0x08073799
	mov r1, r9
	str r0, [r1, #0x4C]
	ldr r3, [r1, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731F0
	adds r0, #0xFF
_080731F0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731FE
	adds r0, #0xFF
_080731FE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807320C
	adds r0, #0xFF
_0807320C:
	asrs r3, r0, #0x08
	mov r4, r9
	str r4, [sp, #0x000]
	ldr r0, _0807358C @ =0x000022D4
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r5, _08073590 @ =0x0000414D
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08073224
	adds r0, #0xFF
_08073224:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r6, r9
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _08073234
	adds r3, #0xFF
_08073234:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08073240
	adds r0, #0xFF
_08073240:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	movs r6, #0x00
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	mov r8, r3
	mov r3, r8
	orrs r0, r3
	strb r0, [r1, #0x00]
	str r6, [r4, #0x4C]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	str r2, [sp, #0x01C]
	cmp r0, #0x00
	bge _0807328E
	adds r0, #0xFF
_0807328E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r0, r9
	ldr r3, [r0, #0x14]
	cmp r3, #0x00
	bge _0807329E
	adds r3, #0xFF
_0807329E:
	asrs r3, r3, #0x08
	mov r10, r3
	mov r3, r9
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _080732AC
	adds r0, #0xFF
_080732AC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r3, r9
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	mov r3, r10
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	ldr r4, [sp, #0x01C]
	ldrb r1, [r4, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	str r6, [r5, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _080732F0
	adds r0, #0xFF
_080732F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r9
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _08073300
	adds r3, #0xFF
_08073300:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807330C
	adds r0, #0xFF
_0807330C:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	ldr r6, [sp, #0x01C]
	ldrb r1, [r6, #0x00]
	subs r0, #0x3E
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	str r0, [r4, #0x2C]
	adds r5, r4, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	movs r2, #0xAC
	add r2, r9
	mov r8, r2
	mov r3, r9
	adds r3, #0x9C
	str r3, [sp, #0x024]
	mov r6, r9
	adds r6, #0x84
	str r6, [sp, #0x020]
	ldr r6, _08073598 @ =0x03000E80
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	movs r7, #0x07
_080733E2:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x02]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x04]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x06]
	adds r6, #0x08
	subs r7, #0x04
	cmp r7, #0x00
	bge _080733E2
	movs r5, #0x00
	str r5, [r0, #0x00]
	str r5, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08073450
	adds r0, #0xFF
_08073450:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08073460
	adds r0, #0xFF
_08073460:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	mov r6, r9
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08073470
	adds r0, #0xFF
_08073470:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r7, #0x2C]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x9C
	str r1, [sp, #0x00C]
	adds r2, r4, #0x0
	adds r2, #0xA0
	str r2, [sp, #0x010]
	adds r3, r4, #0x0
	adds r3, #0xA4
	str r3, [sp, #0x014]
	adds r4, #0xA8
	str r4, [sp, #0x018]
	ldr r4, _0807359C @ =0x03000E98
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	movs r6, #0x07
_0807354C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x02]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	b _080735A0
	.byte 0x00, 0x00
_08073588: .4byte sub_8073798
_0807358C: .4byte 0x000022D4
_08073590: .4byte 0x0000414D
_08073594: .4byte 0x0000414B
_08073598: .4byte 0x03000E80
_0807359C: .4byte 0x03000E98
_080735A0:
	strh r3, [r4, #0x04]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x06]
	adds r4, #0x08
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807354C
	str r3, [r0, #0x00]
	str r3, [r7, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xAC
	strh r3, [r0, #0x00]
	mov r4, r8
	strh r3, [r4, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x28]
	movs r6, #0x80
	lsls r6, r6, #0x01
	str r6, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	mov r10, r0
	str r0, [r7, #0x30]
	mov r2, r10
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r5, #0x1F
	adds r0, r5, #0x0
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	mov r0, r10
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	mov r2, r10
	str r0, [r2, #0x2C]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r4, #0x61
	adds r0, r4, #0x0
	ands r0, r1
	movs r3, #0x21
	negs r3, r3
	ands r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _080736A8 @ =0x08087541
	mov r8, r0
	mov r1, r10
	str r0, [r1, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r2, #0x28]
	str r6, [sp, #0x000]
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	mov r6, r10
	str r3, [r6, #0x30]
	adds r1, r3, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	strb r5, [r1, #0x00]
	ldr r2, [sp, #0x01C]
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x2C]
	str r0, [r3, #0x2C]
	adds r1, r3, #0x0
	adds r1, #0x77
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x21
	negs r0, r0
	ands r4, r0
	strb r4, [r1, #0x00]
	mov r1, r8
	str r1, [r3, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r3, #0x6C]
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _080736E8
	cmp r0, #0x01
	bgt _080736AC
	cmp r0, #0x00
	beq _080736B2
	b _0807374A
	.byte 0x00, 0x00
_080736A4: .4byte 0x0000414C
_080736A8: .4byte sub_8087540
_080736AC:
	cmp r0, #0x02
	beq _0807371A
	b _0807374A
_080736B2:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0xB6
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x7C
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x84
	str r0, [r1, #0x00]
	movs r0, #0xA0
	ldr r6, [sp, #0x014]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0xCC
	str r0, [r1, #0x00]
	movs r0, #0x1E
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	b _08073778
_080736E8:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xA0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x00C]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x014]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x018]
	str r0, [r6, #0x00]
	b _08073778
_0807371A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA0
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x018]
	str r0, [r4, #0x00]
	b _08073778
_0807374A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x00C]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x014]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
_08073778:
	movs r0, #0x1E
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5E
	bl play_sfx_80195B4
_08073788:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8073798
sub_8073798:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x30]
	ldr r5, [r0, #0x30]
	ldr r7, [r5, #0x30]
	ldr r0, [r7, #0x30]
	mov r9, r0
	ldr r1, [r0, #0x30]
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r4, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _080737C8
	adds r0, #0xFF
_080737C8:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	mov r12, r2
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F4 @ =0x08198584
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080737E0
	adds r0, #0x3F
_080737E0:
	asrs r2, r0, #0x06
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x004]
	cmp r0, #0x00
	bge _080737F2
	adds r0, #0xFF
_080737F2:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	ldr r2, [r3, #0x00]
	str r1, [sp, #0x018]
	str r0, [sp, #0x010]
	cmp r2, #0x00
	bge _0807380E
	adds r2, #0xFF
_0807380E:
	asrs r0, r2, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F8 @ =0x08198504
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073824
	adds r0, #0x3F
_08073824:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08073832
	adds r0, #0xFF
_08073832:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	ldr r4, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	str r2, [sp, #0x01C]
	str r1, [sp, #0x00C]
	adds r6, r0, #0x0
	cmp r3, #0x00
	bge _08073854
	adds r3, #0xFF
_08073854:
	asrs r0, r3, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F4 @ =0x08198584
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807386A
	adds r0, #0x3F
_0807386A:
	asrs r2, r0, #0x06
	adds r1, r7, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x008]
	cmp r0, #0x00
	bge _0807387C
	adds r0, #0xFF
_0807387C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r3, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r4, r1, #0x0
	str r0, [sp, #0x014]
	cmp r2, #0x00
	bge _08073898
	adds r2, #0xFF
_08073898:
	asrs r0, r2, #0x08
	mov r2, r12
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F8 @ =0x08198504
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080738AE
	adds r0, #0x3F
_080738AE:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x008]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080738BC
	adds r0, #0xFF
_080738BC:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	adds r1, r7, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r2, r8
	adds r2, #0x9C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _0807393E
	mov r0, r8
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _0807391E
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _0807390E
	cmp r0, #0x01
	bgt _080738FC
	cmp r0, #0x00
	beq _08073906
	b _0807391E
	.byte 0x00, 0x00
_080738F4: .4byte 0x08198584
_080738F8: .4byte 0x08198504
_080738FC:
	cmp r0, #0x02
	beq _08073916
	cmp r0, #0x03
	beq _08073916
	b _0807391E
_08073906:
	ldr r0, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	b _0807391A
_0807390E:
	ldr r0, [r6, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	b _0807391A
_08073916:
	ldr r0, [r6, #0x00]
	ldr r2, _08073968 @ =0xFFFFFF00
_0807391A:
	adds r0, r0, r2
	str r0, [r6, #0x00]
_0807391E:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	mov r2, r10
	str r0, [r2, #0x10]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r10
	str r0, [r1, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
_0807393E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08073A18
	mov r0, r8
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bgt _080739A2
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _08073984
	cmp r0, #0x01
	bgt _0807396C
	cmp r0, #0x00
	beq _08073976
	b _080739A2
_08073968: .4byte 0xFFFFFF00
_0807396C:
	cmp r0, #0x02
	beq _08073994
	cmp r0, #0x03
	beq _08073994
	b _080739A2
_08073976:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073980 @ =0xFFFFFF00
	b _0807399E
_08073980: .4byte 0xFFFFFF00
_08073984:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073990 @ =0xFFFFFE80
	b _0807399E
	.byte 0x00, 0x00
_08073990: .4byte 0xFFFFFE80
_08073994:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
_0807399E:
	adds r0, r0, r2
	str r0, [r1, #0x00]
_080739A2:
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r2, [sp, #0x01C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	mov r2, r9
	str r0, [r2, #0x14]
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r2, #0x18]
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08073A18
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x08
	bne _080739EE
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080739EE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08073A18
	mov r0, r9
	bl sub_807F4FC
	mov r0, r10
	bl sub_807F4FC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073A18:
	mov r0, r8
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r1, #0x01
	strh r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _08073AC8
	movs r2, #0x00
	ldr r0, _08073AEC @ =0x03000E80
	ldrh r1, [r0, #0x00]
	adds r4, r0, #0x0
	ldr r3, _08073AF0 @ =0x03000E98
	cmp r1, #0x00
	beq _08073A70
	adds r1, r4, #0x0
_08073A3A:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073A70
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073A70
	cmp r2, #0x0B
	ble _08073A3A
_08073A70:
	cmp r2, #0x0B
	bgt _08073A7C
	lsls r0, r2, #0x01
	adds r0, r0, r4
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073A7C:
	movs r2, #0x00
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, r3, #0x0
_08073A86:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	cmp r2, #0x0B
	ble _08073A86
_08073ABC:
	cmp r2, #0x0B
	bgt _08073AC8
	lsls r0, r2, #0x01
	adds r0, r0, r3
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073AC8:
	adds r0, r5, #0x0
	bl sub_8072FDC
	adds r0, r7, #0x0
	bl sub_80730C8
	mov r0, r8
	ldr r2, [r0, #0x30]
	ldr r4, [r2, #0x30]
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08073B0C
	cmp r0, #0x01
	bgt _08073AF4
	cmp r0, #0x00
	beq _08073AFE
	b _08073B88
_08073AEC: .4byte 0x03000E80
_08073AF0: .4byte 0x03000E98
_08073AF4:
	cmp r0, #0x02
	beq _08073B3C
	cmp r0, #0x03
	beq _08073B6C
	b _08073B88
_08073AFE:
	ldr r1, [r6, #0x00]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08073B0A
	b _08073C06
_08073B0A:
	b _08073B44
_08073B0C:
	ldr r1, [r6, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08073C06
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B38 @ =0x08074165
	mov r1, r8
	str r0, [r1, #0x4C]
	b _08073C06
	.byte 0x00, 0x00
_08073B38: .4byte sub_8074164
_08073B3C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B64 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
_08073B44:
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B68 @ =0x08074165
	mov r2, r8
	str r0, [r2, #0x4C]
	b _08073C06
_08073B64: .4byte 0x00004FFF
_08073B68: .4byte sub_8074164
_08073B6C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B84 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
	movs r0, #0x04
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r1, r8
	adds r1, #0xAE
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	b _08073C06
_08073B84: .4byte 0x00004FFF
_08073B88:
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073BEA
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xB4
	lsls r0, r0, #0x07
	str r0, [r6, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x84
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r0, #0x3C
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
	movs r1, #0x61
	ldr r2, [sp, #0x00C]
	str r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r1, [r0, #0x00]
	movs r0, #0x81
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	b _08073C06
_08073BEA:
	cmp r0, #0x08
	bne _08073C06
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073C06:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8073C18
sub_8073C18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08073C34
	b _08073E1E
_08073C34:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0xD5
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C64
	adds r0, #0xFF
_08073C64:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C72
	adds r0, #0xFF
_08073C72:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C80
	adds r0, #0xFF
_08073C80:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08073E30 @ =0x000022E8
	bl sub_80DF024
	movs r0, #0x9C
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073C9A
	adds r2, #0xFF
_08073C9A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073CA4
	adds r0, #0xFF
_08073CA4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073CB2
	adds r0, #0xFF
_08073CB2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x74
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r3, r5, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r2, [r0, #0x00]
	adds r0, #0x08
	str r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r2, _08073E44 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	movs r7, #0x01
	mov r3, r8
	ldr r0, [r3, #0x00]
	mov r9, r4
	movs r1, #0xA0
	adds r1, r1, r6
	mov r10, r1
	adds r2, r6, #0x0
	adds r2, #0xA8
	str r2, [sp, #0x00C]
	cmp r7, r0
	bge _08073E0C
_08073D50:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073D5A
	adds r2, #0xFF
_08073D5A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073D64
	adds r0, #0xFF
_08073D64:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073D72
	adds r0, #0xFF
_08073D72:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	adds r3, #0x20
	adds r0, r3, #0x0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r7, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA4
	lsls r0, r7, #0x08
	mov r2, r8
	ldr r1, [r2, #0x00]
	bl __divsi3
	lsls r0, r0, #0x08
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r3, _08073E44 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r7, #0x01
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r7, r0
	blt _08073D50
_08073E0C:
	movs r0, #0x00
	str r0, [r5, #0x30]
	mov r2, r10
	str r0, [r2, #0x00]
	movs r0, #0x30
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	ldr r0, _08073E48 @ =0x0807413D
	str r0, [r6, #0x4C]
_08073E1E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073E30: .4byte 0x000022E8
_08073E34: .4byte 0x0000414E
_08073E38: .4byte sub_8087540
_08073E3C: .4byte sub_8073EAC
_08073E40: .4byte sub_80740D4
_08073E44: .4byte 0xFFFFF600
_08073E48: .4byte sub_807413C
	thumb_func_start sub_8073E4C
sub_8073E4C:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _08073EA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	ldr r2, [r1, #0x74]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08073E7C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08073E7C
	adds r1, r3, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08073E7C:
	adds r2, r3, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073E9C
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x3C
	strh r0, [r2, #0x00]
	ldr r0, _08073EA8 @ =0x0807411D
	str r0, [r3, #0x4C]
_08073E9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073EA4: .4byte 0x03000FD8
_08073EA8: .4byte sub_807411C
	thumb_func_start sub_8073EAC
sub_8073EAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	adds r0, #0xB0
	ldr r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08073F38 @ =0x08198584
	adds r6, r5, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073ECE
	adds r0, #0xFF
_08073ECE:
	asrs r0, r0, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073EE2
	adds r0, #0x3F
_08073EE2:
	asrs r0, r0, #0x06
	adds r1, r0, #0x0
	muls r1, r3
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r1, _08073F3C @ =0x08198504
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073EFC
	adds r0, #0xFF
_08073EFC:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073F0E
	adds r0, #0x3F
_08073F0E:
	asrs r4, r0, #0x06
	adds r0, r3, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08073F40
	ldr r0, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _08073F44
	.byte 0x00, 0x00
_08073F38: .4byte 0x08198584
_08073F3C: .4byte 0x08198504
_08073F40:
	ldr r0, [r6, #0x00]
	adds r0, #0xE0
_08073F44:
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08073F62
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073F6C @ =0x08073F71
	str r0, [r5, #0x4C]
_08073F62:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073F6C: .4byte sub_8073F70
	thumb_func_start sub_8073F70
sub_8073F70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	adds r0, #0xB0
	ldr r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08073FFC @ =0x08198584
	adds r6, r5, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073F92
	adds r0, #0xFF
_08073F92:
	asrs r0, r0, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073FA6
	adds r0, #0x3F
_08073FA6:
	asrs r0, r0, #0x06
	adds r1, r0, #0x0
	muls r1, r3
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r1, _08074000 @ =0x08198504
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073FC0
	adds r0, #0xFF
_08073FC0:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073FD2
	adds r0, #0x3F
_08073FD2:
	asrs r4, r0, #0x06
	adds r0, r3, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08074004
	ldr r0, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _08074008
	.byte 0x00, 0x00
_08073FFC: .4byte 0x08198584
_08074000: .4byte 0x08198504
_08074004:
	ldr r0, [r6, #0x00]
	adds r0, #0xE0
_08074008:
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074024
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08074030 @ =0x08074035
	str r0, [r5, #0x4C]
_08074024:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074030: .4byte sub_8074034
	thumb_func_start sub_8074034
sub_8074034:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r4, r2, #0x0
	adds r4, #0x84
	ldr r1, _080740AC @ =0x08198584
	adds r3, r2, #0x0
	adds r3, #0xA4
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0807404A
	adds r0, #0xFF
_0807404A:
	asrs r0, r0, #0x08
	movs r5, #0xFF
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807405E
	adds r0, #0x3F
_0807405E:
	asrs r1, r0, #0x06
	movs r0, #0x90
	muls r1, r0
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	adds r4, #0x88
	ldr r1, _080740B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _08074078
	adds r0, #0xFF
_08074078:
	asrs r0, r0, #0x08
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807408A
	adds r0, #0x3F
_0807408A:
	asrs r1, r0, #0x06
	movs r0, #0x30
	muls r1, r0
	ldr r0, [r4, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x28]
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080740B4
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _080740B8
	.byte 0x00, 0x00
_080740AC: .4byte 0x08198584
_080740B0: .4byte 0x08198504
_080740B4:
	ldr r0, [r3, #0x00]
	adds r0, #0xE0
_080740B8:
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080740CC
	adds r0, r2, #0x0
	bl sub_807C298
_080740CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80740D4
sub_80740D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074110
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080740EA
	adds r1, #0xFF
_080740EA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080740F4
	adds r2, #0xFF
_080740F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080740FE
	adds r3, #0xFF
_080740FE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074118 @ =0x000022F0
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08074110:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074118: .4byte 0x000022F0
	thumb_func_start sub_807411C
sub_807411C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074134
	ldr r0, _08074138 @ =0x080744B5
	str r0, [r2, #0x4C]
_08074134:
	pop {r0}
	bx r0
_08074138: .4byte sub_80744B4
	thumb_func_start sub_807413C
sub_807413C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x71
	ble _0807415C
	movs r0, #0x72
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, #0xBA
	strh r0, [r1, #0x00]
	ldr r0, _08074160 @ =0x08074509
	str r0, [r2, #0x4C]
_0807415C:
	pop {r0}
	bx r0
_08074160: .4byte sub_8074508
	thumb_func_start sub_8074164
sub_8074164:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	bl sub_8072FDC
	adds r0, r4, #0x0
	bl sub_80730C8
	movs r1, #0x00
	movs r4, #0x00
	ldr r3, _080741E0 @ =0x03000E80
	ldr r2, _080741E4 @ =0x03000E98
_0807417E:
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0807418A
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0807418A:
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08074196
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08074196:
	ldrh r0, [r3, #0x02]
	cmp r0, #0x00
	beq _080741A2
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741A2:
	ldrh r0, [r2, #0x02]
	cmp r0, #0x00
	beq _080741AE
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741AE:
	ldrh r0, [r3, #0x04]
	cmp r0, #0x00
	beq _080741BA
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741BA:
	ldrh r0, [r2, #0x04]
	cmp r0, #0x00
	beq _080741C6
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741C6:
	adds r3, #0x06
	adds r2, #0x06
	adds r4, #0x03
	cmp r4, #0x0B
	ble _0807417E
	cmp r1, #0x00
	bne _080741D8
	ldr r0, _080741E8 @ =0x080745A9
	str r0, [r5, #0x4C]
_080741D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080741E0: .4byte 0x03000E80
_080741E4: .4byte 0x03000E98
_080741E8: .4byte sub_80745A8
	thumb_func_start sub_80741EC
sub_80741EC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08074254
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08074208
	adds r2, #0xFF
_08074208:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08074212
	adds r3, #0xFF
_08074212:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08074228
	movs r0, #0x13
	b _0807422A
_08074228:
	movs r0, #0x12
_0807422A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _0807425C @ =0x0807462D
	str r0, [r4, #0x4C]
_08074254:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807425C: .4byte sub_807462C
	thumb_func_start sub_8074260
sub_8074260:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080742CC
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _080742C8 @ =0x08072F45
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _080742CE
	.byte 0x00, 0x00
_080742C8: .4byte sub_8072F44
_080742CC:
	adds r0, r5, #0x0
_080742CE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80742D4
sub_80742D4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080742F0
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080742F8 @ =0x08072BE9
	str r0, [r4, #0x4C]
_080742F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080742F8: .4byte sub_8072BE8
	thumb_func_start sub_80742FC
sub_80742FC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074318
	ldr r0, _08074320 @ =0x08072945
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	movs r0, #0x00
_08074318:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08074320: .4byte sub_8072944
	thumb_func_start sub_8074324
sub_8074324:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074344
	adds r0, #0xFF
_08074344:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074352
	adds r0, #0xFF
_08074352:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074360
	adds r0, #0xFF
_08074360:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074388 @ =0x0000226E
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074388: .4byte 0x0000226E
	thumb_func_start sub_807438C
sub_807438C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080743A8
	movs r0, #0x00
	str r0, [r2, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
_080743A8:
	pop {r0}
	bx r0
	thumb_func_start sub_80743AC
sub_80743AC:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080743BE
	adds r0, r1, #0x0
	bl sub_807C298
_080743BE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80743C4
sub_80743C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074420
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074428 @ =0x08074689
	str r0, [r4, #0x4C]
_08074420:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074428: .4byte sub_8074688
	thumb_func_start sub_807442C
sub_807442C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807444C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0807444C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x51, 0x45, 0x07, 0x08, 0x30, 0xB5
	.byte 0x05, 0x1C, 0x2C, 0x1C, 0x9C, 0x34, 0x20, 0x68, 0x00, 0x28, 0x04, 0xD1, 0x25, 0xF1, 0x5F, 0xFD
	.byte 0x03, 0x21, 0x01, 0x40, 0x21, 0x60, 0x02, 0x48, 0xE8, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0xE5, 0x45, 0x07, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68
	.byte 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x49, 0x46, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x46
	.byte 0x07, 0x08
	thumb_func_start sub_80744B4
sub_80744B4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080744CC
	adds r1, #0xFF
_080744CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080744D6
	adds r2, #0xFF
_080744D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080744E0
	adds r3, #0xFF
_080744E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074500 @ =0x000022E2
	bl sub_80DF024
	movs r0, #0x8B
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08074504 @ =0x080746C5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074500: .4byte 0x000022E2
_08074504: .4byte sub_80746C4
	thumb_func_start sub_8074508
sub_8074508:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _08074520
	movs r0, #0xD5
	bl stop_sfx_80195A8
	ldr r0, _0807451C @ =0x080744B5
	b _08074544
_0807451C: .4byte sub_80744B4
_08074520:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074546
	movs r0, #0x01
	bl sub_810CA8C
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xB4
	strh r0, [r4, #0x00]
	ldr r0, _0807454C @ =0x080746ED
_08074544:
	str r0, [r5, #0x4C]
_08074546:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807454C: .4byte sub_80746EC
	thumb_func_start sub_8074550
sub_8074550:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807456E
	adds r0, #0xFF
_0807456E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807457C
	adds r0, #0xFF
_0807457C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807458A
	adds r0, #0xFF
_0807458A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080745A0 @ =0x000022DC
	bl sub_80DF024
	ldr r0, _080745A4 @ =0x08073C19
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080745A0: .4byte 0x000022DC
_080745A4: .4byte sub_8073C18
	thumb_func_start sub_80745A8
sub_80745A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r6, [r0, #0x30]
	ldr r5, [r6, #0x30]
	ldr r4, [r5, #0x30]
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
	movs r0, #0x5E
	bl stop_sfx_80195A8
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80745E4
sub_80745E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080745FC
	adds r1, #0xFF
_080745FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074606
	adds r2, #0xFF
_08074606:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074610
	adds r3, #0xFF
_08074610:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x8B
	lsls r0, r0, #0x06
	bl sub_80DF024
	ldr r0, _08074628 @ =0x080731B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08074628: .4byte sub_80731B4
