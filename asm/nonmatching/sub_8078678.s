	.syntax unified
	.text

	thumb_func_start sub_8078678
sub_8078678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080786AE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078694
	adds r1, #0xFF
_08078694:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807869E
	adds r2, #0xFF
_0807869E:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080786FC @ =0x000029E8
	movs r3, #0x00
	bl sub_80DF024
	movs r0, #0x10
	str r0, [r5, #0x00]
_080786AE:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x4C
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	cmp r0, r2
	ble _080786C2
	str r2, [r1, #0x00]
_080786C2:
	ldr r0, [r4, #0x18]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _08078758
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r1, r2
	bgt _08078700
	ldr r0, [r4, #0x28]
	subs r1, r2, r1
	adds r2, #0x24
	adds r0, r0, r2
	b _0807870A
	.byte 0x00, 0x00
_080786FC: .4byte 0x000029E8
_08078700:
	ldr r0, [r4, #0x28]
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
_0807870A:
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078736
	adds r1, #0xFF
_08078736:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078740
	adds r2, #0xFF
_08078740:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807874A
	adds r3, #0xFF
_0807874A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078760 @ =0x00002A0C
	bl sub_80DF024
	ldr r0, _08078764 @ =0x080796B9
	str r0, [r4, #0x4C]
_08078758:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08078760: .4byte 0x00002A0C
_08078764: .4byte sub_80796B8
