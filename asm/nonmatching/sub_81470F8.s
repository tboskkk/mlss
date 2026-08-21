	.syntax unified
	.text

	thumb_func_start sub_81470F8
sub_81470F8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _0814718C @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8148C20
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08147190 @ =0x0000020F
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08147194 @ =0x0000020E
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08147198 @ =0x0813B381
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, _0814719C @ =0x08148D41
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814718C: .4byte 0x0000033E
_08147190: .4byte 0x0000020F
_08147194: .4byte 0x0000020E
_08147198: .4byte sub_813B380
_0814719C: .4byte sub_8148D40
