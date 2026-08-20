	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8070938
sub_8070938:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _08070974 @ =0x03000E7D
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _08070964
	ldr r2, _08070978 @ =0x083B873C
	ldr r0, _0807097C @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08070980
_08070964:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	b _08070982
_08070974: .4byte 0x03000E7D
_08070978: .4byte 0x083B873C
_0807097C: .4byte 0x03000E7C
_08070980:
	ldr r0, _0807098C @ =0x08070991
_08070982:
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807098C: .4byte sub_8070990
	thumb_func_start sub_8070990
sub_8070990:
	push {r4, lr}
	mov r12, r0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	mov r4, r12
	adds r4, #0x9C
	ldr r3, _080709D4 @ =0x083B873C
	ldr r2, _080709D8 @ =0x03000E7D
	ldr r0, _080709DC @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, _080709E0 @ =0x0806F035
	mov r1, r12
	str r0, [r1, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080709D4: .4byte 0x083B873C
_080709D8: .4byte 0x03000E7D
_080709DC: .4byte 0x03000E7C
_080709E0: .4byte sub_806F034
	thumb_func_start sub_80709E4
sub_80709E4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070A44
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r3, _08070A30 @ =0x03000E7D
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _08070A26
	ldr r2, _08070A34 @ =0x083B873C
	ldr r0, _08070A38 @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r1, [r3, #0x00]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08070A40
_08070A26:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	ldr r0, _08070A3C @ =0x08070991
	b _08070A42
	.byte 0x00, 0x00
_08070A30: .4byte 0x03000E7D
_08070A34: .4byte 0x083B873C
_08070A38: .4byte 0x03000E7C
_08070A3C: .4byte sub_8070990
_08070A40:
	ldr r0, _08070A4C @ =0x0806EF39
_08070A42:
	str r0, [r4, #0x4C]
_08070A44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070A4C: .4byte sub_806EF38
	thumb_func_start sub_8070A50
sub_8070A50:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070A70
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070A78 @ =0x08070DCD
	str r0, [r4, #0x4C]
_08070A70:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070A78: .4byte sub_8070DCC
	thumb_func_start sub_8070A7C
sub_8070A7C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070A96
	adds r0, r2, #0x0
	bl sub_807C298
_08070A96:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8070A9C
sub_8070A9C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070ABC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070ABC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x05, 0x4A, 0x01, 0x1C, 0x9C, 0x31, 0x09, 0x68, 0x11, 0x70, 0x04, 0x4A, 0x00, 0x21
	.byte 0x11, 0x70, 0x03, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x7C, 0x0E, 0x00, 0x03, 0x7D, 0x0E
	.byte 0x00, 0x03, 0x39, 0xEF, 0x06, 0x08
	thumb_func_start sub_8070AE8
sub_8070AE8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08070B06
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _08070B0C
_08070B06:
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x01
_08070B0C:
	str r0, [r1, #0x00]
	ldr r0, _08070B18 @ =0x08070E4D
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08070B18: .4byte sub_8070E4C
	.byte 0xF0, 0xB5, 0x05, 0x1C, 0x2E, 0x1C, 0x9C, 0x36, 0x30, 0x68, 0x00, 0x28, 0x11, 0xD1, 0x2F, 0x1C
	.byte 0xA0, 0x37, 0x38, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x29, 0xF1, 0xFC, 0xF9, 0x03, 0x24, 0x20, 0x40
	.byte 0x00, 0x01, 0x60, 0x30, 0x30, 0x60, 0x29, 0xF1, 0xF5, 0xF9, 0x20, 0x40, 0x00, 0x01, 0x60, 0x30
	.byte 0x38, 0x60, 0x29, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x02, 0x08, 0x60, 0x04, 0x31, 0x08, 0x68
	.byte 0x00, 0x02, 0x08, 0x60, 0x02, 0x48, 0xE8, 0x64, 0x01, 0x20, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xC1, 0x0E, 0x07, 0x08
	thumb_func_start sub_8070B70
sub_8070B70:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070BB8
	adds r0, r4, #0x0
	movs r1, #0x2B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070B96
	adds r1, #0xFF
_08070B96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070BA0
	adds r2, #0xFF
_08070BA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070BAA
	adds r3, #0xFF
_08070BAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070BC0 @ =0x0000201C
	bl sub_80DF024
	ldr r0, _08070BC4 @ =0x08070EDD
	str r0, [r4, #0x4C]
_08070BB8:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08070BC0: .4byte 0x0000201C
_08070BC4: .4byte sub_8070EDC
	thumb_func_start sub_8070BC8
sub_8070BC8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x23
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x8C
	lsls r0, r0, #0x09
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	ldr r0, _08070C24 @ =0x00000199
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
	ldr r0, _08070C28 @ =0x08070F05
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
_08070C24: .4byte 0x00000199
_08070C28: .4byte sub_8070F04
	thumb_func_start sub_8070C2C
sub_8070C2C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070C50
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x1C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070C58 @ =0x08070F65
	str r0, [r4, #0x4C]
_08070C50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C58: .4byte sub_8070F64
	thumb_func_start sub_8070C5C
sub_8070C5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070C7C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070C7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
