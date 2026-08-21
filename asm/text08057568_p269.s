	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_815F0CC
sub_815F0CC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0815F0F4
	adds r0, r5, #0x0
	bl sub_815FA3C
	movs r4, #0xA0
	lsls r4, r4, #0x01
	strh r4, [r0, #0x04]
	adds r0, r5, #0x0
	bl sub_815FA3C
	strh r4, [r0, #0x06]
_0815F0F4:
	movs r0, #0xA0
	lsls r0, r0, #0x08
	str r0, [r5, #0x08]
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_815F110
sub_815F110:
	push {lr}
	ldr r2, _0815F120 @ =0x08CDCE50
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F120: .4byte 0x08CDCE50
	thumb_func_start sub_815F124
sub_815F124:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815F15C @ =0x08CDCE50
	str r0, [r4, #0x30]
	movs r0, #0x00
	strh r5, [r4, #0x3C]
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x38]
	bl sub_8199F30
	ldr r1, _0815F160 @ =0x000001FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815F15C: .4byte 0x08CDCE50
_0815F160: .4byte 0x000001FF
	.byte 0x00, 0x20, 0x70, 0x47
	thumb_func_start sub_815F168
sub_815F168:
	push {lr}
	ldr r2, _0815F178 @ =0x08CDCE90
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F178: .4byte 0x08CDCE90
	.byte 0x30, 0xB5, 0x05, 0x1C, 0x14, 0x04, 0x24, 0x0C, 0x00, 0xF0, 0xB6, 0xFB, 0x03, 0x48, 0x28, 0x63
	.byte 0xAC, 0x86, 0x28, 0x1C, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x90, 0xCE, 0xCD, 0x08
	thumb_func_start sub_815F19C
sub_815F19C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815F1CC @ =0x08CDCED0
	str r0, [r4, #0x30]
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815F1BC
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815F1BC:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F1CC: .4byte 0x08CDCED0
	thumb_func_start sub_815F1D0
sub_815F1D0:
	push {lr}
	bl sub_815FAA4
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_815F1DC
sub_815F1DC:
	push {lr}
	ldr r2, _0815F1EC @ =0x08CDCCD0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F1EC: .4byte 0x08CDCCD0
	thumb_func_start sub_815F1F0
sub_815F1F0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815F214 @ =0x08CDCCD0
	str r0, [r5, #0x30]
	movs r1, #0x00
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815F214: .4byte 0x08CDCCD0
	thumb_func_start sub_815F218
sub_815F218:
	push {lr}
	bl sub_815FAA4
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_815F224
sub_815F224:
	push {lr}
	ldr r2, _0815F234 @ =0x08CDCD10
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F234: .4byte 0x08CDCD10
	thumb_func_start sub_815F238
sub_815F238:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815F278 @ =0x08CDCD10
	str r0, [r5, #0x30]
	movs r1, #0x00
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0815F270
	ldr r0, [r5, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x00]
	strh r1, [r0, #0x06]
_0815F270:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_0815F278: .4byte 0x08CDCD10
	thumb_func_start sub_815F27C
sub_815F27C:
	push {lr}
	ldr r2, _0815F28C @ =0x08CDCD50
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F28C: .4byte 0x08CDCD50
	thumb_func_start sub_815F290
sub_815F290:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815F2C0 @ =0x08CDCD50
	str r0, [r4, #0x30]
	movs r0, #0x00
	strh r5, [r4, #0x34]
	strh r0, [r4, #0x36]
	strh r0, [r4, #0x38]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_0815F2C0: .4byte 0x08CDCD50
