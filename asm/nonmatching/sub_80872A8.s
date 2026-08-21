	.syntax unified
	.text

	thumb_func_start sub_80872A8
sub_80872A8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r5, [r0, r2]
	cmp r5, #0x00
	bne _080872E4
	ldr r0, _080872D8 @ =0x00000111
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080872DC @ =0x0807DD39
	adds r1, r4, #0x0
	bl sub_807FF48
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r5, [r0, #0x00]
	ldr r0, _080872E0 @ =0x08087BA1
	b _08087310
_080872D8: .4byte 0x00000111
_080872DC: .4byte sub_807DD38
_080872E0: .4byte 0x08087BA1
_080872E4:
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080872F4
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08087312
_080872F4:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
_08087310:
	str r0, [r4, #0x4C]
_08087312:
	pop {r4, r5}
	pop {r0}
	bx r0
