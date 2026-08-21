	.syntax unified
	.text

	thumb_func_start sub_8085440
sub_8085440:
	push {r4, lr}
	add sp, #-0x004
	ldr r2, _080854D4 @ =0x03000F70
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldrh r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r2, _080854D8 @ =0x00007F40
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x50
	movs r2, #0xDD
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _080854DC @ =0x00000808
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x46
	ldr r2, _080854E0 @ =0x00001E04
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _080854E4 @ =0x00001F08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _080854E8 @ =0x02000018
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x2A
	ldr r2, _080854EC @ =0x00003F3F
	adds r1, r2, #0x0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	subs r0, #0x0A
	movs r2, #0xF0
	strh r2, [r0, #0x00]
	adds r0, #0x04
	movs r1, #0xA0
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x04
	strh r1, [r0, #0x00]
	ldr r1, _080854F0 @ =0x06008000
	movs r2, #0xA0
	lsls r2, r2, #0x07
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x20
	bl sub_80183A4
	ldr r1, _080854F4 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #0x04
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x20
	bl sub_80183A4
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080854D4: .4byte 0x03000F70
_080854D8: .4byte 0x00007F40
_080854DC: .4byte 0x00000808
_080854E0: .4byte 0x00001E04
_080854E4: .4byte 0x00001F08
_080854E8: .4byte 0x02000018
_080854EC: .4byte 0x00003F3F
_080854F0: .4byte 0x06008000
_080854F4: .4byte 0x0600F800
