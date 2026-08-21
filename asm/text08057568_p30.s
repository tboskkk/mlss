	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_815ECE8
sub_815ECE8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _0815ED4A
	cmp r0, #0x04
	beq _0815ED5A
	ldrh r0, [r4, #0x1C]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r1, #0x14
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	adds r0, r5, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, r0
	ble _0815ED68
	ldr r1, [r4, #0x04]
	adds r0, r5, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _0815ED68
_0815ED4A:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _0815ED68
_0815ED5A:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
_0815ED68:
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_815ED70
sub_815ED70:
	push {lr}
	ldr r2, _0815ED80 @ =0x08CDCB10
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815ED80: .4byte 0x08CDCB10
	thumb_func_start sub_815ED84
sub_815ED84:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815EDA8 @ =0x08CDCB10
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EDA8: .4byte 0x08CDCB10
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_815EDB0
sub_815EDB0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _0815EDC4
	cmp r0, #0x04
	beq _0815EDD4
	b _0815EDEA
_0815EDC4:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _0815EDEA
_0815EDD4:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0815EDEA:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_815EDF4
sub_815EDF4:
	push {lr}
	ldr r2, _0815EE04 @ =0x08CDCB90
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EE04: .4byte 0x08CDCB90
	thumb_func_start sub_815EE08
sub_815EE08:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815EE2C @ =0x08CDCB90
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EE2C: .4byte 0x08CDCB90
	thumb_func_start sub_815EE30
sub_815EE30:
	push {lr}
	ldr r2, _0815EE40 @ =0x08CDCB50
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EE40: .4byte 0x08CDCB50
	thumb_func_start sub_815EE44
sub_815EE44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815EE70 @ =0x08CDCB50
	str r0, [r4, #0x30]
	strh r5, [r4, #0x34]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EE70: .4byte 0x08CDCB50
	thumb_func_start sub_815EE74
sub_815EE74:
	push {lr}
	ldr r2, _0815EE84 @ =0x08CDCBD0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EE84: .4byte 0x08CDCBD0
	thumb_func_start sub_815EE88
sub_815EE88:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815EEAC @ =0x08CDCBD0
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EEAC: .4byte 0x08CDCBD0
	thumb_func_start sub_815EEB0
sub_815EEB0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _0815EEEA
	cmp r0, #0x04
	bgt _0815EECC
	cmp r0, #0x03
	beq _0815EED2
	b _0815EEFC
_0815EECC:
	cmp r1, #0x0C
	beq _0815EEF2
	b _0815EEFC
_0815EED2:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _0815EF3C
_0815EEEA:
	adds r0, r4, #0x0
	bl sub_815FAFC
	b _0815EF3C
_0815EEF2:
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _0815EF3C
_0815EEFC:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0815EF10
	cmp r0, #0x01
	ble _0815EF3C
	cmp r0, #0x02
	beq _0815EF20
	b _0815EF3C
_0815EF10:
	ldr r1, [r4, #0x04]
	adds r0, r2, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x08]
	b _0815EF3C
_0815EF20:
	adds r0, r4, #0x0
	movs r1, #0x3C
	bl sub_815FA70
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x12]
	movs r1, #0x07
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x12]
_0815EF3C:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_815EF44
sub_815EF44:
	push {lr}
	ldr r2, _0815EF54 @ =0x08CDCC10
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EF54: .4byte 0x08CDCC10
	thumb_func_start sub_815EF58
sub_815EF58:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815EF7C @ =0x08CDCC10
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EF7C: .4byte 0x08CDCC10
	thumb_func_start sub_815EF80
sub_815EF80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_815FAA4
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815EFA6
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x34]
	ldr r1, [r5, #0x04]
	ldr r0, [r4, #0x08]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
_0815EFA6:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_815EFAC
sub_815EFAC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815EFD4 @ =0x08CDCC50
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _0815EFC4
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x34]
_0815EFC4:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EFD4: .4byte 0x08CDCC50
