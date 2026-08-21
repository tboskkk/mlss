	.include "asm/macros.inc"

	.syntax unified
	.text

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
