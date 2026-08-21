	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8153CD0
sub_8153CD0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _08153D26
	cmp r0, #0x04
	bgt _08153CF0
	cmp r0, #0x03
	beq _08153CFA
	b _08153D84
_08153CF0:
	cmp r1, #0x06
	beq _08153D40
	cmp r1, #0x12
	beq _08153D2E
	b _08153D84
_08153CFA:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r0, r4, #0x0
	bl sub_815FA3C
	adds r0, #0x20
	movs r1, #0x08
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _08153F52
_08153D26:
	adds r0, r4, #0x0
	bl sub_815FAFC
	b _08153F52
_08153D2E:
	ldr r0, _08153D3C @ =0x0000FE70
	strh r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x04
	strb r0, [r1, #0x00]
	b _08153F52
_08153D3C: .4byte 0x0000FE70
_08153D40:
	adds r5, r4, #0x0
	adds r5, #0x24
	ldrb r0, [r5, #0x00]
	cmp r0, #0x03
	bne _08153D4C
	b _08153F52
_08153D4C:
	ldr r0, _08153D78 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r1, _08153D7C @ =0x00001C98
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x14
	ldsh r1, [r2, r0]
	movs r0, #0x5A
	muls r1, r0
	ldr r0, [r2, #0x04]
	adds r0, r0, r1
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	movs r1, #0x5A
	bl __divsi3
	strh r0, [r4, #0x14]
	ldr r0, _08153D80 @ =0x0000FE70
	strh r0, [r4, #0x18]
	movs r0, #0x03
	strb r0, [r5, #0x00]
	b _08153F52
_08153D78: .4byte 0x03001018
_08153D7C: .4byte 0x00001C98
_08153D80: .4byte 0x0000FE70
_08153D84:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x04
	bls _08153D92
	b _08153F52
_08153D92:
	lsls r0, r1, #0x02
	ldr r1, _08153D9C @ =0x08153DA0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08153D9C: .4byte 0x08153DA0
	.byte 0x52, 0x3F, 0x15, 0x08, 0xB4, 0x3D, 0x15, 0x08, 0xF0, 0x3D, 0x15, 0x08, 0x06, 0x3F, 0x15, 0x08
	.byte 0xD0, 0x3E, 0x15, 0x08, 0xA0, 0x8B, 0xA1, 0x8A, 0x40, 0x18, 0xA0, 0x82, 0x11, 0x04, 0x09, 0x14
	.byte 0x22, 0x8C, 0x89, 0x18, 0x20, 0x8B, 0x40, 0x18, 0x20, 0x83, 0x14, 0x20, 0x21, 0x5E, 0x60, 0x68
	.byte 0x40, 0x18, 0x60, 0x60, 0x18, 0x22, 0xA1, 0x5E, 0xA0, 0x68, 0x40, 0x18, 0xA0, 0x60, 0x19, 0x20
	.byte 0x20, 0x56, 0x00, 0x28, 0x00, 0xD0, 0xB4, 0xE0, 0x00, 0x20, 0x38, 0x70, 0x01, 0x20, 0xB1, 0xE0
	.byte 0x20, 0x1C, 0x26, 0x30, 0x05, 0x78, 0x00, 0x2D, 0x34, 0xD1, 0x16, 0x4D, 0x28, 0x68, 0x16, 0x49
	.byte 0x40, 0x18, 0x01, 0x68, 0x20, 0x1C, 0xFD, 0xF7, 0xA7, 0xF9, 0x00, 0x28, 0x00, 0xD1, 0xA0, 0xE0
	.byte 0x01, 0x21, 0x49, 0x42, 0x3B, 0x20, 0xC5, 0xF6, 0xCD, 0xFB, 0x28, 0x68, 0x0F, 0x4A, 0x80, 0x18
	.byte 0x00, 0x68, 0x01, 0x21, 0x04, 0xF0, 0x52, 0xFA, 0x0D, 0x48, 0x20, 0x83, 0x28, 0x68, 0x0A, 0x49
	.byte 0x40, 0x18, 0x01, 0x68, 0x89, 0x8A, 0xA1, 0x82, 0x00, 0x68, 0x40, 0x68, 0x60, 0x60, 0x20, 0x1C
	.byte 0x0B, 0xF0, 0xFC, 0xFD, 0x13, 0x21, 0xC1, 0x81, 0x20, 0x1C, 0x26, 0x21, 0x0B, 0xF0, 0x10, 0xFE
	.byte 0x01, 0x20, 0x7D, 0xE0, 0x18, 0x10, 0x00, 0x03, 0x98, 0x1C, 0x00, 0x00, 0xB0, 0x1C, 0x00, 0x00
	.byte 0x70, 0xFE, 0x00, 0x00, 0x01, 0x2D, 0x74, 0xD1, 0x15, 0x4E, 0x30, 0x68, 0x15, 0x4A, 0x80, 0x18
	.byte 0x01, 0x68, 0x20, 0x1C, 0xFD, 0xF7, 0x70, 0xF9, 0x00, 0x28, 0x6A, 0xD0, 0x01, 0x21, 0x49, 0x42
	.byte 0x3B, 0x20, 0xC5, 0xF6, 0x97, 0xFB, 0x30, 0x68, 0x0F, 0x49, 0x40, 0x18, 0x00, 0x68, 0x01, 0x21
	.byte 0x04, 0xF0, 0x1C, 0xFA, 0x0D, 0x48, 0x20, 0x83, 0x30, 0x68, 0x0A, 0x4A, 0x80, 0x18, 0x01, 0x68
	.byte 0x89, 0x8A, 0xA1, 0x82, 0x00, 0x68, 0x40, 0x68, 0x60, 0x60, 0x20, 0x1C, 0x0B, 0xF0, 0xC6, 0xFD
	.byte 0x1D, 0x21, 0xC1, 0x81, 0x20, 0x1C, 0x26, 0x21, 0x0B, 0xF0, 0xDA, 0xFD, 0x3D, 0x70, 0x48, 0xE0
	.byte 0x18, 0x10, 0x00, 0x03, 0x9C, 0x1C, 0x00, 0x00, 0xB0, 0x1C, 0x00, 0x00, 0x70, 0xFE, 0x00, 0x00
	.byte 0xA0, 0x8B, 0xA1, 0x8A, 0x40, 0x18, 0xA0, 0x82, 0x11, 0x04, 0x09, 0x14, 0x22, 0x8C, 0x89, 0x18
	.byte 0x20, 0x8B, 0x40, 0x18, 0x20, 0x83, 0x14, 0x20, 0x21, 0x5E, 0x60, 0x68, 0x40, 0x18, 0x60, 0x60
	.byte 0x18, 0x22, 0xA1, 0x5E, 0xA0, 0x68, 0x40, 0x18, 0xA0, 0x60, 0x80, 0x21, 0x49, 0x02, 0x88, 0x42
	.byte 0x27, 0xDD, 0x01, 0x20, 0x26, 0xE0, 0xA0, 0x8B, 0xA1, 0x8A, 0x40, 0x18, 0xA0, 0x82, 0x11, 0x04
	.byte 0x09, 0x14, 0x22, 0x8C, 0x89, 0x18, 0x20, 0x8B, 0x40, 0x18, 0x20, 0x83, 0x14, 0x21, 0x60, 0x5E
	.byte 0x61, 0x68, 0x09, 0x18, 0x61, 0x60, 0x18, 0x20, 0x22, 0x5E, 0xA0, 0x68, 0x80, 0x18, 0xA0, 0x60
	.byte 0x28, 0x1C, 0x0C, 0xF0, 0x8F, 0xFC, 0x00, 0x04, 0x00, 0x12, 0xA1, 0x68, 0x81, 0x42, 0x08, 0xDD
	.byte 0x61, 0x68, 0x28, 0x1C, 0x0C, 0xF0, 0x86, 0xFC, 0x00, 0x04, 0x00, 0x12, 0xA0, 0x60, 0x02, 0x20
	.byte 0x38, 0x70
_08153F52:
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8153F5C
sub_8153F5C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08154028 @ =0x08CDC9B0
	str r0, [r6, #0x30]
	movs r1, #0x00
	movs r5, #0x00
	strh r4, [r6, #0x3C]
	str r5, [r6, #0x34]
	adds r0, r6, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, #0x1C
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	str r5, [r6, #0x38]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xFF
	bl sub_81DD77C
	strh r0, [r6, #0x3E]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r1, _0815402C @ =0x00005008
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x38]
	str r5, [sp, #0x000]
	movs r1, #0x27
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r6, #0x38]
	adds r0, r6, #0x0
	adds r0, #0x2C
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x0E]
	ldr r4, [r6, #0x38]
	adds r5, r6, #0x0
	adds r5, #0x2D
	ldrb r0, [r5, #0x00]
	movs r2, #0x03
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r3, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r6, #0x38]
	ldrb r0, [r5, #0x00]
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r3, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r3, [r6, #0x38]
	ldrb r0, [r5, #0x00]
	ands r2, r0
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x1F]
	ldr r3, [r6, #0x38]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08154028: .4byte 0x08CDC9B0
_0815402C: .4byte 0x00005008
	thumb_func_start sub_8154030
sub_8154030:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	mov r9, r1
	mov r10, r3
	ldr r0, [sp, #0x024]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x03
	beq _08154064
	cmp r0, #0x03
	bgt _0815405E
	cmp r0, #0x01
	blt _08154084
	b _081542C8
_0815405E:
	cmp r1, #0x04
	beq _0815407C
	b _08154084
_08154064:
	ldr r1, [r7, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r7, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _081542C8
_0815407C:
	adds r0, r7, #0x0
	bl sub_815FAFC
	b _081542C8
_08154084:
	adds r4, r7, #0x0
	adds r4, #0x24
	ldrb r0, [r4, #0x00]
	cmp r0, #0x04
	beq _081540D6
	cmp r0, #0x04
	bgt _08154098
	cmp r0, #0x02
	beq _0815418A
	b _081542C8
_08154098:
	cmp r0, #0x05
	beq _081540A2
	cmp r0, #0x06
	beq _081540F6
	b _081542C8
_081540A2:
	ldr r1, [r7, #0x38]
	ldrb r2, [r1, #0x12]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _081540C8
	ldr r0, [r7, #0x00]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x38]
	ldr r0, [r7, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r2, [r7, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _081542C8
_081540C8:
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r1, #0x12]
	movs r0, #0x00
	strb r0, [r4, #0x00]
	movs r0, #0x01
	b _081542CA
_081540D6:
	movs r3, #0x18
	ldsh r1, [r7, r3]
	ldr r0, [r7, #0x08]
	adds r0, r0, r1
	str r0, [r7, #0x08]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r7, #0x20]
	adds r0, r0, r2
	ldrh r1, [r7, #0x18]
	adds r1, r1, r0
	movs r0, #0x00
	strh r1, [r7, #0x18]
	strh r0, [r7, #0x20]
	b _081542C8
_081540F6:
	ldr r0, _08154120 @ =0x03001018
	ldr r2, [r0, #0x00]
	ldr r3, _08154124 @ =0x00001CB4
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r7, #0x4
	subs r3, #0x1C
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_8150E60
	cmp r0, #0x00
	bne _08154128
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_815FA70
	movs r0, #0x02
	strb r0, [r4, #0x00]
	b _081542C8
_08154120: .4byte 0x03001018
_08154124: .4byte 0x00001CB4
_08154128:
	adds r1, r7, #0x0
	adds r1, #0x40
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1D
	bls _0815416E
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x04]
	subs r0, #0x04
	strh r0, [r1, #0x04]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x06]
	subs r0, #0x04
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x00]
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x20
	bgt _0815416E
	ldr r1, [r7, #0x38]
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x38]
	ldr r0, [r7, #0x00]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x38]
	bl sprite_show_8020CBC
	movs r0, #0x05
	strb r0, [r4, #0x00]
	b _081542C8
_0815416E:
	adds r2, r7, #0x0
	adds r2, #0x41
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	subs r0, r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	subs r1, #0x02
	lsls r1, r1, #0x08
	ldr r0, [r7, #0x04]
	adds r0, r0, r1
	str r0, [r7, #0x04]
	b _081542C8
_0815418A:
	ldr r5, _081541BC @ =0x03001018
	ldr r2, [r5, #0x00]
	ldr r3, _081541C0 @ =0x00001CB4
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r1, r7, #0x4
	ldr r6, _081541C4 @ =0x00001C98
	adds r2, r2, r6
	ldr r2, [r2, #0x00]
	adds r2, #0x04
	bl sub_8150E60
	cmp r0, #0x00
	beq _081541C8
	adds r0, r7, #0x0
	adds r0, #0x40
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x07
	bl sub_815FA70
	movs r0, #0x06
	strb r0, [r4, #0x00]
	b _081542C8
_081541BC: .4byte 0x03001018
_081541C0: .4byte 0x00001CB4
_081541C4: .4byte 0x00001C98
_081541C8:
	ldr r0, [r5, #0x00]
	ldr r1, _08154290 @ =0x00001C98
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8151158
	cmp r0, #0x00
	beq _081541FC
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x30]
	movs r2, #0x10
	ldsh r1, [r3, r2]
	adds r0, r0, r1
	mov r1, r8
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #0x05
	str r1, [sp, #0x000]
	ldr r4, [r3, #0x14]
	mov r1, r9
	mov r3, r10
	bl _call_via_r4
_081541FC:
	ldr r2, [r7, #0x00]
	ldrh r1, [r2, #0x04]
	movs r3, #0x04
	ldsh r0, [r2, r3]
	cmp r0, #0xFF
	ble _0815429C
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x04]
	ldr r0, [r7, #0x00]
	strh r1, [r0, #0x06]
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	ldr r5, [r1, #0x04]
	ldr r0, [r7, #0x04]
	subs r5, r5, r0
	ldr r0, [r7, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	ldr r4, [r1, #0x08]
	subs r4, r4, r0
	ldr r2, _08154294 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl __divsi3
	adds r4, r0, #0x0
	lsls r5, r5, #0x07
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl __divsi3
	strh r0, [r7, #0x14]
	strh r4, [r7, #0x18]
	movs r3, #0x14
	ldsh r1, [r7, r3]
	ldr r0, [r7, #0x04]
	adds r0, r0, r1
	str r0, [r7, #0x04]
	movs r0, #0x18
	ldsh r1, [r7, r0]
	ldr r0, [r7, #0x08]
	adds r3, r0, r1
	str r3, [r7, #0x08]
	ldr r1, _08154298 @ =0x08198504
	ldrh r2, [r7, #0x3E]
	movs r0, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08154282
	adds r0, #0x3F
_08154282:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	adds r0, r3, r0
	str r0, [r7, #0x08]
	adds r0, r2, #0x2
	strh r0, [r7, #0x3E]
	b _081542A8
_08154290: .4byte 0x00001C98
_08154294: .4byte 0x03001038
_08154298: .4byte 0x08198504
_0815429C:
	adds r0, r1, #0x4
	strh r0, [r2, #0x04]
	ldr r1, [r7, #0x00]
	ldrh r0, [r1, #0x06]
	adds r0, #0x04
	strh r0, [r1, #0x06]
_081542A8:
	movs r2, #0x14
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	ble _081542BC
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
	b _081542C8
_081542BC:
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_081542C8:
	movs r0, #0x00
_081542CA:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_81542DC
sub_81542DC:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08154314 @ =0x08CDC730
	str r0, [r5, #0x30]
	movs r6, #0x00
	strh r4, [r5, #0x38]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	str r6, [r5, #0x34]
	ldr r0, _08154318 @ =0x03001010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x1B
	cmp r0, #0x05
	ble _0815431C
	adds r0, r5, #0x0
	movs r1, #0x3B
	bl sub_815FA70
	b _08154414
	.byte 0x00, 0x00
_08154314: .4byte 0x08CDC730
_08154318: .4byte 0x03001010
_0815431C:
	ldr r1, _08154358 @ =0x00005008
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	str r2, [r5, #0x34]
	ldr r0, _0815435C @ =0x03001018
	ldr r0, [r0, #0x00]
	movs r1, #0xF9
	lsls r1, r1, #0x05
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	subs r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x04
	bhi _08154372
	cmp r1, #0x05
	bne _08154360
	str r6, [sp, #0x000]
	adds r0, r2, #0x0
	movs r1, #0x0A
	b _08154368
_08154358: .4byte 0x00005008
_0815435C: .4byte 0x03001018
_08154360:
	ldrb r1, [r3, #0x00]
	adds r1, #0x2F
	str r6, [sp, #0x000]
	adds r0, r2, #0x0
_08154368:
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	b _08154380
_08154372:
	str r6, [sp, #0x000]
	adds r0, r2, #0x0
	movs r1, #0x30
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
_08154380:
	ldr r0, [r5, #0x34]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r1, [r5, #0x34]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r1, [r5, #0x34]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x34]
	movs r0, #0x13
	strh r0, [r1, #0x0E]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08154414:
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8154420
sub_8154420:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	ldr r0, [sp, #0x01C]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x04
	beq _08154470
	cmp r0, #0x04
	bgt _08154442
	cmp r0, #0x03
	beq _08154448
	b _0815448C
_08154442:
	cmp r1, #0x0C
	beq _08154478
	b _0815448C
_08154448:
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r2, [r5, #0x34]
	cmp r2, #0x00
	beq _08154466
	ldrb r1, [r2, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08154466:
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08154584
_08154470:
	adds r0, r5, #0x0
	bl sub_815FAFC
	b _08154584
_08154478:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAC
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x03
	strb r0, [r1, #0x00]
	b _08154584
_0815448C:
	adds r7, r5, #0x0
	adds r7, #0x24
	ldrb r0, [r7, #0x00]
	cmp r0, #0x01
	beq _081544A4
	cmp r0, #0x01
	ble _08154584
	cmp r0, #0x02
	beq _0815452C
	cmp r0, #0x03
	beq _08154558
	b _08154584
_081544A4:
	movs r0, #0x00
	strh r0, [r5, #0x38]
	ldr r6, _08154520 @ =0x03001018
	ldr r0, [r6, #0x00]
	ldr r1, _08154524 @ =0x00001C98
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x04]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	ble _081544D8
	ldr r2, [r3, #0x30]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r0, r3, r0
	movs r1, #0x0D
	str r1, [sp, #0x000]
	ldr r4, [r2, #0x14]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl _call_via_r4
	ldrh r0, [r5, #0x38]
	adds r0, #0x01
	strh r0, [r5, #0x38]
_081544D8:
	ldr r0, [r6, #0x00]
	ldr r2, _08154528 @ =0x00001C9C
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x04]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	ble _08154506
	ldr r2, [r3, #0x30]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	adds r0, r3, r0
	movs r1, #0x0D
	str r1, [sp, #0x000]
	ldr r4, [r2, #0x14]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl _call_via_r4
	ldrh r0, [r5, #0x38]
	adds r0, #0x01
	strh r0, [r5, #0x38]
_08154506:
	ldrh r0, [r5, #0x38]
	cmp r0, #0x01
	bls _08154510
	movs r0, #0x02
	strb r0, [r7, #0x00]
_08154510:
	ldr r1, [r5, #0x04]
	mov r0, r8
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r5, #0x08]
	b _08154584
_08154520: .4byte 0x03001018
_08154524: .4byte 0x00001C98
_08154528: .4byte 0x00001C9C
_0815452C:
	ldr r0, _08154550 @ =0x03001018
	ldr r1, [r0, #0x00]
	ldr r2, _08154554 @ =0x00001C98
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _08154584
	adds r2, #0x04
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _08154584
	movs r0, #0x01
	b _08154586
_08154550: .4byte 0x03001018
_08154554: .4byte 0x00001C98
_08154558:
	ldr r0, [r5, #0x34]
	cmp r0, #0x00
	beq _08154568
	adds r0, r5, #0x0
	movs r1, #0x2F
	bl sub_815FA70
	b _08154570
_08154568:
	adds r0, r5, #0x0
	movs r1, #0x3C
	bl sub_815FA70
_08154570:
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x12]
	movs r1, #0x07
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x12]
_08154584:
	movs r0, #0x00
_08154586:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8154594
sub_8154594:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08154684 @ =0x08CDC6B0
	str r0, [r5, #0x30]
	movs r0, #0x00
	mov r8, r0
	strh r4, [r5, #0x38]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r6, #0x0D
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r1, _08154688 @ =0x0000500A
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x34]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x02
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x34]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x34]
	movs r0, #0x78
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x34]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x34]
	movs r0, #0x13
	strh r0, [r1, #0x0E]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r2, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r1
	ldrb r1, [r2, #0x1F]
	ands r6, r1
	orrs r6, r0
	strb r6, [r2, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08154684: .4byte 0x08CDC6B0
_08154688: .4byte 0x0000500A
	thumb_func_start sub_815468C
sub_815468C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x010]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _081546B6
	cmp r0, #0x04
	beq _081546CE
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x01
	beq _081546EE
	cmp r1, #0x01
	bgt _081546B4
	b _08154898
_081546B4:
	b _081546E8
_081546B6:
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
	b _08154898
_081546CE:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	ldr r2, [r4, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _08154898
_081546E8:
	cmp r1, #0x02
	beq _0815478C
	b _08154898
_081546EE:
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r1, _08154734 @ =0x08198584
	ldrh r5, [r4, #0x1C]
	ldrb r0, [r4, #0x1C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815470C
	adds r0, #0x3F
_0815470C:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	strh r0, [r4, #0x14]
	adds r1, r5, #0x1
	movs r2, #0xFF
	ands r1, r2
	strh r1, [r4, #0x1C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08154738
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	b _08154746
_08154734: .4byte 0x08198584
_08154738:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
_08154746:
	strb r1, [r0, #0x11]
	ldr r0, _0815477C @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r2, _08154780 @ =0x00001C98
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	ldr r1, _08154784 @ =0xFFFFD800
	cmp r0, r1
	bgt _08154760
	b _08154898
_08154760:
	adds r0, r4, #0x0
	movs r1, #0x35
	bl sub_815FA70
	movs r0, #0x00
	strh r0, [r4, #0x1C]
	strh r0, [r4, #0x20]
	ldr r1, _08154788 @ =0x0000FCE0
	strh r1, [r4, #0x18]
	strh r0, [r4, #0x14]
	movs r0, #0x02
	strb r0, [r6, #0x00]
	b _08154898
	.byte 0x00, 0x00
_0815477C: .4byte 0x03001018
_08154780: .4byte 0x00001C98
_08154784: .4byte 0xFFFFD800
_08154788: .4byte 0x0000FCE0
_0815478C:
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	ldrh r1, [r4, #0x18]
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r0, #0x14
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r2
	str r0, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	ble _0815480C
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x0D
	negs r1, r1
	ands r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x3F
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x1F]
	b _0815485E
_0815480C:
	asrs r1, r0, #0x08
	ldr r0, _08154848 @ =0x03001014
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	bge _0815485E
	ldrh r0, [r4, #0x38]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0815484C
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r4, #0x38]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r4, #0x38]
	b _0815485E
_08154848: .4byte 0x03001014
_0815484C:
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0815485E
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
_0815485E:
	ldr r0, _08154880 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r1, _08154884 @ =0x00001C98
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	ble _08154888
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	b _08154896
_08154880: .4byte 0x03001018
_08154884: .4byte 0x00001C98
_08154888:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
_08154896:
	strb r1, [r0, #0x11]
_08154898:
	movs r0, #0x00
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_81548A0
sub_81548A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0x0
	cmp r0, #0x04
	beq _081548E4
	cmp r0, #0x04
	bgt _081548BE
	cmp r0, #0x03
	beq _081548C4
	b _081548FC
_081548BE:
	cmp r3, #0x05
	beq _08154942
	b _081548FC
_081548C4:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r0, _081548E0 @ =0x0000FE0C
	strh r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08154942
_081548E0: .4byte 0x0000FE0C
_081548E4:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _08154942
_081548FC:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08154942
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
	movs r2, #0x14
	ldsh r1, [r4, r2]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r0, #0x18
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r1, [r4, #0x3C]
	cmp r0, r1
	ble _08154942
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, _0815494C @ =0x0000FE0C
	strh r0, [r4, #0x18]
_08154942:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815494C: .4byte 0x0000FE0C
