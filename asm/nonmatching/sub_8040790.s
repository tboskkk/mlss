	.syntax unified
	.text

	thumb_func_start sub_8040790
sub_8040790:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	movs r2, #0x00
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r3, _080407F8 @ =0xFFFFEFFF
	adds r0, r1, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _080407B2
	ldr r0, _080407FC @ =0x00001028
	cmp r1, r0
	bne _080407B4
_080407B2:
	movs r2, #0x01
_080407B4:
	ldr r5, _08040800 @ =0x00000216
	adds r1, r4, r5
	lsls r2, r2, #0x07
	ldrb r0, [r1, #0x00]
	movs r3, #0x7F
	ands r3, r0
	orrs r3, r2
	strb r3, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldrh r2, [r1, #0x00]
	lsrs r3, r3, #0x01
	movs r1, #0x01
	ands r3, r1
	subs r1, #0x02
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r5, #0x08
	adds r1, r4, r5
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x00C]
	movs r1, #0x00
	bl sub_80210A8
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_080407F8: .4byte 0xFFFFEFFF
_080407FC: .4byte 0x00001028
_08040800: .4byte 0x00000216
