	.syntax unified
	.text

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
