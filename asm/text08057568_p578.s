	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8133100
sub_8133100:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _08133144
	adds r4, #0xFF
_08133144:
	asrs r0, r4, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _08133150
	adds r0, #0xFF
_08133150:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0813315C
	adds r0, #0xFF
_0813315C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0813319A
	movs r0, #0xF6
	lsls r0, r0, #0x08
	str r0, [r6, #0x10]
	ldr r1, [r6, #0x28]
	ldr r0, [r1, #0x44]
	ldr r2, _081331A4 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r6, #0x14]
	ldr r0, [r1, #0x48]
	movs r7, #0xA8
	lsls r7, r7, #0x06
	adds r0, r0, r7
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	bl sub_807F47C
	ldr r0, _081331A8 @ =0x0813321D
	str r0, [r6, #0x4C]
_0813319A:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081331A4: .4byte 0xFFFFFA00
_081331A8: .4byte sub_813321C
	thumb_func_start sub_81331AC
sub_81331AC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08133214
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08133208 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	adds r0, #0x08
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r0, _0813320C @ =0x0813326D
	str r0, [r1, #0x54]
	ldr r0, _08133210 @ =0x08133359
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _08133216
	.byte 0x00, 0x00
_08133208: .4byte 0x0000011F
_0813320C: .4byte sub_813326C
_08133210: .4byte sub_8133358
_08133214:
	adds r0, r2, #0x0
_08133216:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813321C
sub_813321C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	ldr r0, [r2, #0x40]
	ldr r3, _08133264 @ =0xFFFFF600
	adds r0, r0, r3
	cmp r1, r0
	bgt _0813325C
	adds r0, r2, #0x0
	adds r0, #0x08
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x28]
	ldr r0, _08133268 @ =0x081332BD
	str r0, [r1, #0x54]
	adds r0, r4, #0x0
	bl sub_807C298
_0813325C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133264: .4byte 0xFFFFF600
_08133268: .4byte sub_81332BC
