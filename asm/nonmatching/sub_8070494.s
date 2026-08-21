	.syntax unified
	.text

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
