	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8142658
sub_8142658:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x24
	ldsh r3, [r0, r1]
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081426A0 @ =0x08142EFD
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081426A0: .4byte sub_8142EFC
	thumb_func_start sub_81426A4
sub_81426A4:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, _081426F8 @ =0x0000033E
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0x00
	strh r2, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xF4
	lsls r1, r1, #0x01
	adds r0, r4, r1
	str r2, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081426FC @ =0x0813B381
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08142700 @ =0x08141D55
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081426F8: .4byte 0x0000033E
_081426FC: .4byte sub_813B380
_08142700: .4byte sub_8141D54
	thumb_func_start sub_8142704
sub_8142704:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814274C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142750
_0814274C:
	movs r0, #0x00
	b _08142758
_08142750:
	cmp r7, #0x00
	beq _08142756
	str r4, [r7, #0x00]
_08142756:
	movs r0, #0x01
_08142758:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8142760
sub_8142760:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814279A
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	adds r0, #0x4E
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081427A0 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _081427A4 @ =0x0813B361
	str r0, [r5, #0x0C]
	ldr r0, _081427A8 @ =0x08141509
	str r0, [r5, #0x04]
_0814279A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081427A0: .4byte sub_813B1E8
_081427A4: .4byte sub_813B360
_081427A8: .4byte sub_8141508
