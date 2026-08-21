	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806FCF0
sub_806FCF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806FD0C
	b _080700A6
_0806FD0C:
	mov r0, r9
	movs r1, #0x26
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x00
	str r1, [sp, #0x00C]
	cmp r0, #0x09
	bls _0806FD5E
	movs r2, #0x01
	str r2, [sp, #0x00C]
	cmp r0, #0x45
	bls _0806FD5E
	movs r3, #0x02
	str r3, [sp, #0x00C]
	cmp r0, #0x4A
	bls _0806FD5E
	movs r4, #0x03
	str r4, [sp, #0x00C]
	cmp r0, #0x54
	bls _0806FD5E
	movs r1, #0x05
	str r1, [sp, #0x00C]
	cmp r0, #0x59
	bhi _0806FD5E
	movs r2, #0x04
	str r2, [sp, #0x00C]
_0806FD5E:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x05
	bls _0806FD66
	b _0806FE9A
_0806FD66:
	lsls r0, r3, #0x02
	ldr r1, _0806FD70 @ =0x0806FD74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0806FD70: .4byte 0x0806FD74
	.byte 0x8C, 0xFD, 0x06, 0x08, 0xD0, 0xFD, 0x06, 0x08, 0x14, 0xFE, 0x06, 0x08, 0x58, 0xFE, 0x06, 0x08
	.byte 0x14, 0xFE, 0x06, 0x08, 0x58, 0xFE, 0x06, 0x08, 0x4C, 0x46, 0xA1, 0x6A, 0xA2, 0x6B, 0x00, 0x2A
	.byte 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x48, 0x46, 0xC3, 0x6B, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33
	.byte 0x1B, 0x12, 0x4C, 0x46, 0x20, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90
	.byte 0x4C, 0x46, 0xA0, 0x68, 0x40, 0x7C, 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x20, 0x02, 0x90
	.byte 0x08, 0x1C, 0x01, 0x49, 0x64, 0xE0, 0x00, 0x00, 0x88, 0x41, 0x00, 0x00, 0x48, 0x46, 0x81, 0x6A
	.byte 0x82, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x4C, 0x46, 0xE3, 0x6B, 0x00, 0x2B
	.byte 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x4C, 0x46, 0x20, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x00, 0x12, 0x00, 0x90, 0x4C, 0x46, 0xA0, 0x68, 0x40, 0x7C, 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90
	.byte 0x01, 0x20, 0x02, 0x90, 0x08, 0x1C, 0x01, 0x49, 0x42, 0xE0, 0x00, 0x00, 0x89, 0x20, 0x00, 0x00
	.byte 0x48, 0x46, 0x81, 0x6A, 0x82, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x4C, 0x46
	.byte 0xE3, 0x6B, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x4C, 0x46, 0x20, 0x6C, 0x00, 0x28
	.byte 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90, 0x4C, 0x46, 0xA0, 0x68, 0x40, 0x7C, 0x40, 0x06
	.byte 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x20, 0x02, 0x90, 0x08, 0x1C, 0x01, 0x49, 0x20, 0xE0, 0x00, 0x00
	.byte 0xB1, 0x40, 0x00, 0x00, 0x48, 0x46, 0x81, 0x6A, 0x82, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32
	.byte 0x12, 0x12, 0x4C, 0x46, 0xE3, 0x6B, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x4C, 0x46
	.byte 0x20, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90, 0x4C, 0x46, 0xA0, 0x68
	.byte 0x40, 0x7C, 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x20, 0x02, 0x90, 0x08, 0x1C, 0x10, 0x49
	.byte 0x0C, 0xF0, 0x4E, 0xF8, 0x05, 0x1C
_0806FE9A:
	mov r0, r9
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	cmp r0, #0x03
	bhi _0806FED8
	bl sub_8199F30
	adds r4, r0, #0x0
	movs r0, #0x01
	ands r4, r0
	b _0806FEE4
	.byte 0xB2, 0x40, 0x00, 0x00
_0806FED8:
	bl sub_8199F30
	movs r1, #0x01
	ands r1, r0
	adds r1, #0x02
	adds r4, r1, #0x0
_0806FEE4:
	movs r1, #0x06
	ldr r0, _0806FF94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	orrs r1, r4
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	str r3, [sp, #0x010]
	str r2, [sp, #0x014]
	cmp r0, #0x00
	bge _0806FF18
	adds r0, #0xFF
_0806FF18:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806FF28
	adds r0, #0xFF
_0806FF28:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806FF38
	adds r0, #0xFF
_0806FF38:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x010]
	ldr r1, [r3, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x014]
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _0806FF98 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r8, r0
	cmp r4, #0x01
	beq _0806FF9C
	cmp r4, #0x01
	bgt _0806FFB6
	cmp r4, #0x00
	bne _0806FFB6
	mov r3, r8
	lsls r0, r3, #0x01
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	lsls r0, r6, #0x01
	b _0806FFCC
	.byte 0x00, 0x00
_0806FF94: .4byte 0x03000FD8
_0806FF98: .4byte 0x03001038
_0806FF9C:
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	lsls r0, r6, #0x01
	b _0806FFCC
_0806FFB6:
	mov r0, r8
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	adds r0, r7, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	adds r0, r6, #0x0
_0806FFCC:
	movs r1, #0x03
	bl __divsi3
	adds r6, r0, #0x0
	ldr r1, _0806FFF4 @ =0x00000233
	mov r0, r8
	bl __divsi3
	mov r10, r0
	lsrs r0, r0, #0x1F
	add r0, r10
	asrs r0, r0, #0x01
	cmp r4, #0x01
	beq _08070008
	cmp r4, #0x01
	bgt _0806FFF8
	cmp r4, #0x00
	beq _0806FFFE
	b _08070030
	.byte 0x00, 0x00
_0806FFF4: .4byte 0x00000233
_0806FFF8:
	cmp r4, #0x02
	beq _0807001C
	b _08070030
_0806FFFE:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x07
	b _08070038
_08070008:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	bl __divsi3
	ldr r3, [sp, #0x014]
	str r4, [r3, #0x00]
	b _08070042
_0807001C:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	bl __divsi3
	ldr r1, [sp, #0x014]
	str r4, [r1, #0x00]
	b _08070042
_08070030:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
_08070038:
	adds r0, r4, #0x0
	bl __divsi3
	ldr r2, [sp, #0x014]
	str r4, [r2, #0x00]
_08070042:
	cmp r0, #0x01
	bne _08070048
	movs r0, #0x02
_08070048:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r3, r10
	str r3, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r4, r8
	ldr r0, [sp, #0x010]
	str r4, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x00]
	ldr r0, _080700B8 @ =0x08070169
	str r0, [r5, #0x4C]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, _080700BC @ =0x08087541
	str r0, [r5, #0x68]
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080700C0 @ =0x08070249
	str r0, [r5, #0x58]
	str r0, [r5, #0x5C]
	ldr r0, _080700C4 @ =0x080703F1
	mov r3, r9
	str r0, [r3, #0x4C]
_080700A6:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080700B8: .4byte sub_8070168
_080700BC: .4byte sub_8087540
_080700C0: .4byte sub_8070248
_080700C4: .4byte sub_80703F0
	thumb_func_start sub_80700C8
sub_80700C8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807015C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807015C
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0807014C
	adds r0, r4, #0x0
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070148 @ =0x080703B1
	b _0807015A
_08070148: .4byte sub_80703B0
_0807014C:
	adds r0, r4, #0x0
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070164 @ =0x0806FCF1
_0807015A:
	str r0, [r4, #0x4C]
_0807015C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070164: .4byte sub_806FCF0
	thumb_func_start sub_8070168
sub_8070168:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r0, #0xA4
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r4, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xAE
	adds r3, r3, r4
	mov r8, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r3, #0x00
	ldsh r1, [r5, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r2, [r5, r3]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	movs r3, #0x00
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080701F8
	adds r1, #0xFF
_080701F8:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0807020A
	adds r0, r4, #0x0
	bl sub_807C298
	b _0807023E
_0807020A:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	ldr r1, [r6, #0x00]
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	cmp r0, r1
	blt _0807023E
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0807023E
	str r3, [r4, #0x18]
	strh r3, [r5, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807022C
	adds r0, #0xFF
_0807022C:
	asrs r0, r0, #0x08
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807023A
	adds r0, #0xFF
_0807023A:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
_0807023E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8070248
sub_8070248:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	cmp r1, #0x01
	beq _080702E4
	cmp r1, #0x01
	bgt _08070262
	cmp r1, #0x00
	beq _08070268
	b _08070364
_08070262:
	cmp r1, #0x02
	beq _08070324
	b _08070364
_08070268:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x08
	bl sub_8117C50
	adds r5, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r5, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807029A
	adds r1, #0xFF
_0807029A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080702A4
	adds r2, #0xFF
_080702A4:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r6, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r5, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080702C0
	adds r1, #0xFF
_080702C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080702CA
	adds r2, #0xFF
_080702CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080702D4
	adds r3, #0xFF
_080702D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080702E0 @ =0x00000F93
	bl sub_80DF024
	b _0807039A
_080702E0: .4byte 0x00000F93
_080702E4:
	ldr r0, _0807031C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	strh r1, [r0, #0x18]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080702F2
	adds r1, #0xFF
_080702F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080702FC
	adds r2, #0xFF
_080702FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070306
	adds r3, #0xFF
_08070306:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070320 @ =0x00002375
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2C
	bl play_sfx_80195B4
	b _0807039A
_0807031C: .4byte 0x03000FD8
_08070320: .4byte 0x00002375
_08070324:
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_8107F84
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070334
	adds r1, #0xFF
_08070334:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807033E
	adds r2, #0xFF
_0807033E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070348
	adds r3, #0xFF
_08070348:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070360 @ =0x00002396
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA0
	bl play_sfx_80195B4
	b _0807039A
	.byte 0x00, 0x00
_08070360: .4byte 0x00002396
_08070364:
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070376
	adds r1, #0xFF
_08070376:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070380
	adds r2, #0xFF
_08070380:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807038A
	adds r3, #0xFF
_0807038A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080703AC @ =0x00002381
	bl sub_80DF024
	adds r0, r7, #0x0
	bl sub_807F47C
_0807039A:
	adds r0, r7, #0x0
	bl sub_807C298
	movs r0, #0x01
	negs r0, r0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080703AC: .4byte 0x00002381
	thumb_func_start sub_80703B0
sub_80703B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080703E4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080703D4
	adds r0, r4, #0x0
	movs r1, #0x29
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080703E0
_080703D4:
	adds r0, r4, #0x0
	movs r1, #0x2A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080703E0:
	ldr r0, _080703EC @ =0x08070B71
	str r0, [r4, #0x4C]
_080703E4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080703EC: .4byte sub_8070B70
	thumb_func_start sub_80703F0
sub_80703F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070418
	adds r0, r4, #0x0
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08070420 @ =0x080700C9
	str r0, [r4, #0x4C]
_08070418:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070420: .4byte sub_80700C8
	thumb_func_start sub_8070424
sub_8070424:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807048C
	adds r0, r4, #0x0
	movs r1, #0x20
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x01
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
	ldr r0, _08070488 @ =0x080704F1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0807048E
_08070488: .4byte sub_80704F0
_0807048C:
	adds r0, r5, #0x0
_0807048E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8070494
sub_8070494:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _080704E4 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080704B8
	adds r1, #0xFF
_080704B8:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080704C2
	adds r2, #0xFF
_080704C2:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080704CC
	adds r3, #0xFF
_080704CC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080704E8 @ =0x00002012
	bl sub_80DF024
	ldr r0, _080704EC @ =0x0806FC69
	str r0, [r5, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080704E4: .4byte 0x0000012B
_080704E8: .4byte 0x00002012
_080704EC: .4byte sub_806FC68
	thumb_func_start sub_80704F0
sub_80704F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0807050A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0807050A:
	pop {r4, r5}
	pop {r0}
	bx r0
