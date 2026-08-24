	push {r4, r5, r6, lr}
	ldr r1, _080E31E0 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E31E4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E31E8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldr r4, _080E31EC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x98
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	bl sub_8018B78
	ldr r6, _080E31F0 @ =0x0200001A
	movs r0, #0x00
	strh r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_80844C4
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r1, _080E31F4 @ =0x04000010
	ldr r0, _080E31F8 @ =0x02000010
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E31FC @ =0x02000014
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E3200 @ =0x02000018
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E3204 @ =0x0200001C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r1, #0x0A
	ldr r0, _080E3208 @ =0x02000012
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E320C @ =0x02000016
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r0, [r6, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _080E3210 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080E31E0: .4byte 0x040000B0
_080E31E4: .4byte 0x0000C5FF
_080E31E8: .4byte 0x00007FFF
_080E31EC: .4byte 0x03000FD8
_080E31F0: .4byte 0x0200001A
_080E31F4: .4byte 0x04000010
_080E31F8: .4byte 0x02000010
_080E31FC: .4byte 0x02000014
_080E3200: .4byte 0x02000018
_080E3204: .4byte 0x0200001C
_080E3208: .4byte 0x02000012
_080E320C: .4byte 0x02000016
_080E3210: .4byte 0x0200001E
