	.include "asm/macros.inc"

	.syntax unified
	.text

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
