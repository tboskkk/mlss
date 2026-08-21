	.syntax unified
	.text

	thumb_func_start sub_8132818
sub_8132818:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0813282C
	b _0813298E
_0813282C:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0813284A
	adds r1, #0xFF
_0813284A:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08132854
	adds r0, #0xFF
_08132854:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08132860
	adds r3, #0xFF
_08132860:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08132998 @ =0x0000217F
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08132874
	adds r0, #0xFF
_08132874:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x18
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08132882
	adds r0, #0xFF
_08132882:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0813288E
	adds r0, #0xFF
_0813288E:
	asrs r0, r0, #0x08
	adds r0, #0x1D
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0813299C @ =0x00004104
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
	ldr r0, _081329A0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
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
	bge _08132920
	adds r0, #0xFF
_08132920:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08132930
	adds r0, #0xFF
_08132930:
	asrs r0, r0, #0x08
	movs r7, #0xB0
	adds r7, r7, r5
	mov r12, r7
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08132942
	adds r0, #0xFF
_08132942:
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
	ldr r0, _081329A4 @ =0x08132AA5
	str r0, [r5, #0x4C]
	ldr r0, _081329A8 @ =0x08132D79
	str r0, [r6, #0x4C]
_0813298E:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132998: .4byte 0x0000217F
_0813299C: .4byte 0x00004104
_081329A0: .4byte sub_8087540
_081329A4: .4byte sub_8132AA4
_081329A8: .4byte sub_8132D78
