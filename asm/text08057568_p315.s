	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8093350
sub_8093350:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093370 @ =0x08093351
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093374
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093446
	.byte 0x00, 0x00
_08093370: .4byte sub_8093350
_08093374:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _080933DC
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _080933CC @ =0x03001038
	ldr r0, _080933D0 @ =0x0819832C
	ldr r1, _080933D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x08
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080933D8 @ =0x08093E21
	str r0, [r4, #0x4C]
	b _08093446
	.byte 0x00, 0x00
_080933CC: .4byte 0x03001038
_080933D0: .4byte 0x0819832C
_080933D4: .4byte 0x08198220
_080933D8: .4byte sub_8093E20
_080933DC:
	cmp r1, #0x03
	bgt _080933FC
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08093436
	ldr r2, _080933F8 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08093436
_080933F8: .4byte 0x00002025
_080933FC:
	cmp r1, #0x07
	bgt _0809341C
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08093436
	ldr r2, _08093418 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _08093436
_08093418: .4byte 0x00002025
_0809341C:
	cmp r1, #0x0B
	bgt _08093436
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _08093436
	ldr r2, _0809344C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08093436:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_08093446:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809344C: .4byte 0x00002025
	thumb_func_start sub_8093450
sub_8093450:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093468
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809357A
_08093468:
	ldr r0, _080934B0 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _080934B8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x05
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, #0x0A
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080934B4 @ =0x08093DBD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0809357A
_080934B0: .4byte 0x0300034C
_080934B4: .4byte sub_8093DBC
_080934B8:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x31
	ble _08093564
	ldr r0, [r4, #0x28]
	ldr r1, _08093518 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _08093530
	ldr r0, _0809351C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _0809352C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _08093520 @ =0x03001038
	ldr r0, _08093524 @ =0x0819832C
	ldr r1, _08093528 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x08
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _0809354C
	.byte 0x00, 0x00
_08093518: .4byte 0x0000012D
_0809351C: .4byte 0x03000FD8
_08093520: .4byte 0x03001038
_08093524: .4byte 0x0819832C
_08093528: .4byte 0x08198220
_0809352C:
	movs r0, #0x32
	b _08093578
_08093530:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
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
_0809354C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08093560 @ =0x08093E21
	str r0, [r4, #0x4C]
	b _0809357A
	.byte 0x00, 0x00
_08093560: .4byte sub_8093E20
_08093564:
	cmp r0, #0x18
	ble _08093574
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08093574:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_08093578:
	strh r0, [r3, #0x00]
_0809357A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8093580
sub_8093580:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093598
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809371C
_08093598:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _08093624 @ =0x03001038
	ldr r1, _08093628 @ =0x0819832C
	ldr r2, _0809362C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _08093630 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080935E2
	adds r0, #0x3F
_080935E2:
	asrs r0, r0, #0x06
	movs r2, #0x16
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r7, #0xB0
	lsls r7, r7, #0x05
	adds r1, r0, r7
	ldr r0, _08093634 @ =0x08198504
	adds r0, r3, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08093606
	adds r0, #0x3F
_08093606:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08093638
	ldr r0, [r5, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r0, r0, r7
	b _0809363E
_08093624: .4byte 0x03001038
_08093628: .4byte 0x0819832C
_0809362C: .4byte 0x08198220
_08093630: .4byte 0x08198584
_08093634: .4byte 0x08198504
_08093638:
	ldr r0, [r5, #0x00]
	ldr r1, _080936FC @ =0xFFFFF400
	adds r0, r0, r1
_0809363E:
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x02
	bne _08093658
	ldr r2, _08093700 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_08093658:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x03
	bne _0809366C
	ldr r2, _08093700 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_0809366C:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	bne _08093680
	ldr r2, _08093700 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_08093680:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x05
	bne _08093694
	ldr r2, _08093700 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_08093694:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x06
	bne _080936A8
	ldr r2, _08093700 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_080936A8:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _0809370C
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _08093704 @ =0x08093D6D
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _0809371C
	ldr r3, _08093708 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0809371C
_080936FC: .4byte 0xFFFFF400
_08093700: .4byte 0x00002025
_08093704: .4byte sub_8093D6C
_08093708: .4byte 0x00000111
_0809370C:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0809371C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8093724
sub_8093724:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08093734
	adds r2, #0xFF
_08093734:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0809373E
	adds r3, #0xFF
_0809373E:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08093748
	adds r0, #0xFF
_08093748:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r5, #0x30]
	movs r0, #0x76
	adds r0, r0, r2
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x44
	movs r1, #0xF6
	strb r1, [r0, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x45
	movs r0, #0x08
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x46
	strb r1, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x47
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0xF4
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x04
	strb r0, [r1, #0x00]
	adds r3, #0x32
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r2, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _080937F4 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _080937F8 @ =0x08087541
	str r0, [r2, #0x68]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	bl sub_80937FC
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080937F4: .4byte 0x084FE8B4
_080937F8: .4byte sub_8087540
	thumb_func_start sub_80937FC
sub_80937FC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809381C @ =0x080937FD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _08093820
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080938DA
	.byte 0x00, 0x00
_0809381C: .4byte sub_80937FC
_08093820:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0809383A
	ldr r2, _080938A0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809383A:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _0809384E
	ldr r2, _080938A0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_0809384E:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x06
	bne _08093862
	ldr r2, _080938A0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08093862:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08093876
	ldr r2, _080938A0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_08093876:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0C
	beq _080938AC
	ldr r0, _080938A4 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080938CA
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _080938A8 @ =0x080938E5
	str r0, [r4, #0x4C]
	b _080938DA
	.byte 0x00, 0x00
_080938A0: .4byte 0x00002054
_080938A4: .4byte 0x0300034C
_080938A8: .4byte sub_80938E4
_080938AC:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	strh r6, [r5, #0x00]
	ldr r0, _080938E0 @ =0x080939E5
	str r0, [r4, #0x4C]
_080938CA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_080938DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080938E0: .4byte sub_80939E4
	thumb_func_start sub_80938E4
sub_80938E4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093904 @ =0x080938E5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093908
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080939DA
	.byte 0x00, 0x00
_08093904: .4byte sub_80938E4
_08093908:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08093970
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _08093960 @ =0x03001038
	ldr r0, _08093964 @ =0x0819832C
	ldr r1, _08093968 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809396C @ =0x08093E21
	str r0, [r4, #0x4C]
	b _080939DA
	.byte 0x00, 0x00
_08093960: .4byte 0x03001038
_08093964: .4byte 0x0819832C
_08093968: .4byte 0x08198220
_0809396C: .4byte sub_8093E20
_08093970:
	cmp r1, #0x08
	bgt _08093990
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080939CA
	ldr r2, _0809398C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080939CA
_0809398C: .4byte 0x00002054
_08093990:
	cmp r1, #0x11
	bgt _080939B0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080939CA
	ldr r2, _080939AC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _080939CA
_080939AC: .4byte 0x00002054
_080939B0:
	cmp r1, #0x1A
	bgt _080939CA
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _080939CA
	ldr r2, _080939E0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080939CA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_080939DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080939E0: .4byte 0x00002054
	thumb_func_start sub_80939E4
sub_80939E4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080939FC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093B0E
_080939FC:
	ldr r0, _08093A44 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _08093A4C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x05
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, #0x0A
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08093A48 @ =0x08093D0D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _08093B0E
_08093A44: .4byte 0x0300034C
_08093A48: .4byte sub_8093D0C
_08093A4C:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x2C
	ble _08093AF8
	ldr r0, [r4, #0x28]
	ldr r1, _08093AAC @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _08093AC4
	ldr r0, _08093AB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _08093AC0
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
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
	ldr r2, _08093AB4 @ =0x03001038
	ldr r0, _08093AB8 @ =0x0819832C
	ldr r1, _08093ABC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08093AE0
	.byte 0x00, 0x00
_08093AAC: .4byte 0x0000012D
_08093AB0: .4byte 0x03000FD8
_08093AB4: .4byte 0x03001038
_08093AB8: .4byte 0x0819832C
_08093ABC: .4byte 0x08198220
_08093AC0:
	movs r0, #0x2D
	b _08093B0C
_08093AC4:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
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
_08093AE0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08093AF4 @ =0x08093E21
	str r0, [r4, #0x4C]
	b _08093B0E
	.byte 0x00, 0x00
_08093AF4: .4byte sub_8093E20
_08093AF8:
	cmp r0, #0x1D
	ble _08093B08
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08093B08:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_08093B0C:
	strh r0, [r3, #0x00]
_08093B0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8093B14
sub_8093B14:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093B2C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093CB4
_08093B2C:
	ldr r6, [r4, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x2A
	adds r5, r6, #0x0
	adds r5, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r3, _08093BB8 @ =0x03001038
	ldr r1, _08093BBC @ =0x0819832C
	ldr r2, _08093BC0 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _08093BC4 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08093B76
	adds r0, #0x3F
_08093B76:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	movs r1, #0xD0
	lsls r1, r1, #0x05
	adds r2, r0, r1
	ldr r0, _08093BC8 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08093B9A
	adds r0, #0x3F
_08093B9A:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r2, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08093BD0
	ldr r0, [r5, #0x00]
	ldr r1, _08093BCC @ =0x00000998
	b _08093BD4
_08093BB8: .4byte 0x03001038
_08093BBC: .4byte 0x0819832C
_08093BC0: .4byte 0x08198220
_08093BC4: .4byte 0x08198584
_08093BC8: .4byte 0x08198504
_08093BCC: .4byte 0x00000998
_08093BD0:
	ldr r0, [r5, #0x00]
	ldr r1, _08093C94 @ =0xFFFFF668
_08093BD4:
	adds r0, r0, r1
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _08093BF0
	ldr r2, _08093C98 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_08093BF0:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _08093C04
	ldr r2, _08093C98 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08093C04:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _08093C18
	ldr r2, _08093C98 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_08093C18:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08093C2C
	ldr r2, _08093C98 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_08093C2C:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bne _08093C40
	ldr r2, _08093C98 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_08093C40:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08093CA4
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	strh r0, [r5, #0x00]
	ldr r0, _08093C9C @ =0x08093CBD
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08093CB4
	ldr r1, _08093CA0 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08093CB4
_08093C94: .4byte 0xFFFFF668
_08093C98: .4byte 0x00002054
_08093C9C: .4byte sub_8093CBC
_08093CA0: .4byte 0x00000111
_08093CA4:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08093CB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8093CBC
sub_8093CBC:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08093CD4
	ldr r0, _08093CEC @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08093CD4:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093CF0
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08093D08
	.byte 0x00, 0x00
_08093CEC: .4byte 0x00000111
_08093CF0:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _08093D08
	adds r0, r3, #0x0
	bl sub_808DD2C
_08093D08:
	pop {r0}
	bx r0
	thumb_func_start sub_8093D0C
sub_8093D0C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093D24
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093D62
_08093D24:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08093D34
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08093D62
_08093D34:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08093D68 @ =0x08093B15
	str r0, [r4, #0x4C]
_08093D62:
	pop {r4}
	pop {r0}
	bx r0
_08093D68: .4byte sub_8093B14
	thumb_func_start sub_8093D6C
sub_8093D6C:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08093D84
	ldr r0, _08093D9C @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08093D84:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093DA0
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08093DB8
	.byte 0x00, 0x00
_08093D9C: .4byte 0x00000111
_08093DA0:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08093DB8
	adds r0, r3, #0x0
	bl sub_808DD2C
_08093DB8:
	pop {r0}
	bx r0
	thumb_func_start sub_8093DBC
sub_8093DBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093DD4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08093E10
_08093DD4:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08093DE4
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08093E10
_08093DE4:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08093E18 @ =0xFFFFFE34
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08093E1C @ =0x08093581
	str r0, [r4, #0x4C]
_08093E10:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08093E18: .4byte 0xFFFFFE34
_08093E1C: .4byte sub_8093580
	thumb_func_start sub_8093E20
sub_8093E20:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093E38
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08093E4A
_08093E38:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08093E4A
	adds r0, r2, #0x0
	bl sub_808DD2C
_08093E4A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
