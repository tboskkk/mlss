	.syntax unified
	.text

	thumb_func_start sub_8110620
sub_8110620:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _081106C6
	ldr r2, [r5, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r7, r1, r0
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x14]
	subs r1, r1, r0
	mov r8, r1
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	ldr r0, [r5, #0x18]
	subs r4, r4, r0
	ldr r2, _08110688 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r3, r1, #0x0
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r4, #0x0
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _0811068E
	cmp r0, #0x00
	bge _0811068C
	negs r0, r0
	b _0811068E
_08110688: .4byte 0x03001038
_0811068C:
	movs r0, #0x02
_0811068E:
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08110698
	adds r0, #0xFF
_08110698:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	mov r1, r8
	cmp r1, #0x00
	bge _081106A8
	adds r1, #0xFF
_081106A8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r0, _081106D0 @ =0x081106D5
	str r0, [r5, #0x4C]
_081106C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081106D0: .4byte sub_81106D4
