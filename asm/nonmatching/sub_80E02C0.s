	.syntax unified
	.text

	thumb_func_start sub_80E02C0
sub_80E02C0:
	push {r4, r5, r6, lr}
	ldr r6, _080E0334 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _080E032E
	ldr r1, _080E0338 @ =0x02000050
	movs r5, #0x9B
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r1, #0x06
	ldr r4, _080E033C @ =0x0000026E
	adds r0, r2, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r1, #0x0A
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	movs r0, #0x02
	adds r1, r3, #0x0
	bl sub_8018B78
	ldr r0, [r6, #0x00]
	adds r5, r0, r5
	movs r1, #0x00
	strh r1, [r5, #0x00]
	adds r4, r0, r4
	strh r1, [r4, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r1, [r0, #0x00]
	ldr r0, _080E0340 @ =0x03001034
	ldr r1, _080E0344 @ =0x0600F000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, _080E0348 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E034C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _080E0350 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
_080E032E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080E0334: .4byte 0x03000FD8
_080E0338: .4byte 0x02000050
_080E033C: .4byte 0x0000026E
_080E0340: .4byte 0x03001034
_080E0344: .4byte 0x0600F000
_080E0348: .4byte 0x040000B0
_080E034C: .4byte 0x0000C5FF
_080E0350: .4byte 0x00007FFF
