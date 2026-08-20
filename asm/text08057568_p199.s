	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810CC0C
sub_810CC0C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrh r1, [r0, #0x14]
	movs r0, #0x19
	subs r0, r0, r1
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	ble _0810CC28
	movs r0, #0x00
	str r0, [r2, #0x04]
	b _0810CC3C
_0810CC28:
	ldr r1, _0810CC40 @ =0x0400001A
	ldr r0, _0810CC44 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	subs r0, #0x18
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _0810CC48 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	subs r0, #0x18
	strh r0, [r1, #0x00]
_0810CC3C:
	pop {r0}
	bx r0
_0810CC40: .4byte 0x0400001A
_0810CC44: .4byte 0x0200001A
_0810CC48: .4byte 0x0200001E
	thumb_func_start sub_810CC4C
sub_810CC4C:
	push {lr}
	adds r3, r0, #0x0
	ldrh r0, [r3, #0x14]
	subs r2, r0, #0x3
	strh r2, [r3, #0x14]
	lsls r0, r2, #0x10
	cmp r0, #0x00
	bgt _0810CC62
	movs r0, #0x00
	str r0, [r3, #0x04]
	b _0810CC78
_0810CC62:
	ldr r1, _0810CC7C @ =0x0400001A
	ldr r0, _0810CC80 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r2, _0810CC84 @ =0x0400001E
	ldr r0, _0810CC88 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
_0810CC78:
	pop {r0}
	bx r0
_0810CC7C: .4byte 0x0400001A
_0810CC80: .4byte 0x0200001A
_0810CC84: .4byte 0x0400001E
_0810CC88: .4byte 0x0200001E
	.byte 0x06, 0x4A, 0x1A, 0x23, 0x5B, 0x42, 0x19, 0x1C, 0x11, 0x80, 0x04, 0x32, 0x04, 0x49, 0x09, 0x88
	.byte 0x20, 0x39, 0x11, 0x80, 0x00, 0x21, 0x41, 0x60, 0x70, 0x47, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x04
	.byte 0x1E, 0x00, 0x00, 0x02
	thumb_func_start sub_810CCB0
sub_810CCB0:
	push {lr}
	ldr r0, _0810CCC4 @ =0x0810B681
	movs r1, #0x86
	movs r2, #0x00
	bl sub_807D2D0
	movs r1, #0x00
	strh r1, [r0, #0x14]
	pop {r0}
	bx r0
_0810CCC4: .4byte sub_810B680
	thumb_func_start sub_810CCC8
sub_810CCC8:
	push {r4, lr}
	ldr r0, _0810CCEC @ =0x0810D625
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807D2D0
	adds r4, r0, #0x0
	movs r0, #0x00
	strh r0, [r4, #0x14]
	ldr r0, _0810CCF0 @ =0x0810D5F5
	movs r1, #0x18
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	pop {r4}
	pop {r0}
	bx r0
_0810CCEC: .4byte sub_810D624
_0810CCF0: .4byte sub_810D5F4
	thumb_func_start sub_810CCF4
sub_810CCF4:
	push {r4, r5, lr}
	ldr r5, _0810CD2C @ =0x03000FD8
	ldr r3, [r5, #0x00]
	movs r0, #0xA3
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0810CD26
	movs r0, #0x00
	str r0, [r2, #0x00]
	str r0, [r1, #0x04]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	bl sub_8085260
_0810CD26:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CD2C: .4byte 0x03000FD8
	thumb_func_start sub_810CD30
sub_810CD30:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0810CD8C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r6, [r0, #0x00]
	movs r3, #0x16
	ldsh r1, [r4, r3]
	cmp r1, #0x05
	ble _0810CD4C
	movs r1, #0x05
_0810CD4C:
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r5, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r3, r0, #0x0
	adds r3, #0x08
	cmp r3, #0x00
	bge _0810CD62
	adds r3, #0x07
_0810CD62:
	asrs r3, r3, #0x03
	ldr r2, _0810CD90 @ =0x08201137
	ldr r0, [r4, #0x0C]
	movs r1, #0x0F
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	muls r0, r3
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_80850F8
	ldr r0, _0810CD94 @ =0x0810B319
	str r0, [r4, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810CD8C: .4byte 0x03000FD8
_0810CD90: .4byte 0x08201137
_0810CD94: .4byte sub_810B318
	.byte 0xC2, 0x68, 0x00, 0x21, 0x51, 0x60, 0x41, 0x60, 0x03, 0x48, 0x00, 0x68, 0xA4, 0x22, 0x92, 0x00
	.byte 0x80, 0x18, 0x01, 0x60, 0x70, 0x47, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03
	thumb_func_start sub_810CDB4
sub_810CDB4:
	push {r4, r5, lr}
	ldr r5, _0810CDF4 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810CDEE
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	bl sub_8085260
	ldr r0, [r5, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, _0810CDF8 @ =0x0810CD99
	str r0, [r1, #0x04]
_0810CDEE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CDF4: .4byte 0x03000FD8
_0810CDF8: .4byte 0x0810CD99
	thumb_func_start sub_810CDFC
sub_810CDFC:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _0810CE18 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r2, #0x12
	ldsh r0, [r1, r2]
	cmp r0, #0x3F
	bgt _0810CE1C
	movs r0, #0x08
	b _0810CE28
_0810CE18: .4byte 0x03000FD8
_0810CE1C:
	movs r4, #0x12
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	bge _0810CE26
	adds r0, #0xFF
_0810CE26:
	asrs r0, r0, #0x08
_0810CE28:
	ldr r2, _0810CE70 @ =0x04000018
	subs r1, r0, #0x7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r4, #0x16
	ldsh r0, [r3, r4]
	subs r0, #0x06
	lsls r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	ldr r1, _0810CE74 @ =0x04000048
	ldr r0, _0810CE78 @ =0x3F3B3F3F
	str r0, [r1, #0x00]
	subs r1, #0x08
	ldr r0, _0810CE7C @ =0x7FF07FF0
	str r0, [r1, #0x00]
	ldr r4, _0810CE80 @ =0x04000044
	ldr r3, _0810CE84 @ =0x0200001A
	ldrh r2, [r3, #0x00]
	adds r2, #0x99
	ldrh r0, [r3, #0x00]
	adds r0, #0x8E
	lsls r0, r0, #0x08
	orrs r2, r0
	ldrh r1, [r3, #0x00]
	adds r1, #0x99
	ldrh r0, [r3, #0x00]
	adds r0, #0x8E
	lsls r0, r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0810CE70: .4byte 0x04000018
_0810CE74: .4byte 0x04000048
_0810CE78: .4byte 0x3F3B3F3F
_0810CE7C: .4byte 0x7FF07FF0
_0810CE80: .4byte 0x04000044
_0810CE84: .4byte 0x0200001A
	thumb_func_start sub_810CE88
sub_810CE88:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x0C]
	ldrh r0, [r2, #0x16]
	subs r0, #0x03
	strh r0, [r2, #0x16]
	ldr r3, _0810CEB8 @ =0x0200001A
	ldrh r0, [r3, #0x00]
	subs r0, #0x0F
	movs r5, #0x16
	ldsh r1, [r2, r5]
	cmp r0, r1
	ble _0810CEB2
	ldrh r0, [r3, #0x00]
	subs r0, #0x0F
	strh r0, [r2, #0x16]
	adds r0, r4, #0x0
	bl sub_810AA24
	ldr r0, _0810CEBC @ =0x0810D695
	str r0, [r4, #0x04]
_0810CEB2:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810CEB8: .4byte 0x0200001A
_0810CEBC: .4byte sub_810D694
	thumb_func_start sub_810CEC0
sub_810CEC0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0810CEDC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0810CEE0
	adds r0, r2, #0x0
	bl sub_810CE88
	b _0810CEFE
	.byte 0x00, 0x00
_0810CEDC: .4byte 0x03000FD8
_0810CEE0:
	ldrh r1, [r2, #0x16]
	movs r3, #0x16
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	ble _0810CEF0
	subs r0, r1, #0x1
	strh r0, [r2, #0x16]
	b _0810CEFE
_0810CEF0:
	movs r1, #0x18
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bne _0810CEFE
	ldrh r0, [r2, #0x12]
	adds r0, #0x40
	strh r0, [r2, #0x12]
_0810CEFE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_810CF04
sub_810CF04:
	push {r4, lr}
	ldr r4, _0810CF64 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810CF5C
	ldr r0, _0810CF68 @ =0x0810CEC1
	movs r1, #0x00
	bl sub_807FF48
	ldr r2, [r4, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	str r0, [r1, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810CF6C @ =0x0810CDFD
	ldr r2, _0810CF70 @ =0x0810AB35
	movs r1, #0x86
	bl sub_807D2D0
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x0C]
	ldr r1, _0810CF74 @ =0x0200001A
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x16]
	ldr r1, _0810CF78 @ =0x02000048
	ldr r3, _0810CF7C @ =0x00003F3F
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0810CF80 @ =0x00003F3B
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_0810CF5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810CF64: .4byte 0x03000FD8
_0810CF68: .4byte sub_810CEC0
_0810CF6C: .4byte sub_810CDFC
_0810CF70: .4byte sub_810AB34
_0810CF74: .4byte 0x0200001A
_0810CF78: .4byte 0x02000048
_0810CF7C: .4byte 0x00003F3F
_0810CF80: .4byte 0x00003F3B
	thumb_func_start sub_810CF84
sub_810CF84:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r4, _0810D008 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r5, #0x94
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0E
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8084578
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x01
	bl sub_80847B0
	movs r0, #0x03
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_8083F20
	ldr r1, [r4, #0x00]
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	movs r2, #0x60
	subs r2, r2, r0
	str r6, [sp, #0x000]
	movs r0, #0x91
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	movs r1, #0x00
	movs r3, #0x06
	bl sub_808520C
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810D008: .4byte 0x03000FD8
	thumb_func_start sub_810D00C
sub_810D00C:
	push {r4, r5, lr}
	ldr r5, _0810D034 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	bl sub_8085260
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_8085260
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D034: .4byte 0x03000FD8
	thumb_func_start sub_810D038
sub_810D038:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	bl sub_810D00C
	ldr r5, _0810D094 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x12
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x0D
	bl sub_8084578
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80847B0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	str r6, [sp, #0x000]
	movs r1, #0x91
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x07
	movs r3, #0x06
	bl sub_808520C
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D094: .4byte 0x03000FD8
	thumb_func_start sub_810D098
sub_810D098:
	push {lr}
	add sp, #-0x004
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0x0
	ldr r0, _0810D0D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x13
	bls _0810D0E0
	ldr r0, _0810D0D4 @ =0x03000FDC
	lsls r1, r1, #0x09
	ldr r2, _0810D0D8 @ =0x00004E70
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810D0DC @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	b _0810D10A
_0810D0D0: .4byte 0x03000FD8
_0810D0D4: .4byte 0x03000FDC
_0810D0D8: .4byte 0x00004E70
_0810D0DC: .4byte 0x060113A0
_0810D0E0:
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x11
	bhi _0810D10A
	ldr r0, _0810D110 @ =0x03000FDC
	lsls r1, r2, #0x04
	adds r1, #0x08
	lsls r1, r1, #0x05
	ldr r3, _0810D114 @ =0x00004E70
	adds r1, r1, r3
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810D118 @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0810D10A:
	add sp, #0x004
	pop {r0}
	bx r0
_0810D110: .4byte 0x03000FDC
_0810D114: .4byte 0x00004E70
_0810D118: .4byte 0x060113A0
	thumb_func_start sub_810D11C
sub_810D11C:
	push {r4, lr}
	add sp, #-0x008
	ldr r0, _0810D15C @ =0x084FB588
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x02
	ldr r2, _0810D160 @ =0x089F808C
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r0, _0810D164 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	ldr r0, _0810D168 @ =0x00004E70
	adds r2, r2, r0
	movs r3, #0x01
	negs r3, r3
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x00
	bl sub_80827F0
	ldr r0, _0810D16C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strb r4, [r0, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D15C: .4byte 0x084FB588
_0810D160: .4byte 0x089F808C
_0810D164: .4byte 0x03000FDC
_0810D168: .4byte 0x00004E70
_0810D16C: .4byte 0x03000FD8
	thumb_func_start sub_810D170
sub_810D170:
	push {r4, r5, lr}
	ldr r5, _0810D1A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810D19A
	adds r0, r1, #0x0
	adds r0, #0x80
	movs r4, #0x00
	str r4, [r0, #0x00]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_0810D19A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810D1A0: .4byte 0x03000FD8
	thumb_func_start sub_810D1A4
sub_810D1A4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810D1CE
	adds r0, r2, #0x0
	bl sub_8085A6C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810D1D2
_0810D1CE:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0810D1D2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_810D1D8
sub_810D1D8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0810D220 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x7C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bge _0810D1EC
	adds r0, #0xFF
_0810D1EC:
	asrs r0, r0, #0x08
	subs r3, r0, #0x4
	ldr r1, [r2, #0x44]
	cmp r1, #0x00
	bge _0810D1F8
	adds r1, #0xFF
_0810D1F8:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810D206
	adds r0, #0xFF
_0810D206:
	asrs r2, r0, #0x08
	adds r2, #0x18
	ldr r0, _0810D224 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r4, #0x0
	bl sub_810A648
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D220: .4byte 0x03000FD8
_0810D224: .4byte 0x00007001
	thumb_func_start sub_810D228
sub_810D228:
	push {r4, lr}
	ldr r3, _0810D25C @ =0x03000FD8
	ldr r3, [r3, #0x00]
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r3, r3, r4
	ldr r3, [r3, #0x00]
	mov r12, r3
	adds r3, #0x84
	lsls r0, r0, #0x08
	str r0, [r3, #0x00]
	mov r3, r12
	str r0, [r3, #0x10]
	mov r0, r12
	adds r0, #0x88
	lsls r1, r1, #0x08
	str r1, [r0, #0x00]
	str r1, [r3, #0x14]
	adds r0, #0x04
	lsls r2, r2, #0x08
	str r2, [r0, #0x00]
	str r2, [r3, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D25C: .4byte 0x03000FD8
