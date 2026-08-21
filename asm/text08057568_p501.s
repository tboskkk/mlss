	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8150498
sub_8150498:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081504BC
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _081504E6
_081504BC:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081504E6
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081504EC @ =0x081506DD
	str r0, [r6, #0x00]
	ldr r0, _081504F0 @ =0x081506B5
	str r0, [r6, #0x0C]
_081504E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081504EC: .4byte sub_81506DC
_081504F0: .4byte sub_81506B4
	thumb_func_start sub_81504F4
sub_81504F4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldr r0, _08150584 @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_814EDAC
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r2, #0x08
	adds r1, r4, r2
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	subs r2, #0x14
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08150588 @ =0x0813B381
	str r0, [r1, #0x00]
	subs r2, #0x30
	adds r1, r4, r2
	ldr r0, _0815058C @ =0x0814EADD
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150584: .4byte 0x0000033E
_08150588: .4byte sub_813B380
_0815058C: .4byte sub_814EADC
