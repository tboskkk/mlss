	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8064354
sub_8064354:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806436C @ =0x08063FC1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806436C: .4byte sub_8063FC0
	thumb_func_start sub_8064370
sub_8064370:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080643CC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080643A4
	adds r1, #0xFF
_080643A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080643AE
	adds r2, #0xFF
_080643AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080643B8
	adds r3, #0xFF
_080643B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080643D4 @ =0x00001089
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _080643D8 @ =0x080644DD
	str r0, [r4, #0x4C]
_080643CC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080643D4: .4byte 0x00001089
_080643D8: .4byte sub_80644DC
	thumb_func_start sub_80643DC
sub_80643DC:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806441C @ =0xFFFFFDE7
	adds r0, r1, r3
	str r0, [r2, #0x10]
	ldr r4, [r2, #0x18]
	ldr r5, _08064420 @ =0xFFFFFF00
	adds r3, r4, r5
	str r3, [r2, #0x18]
	cmp r0, #0x00
	bge _080643F8
	subs r5, #0x1A
	adds r0, r1, r5
_080643F8:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _08064410
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0806440A
	subs r0, r4, #0x1
_0806440A:
	asrs r0, r0, #0x08
	cmp r0, #0x00
	bgt _08064416
_08064410:
	adds r0, r2, #0x0
	bl sub_807C298
_08064416:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806441C: .4byte 0xFFFFFDE7
_08064420: .4byte 0xFFFFFF00
	thumb_func_start sub_8064424
sub_8064424:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064432
	adds r1, #0xFF
_08064432:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806443C
	adds r2, #0xFF
_0806443C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064446
	adds r3, #0xFF
_08064446:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08064460 @ =0x00001081
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064460: .4byte 0x00001081
	.byte 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_806446C
sub_806446C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064484 @ =0x08063CC9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08064484: .4byte sub_8063CC8
	thumb_func_start sub_8064488
sub_8064488:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080644D2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080644C4
	ldr r0, _080644C0 @ =0x08064541
	b _080644D0
	.byte 0x00, 0x00
_080644C0: .4byte sub_8064540
_080644C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080644D8 @ =0x08064515
_080644D0:
	str r0, [r4, #0x4C]
_080644D2:
	pop {r4}
	pop {r0}
	bx r0
_080644D8: .4byte sub_8064514
	thumb_func_start sub_80644DC
sub_80644DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	bne _080644FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xB5
	bl play_sfx_80195B4
_080644FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806450C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806450C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8064514
sub_8064514:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064534
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806453C @ =0x08063CC9
	str r0, [r4, #0x4C]
_08064534:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806453C: .4byte sub_8063CC8
