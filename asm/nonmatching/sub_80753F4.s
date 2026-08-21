	.syntax unified
	.text

	thumb_func_start sub_80753F4
sub_80753F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807541A
	cmp r0, #0x01
	beq _08075494
	adds r0, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	bl sub_807F47C
	movs r0, #0x00
	b _080754CA
_0807541A:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x05
	bl sub_8117C50
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r7, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r6, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807544C
	adds r1, #0xFF
_0807544C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075456
	adds r2, #0xFF
_08075456:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r6, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075472
	adds r1, #0xFF
_08075472:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807547C
	adds r2, #0xFF
_0807547C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075486
	adds r3, #0xFF
_08075486:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075490 @ =0x00000F93
	b _080754BE
	.byte 0x00, 0x00
_08075490: .4byte 0x00000F93
_08075494:
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_8107F84
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080754A4
	adds r1, #0xFF
_080754A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080754AE
	adds r2, #0xFF
_080754AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080754B8
	adds r3, #0xFF
_080754B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080754D4 @ =0x00002396
_080754BE:
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x01
_080754CA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080754D4: .4byte 0x00002396
