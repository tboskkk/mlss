	.syntax unified
	.text

	thumb_func_start sub_8078768
sub_8078768:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	beq _08078778
	b _0807887E
_08078778:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078848
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x06
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _080787BC
	cmp r1, #0x01
	bgt _080787AC
	cmp r1, #0x00
	beq _080787B2
	b _08078800
_080787AC:
	cmp r1, #0x02
	beq _080787C4
	b _08078800
_080787B2:
	ldr r2, _080787B8 @ =0x0000402C
	b _080787C6
	.byte 0x00, 0x00
_080787B8: .4byte 0x0000402C
_080787BC:
	ldr r2, _080787C0 @ =0x0000402D
	b _080787C6
_080787C0: .4byte 0x0000402D
_080787C4:
	ldr r2, _080787F8 @ =0x0000402E
_080787C6:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080787D8
	adds r1, #0xFF
_080787D8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080787E2
	adds r2, #0xFF
_080787E2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080787EC
	adds r3, #0xFF
_080787EC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080787FC @ =0x000029F1
	bl sub_80DF024
	b _08078840
_080787F8: .4byte 0x0000402E
_080787FC: .4byte 0x000029F1
_08078800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078808
	adds r1, #0xFF
_08078808:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078812
	adds r2, #0xFF
_08078812:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807881C
	adds r3, #0xFF
_0807881C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807883C @ =0x00002A32
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	movs r0, #0x00
	b _0807887E
	.byte 0x00, 0x00
_0807883C: .4byte 0x00002A32
_08078840:
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	b _0807886E
_08078848:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078850
	adds r1, #0xFF
_08078850:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807885A
	adds r2, #0xFF
_0807885A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078864
	adds r3, #0xFF
_08078864:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078888 @ =0x000029F1
	bl sub_80DF024
_0807886E:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, _0807888C @ =0xFFFFF900
	str r1, [r0, #0x00]
	ldr r0, _08078890 @ =0x08078679
	str r0, [r4, #0x4C]
	movs r0, #0x01
	negs r0, r0
_0807887E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078888: .4byte 0x000029F1
_0807888C: .4byte 0xFFFFF900
_08078890: .4byte sub_8078678
