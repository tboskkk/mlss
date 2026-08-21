	.syntax unified
	.text

	thumb_func_start sub_80494D4
sub_80494D4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8020D40
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049520
	ldr r1, _08049518 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0804951C @ =0x00001001
	cmp r0, #0x00
	beq _08049522
	adds r1, #0x27
	b _08049522
	.byte 0x00, 0x00
_08049518: .4byte 0x0000035B
_0804951C: .4byte 0x00001001
_08049520:
	ldr r1, _08049558 @ =0x00001002
_08049522:
	adds r0, r4, #0x0
	bl sub_8049000
	adds r5, r4, #0x0
	adds r5, #0x54
	ldrb r0, [r5, #0x00]
	movs r1, #0x87
	cmp r0, #0x00
	bne _08049536
	adds r1, #0xD0
_08049536:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
	ldrb r0, [r5, #0x00]
	movs r1, #0xAB
	lsls r1, r1, #0x01
	cmp r0, #0x00
	bne _08049548
	adds r1, #0x02
_08049548:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
	movs r0, #0x00
	strh r0, [r4, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08049558: .4byte 0x00001002
