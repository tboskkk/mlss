	.syntax unified
	.text

	thumb_func_start sub_80508A8
sub_80508A8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl init_fobj_803FEB8
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, _08050928 @ =0x08CDC068
	str r0, [r1, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x39
	negs r1, r1
	ands r0, r1
	adds r1, #0x36
	ands r0, r1
	subs r1, #0x02
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r0, _0805092C @ =0xFFFFFC3F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r5, _08050930 @ =0x0000023B
	adds r0, r4, r5
	movs r3, #0x00
	strb r3, [r0, #0x00]
	ldr r0, _08050934 @ =0x0000033E
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	subs r5, #0x3D
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r5, _08050938 @ =0x00000342
	adds r1, r4, r5
	ldr r0, _0805093C @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	adds r5, #0x0A
	adds r0, r4, r5
	str r3, [r0, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
_08050928: .4byte 0x08CDC068
_0805092C: .4byte 0xFFFFFC3F
_08050930: .4byte 0x0000023B
_08050934: .4byte 0x0000033E
_08050938: .4byte 0x00000342
_0805093C: .4byte 0x0000FFFF
