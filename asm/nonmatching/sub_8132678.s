	.syntax unified
	.text

	thumb_func_start sub_8132678
sub_8132678:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0813268C
	b _081327FA
_0813268C:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _081326AA
	adds r1, #0xFF
_081326AA:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _081326B4
	adds r0, #0xFF
_081326B4:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _081326C0
	adds r3, #0xFF
_081326C0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08132804 @ =0x00002177
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _081326D4
	adds r0, #0xFF
_081326D4:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _081326E2
	adds r0, #0xFF
_081326E2:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _081326EE
	adds r0, #0xFF
_081326EE:
	asrs r0, r0, #0x08
	adds r0, #0x17
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08132808 @ =0x00004103
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0813280C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r1, [r6, #0x2C]
	str r1, [r5, #0x2C]
	adds r1, #0x76
	ldrb r2, [r1, #0x00]
	movs r0, #0x7F
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	str r0, [r5, #0x64]
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0813278A
	adds r0, #0xFF
_0813278A:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0813279A
	adds r0, #0xFF
_0813279A:
	asrs r0, r0, #0x08
	movs r7, #0xB0
	adds r7, r7, r5
	mov r12, r7
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _081327AC
	adds r0, #0xFF
_081327AC:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xB2
	strh r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r7, #0x00
	ldsh r1, [r1, r7]
	subs r1, #0x04
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	mov r0, r12
	movs r7, #0x00
	ldsh r1, [r0, r7]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x8C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x03
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, _08132810 @ =0x081329AD
	str r0, [r5, #0x4C]
	ldr r0, _08132814 @ =0x08132DA1
	str r0, [r6, #0x4C]
_081327FA:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132804: .4byte 0x00002177
_08132808: .4byte 0x00004103
_0813280C: .4byte sub_8087540
_08132810: .4byte sub_81329AC
_08132814: .4byte sub_8132DA0
