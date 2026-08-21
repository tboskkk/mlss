	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8132E68
sub_8132E68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08132E9C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA0
	bl play_sfx_80195B4
	ldr r0, _08132EA4 @ =0x08132EE1
	str r0, [r4, #0x4C]
_08132E9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132EA4: .4byte sub_8132EE0
	thumb_func_start sub_8132EA8
sub_8132EA8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08132ED6
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
	ldr r0, _08132EDC @ =0x08132819
	str r0, [r4, #0x4C]
_08132ED6:
	pop {r4}
	pop {r0}
	bx r0
_08132EDC: .4byte sub_8132818
	thumb_func_start sub_8132EE0
sub_8132EE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08132F04
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08132F0C @ =0x08132679
	str r0, [r4, #0x4C]
_08132F04:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132F0C: .4byte sub_8132678
	thumb_func_start sub_8132F10
sub_8132F10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08132F92
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08132F4E
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x20
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x20
	ble _08132F92
	movs r0, #0x20
	strb r0, [r1, #0x00]
	b _08132F92
_08132F4E:
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08132F74 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08132F78
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08132F84
_08132F74: .4byte 0x00000117
_08132F78:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08132F84:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r0, _08132F98 @ =0x08132F9D
	str r0, [r4, #0x4C]
_08132F92:
	pop {r4}
	pop {r0}
	bx r0
_08132F98: .4byte sub_8132F9C
	thumb_func_start sub_8132F9C
sub_8132F9C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08132FB0
	b _081330DE
_08132FB0:
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08132FCA
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08132FD6
_08132FCA:
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08132FD6:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08132FE0
	adds r0, #0xFF
_08132FE0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x20
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08132FEE
	adds r0, #0xFF
_08132FEE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08132FFA
	adds r0, #0xFF
_08132FFA:
	asrs r0, r0, #0x08
	adds r0, #0x14
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _081330E8 @ =0x00004135
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
	ldr r0, _081330EC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _081330F0 @ =0x081331AD
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x38]
	ldr r2, _081330F4 @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	movs r2, #0xA0
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _081330F8 @ =0x08133101
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, _081330FC @ =0x081332E9
	str r0, [r6, #0x4C]
_081330DE:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081330E8: .4byte 0x00004135
_081330EC: .4byte sub_8087540
_081330F0: .4byte sub_81331AC
_081330F4: .4byte 0xFFFFE000
_081330F8: .4byte sub_8133100
_081330FC: .4byte sub_81332E8
	thumb_func_start sub_8133100
sub_8133100:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _08133144
	adds r4, #0xFF
_08133144:
	asrs r0, r4, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _08133150
	adds r0, #0xFF
_08133150:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0813315C
	adds r0, #0xFF
_0813315C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0813319A
	movs r0, #0xF6
	lsls r0, r0, #0x08
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x28]
	ldr r0, [r1, #0x44]
	ldr r2, _081331A4 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r6, #0x14]
	ldr r0, [r1, #0x48]
	movs r7, #0xA8
	lsls r7, r7, #0x06
	adds r0, r0, r7
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	bl sub_807F47C
	ldr r0, _081331A8 @ =0x0813321D
	str r0, [r6, #0x4C]
_0813319A:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081331A4: .4byte 0xFFFFFA00
_081331A8: .4byte sub_813321C
	thumb_func_start sub_81331AC
sub_81331AC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08133214
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133208 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r0, _0813320C @ =0x0813326D
	str r0, [r1, #0x54]
	ldr r0, _08133210 @ =0x08133359
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _08133216
	.byte 0x00, 0x00
_08133208: .4byte 0x0000011F
_0813320C: .4byte sub_813326C
_08133210: .4byte sub_8133358
_08133214:
	adds r0, r2, #0x0
_08133216:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813321C
sub_813321C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	ldr r0, [r2, #0x40]
	ldr r3, _08133264 @ =0xFFFFF600
	adds r0, r0, r3
	cmp r1, r0
	bgt _0813325C
	adds r0, r2, #0x0
	adds r0, #0x08
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x28]
	ldr r0, _08133268 @ =0x081332BD
	str r0, [r1, #0x54]
	adds r0, r4, #0x0
	bl sub_807C298
_0813325C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133264: .4byte 0xFFFFF600
_08133268: .4byte sub_81332BC
	thumb_func_start sub_813326C
sub_813326C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08133298
	movs r1, #0x2C
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08133286
	adds r0, #0x0F
_08133286:
	asrs r0, r0, #0x04
	cmp r0, #0x28
	bne _081332B0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	b _081332B0
_08133298:
	ldr r0, [r4, #0x28]
	ldr r2, _081332B8 @ =0x00000113
	adds r1, r0, r2
	movs r3, #0x00
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	str r3, [r4, #0x4C]
_081332B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081332B8: .4byte 0x00000113
	thumb_func_start sub_81332BC
sub_81332BC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081332DC
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081332E4 @ =0x0808750D
	str r0, [r4, #0x4C]
_081332DC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081332E4: .4byte sub_808750C
	thumb_func_start sub_81332E8
sub_81332E8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08133308
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133310 @ =0x081333D9
	str r0, [r4, #0x4C]
_08133308:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133310: .4byte sub_81333D8
	.byte 0x10, 0xB5, 0x02, 0x1C, 0x90, 0x6A, 0x08, 0x49, 0x40, 0x18, 0x00, 0x23, 0x03, 0x70, 0xD0, 0x6A
	.byte 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x05, 0xD1
	.byte 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x05, 0xE0, 0x13, 0x01, 0x00, 0x00, 0x11, 0x1C, 0x9C, 0x31
	.byte 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xFD, 0x33, 0x13, 0x08
	thumb_func_start sub_8133358
sub_8133358:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	adds r0, #0x20
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08133386
	adds r0, #0xFF
_08133386:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08133392
	adds r0, #0xFF
_08133392:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0813339E
	adds r0, #0xFF
_0813339E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _081333C0
	adds r0, r4, #0x0
	bl sub_807C298
	b _081333D0
_081333C0:
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _081333D0
	adds r0, r4, #0x0
	bl sub_807C298
_081333D0:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81333D8
sub_81333D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _081333F2
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081333F8 @ =0x0808750D
	str r0, [r4, #0x4C]
_081333F2:
	pop {r4}
	pop {r0}
	bx r0
_081333F8: .4byte sub_808750C
	thumb_func_start sub_81333FC
sub_81333FC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08133418
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133420 @ =0x08133425
	str r0, [r4, #0x4C]
_08133418:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133420: .4byte sub_8133424
	thumb_func_start sub_8133424
sub_8133424:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813348A
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x88
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
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
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _08133490 @ =0x08133495
	str r0, [r4, #0x4C]
_0813348A:
	pop {r4}
	pop {r0}
	bx r0
_08133490: .4byte sub_8133494
	thumb_func_start sub_8133494
sub_8133494:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081334E6
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081334BE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081334CA
_081334BE:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081334CA:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _081334EC @ =0x00000117
	subs r1, #0x11
	bl play_sfx_80195B4
	ldr r0, _081334F0 @ =0x08132F11
	str r0, [r4, #0x4C]
_081334E6:
	pop {r4}
	pop {r0}
	bx r0
_081334EC: .4byte 0x00000117
_081334F0: .4byte sub_8132F10
	thumb_func_start sub_81334F4
sub_81334F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0x94
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	ble _0813351A
	b _08133644
_0813351A:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08133522
	adds r1, #0xFF
_08133522:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0813352C
	adds r0, #0xFF
_0813352C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08133538
	adds r3, #0xFF
_08133538:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0813364C @ =0x0000273D
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08133556
	adds r0, #0xFF
_08133556:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08133564
	adds r0, #0xFF
_08133564:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08133572
	adds r0, #0xFF
_08133572:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	str r2, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r2, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0xAC
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r6, #0x0F
_081335E6:
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	subs r6, #0x04
	cmp r6, #0x00
	bge _081335E6
	ldr r0, _08133650 @ =0x081338CD
	str r0, [r4, #0x4C]
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x01
	strh r0, [r7, #0x00]
	ldr r0, _08133654 @ =0x08133AE9
	str r0, [r5, #0x4C]
_08133644:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813364C: .4byte 0x0000273D
_08133650: .4byte sub_81338CC
_08133654: .4byte sub_8133AE8
	thumb_func_start sub_8133658
sub_8133658:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _081336B2
	movs r6, #0x80
	lsls r6, r6, #0x02
	bl sub_80E3C3C
	ldr r5, [r4, #0x30]
	cmp r5, #0x00
	beq _0813375C
_08133674:
	adds r4, r5, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _081336AA
_0813367C:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _08133684
	adds r0, #0xFF
_08133684:
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0813368E
	adds r1, #0xFF
_0813368E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	bge _08133698
	adds r2, #0xFF
_08133698:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	movs r3, #0x01
	bl sub_80E38E8
	adds r6, #0x02
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0813367C
_081336AA:
	ldr r5, [r5, #0x30]
	cmp r5, #0x00
	bne _08133674
	b _0813375C
_081336B2:
	ldr r2, _08133764 @ =0x03001034
	ldr r0, _08133768 @ =0x08198154
	ldr r1, _0813376C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08133770 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08133774 @ =0x00003CD0
	adds r0, r0, r1
	ldr r1, _08133778 @ =0x02000460
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _0813377C @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08133780 @ =0x03000D74
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x28]
	strh r1, [r0, #0x2A]
	ldrh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r3, #0x00
	ldr r5, _08133784 @ =0x00001FFF
	ldr r0, _08133788 @ =0x0000FFFF
	adds r4, r0, #0x0
_081336F0:
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133702
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133702:
	adds r1, r3, #0x1
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133716
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133716:
	adds r1, r3, #0x2
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _0813372A
	orrs r0, r4
	strh r0, [r1, #0x00]
_0813372A:
	adds r1, r3, #0x3
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _0813373E
	orrs r0, r4
	strh r0, [r1, #0x00]
_0813373E:
	adds r1, r3, #0x4
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133752
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133752:
	adds r3, #0x05
	cmp r3, #0x0E
	ble _081336F0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0813375C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08133764: .4byte 0x03001034
_08133768: .4byte 0x08198154
_0813376C: .4byte 0x081980D8
_08133770: .4byte 0x03000FDC
_08133774: .4byte 0x00003CD0
_08133778: .4byte 0x02000460
_0813377C: .4byte 0x0300034C
_08133780: .4byte 0x03000D74
_08133784: .4byte 0x00001FFF
_08133788: .4byte 0x0000FFFF
	thumb_func_start sub_813378C
sub_813378C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bge _081337A8
	b _081338C0
_081337A8:
	movs r6, #0x00
	str r6, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _081338B0
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _081337CE
	adds r0, #0xFF
_081337CE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _081337DC
	adds r0, #0xFF
_081337DC:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _081337EA
	adds r0, #0xFF
_081337EA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r5, #0x0F
_08133860:
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	subs r5, #0x04
	cmp r5, #0x00
	bge _08133860
	ldr r0, _081338AC @ =0x081338CD
	str r0, [r4, #0x4C]
	b _081338C0
_081338AC: .4byte sub_81338CC
_081338B0:
	adds r0, r5, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081338C8 @ =0x0808750D
	str r0, [r5, #0x4C]
_081338C0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081338C8: .4byte sub_808750C
	thumb_func_start sub_81338CC
sub_81338CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x14
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _081338F8
	adds r0, #0xFF
_081338F8:
	asrs r7, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x0C
	adds r5, r4, #0x0
	cmp r7, #0x0A
	bne _0813390E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_0813390E:
	movs r1, #0x84
	adds r1, r1, r6
	mov r10, r1
	movs r2, #0x88
	adds r2, r2, r6
	mov r9, r2
	cmp r4, #0x00
	beq _081339C0
	ldr r1, _081339A0 @ =0x0819832C
	mov r0, r10
	str r0, [sp, #0x004]
	movs r2, #0x00
	mov r8, r2
	ldr r0, _081339A4 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x000]
_0813392E:
	ldr r0, _081339A8 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r0, [sp, #0x000]
	adds r2, r2, r0
	mov r0, r8
	movs r1, #0x14
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _081339AC @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08133954
	adds r0, #0x3F
_08133954:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _081339B0 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08133970
	adds r0, #0x3F
_08133970:
	asrs r0, r0, #0x06
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _081339B4
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _081339C0
_08133992:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08133992
	b _081339C0
_081339A0: .4byte 0x0819832C
_081339A4: .4byte 0x08198220
_081339A8: .4byte 0x03001038
_081339AC: .4byte 0x08198584
_081339B0: .4byte 0x08198504
_081339B4:
	movs r0, #0x60
	add r8, r0
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0813392E
_081339C0:
	ldr r5, [r6, #0x2C]
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081339D0
	adds r0, #0xFF
_081339D0:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _081339E0
	adds r1, #0xFF
_081339E0:
	asrs r3, r1, #0x08
	ldr r2, _08133AB4 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08133A26
	adds r0, #0x10
	cmp r7, r0
	bge _08133A26
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08133A26
	ldr r0, _08133AB8 @ =0x000007FF
	cmp r1, r0
	bgt _08133A26
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08133A26
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	str r0, [r4, #0x00]
_08133A26:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	cmp r0, #0x00
	beq _08133A98
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08133A42
	adds r0, #0xFF
_08133A42:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08133A52
	adds r0, #0xFF
_08133A52:
	asrs r3, r0, #0x08
	ldr r2, _08133AB4 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08133A98
	adds r0, #0x10
	cmp r7, r0
	bge _08133A98
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08133A98
	ldr r0, _08133AB8 @ =0x000007FF
	cmp r1, r0
	bgt _08133A98
	adds r4, r6, #0x0
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08133A98
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	str r0, [r4, #0x00]
_08133A98:
	cmp r7, #0xC7
	ble _08133AA2
	adds r0, r6, #0x0
	bl sub_807C298
_08133AA2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133AB4: .4byte 0x03001038
_08133AB8: .4byte 0x000007FF
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xA0, 0x68, 0x81, 0x7C, 0x08, 0x20, 0x08, 0x40, 0x00, 0x28, 0x07, 0xD0
	.byte 0x20, 0x1C, 0x10, 0x21, 0x00, 0x22, 0x00, 0x23, 0x4F, 0xF7, 0xA2, 0xF9, 0x02, 0x48, 0xE0, 0x64
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x0D, 0x75, 0x08, 0x08
	thumb_func_start sub_8133AE8
sub_8133AE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _08133B2C @ =0x03001034
	ldr r0, _08133B30 @ =0x08198154
	ldr r1, _08133B34 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08133B38 @ =0x02000460
	ldr r1, _08133B3C @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _08133B40 @ =0x00003CD0
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _08133B44 @ =0x03000D74
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x2A]
	strh r0, [r2, #0x28]
	ldr r3, _08133B48 @ =0x0000FFFF
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x2A]
	ldr r0, _08133B4C @ =0x08133659
	adds r1, r4, #0x0
	bl sub_807FF70
	ldr r0, _08133B50 @ =0x0813378D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133B2C: .4byte 0x03001034
_08133B30: .4byte 0x08198154
_08133B34: .4byte 0x081980D8
_08133B38: .4byte 0x02000460
_08133B3C: .4byte 0x03000FDC
_08133B40: .4byte 0x00003CD0
_08133B44: .4byte 0x03000D74
_08133B48: .4byte 0x0000FFFF
_08133B4C: .4byte sub_8133658
_08133B50: .4byte sub_813378C
	thumb_func_start sub_8133B54
sub_8133B54:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08133BB4
	adds r2, r4, #0x0
	adds r2, #0xAC
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bge _08133BA0
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _08133B9C @ =0x08133BC1
	b _08133BB2
	.byte 0x00, 0x00
_08133B9C: .4byte sub_8133BC0
_08133BA0:
	movs r0, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133BBC @ =0x081334F5
_08133BB2:
	str r0, [r4, #0x4C]
_08133BB4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133BBC: .4byte sub_81334F4
	thumb_func_start sub_8133BC0
sub_8133BC0:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x08]
	movs r3, #0xA0
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	movs r4, #0x00
	strh r0, [r1, #0x0C]
	adds r3, r2, #0x0
	adds r3, #0xA8
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	str r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08133C10
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x08]
	strh r4, [r0, #0x0C]
	str r4, [r3, #0x00]
	ldr r0, [r2, #0x18]
	ldr r1, _08133C18 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, _08133C1C @ =0x08133B55
	str r0, [r2, #0x4C]
	adds r0, r2, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08133C10:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133C18: .4byte 0xFFFFF000
_08133C1C: .4byte sub_8133B54
	thumb_func_start sub_8133C20
sub_8133C20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x94
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _08133C72
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x0C
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _08133C78 @ =0x08133BC1
	str r0, [r4, #0x4C]
_08133C72:
	pop {r4}
	pop {r0}
	bx r0
_08133C78: .4byte sub_8133BC0
	thumb_func_start sub_8133C7C
sub_8133C7C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08133CE0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08133C96
	adds r1, #0xFF
_08133C96:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08133CA0
	adds r0, #0xFF
_08133CA0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08133CAC
	adds r3, #0xFF
_08133CAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08133CE8 @ =0x00002734
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x80
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x69
	bl play_sfx_80195B4
	ldr r0, _08133CEC @ =0x08133C21
	str r0, [r4, #0x4C]
_08133CE0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08133CE8: .4byte 0x00002734
_08133CEC: .4byte sub_8133C20
	thumb_func_start sub_8133CF0
sub_8133CF0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08133D0C
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133D14 @ =0x08133C7D
	str r0, [r4, #0x4C]
_08133D0C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133D14: .4byte sub_8133C7C
	thumb_func_start sub_8133D18
sub_8133D18:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r3, r0, #0x0
	cmp r3, #0x00
	bne _08133D74
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD4
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
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
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133D7C @ =0x08133CF1
	str r0, [r4, #0x4C]
_08133D74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133D7C: .4byte sub_8133CF0
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x66, 0xF0
	.byte 0xCF, 0xF8, 0x03, 0x21, 0x01, 0x40, 0x01, 0x31, 0x29, 0x60, 0x21, 0x1C, 0xA0, 0x31, 0x28, 0x20
	.byte 0x08, 0x60, 0x04, 0x31, 0x8C, 0x20, 0x08, 0x60, 0x20, 0x1C, 0xAC, 0x30, 0x00, 0x21, 0x01, 0x80
	.byte 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x19, 0x3D, 0x13, 0x08
	thumb_func_start sub_8133DC0
sub_8133DC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0x9C
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08133DF4
	movs r0, #0x80
	lsls r0, r0, #0x02
	str r0, [r4, #0x00]
	bl sub_8199F30
	adds r2, r6, #0x0
	adds r2, #0xA0
	movs r1, #0x03
	ands r1, r0
	str r1, [r2, #0x00]
	bl sub_8199F30
	adds r2, r6, #0x0
	adds r2, #0xA4
	movs r1, #0x01
	ands r1, r0
	str r1, [r2, #0x00]
_08133DF4:
	adds r7, r6, #0x0
	adds r7, #0xAC
	movs r0, #0x00
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x00]
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08133E10
	ldr r0, [r4, #0x00]
	negs r0, r0
	str r0, [r4, #0x00]
_08133E10:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r2, [r0, #0x00]
	cmp r2, #0x02
	beq _08133E94
	cmp r2, #0x02
	ble _08133E24
	cmp r2, #0x03
	beq _08133F14
	b _08133F5A
_08133E24:
	cmp r2, #0x00
	bge _08133E2A
	b _08133F5A
_08133E2A:
	ldr r0, _08133E8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	str r0, [r6, #0x2C]
	adds r2, r6, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_807F4FC
	movs r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r6, #0x38]
	str r0, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xA8
	ldr r0, [r6, #0x3C]
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, _08133E90 @ =0x08133F6D
	b _08133EFC
	.byte 0x00, 0x00
_08133E8C: .4byte 0x03000FD8
_08133E90: .4byte sub_8133F6C
_08133E94:
	adds r2, r6, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_807F4FC
	adds r5, r6, #0x0
	adds r5, #0x84
	ldr r0, _08133F0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r3, [r0, #0x74]
	ldr r0, [r2, #0x40]
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x88
	ldr r0, [r2, #0x44]
	ldr r1, [r3, #0x44]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r4, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r6, #0x38]
	ldr r0, [r5, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08133EEA
	adds r0, #0xFF
_08133EEA:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	movs r0, #0x08
	strh r0, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x98
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, _08133F10 @ =0x08134085
_08133EFC:
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xDB
	bl play_sfx_80195B4
	b _08133F5A
	.byte 0x00, 0x00
_08133F0C: .4byte 0x03000FD8
_08133F10: .4byte sub_8134084
_08133F14:
	adds r2, r6, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_807F4FC
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08133F3A
	adds r0, #0xFF
_08133F3A:
	asrs r0, r0, #0x08
	subs r0, #0x54
	str r0, [r1, #0x00]
	movs r0, #0x08
	strh r0, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x98
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, _08133F68 @ =0x08134191
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xDB
	bl play_sfx_80195B4
_08133F5A:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08133F68: .4byte sub_8134190
	thumb_func_start sub_8133F6C
sub_8133F6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	mov r9, r2
	adds r0, r4, #0x0
	adds r0, #0xA8
	adds r1, #0x04
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	mov r8, r2
	adds r1, #0x24
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0813400A
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08133FDC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08133FB8
	adds r1, #0xFF
_08133FB8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08133FC2
	adds r2, #0xFF
_08133FC2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08133FCC
	adds r3, #0xFF
_08133FCC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08133FD8 @ =0x000027A9
	bl sub_80DF024
	b _08134002
_08133FD8: .4byte 0x000027A9
_08133FDC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08133FE4
	adds r1, #0xFF
_08133FE4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08133FEE
	adds r2, #0xFF
_08133FEE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08133FF8
	adds r3, #0xFF
_08133FF8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0813405C @ =0x000027B2
	bl sub_80DF024
_08134002:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_0813400A:
	adds r6, r4, #0x0
	adds r6, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x00]
	subs r5, r1, r0
	str r5, [r4, #0x10]
	adds r7, r4, #0x0
	adds r7, #0xA4
	ldr r0, [r7, #0x00]
	subs r0, r5, r0
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0x0
	mov r1, r9
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0813403C
	adds r1, #0xFF
_0813403C:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08134060
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r6, #0x00]
	negs r0, r0
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	b _08134076
	.byte 0x00, 0x00
_0813405C: .4byte 0x000027B2
_08134060:
	ldr r0, [r7, #0x00]
	cmp r5, r0
	ble _08134076
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	movs r0, #0xDB
	bl stop_sfx_80195A8
_08134076:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8134084
sub_8134084:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08134096
	adds r0, #0xFF
_08134096:
	asrs r5, r0, #0x08
	movs r0, #0xFF
	ands r5, r0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r6, r1, #0x0
	cmp r0, #0x00
	bgt _0813410E
	ldr r1, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _081340E4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081340C0
	adds r1, #0xFF
_081340C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081340CA
	adds r2, #0xFF
_081340CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081340D4
	adds r3, #0xFF
_081340D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081340E0 @ =0x000027A9
	bl sub_80DF024
	b _0813410A
_081340E0: .4byte 0x000027A9
_081340E4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081340EC
	adds r1, #0xFF
_081340EC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081340F6
	adds r2, #0xFF
_081340F6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08134100
	adds r3, #0xFF
_08134100:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08134184 @ =0x000027B2
	bl sub_80DF024
_0813410A:
	movs r0, #0x08
	strh r0, [r6, #0x00]
_0813410E:
	ldr r0, _08134188 @ =0x08198584
	lsls r2, r5, #0x01
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0813411E
	adds r1, #0x3F
_0813411E:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _0813418C @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08134140
	adds r0, #0x3F
_08134140:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r2, r4, #0x0
	adds r2, #0x98
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x0A
	cmp r0, r1
	bls _0813417C
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	movs r0, #0xDB
	bl stop_sfx_80195A8
_0813417C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08134184: .4byte 0x000027B2
_08134188: .4byte 0x08198584
_0813418C: .4byte 0x08198504
	thumb_func_start sub_8134190
sub_8134190:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _081341A2
	adds r0, #0xFF
_081341A2:
	asrs r5, r0, #0x08
	movs r0, #0xFF
	ands r5, r0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r6, r1, #0x0
	cmp r0, #0x00
	bgt _0813421A
	ldr r1, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _081341F0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081341CC
	adds r1, #0xFF
_081341CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081341D6
	adds r2, #0xFF
_081341D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081341E0
	adds r3, #0xFF
_081341E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081341EC @ =0x000027A9
	bl sub_80DF024
	b _08134216
_081341EC: .4byte 0x000027A9
_081341F0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081341F8
	adds r1, #0xFF
_081341F8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08134202
	adds r2, #0xFF
_08134202:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0813420C
	adds r3, #0xFF
_0813420C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0813428C @ =0x000027B2
	bl sub_80DF024
_08134216:
	movs r0, #0x08
	strh r0, [r6, #0x00]
_0813421A:
	ldr r0, _08134290 @ =0x08198584
	lsls r2, r5, #0x01
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0813422A
	adds r1, #0x3F
_0813422A:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xA8
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, _08134294 @ =0x08198504
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0813424A
	adds r0, #0x3F
_0813424A:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x05
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r2, r4, #0x0
	adds r2, #0x98
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x0A
	cmp r0, r1
	bls _08134284
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	movs r0, #0xDB
	bl stop_sfx_80195A8
_08134284:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0813428C: .4byte 0x000027B2
_08134290: .4byte 0x08198584
_08134294: .4byte 0x08198504
	.byte 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x04, 0x1C, 0x27, 0x1C, 0x80, 0x37, 0x3E, 0x68
	.byte 0x84, 0x30, 0x01, 0x68, 0x20, 0x69, 0x0B, 0x1A, 0x20, 0x1C, 0x88, 0x30, 0x01, 0x68, 0x60, 0x69
	.byte 0x09, 0x1A, 0x88, 0x46, 0x20, 0x1C, 0x8C, 0x30, 0x01, 0x68, 0xA0, 0x69, 0x09, 0x1A, 0x89, 0x46
	.byte 0x20, 0x1C, 0x7E, 0x30, 0x00, 0x21, 0x45, 0x5E, 0xAE, 0x42, 0x00, 0xDA, 0x35, 0x1C, 0x00, 0x2B
	.byte 0x0D, 0xD0, 0x1B, 0x4A, 0x1B, 0x48, 0x1C, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18, 0x18, 0x1C
	.byte 0x68, 0x43, 0x31, 0x1C, 0xA6, 0xF0, 0xC0, 0xFB, 0x21, 0x69, 0x09, 0x18, 0x21, 0x61, 0x40, 0x46
	.byte 0x00, 0x28, 0x0D, 0xD0, 0x12, 0x4A, 0x13, 0x48, 0x13, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18
	.byte 0x40, 0x46, 0x68, 0x43, 0x31, 0x1C, 0xA6, 0xF0, 0xAF, 0xFB, 0x61, 0x69, 0x09, 0x18, 0x61, 0x61
	.byte 0x49, 0x46, 0x00, 0x29, 0x0D, 0xD0, 0x0A, 0x4A, 0x0A, 0x48, 0x0B, 0x49, 0x40, 0x1A, 0x12, 0x68
	.byte 0x12, 0x18, 0x48, 0x46, 0x68, 0x43, 0x31, 0x1C, 0xA6, 0xF0, 0x9E, 0xFB, 0xA1, 0x69, 0x09, 0x18
	.byte 0xA1, 0x61, 0x38, 0x68, 0x40, 0x1B, 0x38, 0x60, 0x00, 0x2E, 0x07, 0xD1, 0x01, 0x20, 0x06, 0xE0
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x00, 0x20, 0x18, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x47, 0x46
	.byte 0x80, 0xB4, 0x05, 0x1C, 0x7A, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x04, 0x02, 0x84, 0x23, 0x5B, 0x19
	.byte 0x98, 0x46, 0x1E, 0x68, 0x88, 0x20, 0x40, 0x19, 0x84, 0x46, 0x02, 0x68, 0x2F, 0x1C, 0x8C, 0x37
	.byte 0x3B, 0x68, 0x28, 0x1C, 0x79, 0x30, 0x01, 0x78, 0x20, 0x20, 0x08, 0x40, 0x00, 0x28, 0x05, 0xD1
	.byte 0x28, 0x69, 0x36, 0x18, 0x68, 0x69, 0x12, 0x18, 0xA8, 0x69, 0x1B, 0x18, 0x41, 0x46, 0x0E, 0x60
	.byte 0x60, 0x46, 0x02, 0x60, 0x3B, 0x60, 0x2F, 0x1C, 0x7C, 0x37, 0x00, 0x2C, 0x2C, 0xD1, 0x28, 0x69
	.byte 0x30, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x03, 0x30, 0x86, 0x10, 0x68, 0x69, 0x11, 0x1A, 0x00, 0x29
	.byte 0x00, 0xDA, 0x03, 0x31, 0x8A, 0x10, 0xA8, 0x69, 0x19, 0x1A, 0x00, 0x29, 0x00, 0xDA, 0x03, 0x31
	.byte 0x8B, 0x10, 0x19, 0x4C, 0x30, 0x1C, 0x70, 0x43, 0x11, 0x1C, 0x51, 0x43, 0x40, 0x18, 0x19, 0x1C
	.byte 0x59, 0x43, 0x40, 0x18, 0x21, 0x68, 0xA6, 0xF0, 0x3D, 0xFB, 0x14, 0x49, 0x14, 0x4A, 0x89, 0x1A
	.byte 0x22, 0x68, 0x52, 0x18, 0x80, 0x01, 0x00, 0x23, 0xF9, 0x5E, 0x00, 0x29, 0x00, 0xDA, 0x0F, 0x31
	.byte 0x09, 0x11, 0xA6, 0xF0, 0x31, 0xFB, 0x04, 0x1C, 0x28, 0x1C, 0x80, 0x30, 0x04, 0x60, 0x2A, 0x1C
	.byte 0x79, 0x32, 0x11, 0x78, 0x21, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0x00, 0x20, 0x38, 0x80
	.byte 0x29, 0x1C, 0x7A, 0x31, 0x08, 0x80, 0x04, 0x31, 0x80, 0x20, 0x40, 0x00, 0x08, 0x80, 0x08, 0xBC
	.byte 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0x10, 0xB5, 0x03, 0x1C, 0x1A, 0x1C, 0x92, 0x32, 0x1C, 0x1C, 0x94, 0x34
	.byte 0x21, 0x68, 0x10, 0x88, 0x40, 0x18, 0x10, 0x80, 0x00, 0x20, 0x11, 0x5E, 0x18, 0x6C, 0x40, 0x18
	.byte 0x98, 0x61, 0x19, 0x1C, 0x98, 0x31, 0x09, 0x68, 0x81, 0x42, 0x04, 0xDB, 0x99, 0x61, 0x00, 0x20
	.byte 0x20, 0x60, 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x82, 0x6A, 0x10, 0x1C, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42
	.byte 0x81, 0x42, 0x0D, 0xD1, 0x05, 0x49, 0x50, 0x18, 0x00, 0x23, 0xC0, 0x5E, 0x00, 0x28, 0x11, 0xD0
	.byte 0xEE, 0x39, 0x50, 0x18, 0x51, 0xF7, 0xBA, 0xFF, 0x0C, 0xE0, 0x00, 0x00, 0x26, 0x02, 0x00, 0x00
	.byte 0x10, 0x1C, 0x3A, 0x38, 0x00, 0x23, 0xC0, 0x5E, 0x00, 0x28, 0x03, 0xD0, 0x02, 0x49, 0x50, 0x18
	.byte 0x51, 0xF7, 0xAC, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0xD8, 0xFE, 0xFF, 0xFF
	thumb_func_start sub_81344D4
sub_81344D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r7, [sp, #0x02C]
	ldr r5, [sp, #0x030]
	bl sub_8134940
	strb r7, [r6, #0x1C]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r0, r8
	mov r1, r9
	mov r2, r10
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x08]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x08]
	bl sprite_show_8020CBC
	ldr r3, [r6, #0x08]
	lsls r2, r5, #0x06
	ldrb r1, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	movs r1, #0x03
	ands r5, r1
	lsls r2, r5, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x02
	adds r1, #0x24
	ands r0, r1
	orrs r0, r2
	adds r1, #0x09
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #0x1F]
	ldr r0, [r6, #0x08]
	movs r1, #0x00
	strh r1, [r0, #0x0E]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8134560
sub_8134560:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, [r5, #0x14]
	cmp r6, #0x00
	beq _081345E0
	ldr r3, [r5, #0x10]
	cmp r3, #0x00
	beq _081345E0
	movs r1, #0x1C
	ldsb r1, [r5, r1]
	movs r0, #0x1D
	ldsb r0, [r5, r0]
	cmp r1, r0
	bne _0813458A
	ldrh r1, [r5, #0x1E]
	ldrh r0, [r5, #0x20]
	lsrs r1, r1, #0x08
	lsrs r0, r0, #0x08
	cmp r1, r0
	beq _081345E0
_0813458A:
	movs r2, #0x1C
	ldsb r2, [r5, r2]
	cmp r2, #0x03
	bgt _081345D8
	cmp r2, #0x00
	blt _081345D8
	ldrh r0, [r5, #0x1E]
	lsrs r0, r0, #0x08
	adds r0, r3, r0
	ldrb r3, [r0, #0x00]
	movs r1, #0x7F
	lsrs r4, r3, #0x07
	ldr r0, [r5, #0x08]
	adds r2, r6, r2
	ands r1, r3
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	ldr r3, [r5, #0x38]
	ldr r2, [r5, #0x3C]
	str r2, [sp, #0x000]
	movs r2, #0x00
	bl sub_801E150
	ldr r2, [r5, #0x08]
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x11]
	movs r0, #0x1C
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bne _081345D8
	adds r1, r5, #0x0
	adds r1, #0x23
	movs r0, #0x01
	strb r0, [r1, #0x00]
_081345D8:
	ldrb r0, [r5, #0x1C]
	strb r0, [r5, #0x1D]
	ldrh r0, [r5, #0x1E]
	strh r0, [r5, #0x20]
_081345E0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_81345E8
sub_81345E8:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [r3, #0x08]
	ldr r0, [r3, #0x28]
	cmp r0, #0x00
	bge _081345FA
	adds r0, #0xFF
_081345FA:
	asrs r0, r0, #0x08
	subs r0, r0, r4
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x2C]
	ldr r0, [r3, #0x30]
	ldr r2, [r3, #0x08]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0813460E
	adds r0, #0xFF
_0813460E:
	asrs r0, r0, #0x08
	subs r0, r0, r5
	strh r0, [r2, #0x02]
	ldr r1, [r3, #0x0C]
	cmp r1, #0x00
	beq _08134628
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x0C]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
_08134628:
	ldr r1, [r3, #0x08]
	ldr r0, [r3, #0x34]
	cmp r0, #0x00
	bge _08134632
	adds r0, #0xFF
_08134632:
	asrs r0, r0, #0x08
	ldrh r2, [r1, #0x02]
	adds r0, r0, r2
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x08]
	adds r0, r3, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	ldr r0, [r3, #0x30]
	cmp r0, #0x00
	bge _0813464A
	adds r0, #0xFF
_0813464A:
	asrs r0, r0, #0x08
	ldr r3, _0813465C @ =0xFFFFFC00
	adds r0, r0, r3
	subs r0, r1, r0
	strh r0, [r2, #0x0E]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813465C: .4byte 0xFFFFFC00
	.byte 0x10, 0xB5, 0x04, 0x68, 0x00, 0x2C, 0x09, 0xD0, 0x21, 0x6C, 0x10, 0x22, 0x88, 0x5E, 0x20, 0x18
	.byte 0x49, 0x69, 0xA6, 0xF0, 0xFB, 0xF9, 0x64, 0x68, 0x00, 0x2C, 0xF5, 0xD1, 0xED, 0xF6, 0x7E, 0xFC
	.byte 0xEC, 0xF6, 0xFA, 0xF9, 0x0A, 0x4A, 0x0B, 0x4C, 0xE0, 0x6B, 0x0B, 0x4B, 0xC1, 0x18, 0x12, 0x68
	.byte 0xA6, 0xF0, 0xEE, 0xF9, 0x09, 0x4A, 0xE0, 0x6B, 0x09, 0x4C, 0x88, 0x21, 0x09, 0x01, 0x64, 0x18
	.byte 0x21, 0x68, 0x12, 0x68, 0xA6, 0xF0, 0xE4, 0xF9, 0x20, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x48, 0x0D, 0x00, 0x03, 0xB8, 0xFF, 0x03, 0x02, 0x14, 0x0A, 0x00, 0x00, 0x4C, 0x0D, 0x00, 0x03
	.byte 0x4C, 0x03, 0x00, 0x03, 0x80, 0x68, 0x70, 0x47, 0x40, 0x68, 0x70, 0x47, 0x00, 0x68, 0x70, 0x47
