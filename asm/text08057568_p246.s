	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81392F4
sub_81392F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813931A
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813931A:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0, #0x0C]
	ldr r3, [r0, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r5, #0x0
	bl sub_81382A8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	subs r1, #0x07
	ands r0, r1
	adds r1, #0x04
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08139360 @ =0x08139365
	str r0, [r6, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139360: .4byte sub_8139364
	thumb_func_start sub_8139364
sub_8139364:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0813937E
	adds r0, r4, #0x0
	bl sub_81382A8
	b _08139396
_0813937E:
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
_08139396:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_813939C
sub_813939C:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081393D2
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _081393D2
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	subs r2, #0x3A
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_081393D2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81393D8
sub_81393D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138B84
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _08139418 @ =0x0813B381
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813941C @ =0x081397CD
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139418: .4byte sub_813B380
_0813941C: .4byte sub_81397CC
	thumb_func_start sub_8139420
sub_8139420:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_81386C0
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08139468 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139468: .4byte sub_813980C
	thumb_func_start sub_813946C
sub_813946C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8138A78
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081394C4 @ =0x081398C5
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldr r1, _081394C8 @ =0x08139421
	str r1, [r2, #0x00]
	movs r3, #0xD2
	lsls r3, r3, #0x01
	adds r0, r5, r3
	str r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _081394BC
	adds r0, r5, #0x0
	bl sub_81391A0
_081394BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081394C4: .4byte sub_81398C4
_081394C8: .4byte sub_8139420
	thumb_func_start sub_81394CC
sub_81394CC:
	push {r4, lr}
	ldr r2, _081394E8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r3, [r4, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r3
	strb r2, [r4, #0x00]
	bl sub_81393D8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081394E8: .4byte 0x000002B6
	thumb_func_start sub_81394EC
sub_81394EC:
	push {r4, lr}
	ldr r2, _08139504 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813946C
	pop {r4}
	pop {r0}
	bx r0
_08139504: .4byte 0x000002B6
	thumb_func_start sub_8139508
sub_8139508:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08139558 @ =0x08136A85
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139558: .4byte sub_8136A84
	thumb_func_start sub_813955C
sub_813955C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081395A8 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081395A8: .4byte sub_813980C
	thumb_func_start sub_81395AC
sub_81395AC:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8138610
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081395E2
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _081395E4
_081395E2:
	ldr r1, _0813960C @ =0x0000FFFF
_081395E4:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _081395FC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80478AC
_081395FC:
	ldr r0, _08139610 @ =0x00000242
	adds r1, r4, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813960C: .4byte 0x0000FFFF
_08139610: .4byte 0x00000242
	thumb_func_start sub_8139614
sub_8139614:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139648
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r1, _08139644 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08139672
	adds r0, r4, #0x0
	bl sub_8137FA4
	b _08139672
	.byte 0x00, 0x00
_08139644: .4byte 0x000002B5
_08139648:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _08139678 @ =0x0813B1E9
	cmp r0, #0x00
	bne _08139670
	ldr r1, [r5, #0x04]
_08139670:
	str r1, [r5, #0x00]
_08139672:
	pop {r4, r5}
	pop {r0}
	bx r0
_08139678: .4byte sub_813B1E8
	thumb_func_start sub_813967C
sub_813967C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_8137440
	adds r0, r4, #0x0
	bl sub_8137E50
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081396A4 @ =0x08139615
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081396A4: .4byte sub_8139614
	thumb_func_start sub_81396A8
sub_81396A8:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	ldr r1, _081396D4 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081396CE
	adds r0, r4, #0x0
	bl sub_81385A8
_081396CE:
	pop {r4}
	pop {r0}
	bx r0
_081396D4: .4byte 0x000002B5
	thumb_func_start sub_81396D8
sub_81396D8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081396F6
	adds r0, r4, #0x0
	bl sub_80473DC
_081396F6:
	ldr r3, [r5, #0x04]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8139708
sub_8139708:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0xFF
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r4, #0x0
	bl sub_81385A8
	ldr r0, _08139754 @ =0x08136A85
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139754: .4byte sub_8136A84
	thumb_func_start sub_8139758
sub_8139758:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139772
	adds r0, r4, #0x0
	bl sub_81382A8
	b _081397C4
_08139772:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081397AC
	ldr r0, _081397A8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _081397C4
	.byte 0x00, 0x00
_081397A8: .4byte sub_813B1E8
_081397AC:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_081397C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81397CC
sub_81397CC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813729C
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r4, #0x0
	bl sub_81382A8
	ldr r0, _08139808 @ =0x08139759
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139808: .4byte sub_8139758
	thumb_func_start sub_813980C
sub_813980C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139826
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08139878
_08139826:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08139860
	ldr r0, _0813985C @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08139878
	.byte 0x00, 0x00
_0813985C: .4byte sub_813B1E8
_08139860:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08139878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8139880
sub_8139880:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0xFF
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081398C0 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081398C0: .4byte sub_813980C
	thumb_func_start sub_81398C4
sub_81398C4:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _081398EA
	adds r0, r4, #0x0
	bl sub_81391A0
_081398EA:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xB5, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_81398FC
sub_81398FC:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139930 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139934 @ =0x08139509
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _08139938 @ =0x081396D9
	str r1, [r2, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
_08139930: .4byte sub_813B380
_08139934: .4byte sub_8139508
_08139938: .4byte sub_81396D8
	thumb_func_start sub_813993C
sub_813993C:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139968 @ =0x081398C5
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _0813996C @ =0x0813955D
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139968: .4byte sub_81398C4
_0813996C: .4byte sub_813955C
