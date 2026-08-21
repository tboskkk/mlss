	.syntax unified
	.text

	thumb_func_start sub_8049430
sub_8049430:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049470
	ldr r1, _08049468 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0804946C @ =0x00001026
	cmp r0, #0x00
	beq _08049474
	adds r1, #0x04
	b _08049474
	.byte 0x00, 0x00
_08049468: .4byte 0x0000035B
_0804946C: .4byte 0x00001026
_08049470:
	movs r1, #0x82
	lsls r1, r1, #0x05
_08049474:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0x00
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _0804948C
	movs r1, #0x01
_0804948C:
	adds r0, r4, #0x0
	bl sub_804955C
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	movs r2, #0x87
	cmp r0, #0x00
	bne _080494A0
	adds r2, #0xD0
_080494A0:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
	movs r1, #0x00
	movs r0, #0x0A
	strh r0, [r4, #0x04]
	ldr r2, _080494CC @ =0x00000355
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r0, _080494D0 @ =0x00000359
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080494CC: .4byte 0x00000355
_080494D0: .4byte 0x00000359
