	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8132650
sub_8132650:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08132670
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08132670:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
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
	thumb_func_start sub_81329AC
sub_81329AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08132A98 @ =0xFFFFFC00
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	movs r2, #0x88
	adds r2, r2, r5
	mov r9, r2
	ldr r1, [r2, #0x00]
	muls r0, r1
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xB0
	adds r3, r3, r5
	mov r10, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r1, #0xB2
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	cmp r4, r0
	bge _08132A86
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r4, _08132A9C @ =0xFFFF3800
	mov r0, r9
	ldr r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x0B
	negs r0, r0
	ldr r1, [r6, #0x00]
	bl __divsi3
	str r0, [sp, #0x000]
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	movs r0, #0x80
	lsls r0, r0, #0x03
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	str r1, [sp, #0x014]
	adds r0, r7, #0x0
	mov r1, r10
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _08132AA0 @ =0x08132CE9
	str r0, [r5, #0x4C]
_08132A86:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132A98: .4byte 0xFFFFFC00
_08132A9C: .4byte 0xFFFF3800
_08132AA0: .4byte sub_8132CE8
	thumb_func_start sub_8132AA4
sub_8132AA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08132B7C @ =0xFFFFFD80
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	movs r2, #0x88
	adds r2, r2, r5
	mov r9, r2
	ldr r1, [r2, #0x00]
	muls r0, r1
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xB0
	adds r3, r3, r5
	mov r10, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r1, #0xB2
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r1, _08132B80 @ =0x000005FF
	cmp r0, r1
	bgt _08132B6A
	ldr r4, _08132B84 @ =0xFFFF6000
	mov r3, r9
	ldr r1, [r3, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x0D
	negs r0, r0
	ldr r1, [r6, #0x00]
	bl __divsi3
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0xE0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	movs r1, #0x00
	str r1, [sp, #0x014]
	adds r0, r7, #0x0
	mov r1, r10
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_808552C
	adds r1, r5, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r0, _08132B88 @ =0x08132B8D
	str r0, [r5, #0x4C]
_08132B6A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132B7C: .4byte 0xFFFFFD80
_08132B80: .4byte 0x000005FF
_08132B84: .4byte 0xFFFF6000
_08132B88: .4byte sub_8132B8C
	thumb_func_start sub_8132B8C
sub_8132B8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xB2
	movs r0, #0x94
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	adds r7, r4, #0x0
	adds r7, #0xAE
	movs r1, #0x00
	ldsh r0, [r7, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _08132C48 @ =0xFFFFF000
	cmp r2, r0
	bge _08132C3C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x28]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x14]
	ldr r0, [r1, #0x48]
	str r0, [r4, #0x18]
	ldr r3, [r1, #0x40]
	ldr r1, _08132C4C @ =0xFFFF1700
	adds r3, r3, r1
	movs r0, #0xA0
	lsls r0, r0, #0x03
	str r0, [sp, #0x000]
	movs r0, #0x8C
	lsls r0, r0, #0x06
	str r0, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [sp, #0x008]
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_808552C
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, _08132C50 @ =0x08132C55
	str r0, [r4, #0x4C]
_08132C3C:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08132C48: .4byte 0xFFFFF000
_08132C4C: .4byte 0xFFFF1700
_08132C50: .4byte sub_8132C54
	thumb_func_start sub_8132C54
sub_8132C54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
	adds r3, r4, #0x0
	adds r3, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0x40]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r0, r0, r1
	cmp r2, r0
	bgt _08132CDC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x28]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r1, [r4, #0x28]
	ldr r0, _08132CE4 @ =0x08132D4D
	str r0, [r1, #0x54]
	adds r0, r4, #0x0
	bl sub_807C298
_08132CDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132CE4: .4byte sub_8132D4C
