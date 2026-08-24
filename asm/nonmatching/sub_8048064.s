	.syntax unified
	.text

	thumb_func_start sub_8048064
sub_8048064:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _08048144 @ =0x08CDBE88
	str r0, [r1, #0x00]
	ldr r1, _08048148 @ =0x00000355
	adds r0, r4, r1
	movs r6, #0x00
	strb r6, [r0, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _0804814C @ =0x0000033D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08048150 @ =0x0000033E
	adds r1, r4, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	ldr r0, _08048154 @ =0x00000346
	adds r1, r4, r0
	movs r0, #0x0E
	strb r0, [r1, #0x00]
	ldr r0, _08048158 @ =0x00000347
	adds r1, r4, r0
	movs r0, #0x07
	strb r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r4, r1
	strb r6, [r0, #0x00]
	ldr r0, _0804815C @ =0x00000351
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r2, [r1, #0x00]
	movs r5, #0x09
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldrh r2, [r1, #0x00]
	ldr r0, _08048160 @ =0xFFFFF00F
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, _08048164 @ =0x00000359
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r3, #0x11
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08048168 @ =0x00000352
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	subs r1, #0x02
	ands r0, r1
	ands r0, r5
	ands r0, r3
	subs r1, #0x1C
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0804816C @ =0x00000211
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08048170 @ =0x00000353
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r6, [r0, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08048144: .4byte dword_8CDBE88 @ =0x08CDBE88
_08048148: .4byte 0x00000355
_0804814C: .4byte 0x0000033D
_08048150: .4byte 0x0000033E
_08048154: .4byte 0x00000346
_08048158: .4byte 0x00000347
_0804815C: .4byte 0x00000351
_08048160: .4byte 0xFFFFF00F
_08048164: .4byte 0x00000359
_08048168: .4byte 0x00000352
_0804816C: .4byte 0x00000211
_08048170: .4byte 0x00000353
