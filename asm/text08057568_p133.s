	.include "asm/macros.inc"

	.syntax unified
	.text

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
