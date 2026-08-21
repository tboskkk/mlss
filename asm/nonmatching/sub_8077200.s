	.syntax unified
	.text

	thumb_func_start sub_8077200
sub_8077200:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0807724C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08077248 @ =0x08077571
	str r0, [r5, #0x4C]
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _08077282
_08077248: .4byte sub_8077570
_0807724C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807725E
	adds r1, #0xFF
_0807725E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08077268
	adds r2, #0xFF
_08077268:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08077272
	adds r3, #0xFF
_08077272:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0807728C @ =0x000024CB
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
_08077282:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807728C: .4byte 0x000024CB
