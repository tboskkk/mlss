	.syntax unified
	.text

	thumb_func_start sub_8079484
sub_8079484:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079494
	adds r1, #0xFF
_08079494:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807949E
	adds r2, #0xFF
_0807949E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080794A8
	adds r3, #0xFF
_080794A8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080794F4 @ =0x00002A7E
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r0, [r4, #0x28]
	ldr r4, [r0, #0x38]
	cmp r4, #0x00
	beq _080794EA
	ldr r5, _080794F8 @ =0x00002222
_080794D2:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r5
	bne _080794E4
	adds r0, r4, #0x0
	bl sub_807C298
_080794E4:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _080794D2
_080794EA:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080794F4: .4byte 0x00002A7E
_080794F8: .4byte 0x00002222
