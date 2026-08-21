	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80942CC
sub_80942CC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080942EC
	ldr r2, _080942F4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080942EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080942F4: .4byte 0x0000204D
	thumb_func_start sub_80942F8
sub_80942F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809431A
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0809431A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8094320
sub_8094320:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08094384 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08094388 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x06
	bl sub_81DD77C
	adds r5, r0, #0x4
	cmp r5, #0x00
	beq _08094390
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _0809438C @ =0x08094515
	b _08094392
	.byte 0x00, 0x00
_08094384: .4byte 0x084FE8A8
_08094388: .4byte 0x03000FF4
_0809438C: .4byte sub_8094514
_08094390:
	ldr r0, _080943B4 @ =0x080944D1
_08094392:
	str r0, [r4, #0x4C]
	ldr r0, _080943B8 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080943BC @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080943B4: .4byte sub_80944D0
_080943B8: .4byte 0x03001038
_080943BC: .4byte 0x006E1E40
	thumb_func_start sub_80943C0
sub_80943C0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08094424 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08094428 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0B
	bl sub_81DD77C
	adds r5, r0, #0x5
	cmp r5, #0x00
	beq _08094434
	ldr r2, _0809442C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08094430 @ =0x080944AD
	b _08094436
	.byte 0x00, 0x00
_08094424: .4byte 0x084FE9A4
_08094428: .4byte 0x03000FF4
_0809442C: .4byte 0x0000204D
_08094430: .4byte sub_80944AC
_08094434:
	ldr r0, _08094458 @ =0x08094465
_08094436:
	str r0, [r4, #0x4C]
	ldr r0, _0809445C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08094460 @ =0x005A1440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08094458: .4byte sub_8094464
_0809445C: .4byte 0x03001038
_08094460: .4byte 0x005A1440
	thumb_func_start sub_8094464
sub_8094464:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x48
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _080944A4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080944A8 @ =0x08094575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080944A4: .4byte 0x0000204D
_080944A8: .4byte sub_8094574
	thumb_func_start sub_80944AC
sub_80944AC:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080944CC
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8094464
_080944CC:
	pop {r0}
	bx r0
	thumb_func_start sub_80944D0
sub_80944D0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x58
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094510 @ =0x080945E5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08094510: .4byte sub_80945E4
	thumb_func_start sub_8094514
sub_8094514:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094534
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_80944D0
_08094534:
	pop {r0}
	bx r0
	thumb_func_start sub_8094538
sub_8094538:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08094554
	adds r0, r4, #0x0
	bl sub_8094320
	b _08094562
_08094554:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08094562
	adds r0, r4, #0x0
	bl sub_80943C0
_08094562:
	ldr r0, _08094570 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08094570: .4byte sub_8087540
	thumb_func_start sub_8094574
sub_8094574:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _080945D6
	ldr r0, _080945DC @ =0x08094655
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080945D6
	ldr r2, _080945E0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_080945D6:
	pop {r4}
	pop {r0}
	bx r0
_080945DC: .4byte sub_8094654
_080945E0: .4byte 0x0000204D
	thumb_func_start sub_80945E4
sub_80945E4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _08094648
	ldr r0, _08094650 @ =0x080946BD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08094648
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08094648:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094650: .4byte sub_80946BC
	thumb_func_start sub_8094654
sub_8094654:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080946AE
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _080946B4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080946B8 @ =0x08094725
	str r0, [r4, #0x4C]
_080946AE:
	pop {r4}
	pop {r0}
	bx r0
_080946B4: .4byte 0x0000204D
_080946B8: .4byte sub_8094724
	thumb_func_start sub_80946BC
sub_80946BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08094718
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094720 @ =0x08094751
	str r0, [r4, #0x4C]
_08094718:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094720: .4byte sub_8094750
	thumb_func_start sub_8094724
sub_8094724:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08094744
	ldr r2, _0809474C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08094744:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809474C: .4byte 0x0000204D
	thumb_func_start sub_8094750
sub_8094750:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08094772
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08094772:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8094778
sub_8094778:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080947DC @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _080947E0 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x05
	bl sub_81DD77C
	adds r5, r0, #0x7
	cmp r5, #0x00
	beq _080947E8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _080947E4 @ =0x0809496D
	b _080947EA
	.byte 0x00, 0x00
_080947DC: .4byte 0x084FE8A8
_080947E0: .4byte 0x03000FF4
_080947E4: .4byte sub_809496C
_080947E8:
	ldr r0, _0809480C @ =0x08094929
_080947EA:
	str r0, [r4, #0x4C]
	ldr r0, _08094810 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08094814 @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_0809480C: .4byte sub_8094928
_08094810: .4byte 0x03001038
_08094814: .4byte 0x006E1E40
	thumb_func_start sub_8094818
sub_8094818:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0809487C @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08094880 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0B
	bl sub_81DD77C
	adds r5, r0, #0x5
	cmp r5, #0x00
	beq _0809488C
	ldr r2, _08094884 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08094888 @ =0x08094905
	b _0809488E
	.byte 0x00, 0x00
_0809487C: .4byte 0x084FE9A4
_08094880: .4byte 0x03000FF4
_08094884: .4byte 0x0000204D
_08094888: .4byte sub_8094904
_0809488C:
	ldr r0, _080948B0 @ =0x080948BD
_0809488E:
	str r0, [r4, #0x4C]
	ldr r0, _080948B4 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080948B8 @ =0x005A1440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080948B0: .4byte sub_80948BC
_080948B4: .4byte 0x03001038
_080948B8: .4byte 0x005A1440
	thumb_func_start sub_80948BC
sub_80948BC:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x48
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _080948FC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094900 @ =0x080949CD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080948FC: .4byte 0x0000204D
_08094900: .4byte sub_80949CC
	thumb_func_start sub_8094904
sub_8094904:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094924
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_80948BC
_08094924:
	pop {r0}
	bx r0
	thumb_func_start sub_8094928
sub_8094928:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x58
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094968 @ =0x08094A3D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08094968: .4byte sub_8094A3C
	thumb_func_start sub_809496C
sub_809496C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0809498C
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8094928
_0809498C:
	pop {r0}
	bx r0
	thumb_func_start sub_8094990
sub_8094990:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080949AC
	adds r0, r4, #0x0
	bl sub_8094778
	b _080949BA
_080949AC:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080949BA
	adds r0, r4, #0x0
	bl sub_8094818
_080949BA:
	ldr r0, _080949C8 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080949C8: .4byte sub_8087540
	thumb_func_start sub_80949CC
sub_80949CC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _08094A2E
	ldr r0, _08094A34 @ =0x08094AAD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08094A2E
	ldr r2, _08094A38 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08094A2E:
	pop {r4}
	pop {r0}
	bx r0
_08094A34: .4byte sub_8094AAC
_08094A38: .4byte 0x0000204D
	thumb_func_start sub_8094A3C
sub_8094A3C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _08094AA0
	ldr r0, _08094AA8 @ =0x08094B15
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08094AA0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08094AA0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094AA8: .4byte sub_8094B14
	thumb_func_start sub_8094AAC
sub_8094AAC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08094B06
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _08094B0C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094B10 @ =0x08094B7D
	str r0, [r4, #0x4C]
_08094B06:
	pop {r4}
	pop {r0}
	bx r0
_08094B0C: .4byte 0x0000204D
_08094B10: .4byte sub_8094B7C
	thumb_func_start sub_8094B14
sub_8094B14:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08094B70
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094B78 @ =0x08094BA9
	str r0, [r4, #0x4C]
_08094B70:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094B78: .4byte sub_8094BA8
	thumb_func_start sub_8094B7C
sub_8094B7C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08094B9C
	ldr r2, _08094BA4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08094B9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094BA4: .4byte 0x0000204D
	thumb_func_start sub_8094BA8
sub_8094BA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08094BCA
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08094BCA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8094BD0
sub_8094BD0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08094C34 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08094C38 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r5, r0, #0x2
	cmp r5, #0x00
	beq _08094C40
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08094C3C @ =0x08094DC5
	b _08094C42
	.byte 0x00, 0x00
_08094C34: .4byte 0x084FE8A8
_08094C38: .4byte 0x03000FF4
_08094C3C: .4byte sub_8094DC4
_08094C40:
	ldr r0, _08094C64 @ =0x08094D81
_08094C42:
	str r0, [r4, #0x4C]
	ldr r0, _08094C68 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08094C6C @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08094C64: .4byte sub_8094D80
_08094C68: .4byte 0x03001038
_08094C6C: .4byte 0x006E1E40
	thumb_func_start sub_8094C70
sub_8094C70:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08094CD4 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08094CD8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0B
	bl sub_81DD77C
	adds r5, r0, #0x5
	cmp r5, #0x00
	beq _08094CE4
	ldr r2, _08094CDC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08094CE0 @ =0x08094D5D
	b _08094CE6
	.byte 0x00, 0x00
_08094CD4: .4byte 0x084FE9A4
_08094CD8: .4byte 0x03000FF4
_08094CDC: .4byte 0x0000204D
_08094CE0: .4byte sub_8094D5C
_08094CE4:
	ldr r0, _08094D08 @ =0x08094D15
_08094CE6:
	str r0, [r4, #0x4C]
	ldr r0, _08094D0C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08094D10 @ =0x005A1440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08094D08: .4byte sub_8094D14
_08094D0C: .4byte 0x03001038
_08094D10: .4byte 0x005A1440
	thumb_func_start sub_8094D14
sub_8094D14:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x48
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _08094D54 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094D58 @ =0x08094E25
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094D54: .4byte 0x0000204D
_08094D58: .4byte sub_8094E24
	thumb_func_start sub_8094D5C
sub_8094D5C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094D7C
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8094D14
_08094D7C:
	pop {r0}
	bx r0
	thumb_func_start sub_8094D80
sub_8094D80:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x58
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094DC0 @ =0x08094E95
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08094DC0: .4byte sub_8094E94
	thumb_func_start sub_8094DC4
sub_8094DC4:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094DE4
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8094D80
_08094DE4:
	pop {r0}
	bx r0
	thumb_func_start sub_8094DE8
sub_8094DE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08094E04
	adds r0, r4, #0x0
	bl sub_8094BD0
	b _08094E12
_08094E04:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08094E12
	adds r0, r4, #0x0
	bl sub_8094C70
_08094E12:
	ldr r0, _08094E20 @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08094E20: .4byte sub_8087540
	thumb_func_start sub_8094E24
sub_8094E24:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _08094E86
	ldr r0, _08094E8C @ =0x08094F05
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08094E86
	ldr r2, _08094E90 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08094E86:
	pop {r4}
	pop {r0}
	bx r0
_08094E8C: .4byte sub_8094F04
_08094E90: .4byte 0x0000204D
	thumb_func_start sub_8094E94
sub_8094E94:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _08094EF8
	ldr r0, _08094F00 @ =0x08094F6D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08094EF8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08094EF8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094F00: .4byte sub_8094F6C
	thumb_func_start sub_8094F04
sub_8094F04:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08094F5E
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _08094F64 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094F68 @ =0x08094FD5
	str r0, [r4, #0x4C]
_08094F5E:
	pop {r4}
	pop {r0}
	bx r0
_08094F64: .4byte 0x0000204D
_08094F68: .4byte sub_8094FD4
	thumb_func_start sub_8094F6C
sub_8094F6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08094FC8
	subs r2, #0x3B
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08094FD0 @ =0x08095001
	str r0, [r4, #0x4C]
_08094FC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094FD0: .4byte sub_8095000
	thumb_func_start sub_8094FD4
sub_8094FD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08094FF4
	ldr r2, _08094FFC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08094FF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08094FFC: .4byte 0x0000204D
	thumb_func_start sub_8095000
sub_8095000:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08095022
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08095022:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8095028
sub_8095028:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _080950BC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r7, #0x00
	str r7, [r0, #0x00]
	ldr r6, [r4, #0x2C]
	ldr r5, [r4, #0x6C]
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _08095050
	adds r0, r4, #0x0
	bl _call_via_r1
_08095050:
	str r6, [r4, #0x2C]
	str r5, [r4, #0x6C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080950C0 @ =0x080954DD
	str r0, [r4, #0x58]
	ldr r0, _080950C4 @ =0x08095469
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _080950C8 @ =0x00001AA8
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r4, #0x1C]
	strh r7, [r4, #0x1E]
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x50]
	ldr r0, _080950CC @ =0x0809545D
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080950BC: .4byte 0x03000FD8
_080950C0: .4byte sub_80954DC
_080950C4: .4byte sub_8095468
_080950C8: .4byte 0x00001AA8
_080950CC: .4byte 0x0809545D
	thumb_func_start sub_80950D0
sub_80950D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x00
	movs r7, #0x00
_080950E2:
	ldr r0, _080951A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08095128
	cmp r4, r5
	beq _08095128
	adds r0, r5, #0x0
	adds r0, #0x47
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08095128
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _08095128
	mov r8, r4
_08095128:
	adds r1, r7, #0x1
	ldr r0, _080951A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08095170
	cmp r4, r5
	beq _08095170
	adds r0, r5, #0x0
	adds r0, #0x47
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08095170
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _08095170
	mov r8, r4
_08095170:
	adds r7, #0x02
	cmp r7, #0x05
	ble _080950E2
	mov r0, r8
	str r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _080951A8
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _08095186
	adds r1, #0xFF
_08095186:
	asrs r1, r1, #0x08
	mov r0, r8
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _08095192
	adds r2, #0xFF
_08095192:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	b _080951CE
_080951A4: .4byte 0x03000FD8
_080951A8:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080951B0
	adds r0, #0xFF
_080951B0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x64
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080951BE
	adds r2, #0xFF
_080951BE:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
_080951CE:
	movs r0, #0x1C
	ldsh r1, [r5, r0]
	adds r0, r5, #0x0
	bl sub_80880C4
	ldrh r0, [r5, #0x1C]
	adds r0, #0x4C
	strh r0, [r5, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xE0
	lsls r1, r1, #0x02
	cmp r0, r1
	ble _080951EC
	strh r1, [r5, #0x1C]
_080951EC:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x0A
	strh r0, [r5, #0x20]
	ldr r0, _08095218 @ =0x0809521D
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08095218: .4byte sub_809521C
	thumb_func_start sub_809521C
sub_809521C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080952B0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r7, [r6, #0x2C]
	adds r0, r6, #0x0
	bl sub_8088020
	ldrh r0, [r6, #0x20]
	subs r0, #0x01
	strh r0, [r6, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08095276
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _08095254
	adds r1, #0xFF
_08095254:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _0809525E
	adds r2, #0xFF
_0809525E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _08095268
	adds r3, #0xFF
_08095268:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080952B4 @ =0x00001CF0
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r6, #0x20]
_08095276:
	ldr r0, [r6, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r0, r6, #0x0
	adds r0, #0x45
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0x00
	ble _0809529C
	adds r0, r6, #0x0
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0xEF
	ble _080952B8
_0809529C:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	ldr r0, _080952B0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	b _080953C0
_080952B0: .4byte 0x03000FD8
_080952B4: .4byte 0x00001CF0
_080952B8:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_80875E0
	cmp r0, #0x00
	beq _080953C0
	adds r4, r6, #0x0
	adds r4, #0xC8
	ldrh r5, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x01
	adds r2, #0x06
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_807F3AC
	strh r5, [r4, #0x00]
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080952E6
	adds r1, #0xFF
_080952E6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080952F0
	adds r2, #0xFF
_080952F0:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080952FA
	adds r3, #0xFF
_080952FA:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xE8
	lsls r0, r0, #0x05
	bl sub_80DF024
	movs r1, #0x1E
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08095320
	mov r0, r8
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095332
	movs r0, #0x01
	b _08095330
_08095320:
	mov r0, r9
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095332
	movs r0, #0x00
_08095330:
	strh r0, [r6, #0x1E]
_08095332:
	movs r2, #0x1E
	ldsh r0, [r6, r2]
	mov r7, r8
	cmp r0, #0x00
	bne _0809533E
	mov r7, r9
_0809533E:
	str r7, [r6, #0x2C]
	cmp r7, #0x00
	beq _0809536A
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0809534C
	adds r1, #0xFF
_0809534C:
	asrs r3, r1, #0x08
	ldr r1, [r7, #0x3C]
	cmp r1, #0x00
	bge _08095356
	adds r1, #0xFF
_08095356:
	asrs r2, r1, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	b _08095390
_0809536A:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08095372
	adds r0, #0xFF
_08095372:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x64
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08095380
	adds r2, #0xFF
_08095380:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
_08095390:
	movs r0, #0x1C
	ldsh r1, [r6, r0]
	adds r0, r6, #0x0
	bl sub_80880C4
	ldrh r0, [r6, #0x1C]
	adds r0, #0x4C
	strh r0, [r6, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xE0
	lsls r1, r1, #0x02
	cmp r0, r1
	ble _080953AE
	strh r1, [r6, #0x1C]
_080953AE:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x0A
	strh r0, [r6, #0x20]
	ldr r0, _080953D0 @ =0x080953D5
	str r0, [r6, #0x4C]
_080953C0:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080953D0: .4byte sub_80953D4
	thumb_func_start sub_80953D4
sub_80953D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8088020
	ldrh r0, [r4, #0x20]
	subs r0, #0x01
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08095414
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080953F2
	adds r1, #0xFF
_080953F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080953FC
	adds r2, #0xFF
_080953FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095406
	adds r3, #0xFF
_08095406:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08095454 @ =0x00001CE7
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r4, #0x20]
_08095414:
	ldr r0, [r4, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	adds r0, #0x45
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0x00
	ble _0809543A
	adds r0, r4, #0x0
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0xEF
	ble _0809544C
_0809543A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _08095458 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0809544C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08095454: .4byte 0x00001CE7
_08095458: .4byte 0x03000FD8
	.byte 0x01, 0x49, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00, 0x1D, 0x55, 0x09, 0x08
	thumb_func_start sub_8095468
sub_8095468:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _080954D6
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0809548C
	strh r2, [r4, #0x1E]
	b _08095490
_0809548C:
	movs r0, #0x01
	strh r0, [r4, #0x1E]
_08095490:
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _080954A4
	ldr r0, _080954A0 @ =0x080950D1
	str r0, [r4, #0x4C]
	b _080954BA
	.byte 0x00, 0x00
_080954A0: .4byte sub_80950D0
_080954A4:
	movs r0, #0x1C
	ldsh r2, [r4, r0]
	adds r1, r2, #0x0
	adds r1, #0x4C
	movs r0, #0xE0
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x4C
	adds r0, r4, #0x0
	bl sub_80880C4
_080954BA:
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
_080954D6:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80954DC
sub_80954DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_810DD7C
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080954EE
	adds r1, #0xFF
_080954EE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080954F8
	adds r2, #0xFF
_080954F8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095502
	adds r3, #0xFF
_08095502:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08095518 @ =0x00001CF9
	bl sub_80DF024
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08095518: .4byte 0x00001CF9
	thumb_func_start sub_809551C
sub_809551C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809553C
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08095544 @ =0x08095549
	str r0, [r4, #0x4C]
_0809553C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095544: .4byte sub_8095548
	thumb_func_start sub_8095548
sub_8095548:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08095574
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809557C @ =0x08095581
	str r0, [r4, #0x4C]
_08095574:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809557C: .4byte 0x08095581
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8095584
sub_8095584:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _0809560C @ =0x03000FF4
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x3C
	ldr r1, [r2, #0x00]
	subs r1, r1, r0
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r0, [r1, #0x2A]
	str r0, [r2, #0x00]
	ldr r0, _08095610 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r2, r9
	ldr r0, [r2, #0x2C]
	str r0, [r6, #0x2C]
	str r0, [r1, #0x2C]
	ldr r1, [r2, #0x6C]
	str r1, [r6, #0x6C]
	mov r2, r8
	str r1, [r2, #0x6C]
	movs r3, #0x00
	str r3, [r0, #0x50]
	str r3, [r6, #0x50]
	str r3, [r2, #0x50]
	adds r2, r0, #0x0
	adds r2, #0x7C
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x00]
	adds r4, #0x84
	strh r1, [r4, #0x00]
	adds r5, #0x84
	strh r1, [r5, #0x00]
	ldr r1, _08095614 @ =0x08095619
	mov r4, r9
	str r1, [r4, #0x4C]
	strh r3, [r6, #0x24]
	mov r1, r8
	strh r3, [r1, #0x24]
	bl sub_80870B4
	movs r0, #0x01
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809560C: .4byte 0x03000FF4
_08095610: .4byte 0x03000FD8
_08095614: .4byte sub_8095618
	thumb_func_start sub_8095618
sub_8095618:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080956B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r5, r1, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	movs r0, #0x06
	mov r8, r0
	ands r0, r1
	cmp r0, #0x02
	bne _0809570C
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08095652
	adds r0, #0xFF
_08095652:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08095660
	adds r0, #0xFF
_08095660:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809566E
	adds r0, #0xFF
_0809566E:
	asrs r3, r0, #0x08
	movs r7, #0x01
	negs r7, r7
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	ldrb r0, [r5, #0x00]
	mov r1, r8
	ands r1, r0
	cmp r1, #0x02
	beq _08095694
	cmp r1, #0x04
	bne _080956F4
_08095694:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _080956B8
	ldr r2, _080956B4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080956C4
	.byte 0x00, 0x00
_080956B0: .4byte 0x03000FD8
_080956B4: .4byte 0x00002002
_080956B8:
	ldr r2, _08095788 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080956C4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080956DA
	movs r2, #0x01
_080956DA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080956F4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08095702
	cmp r2, #0x04
	bne _0809570C
_08095702:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_0809570C:
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x02
	bne _080957E4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809572C
	adds r0, #0xFF
_0809572C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809573A
	adds r0, #0xFF
_0809573A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08095748
	adds r0, #0xFF
_08095748:
	asrs r3, r0, #0x08
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
	ldrb r0, [r7, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x02
	beq _0809576E
	cmp r1, #0x04
	bne _080957CC
_0809576E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _08095790
	ldr r2, _0809578C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809579C
_08095788: .4byte 0x0000204F
_0809578C: .4byte 0x00002002
_08095790:
	ldr r2, _080957F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809579C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080957B2
	movs r2, #0x01
_080957B2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080957CC:
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080957DA
	cmp r1, #0x04
	bne _080957E4
_080957DA:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080957E4:
	ldr r0, _080957FC @ =0x08095801
	mov r7, r9
	str r0, [r7, #0x50]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080957F8: .4byte 0x0000204F
_080957FC: .4byte sub_8095800
