	.include "asm/macros.inc"

	.syntax unified
	.text

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
