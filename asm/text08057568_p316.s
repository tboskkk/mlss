	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8093EA4
sub_8093EA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08093EC0
	adds r0, r4, #0x0
	bl sub_8093F8C
	b _08093ECE
_08093EC0:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08093ECE
	adds r0, r4, #0x0
	bl sub_8093F08
_08093ECE:
	ldr r0, _08093EDC @ =0x08087541
	str r0, [r4, #0x68]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08093EDC: .4byte sub_8087540
	thumb_func_start sub_8093EE0
sub_8093EE0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08093EFC
	adds r0, r2, #0x0
	bl sub_8093194
	b _08093F02
_08093EFC:
	adds r0, r2, #0x0
	bl sub_8093724
_08093F02:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8093F08
sub_8093F08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093F6C @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08093F70 @ =0x03000FF4
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
	movs r0, #0x05
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x0A
	cmp r5, #0x00
	beq _08093F7C
	ldr r2, _08093F74 @ =0x0000204D
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
	ldr r0, _08093F78 @ =0x08094071
	b _08093F7E
_08093F6C: .4byte 0x084FE9A4
_08093F70: .4byte 0x03000FF4
_08093F74: .4byte 0x0000204D
_08093F78: .4byte sub_8094070
_08093F7C:
	ldr r0, _08093F88 @ =0x0809400D
_08093F7E:
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08093F88: .4byte sub_809400C
	thumb_func_start sub_8093F8C
sub_8093F8C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093FF0 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08093FF4 @ =0x03000FF4
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
	adds r5, r0, #0x2
	cmp r5, #0x00
	beq _08093FFC
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
	ldr r0, _08093FF8 @ =0x080940F9
	b _08093FFE
	.byte 0x00, 0x00
_08093FF0: .4byte 0x084FE8A8
_08093FF4: .4byte 0x03000FF4
_08093FF8: .4byte sub_80940F8
_08093FFC:
	ldr r0, _08094008 @ =0x08094095
_08093FFE:
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08094008: .4byte sub_8094094
	thumb_func_start sub_809400C
sub_809400C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08094060 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08094064 @ =0x005A1440
	bl _call_via_r1
	subs r0, #0x48
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r0, #0x48
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r2, _08094068 @ =0x0000204D
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
	ldr r0, _0809406C @ =0x0809411D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08094060: .4byte 0x03001038
_08094064: .4byte 0x005A1440
_08094068: .4byte 0x0000204D
_0809406C: .4byte sub_809411C
	thumb_func_start sub_8094070
sub_8094070:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094090
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_809400C
_08094090:
	pop {r0}
	bx r0
	thumb_func_start sub_8094094
sub_8094094:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _080940EC @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080940F0 @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x1E
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
	ldr r0, _080940F4 @ =0x0809418D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080940EC: .4byte 0x03001038
_080940F0: .4byte 0x006E1E40
_080940F4: .4byte sub_809418C
	thumb_func_start sub_80940F8
sub_80940F8:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094118
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8094094
_08094118:
	pop {r0}
	bx r0
	thumb_func_start sub_809411C
sub_809411C:
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
	bgt _0809417E
	ldr r0, _08094184 @ =0x080941FD
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0809417E
	ldr r2, _08094188 @ =0x0000204D
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
_0809417E:
	pop {r4}
	pop {r0}
	bx r0
_08094184: .4byte sub_80941FC
_08094188: .4byte 0x0000204D
	thumb_func_start sub_809418C
sub_809418C:
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
	bgt _080941F0
	ldr r0, _080941F8 @ =0x08094265
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808CAC4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080941F0
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
_080941F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080941F8: .4byte sub_8094264
	thumb_func_start sub_80941FC
sub_80941FC:
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
	bgt _08094256
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
	ldr r2, _0809425C @ =0x0000204D
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
	ldr r0, _08094260 @ =0x080942CD
	str r0, [r4, #0x4C]
_08094256:
	pop {r4}
	pop {r0}
	bx r0
_0809425C: .4byte 0x0000204D
_08094260: .4byte sub_80942CC
	thumb_func_start sub_8094264
sub_8094264:
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
	bgt _080942C0
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
	ldr r0, _080942C8 @ =0x080942F9
	str r0, [r4, #0x4C]
_080942C0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080942C8: .4byte sub_80942F8
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
	thumb_func_start sub_8095800
sub_8095800:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095814
	cmp r1, #0x04
	bne _08095844
_08095814:
	ldr r2, _08095850 @ =0x03001038
	ldr r0, _08095854 @ =0x0819832C
	ldr r1, _08095858 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08095844:
	ldr r0, _0809585C @ =0x08095861
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095850: .4byte 0x03001038
_08095854: .4byte 0x0819832C
_08095858: .4byte 0x08198220
_0809585C: .4byte sub_8095860
	thumb_func_start sub_8095860
sub_8095860:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r5, _0809589C @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080958E2
	ldr r0, [r5, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bne _080958A0
	adds r0, r4, #0x0
	bl sub_80962C4
	b _080958E2
	.byte 0x00, 0x00
_0809589C: .4byte 0x03000FD8
_080958A0:
	ldrb r0, [r1, #0x02]
	cmp r0, #0x02
	bne _080958AE
	adds r0, r4, #0x0
	bl sub_8096D8C
	b _080958E2
_080958AE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080958DE
	ldr r2, _080958E8 @ =0x00002051
	cmp r4, r6
	bne _080958C4
	subs r2, #0x2F
_080958C4:
	adds r0, r4, #0x0
	movs r1, #0x00
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
_080958DE:
	ldr r0, _080958EC @ =0x080958F1
	str r0, [r4, #0x4C]
_080958E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080958E8: .4byte 0x00002051
_080958EC: .4byte sub_80958F0
	thumb_func_start sub_80958F0
sub_80958F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r2, _080959C0 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809591E
	b _08095B0A
_0809591E:
	movs r7, #0x00
	adds r0, r5, #0x0
	adds r0, #0x76
	str r0, [sp, #0x004]
	mov r10, r2
	movs r1, #0xB7
	lsls r1, r1, #0x02
	mov r9, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	mov r8, r2
_08095934:
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	ldr r2, _080959C4 @ =0x00004188
	adds r1, r2, #0x0
	ldrb r0, [r0, #0x02]
	adds r1, r1, r0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x10]
	add r1, r8
	str r1, [r0, #0x10]
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x3C]
	ldr r1, [r0, #0x18]
	add r1, r8
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _0809599C
	adds r0, r6, #0x0
	cmp r4, r6
	bne _08095986
	ldr r0, [sp, #0x000]
_08095986:
	adds r4, r0, #0x0
	str r4, [r5, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809599C
	adds r7, #0x01
	cmp r7, #0x01
	ble _08095934
_0809599C:
	ldr r0, _080959C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x0E
	bgt _080959C8
	cmp r0, #0x0D
	blt _080959C8
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080959D4
_080959C0: .4byte 0x03000FD8
_080959C4: .4byte 0x00004188
_080959C8:
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080959D4:
	ldr r0, _08095A20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _08095A28
	ldr r2, [sp, #0x004]
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095A14
	ldr r2, _08095A24 @ =0x00002051
	cmp r5, r6
	bne _080959FA
	subs r2, #0x2F
_080959FA:
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095A14:
	adds r4, r6, #0x0
	cmp r5, r4
	bne _08095A82
	ldr r4, [sp, #0x000]
	b _08095A82
	.byte 0x00, 0x00
_08095A20: .4byte 0x03000FD8
_08095A24: .4byte 0x00002051
_08095A28:
	cmp r5, r4
	bne _08095A54
	ldr r2, [sp, #0x004]
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095AC6
	ldr r2, _08095A50 @ =0x00002051
	cmp r5, r6
	bne _08095A40
	subs r2, #0x2F
_08095A40:
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	b _08095AB8
	.byte 0x00, 0x00
_08095A50: .4byte 0x00002051
_08095A54:
	ldr r0, [sp, #0x004]
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095A82
	ldr r2, _08095B1C @ =0x00002051
	cmp r5, r6
	bne _08095A68
	subs r2, #0x2F
_08095A68:
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095A82:
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08095AC6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095AC6
	ldr r2, _08095B1C @ =0x00002051
	cmp r4, r6
	bne _08095AAC
	subs r2, #0x2F
_08095AAC:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
_08095AB8:
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095AC6:
	ldr r2, [sp, #0x004]
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08095AD6
	cmp r2, #0x04
	bne _08095B06
_08095AD6:
	ldr r2, _08095B20 @ =0x03001038
	ldr r0, _08095B24 @ =0x0819832C
	ldr r1, _08095B28 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08095B06:
	ldr r0, _08095B2C @ =0x08095B31
	str r0, [r5, #0x4C]
_08095B0A:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095B1C: .4byte 0x00002051
_08095B20: .4byte 0x03001038
_08095B24: .4byte 0x0819832C
_08095B28: .4byte 0x08198220
_08095B2C: .4byte sub_8095B30
	thumb_func_start sub_8095B30
sub_8095B30:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	bl sub_80884AC
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08095B52
	b _08095D40
_08095B52:
	movs r0, #0x00
	mov r10, r0
	ldr r6, [r7, #0x30]
	cmp r6, #0x00
	bne _08095B5E
	b _08095D3C
_08095B5E:
	ldr r1, _08095BE8 @ =0x03001038
	mov r9, r1
	ldr r1, _08095BEC @ =0x0819832C
	ldr r0, _08095BF0 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
_08095B6A:
	ldr r5, [r6, #0x2C]
	cmp r7, r5
	bne _08095C42
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095B84
	cmp r1, #0x04
	beq _08095B84
	b _08095D04
_08095B84:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _08095B8C
	adds r1, #0xFF
_08095B8C:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08095BA6
	adds r0, #0xFF
_08095BA6:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08095BBC
	adds r3, #0xFF
_08095BBC:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _08095BF4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08095C04
_08095BE8: .4byte 0x03001038
_08095BEC: .4byte 0x0819832C
_08095BF0: .4byte 0x08198220
_08095BF4:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08095C04:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08095C0C
	adds r0, #0xFF
_08095C0C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	mov r2, r9
	ldr r0, [r2, #0x00]
	mov r1, r8
	adds r2, r0, r1
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08095C26
	adds r1, #0x3F
_08095C26:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
	b _08095D04
_08095C42:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095C54
	cmp r1, #0x04
	bne _08095D04
_08095C54:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08095C5C
	adds r1, #0xFF
_08095C5C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08095C76
	adds r0, #0xFF
_08095C76:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08095C8C
	adds r3, #0xFF
_08095C8C:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _08095CB8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08095CC8
_08095CB8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08095CC8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08095CD0
	adds r0, #0xFF
_08095CD0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	mov r2, r9
	ldr r0, [r2, #0x00]
	mov r1, r8
	adds r2, r0, r1
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08095CEA
	adds r1, #0x3F
_08095CEA:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
_08095D04:
	mov r2, r9
	ldr r3, [r2, #0x00]
	add r3, r8
	adds r4, r6, #0x0
	adds r4, #0x7A
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r0, r1, #0x0E
	mov r2, r10
	muls r2, r1
	adds r1, r2, #0x0
	lsls r2, r1, #0x03
	adds r2, r2, r1
	lsls r2, r2, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r1, r1, r2
	movs r2, #0x01
	add r10, r2
	bl _call_via_r3
	strh r0, [r4, #0x00]
	ldr r0, _08095D50 @ =0x08095D55
	str r0, [r6, #0x4C]
	ldr r6, [r6, #0x30]
	cmp r6, #0x00
	beq _08095D3C
	b _08095B6A
_08095D3C:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08095D40:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08095D50: .4byte sub_8095D54
	thumb_func_start sub_8095D54
sub_8095D54:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, _08095D98 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08095DF4
	ldr r0, [r6, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x0E
	bgt _08095D9C
	cmp r0, #0x0D
	blt _08095D9C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
	b _08095DA6
_08095D98: .4byte 0x03000FD8
_08095D9C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
_08095DA6:
	ldr r0, [r5, #0x08]
	bl sub_807FB64
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08095DF0
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095DF0
	ldr r2, _08095DFC @ =0x00002051
	cmp r4, r7
	bne _08095DD6
	subs r2, #0x2F
_08095DD6:
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
_08095DF0:
	ldr r0, _08095E00 @ =0x08095E05
	str r0, [r5, #0x4C]
_08095DF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095DFC: .4byte 0x00002051
_08095E00: .4byte sub_8095E04
	thumb_func_start sub_8095E04
sub_8095E04:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _08095E98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r4, [r0, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08095E2E
	b _080962B0
_08095E2E:
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08095E46
	cmp r1, #0x04
	bne _08095E60
_08095E46:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08095E60:
	ldr r0, [r4, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08095E76
	b _08095F94
_08095E76:
	ldr r0, _08095E98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _08095E8C
	b _08095F94
_08095E8C:
	lsls r0, r0, #0x02
	ldr r1, _08095E9C @ =0x08095EA0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08095E98: .4byte 0x03000FD8
_08095E9C: .4byte 0x08095EA0
	.byte 0xD8, 0x5E, 0x09, 0x08, 0x28, 0x5F, 0x09, 0x08, 0x94, 0x5F, 0x09, 0x08, 0x94, 0x5F, 0x09, 0x08
	.byte 0x94, 0x5F, 0x09, 0x08, 0x94, 0x5F, 0x09, 0x08, 0x94, 0x5F, 0x09, 0x08, 0x94, 0x5F, 0x09, 0x08
	.byte 0x94, 0x5F, 0x09, 0x08, 0x94, 0x5F, 0x09, 0x08, 0xD8, 0x5E, 0x09, 0x08, 0xD8, 0x5E, 0x09, 0x08
	.byte 0x5A, 0x5F, 0x09, 0x08, 0x5A, 0x5F, 0x09, 0x08, 0xA0, 0x6A, 0xEC, 0x30, 0x00, 0x21, 0x40, 0x5E
	.byte 0x01, 0x25, 0x6D, 0x42, 0xA8, 0x42, 0x03, 0xD1, 0xEB, 0x20, 0x29, 0x1C, 0x83, 0xF7, 0x62, 0xFB
	.byte 0xA0, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x02, 0x20, 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1
	.byte 0xFD, 0x20, 0x29, 0x1C, 0x83, 0xF7, 0x56, 0xFB, 0x20, 0x1C, 0x76, 0x30, 0x01, 0x78, 0x06, 0x20
	.byte 0x08, 0x40, 0x02, 0x28, 0x3E, 0xD1, 0x03, 0x4A, 0xB4, 0x42, 0x00, 0xD1, 0x2F, 0x3A, 0x20, 0x1C
	.byte 0x0B, 0x21, 0x2C, 0xE0, 0x51, 0x20, 0x00, 0x00, 0xA0, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC0, 0x5E
	.byte 0x01, 0x25, 0x6D, 0x42, 0xA8, 0x42, 0x03, 0xD1, 0xEB, 0x20, 0x29, 0x1C, 0x83, 0xF7, 0x3A, 0xFB
	.byte 0xA0, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x02, 0x20, 0x40, 0x42, 0x81, 0x42, 0x21, 0xD1
	.byte 0xFD, 0x20, 0x29, 0x1C, 0x83, 0xF7, 0x2E, 0xFB, 0x1C, 0xE0, 0x01, 0x21, 0x49, 0x42, 0x9C, 0x20
	.byte 0x83, 0xF7, 0x28, 0xFB, 0x20, 0x1C, 0x76, 0x30, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28
	.byte 0x10, 0xD1, 0x22, 0x4A, 0xB4, 0x42, 0x00, 0xD1, 0x2F, 0x3A, 0x20, 0x1C, 0x0A, 0x21, 0x00, 0x23
	.byte 0xEC, 0xF7, 0x4C, 0xFF, 0xA2, 0x68, 0x91, 0x7C, 0x07, 0x20, 0x40, 0x42, 0x08, 0x40, 0x02, 0x21
	.byte 0x08, 0x43, 0x90, 0x74
_08095F94:
	ldr r2, _08096000 @ =0x084FCE8C
	ldr r6, _08096004 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r0, [r1, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	mvns r0, r0
	ldr r3, _08096008 @ =0x0000034E
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r5, [r0, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08095FBA
	adds r1, #0xFF
_08095FBA:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08095FC4
	adds r0, #0xFF
_08095FC4:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095FD0
	adds r3, #0xFF
_08095FD0:
	asrs r3, r3, #0x08
	subs r3, #0x02
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, [r6, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _08095FF0
	b _080962A4
_08095FF0:
	lsls r0, r0, #0x02
	ldr r1, _0809600C @ =0x08096010
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00, 0x51, 0x20, 0x00, 0x00
_08096000: .4byte 0x084FCE8C
_08096004: .4byte 0x03000FD8
_08096008: .4byte 0x0000034E
_0809600C: .4byte 0x08096010
	.byte 0x48, 0x60, 0x09, 0x08, 0x9C, 0x60, 0x09, 0x08, 0xA4, 0x62, 0x09, 0x08, 0xA4, 0x62, 0x09, 0x08
	.byte 0xA4, 0x62, 0x09, 0x08, 0xA4, 0x62, 0x09, 0x08, 0xA4, 0x62, 0x09, 0x08, 0xA4, 0x62, 0x09, 0x08
	.byte 0xA4, 0x62, 0x09, 0x08, 0xA4, 0x62, 0x09, 0x08, 0xC8, 0x60, 0x09, 0x08, 0x28, 0x61, 0x09, 0x08
	.byte 0xEC, 0x61, 0x09, 0x08, 0x48, 0x62, 0x09, 0x08, 0xA1, 0x6A, 0x08, 0x1C, 0xF6, 0x30, 0x00, 0x22
	.byte 0x80, 0x5E, 0xF8, 0x31, 0x00, 0x23, 0xC9, 0x5E, 0x0F, 0x4A, 0x12, 0x68, 0xB7, 0x23, 0x9B, 0x00
	.byte 0xD2, 0x18, 0x12, 0x68, 0x12, 0x89, 0x81, 0xF0, 0xF3, 0xFD, 0x05, 0x1C, 0xA0, 0x6A, 0xF6, 0x30
	.byte 0x00, 0x21, 0x40, 0x5E, 0x2E, 0x1A, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12
	.byte 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC5, 0x30, 0x00, 0x23
	.byte 0xC3, 0x56, 0x01, 0x20, 0xA0, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xA0, 0x6A, 0x72, 0xF0
	.byte 0x17, 0xFE, 0xA0, 0x6A, 0x72, 0xF0, 0x40, 0xFC, 0xA0, 0x6A, 0x72, 0xF0, 0x7B, 0xFC, 0xA0, 0x6A
	.byte 0x72, 0xF0, 0xEE, 0xFD, 0xA0, 0x6A, 0x72, 0xF0, 0xD5, 0xFD, 0xA0, 0x6A, 0x72, 0xF0, 0xBC, 0xFD
	.byte 0xA0, 0x6A, 0x72, 0xF0, 0xFB, 0xFD, 0xF0, 0xE0, 0xA1, 0x6A, 0x08, 0x1C, 0xFC, 0x30, 0x00, 0x22
	.byte 0x80, 0x5E, 0xFE, 0x31, 0x00, 0x23, 0xC9, 0x5E, 0x12, 0x4A, 0x12, 0x68, 0xB7, 0x23, 0x9B, 0x00
	.byte 0xD2, 0x18, 0x12, 0x68, 0x12, 0x89, 0x81, 0xF0, 0xB3, 0xFD, 0x05, 0x1C, 0xA0, 0x6A, 0xFC, 0x30
	.byte 0x00, 0x21, 0x40, 0x5E, 0x2E, 0x1A, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12
	.byte 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC5, 0x30, 0x00, 0x23
	.byte 0xC3, 0x56, 0x01, 0x20, 0x00, 0x90, 0x30, 0x1C, 0xE6, 0xF7, 0x4E, 0xFF, 0xA0, 0x6A, 0xFC, 0x30
	.byte 0x05, 0x80, 0xC2, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0xA1, 0x6A, 0x08, 0x1C, 0xFC, 0x30, 0x00, 0x22
	.byte 0x80, 0x5E, 0xFE, 0x31, 0x00, 0x23, 0xC9, 0x5E, 0x2B, 0x4A, 0x92, 0x46, 0x12, 0x68, 0xB7, 0x23
	.byte 0x9B, 0x00, 0x99, 0x46, 0x4A, 0x44, 0x12, 0x68, 0x12, 0x89, 0x81, 0xF0, 0x81, 0xFD, 0x05, 0x1C
	.byte 0xA0, 0x6A, 0xFC, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x2E, 0x1A, 0xA0, 0x6B, 0x00, 0x28, 0x00, 0xDA
	.byte 0xFF, 0x30, 0x00, 0x12, 0x01, 0x1C, 0x0C, 0x39, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32
	.byte 0x12, 0x12, 0x04, 0x3A, 0x27, 0x1C, 0xC5, 0x37, 0x00, 0x23, 0xFB, 0x56, 0x01, 0x20, 0x80, 0x46
	.byte 0x00, 0x90, 0x30, 0x1C, 0xE6, 0xF7, 0x18, 0xFF, 0xA0, 0x6A, 0xFC, 0x30, 0x05, 0x80, 0xA1, 0x6A
	.byte 0x08, 0x1C, 0xF6, 0x30, 0x00, 0x22, 0x80, 0x5E, 0xF8, 0x31, 0x00, 0x23, 0xC9, 0x5E, 0x53, 0x46
	.byte 0x1A, 0x68, 0x4A, 0x44, 0x12, 0x68, 0x12, 0x89, 0x81, 0xF0, 0x52, 0xFD, 0x05, 0x1C, 0xA0, 0x6A
	.byte 0xF6, 0x30, 0x00, 0x21, 0x40, 0x5E, 0x2E, 0x1A, 0xA0, 0x6B, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x00, 0x12, 0x01, 0x1C, 0x0C, 0x31, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12
	.byte 0x04, 0x32, 0x00, 0x23, 0xFB, 0x56, 0x40, 0x46, 0x00, 0x90, 0x30, 0x1C, 0xE6, 0xF7, 0xEC, 0xFE
	.byte 0xA0, 0x6A, 0xF6, 0x30, 0x05, 0x80, 0x60, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0x21, 0x69, 0x00, 0x29
	.byte 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x60, 0x69, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12
	.byte 0x82, 0x1C, 0xA3, 0x69, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x02, 0x3B, 0x00, 0x94
	.byte 0xCB, 0x20, 0x48, 0xF0, 0x07, 0xFF, 0xA0, 0x6A, 0x0A, 0x49, 0x09, 0x68, 0xB7, 0x22, 0x92, 0x00
	.byte 0x89, 0x18, 0x0A, 0x68, 0x80, 0x23, 0x5B, 0x00, 0x19, 0x1C, 0x12, 0x89, 0x89, 0x18, 0x09, 0x04
	.byte 0x09, 0x0C, 0xC8, 0x22, 0x72, 0xF0, 0xA2, 0xF9, 0xA0, 0x6A, 0xC8, 0x21, 0x72, 0xF0, 0xD6, 0xF8
	.byte 0x33, 0xE0, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x21, 0x69, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31
	.byte 0x09, 0x12, 0x60, 0x69, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x82, 0x1C, 0xA3, 0x69
	.byte 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x02, 0x3B, 0x00, 0x94, 0xCB, 0x20, 0x48, 0xF0
	.byte 0xD9, 0xFE, 0xA0, 0x6A, 0x0A, 0x49, 0x09, 0x68, 0xB7, 0x22, 0x92, 0x00, 0x89, 0x18, 0x0A, 0x68
	.byte 0x80, 0x23, 0x5B, 0x00, 0x19, 0x1C, 0x12, 0x89, 0x89, 0x18, 0x09, 0x04, 0x09, 0x0C, 0xC8, 0x22
	.byte 0x72, 0xF0, 0x10, 0xFA, 0xA0, 0x6A, 0xC8, 0x21, 0x72, 0xF0, 0x0C, 0xF9, 0x05, 0xE0, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03
_080962A4:
	ldr r0, [sp, #0x004]
	bl sub_807C298
	ldr r0, _080962C0 @ =0x08096EBD
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080962B0:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080962C0: .4byte sub_8096EBC
	thumb_func_start sub_80962C4
sub_80962C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08096358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096306
	ldr r2, _0809635C @ =0x00002068
	cmp r4, r5
	bne _080962EC
	subs r2, #0x2F
_080962EC:
	adds r0, r4, #0x0
	movs r1, #0x03
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
_08096306:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x28
	cmp r6, r5
	bne _0809631E
	movs r1, #0x36
_0809631E:
	movs r2, #0x7C
	cmp r6, r5
	bne _08096326
	movs r2, #0x5C
_08096326:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x28
	bl sub_808842C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08096360 @ =0x08096365
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096358: .4byte 0x03000FD8
_0809635C: .4byte 0x00002068
_08096360: .4byte sub_8096364
	thumb_func_start sub_8096364
sub_8096364:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _080963D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080963D2
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080963B0
	ldr r2, _080963DC @ =0x00002052
	cmp r4, r6
	bne _08096396
	subs r2, #0x2F
_08096396:
	adds r0, r4, #0x0
	movs r1, #0x04
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
_080963B0:
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x18
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _080963E0 @ =0x08096E6D
	str r0, [r4, #0x4C]
_080963D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080963D8: .4byte 0x03000FD8
_080963DC: .4byte 0x00002052
_080963E0: .4byte sub_8096E6C
	thumb_func_start sub_80963E4
sub_80963E4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0809647C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096474
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809643A
	ldr r2, _08096480 @ =0x00002052
	cmp r4, r5
	bne _08096420
	subs r2, #0x2F
_08096420:
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
_0809643A:
	ldr r0, [r4, #0x2C]
	ldr r2, _08096484 @ =0x00002023
	cmp r4, r5
	bne _08096444
	adds r2, #0x2F
_08096444:
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x30]
	ldr r2, _08096488 @ =0x0000208C
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	ldr r0, _0809648C @ =0x08096555
	str r0, [r1, #0x4C]
	ldr r0, _08096490 @ =0x08096495
	str r0, [r4, #0x4C]
_08096474:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809647C: .4byte 0x03000FD8
_08096480: .4byte 0x00002052
_08096484: .4byte 0x00002023
_08096488: .4byte 0x0000208C
_0809648C: .4byte sub_8096554
_08096490: .4byte sub_8096494
	thumb_func_start sub_8096494
sub_8096494:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080964F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096548
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080964EA
	ldr r2, _080964F8 @ =0x00002068
	cmp r4, r5
	bne _080964D0
	subs r2, #0x2F
_080964D0:
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
_080964EA:
	cmp r4, r5
	bne _080964FC
	movs r0, #0xA0
	lsls r0, r0, #0x06
	b _08096500
_080964F4: .4byte 0x03000FD8
_080964F8: .4byte 0x00002068
_080964FC:
	movs r0, #0xD8
	lsls r0, r0, #0x06
_08096500:
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x38]
	cmp r4, r5
	bne _08096510
	movs r0, #0xF8
	lsls r0, r0, #0x07
	b _08096514
_08096510:
	movs r0, #0xB8
	lsls r0, r0, #0x07
_08096514:
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	movs r1, #0x28
	cmp r4, r5
	bne _08096522
	movs r1, #0x36
_08096522:
	movs r2, #0x7C
	cmp r4, r5
	bne _0809652A
	movs r2, #0x5C
_0809652A:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x28
	bl sub_808842C
	ldr r0, _08096550 @ =0x08096E45
	str r0, [r4, #0x4C]
_08096548:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08096550: .4byte sub_8096E44
	thumb_func_start sub_8096554
sub_8096554:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080965F4 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080965EA
	ldr r2, _080965F8 @ =0x084FCE8C
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	mvns r1, r1
	ldr r6, _080965FC @ =0x0000034E
	adds r0, r3, r6
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r6, [r0, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08096594
	adds r1, #0xFF
_08096594:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0809659E
	adds r0, #0xFF
_0809659E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080965AA
	adds r3, #0xFF
_080965AA:
	asrs r3, r3, #0x08
	subs r3, #0x02
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	ldr r2, _08096600 @ =0x00002052
	cmp r4, r7
	bne _080965BE
	subs r2, #0x2F
_080965BE:
	adds r0, r4, #0x0
	movs r1, #0x02
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
	adds r0, r5, #0x0
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x18
	strh r0, [r1, #0x00]
	ldr r0, _08096604 @ =0x08096609
	str r0, [r4, #0x4C]
_080965EA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080965F4: .4byte 0x03000FD8
_080965F8: .4byte 0x084FCE8C
_080965FC: .4byte 0x0000034E
_08096600: .4byte 0x00002052
_08096604: .4byte sub_8096608
	thumb_func_start sub_8096608
sub_8096608:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	ldr r7, _08096634 @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r0, [r3, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x00C]
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _08096638
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _0809678A
_08096634: .4byte 0x03000FD8
_08096638:
	ldr r5, [r6, #0x28]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	ldrh r1, [r2, #0x08]
	ldr r0, _0809667C @ =0x0000FFFF
	cmp r1, r0
	bne _08096680
	adds r4, r5, #0x0
	adds r4, #0xF6
	movs r3, #0x00
	ldsh r0, [r4, r3]
	adds r1, r5, #0x0
	adds r1, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
	ldrh r2, [r2, #0x08]
	bl sub_8117C50
	strh r0, [r4, #0x00]
	adds r4, #0x06
	movs r1, #0x00
	ldsh r0, [r4, r1]
	adds r1, r5, #0x0
	adds r1, #0xFE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r2, [r7, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldr r2, [r2, #0x00]
	b _08096690
_0809667C: .4byte 0x0000FFFF
_08096680:
	adds r4, r5, #0x0
	adds r4, #0xF6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	adds r1, r5, #0x0
	adds r1, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
_08096690:
	ldrh r2, [r2, #0x08]
	bl sub_8117C50
	strh r0, [r4, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	lsrs r0, r0, #0x07
	str r0, [sp, #0x010]
	movs r1, #0xD8
	adds r1, r1, r5
	mov r9, r1
	ldr r2, [r1, #0x00]
	str r2, [sp, #0x014]
	movs r3, #0xDC
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	str r0, [sp, #0x018]
	adds r7, r5, #0x0
	adds r7, #0xE0
	ldr r1, [r7, #0x00]
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	mov r12, r0
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080966D8
	adds r2, #0xFF
_080966D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080966E2
	adds r3, #0xFF
_080966E2:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080966EC
	adds r0, #0xFF
_080966EC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	mov r0, r12
	bl sub_807AFD4
	ldr r3, [sp, #0x014]
	mov r0, r9
	str r3, [r0, #0x00]
	ldr r1, [sp, #0x018]
	mov r2, r8
	str r1, [r2, #0x00]
	mov r3, r10
	str r3, [r7, #0x00]
	ldr r0, [sp, #0x010]
	lsls r2, r0, #0x07
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x00]
	ldr r0, _0809679C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x05
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x28
	ldr r3, [sp, #0x00C]
	cmp r6, r3
	bne _08096762
	movs r1, #0x36
_08096762:
	movs r2, #0x7C
	ldr r4, [sp, #0x00C]
	cmp r6, r4
	bne _0809676C
	movs r2, #0x5C
_0809676C:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	movs r2, #0x20
	bl sub_808842C
	ldr r0, _080967A0 @ =0x08096E09
	str r0, [r6, #0x4C]
_0809678A:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809679C: .4byte 0x03000FD8
_080967A0: .4byte sub_8096E08
	thumb_func_start sub_80967A4
sub_80967A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r0, _08096894 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080967D2
	b _080969D6
_080967D2:
	adds r1, r5, #0x0
	adds r1, #0x76
	str r1, [sp, #0x004]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	mov r10, r1
	ands r1, r2
	movs r2, #0x20
	mov r8, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x10]
	adds r1, r1, r6
	str r1, [r0, #0x10]
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x3C]
	ldr r1, [r0, #0x18]
	adds r1, r1, r6
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	ldr r1, _08096894 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _08096890
	adds r0, r7, #0x0
	cmp r4, r7
	bne _0809682A
	ldr r0, [sp, #0x000]
_0809682A:
	adds r4, r0, #0x0
	str r4, [r5, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	mov r9, r0
	ands r0, r1
	cmp r0, #0x02
	bne _08096890
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x78
	ldrb r2, [r3, #0x00]
	mov r1, r10
	ands r1, r2
	mov r2, r8
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x10]
	adds r1, r1, r6
	str r1, [r0, #0x10]
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x14]
	str r1, [r0, #0x3C]
	ldr r1, [r0, #0x18]
	adds r1, r1, r6
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	ldr r1, _08096894 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x05]
	cmp r0, #0x00
	beq _08096890
	adds r0, r7, #0x0
	cmp r4, r7
	bne _08096884
	ldr r0, [sp, #0x000]
_08096884:
	adds r4, r0, #0x0
	str r4, [r5, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
_08096890:
	ldr r6, [r5, #0x30]
	b _0809689A
_08096894: .4byte 0x03000FD8
_08096898:
	ldr r6, [r6, #0x30]
_0809689A:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	bne _08096898
	cmp r5, r4
	bne _08096914
	ldr r0, [sp, #0x004]
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080968D2
	ldr r2, _08096904 @ =0x00002051
	cmp r5, r7
	bne _080968B8
	subs r2, #0x2F
_080968B8:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080968D2:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [sp, #0x004]
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080968EE
	cmp r2, #0x04
	bne _080969D2
_080968EE:
	ldr r2, _08096908 @ =0x03001038
	ldr r0, _0809690C @ =0x0819832C
	ldr r1, _08096910 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	b _080969B4
	.byte 0x00, 0x00
_08096904: .4byte 0x00002051
_08096908: .4byte 0x03001038
_0809690C: .4byte 0x0819832C
_08096910: .4byte 0x08198220
_08096914:
	ldr r2, [sp, #0x004]
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096942
	ldr r2, _080969E8 @ =0x00002051
	cmp r5, r7
	bne _08096928
	subs r2, #0x2F
_08096928:
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08096942:
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08096986
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096986
	ldr r2, _080969E8 @ =0x00002051
	cmp r4, r7
	bne _0809696C
	subs r2, #0x2F
_0809696C:
	adds r0, r4, #0x0
	movs r1, #0x09
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
_08096986:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [sp, #0x004]
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080969A2
	cmp r2, #0x04
	bne _080969D2
_080969A2:
	ldr r2, _080969EC @ =0x03001038
	ldr r0, _080969F0 @ =0x0819832C
	ldr r1, _080969F4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
_080969B4:
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080969D2:
	ldr r0, _080969F8 @ =0x080969FD
	str r0, [r5, #0x4C]
_080969D6:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080969E8: .4byte 0x00002051
_080969EC: .4byte 0x03001038
_080969F0: .4byte 0x0819832C
_080969F4: .4byte 0x08198220
_080969F8: .4byte sub_80969FC
	thumb_func_start sub_80969FC
sub_80969FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	bl sub_80884AC
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08096A1A
	b _08096C36
_08096A1A:
	ldr r1, [r7, #0x30]
	b _08096A20
_08096A1E:
	ldr r1, [r1, #0x30]
_08096A20:
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08096A1E
	adds r0, r1, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r6, [r7, #0x30]
	cmp r6, #0x00
	bne _08096A3E
	b _08096C32
_08096A3E:
	ldr r1, _08096B04 @ =0x0819832C
	ldr r0, _08096B08 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
_08096A46:
	ldr r5, [r6, #0x2C]
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _08096A5C
	cmp r2, #0x04
	bne _08096A8A
_08096A5C:
	ldr r0, _08096B0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x02]
	ldr r3, _08096B10 @ =0x00004188
	adds r2, r2, r3
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x02
	orrs r1, r0
	strb r1, [r2, #0x12]
_08096A8A:
	cmp r7, r5
	bne _08096B68
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08096A9E
	cmp r2, #0x04
	beq _08096A9E
	b _08096C26
_08096A9E:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _08096AA6
	adds r1, #0xFF
_08096AA6:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08096AC0
	adds r0, #0xFF
_08096AC0:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08096AD6
	adds r3, #0xFF
_08096AD6:
	asrs r3, r3, #0x08
	adds r4, r7, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x28]
	adds r0, #0x08
	cmp r7, r0
	bne _08096B14
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08096B24
	.byte 0x00, 0x00
_08096B04: .4byte 0x0819832C
_08096B08: .4byte 0x08198220
_08096B0C: .4byte 0x03000FD8
_08096B10: .4byte 0x00004188
_08096B14:
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r7, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08096B24:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08096B2C
	adds r0, #0xFF
_08096B2C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r0, _08096B64 @ =0x03001038
	ldr r0, [r0, #0x00]
	mov r1, r8
	adds r2, r0, r1
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08096B46
	adds r1, #0x3F
_08096B46:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
	b _08096C26
	.byte 0x00, 0x00
_08096B64: .4byte 0x03001038
_08096B68:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08096B76
	cmp r2, #0x04
	bne _08096C26
_08096B76:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08096B7E
	adds r1, #0xFF
_08096B7E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x04
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08096B98
	adds r0, #0xFF
_08096B98:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08096BAE
	adds r3, #0xFF
_08096BAE:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _08096BDA
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _08096BEA
_08096BDA:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_08096BEA:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08096BF2
	adds r0, #0xFF
_08096BF2:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r0, _08096C44 @ =0x03001038
	ldr r0, [r0, #0x00]
	mov r3, r8
	adds r2, r0, r3
	movs r0, #0xC8
	lsls r0, r0, #0x03
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _08096C0C
	adds r1, #0x3F
_08096C0C:
	asrs r1, r1, #0x06
	adds r1, #0x28
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x03
	bl sub_8088164
_08096C26:
	ldr r0, _08096C48 @ =0x08096C4D
	str r0, [r6, #0x4C]
	ldr r6, [r6, #0x30]
	cmp r6, #0x00
	beq _08096C32
	b _08096A46
_08096C32:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08096C36:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096C44: .4byte 0x03001038
_08096C48: .4byte sub_8096C4C
	thumb_func_start sub_8096C4C
sub_8096C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, _08096D74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r7, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _08096D78 @ =0x03001038
	ldr r2, _08096D7C @ =0x0819832C
	ldr r3, _08096D80 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _08096C9E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _08096CA0
_08096C9E:
	movs r1, #0x00
_08096CA0:
	cmp r1, #0x00
	beq _08096CD2
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096CB6
	cmp r1, #0x04
	bne _08096CD2
_08096CB6:
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08096CD2:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08096D68
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9F
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x08]
	bl sub_807FB64
	ldr r0, [r5, #0x28]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096D08
	cmp r1, #0x04
	bne _08096D20
_08096D08:
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08096D20:
	ldr r0, [r7, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08096D64
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096D64
	ldr r2, _08096D84 @ =0x00002051
	cmp r7, r8
	bne _08096D4A
	subs r2, #0x2F
_08096D4A:
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08096D64:
	ldr r0, _08096D88 @ =0x08095E05
	str r0, [r5, #0x4C]
_08096D68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096D74: .4byte 0x03000FD8
_08096D78: .4byte 0x03001038
_08096D7C: .4byte 0x0819832C
_08096D80: .4byte 0x08198220
_08096D84: .4byte 0x00002051
_08096D88: .4byte sub_8095E04
	thumb_func_start sub_8096D8C
sub_8096D8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08096DF8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096DCA
	ldr r2, _08096DFC @ =0x00002051
	cmp r5, r3
	bne _08096DB0
	subs r2, #0x2F
_08096DB0:
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08096DCA:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r2, _08096E00 @ =0x0000208D
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0x78
	ldrb r1, [r4, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _08096E04 @ =0x080967A5
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08096DF8: .4byte 0x03000FD8
_08096DFC: .4byte 0x00002051
_08096E00: .4byte 0x0000208D
_08096E04: .4byte sub_80967A4
	thumb_func_start sub_8096E08
sub_8096E08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _08096E3A
	movs r2, #0x01
	negs r2, r2
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
	ldr r0, _08096E40 @ =0x08096F09
	str r0, [r4, #0x4C]
_08096E3A:
	pop {r4}
	pop {r0}
	bx r0
_08096E40: .4byte sub_8096F08
	thumb_func_start sub_8096E44
sub_8096E44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08096E64
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08096E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8096E6C
sub_8096E6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _08096E84
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08096EAC
_08096E84:
	ldr r1, _08096EB4 @ =0x0000208C
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	ldr r1, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08096EB8 @ =0x080963E5
	str r0, [r4, #0x4C]
_08096EAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096EB4: .4byte 0x0000208C
_08096EB8: .4byte sub_80963E4
	thumb_func_start sub_8096EBC
sub_8096EBC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096F00
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096EE0
	cmp r1, #0x04
	bne _08096EFA
_08096EE0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08096EFA:
	adds r0, r5, #0x0
	bl sub_807C298
_08096F00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8096F08
sub_8096F08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08096F54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08096F4C
	ldr r2, _08096F58 @ =0x00002050
	cmp r4, r5
	bne _08096F2A
	subs r2, #0x4D
_08096F2A:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _08096F5C @ =0x08096F61
	str r0, [r4, #0x4C]
_08096F4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096F54: .4byte 0x03000FD8
_08096F58: .4byte 0x00002050
_08096F5C: .4byte sub_8096F60
	thumb_func_start sub_8096F60
sub_8096F60:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08096F88 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	ble _08096F8C
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08096FB8
_08096F88: .4byte 0x03000FD8
_08096F8C:
	ldr r2, _08096FC0 @ =0x00002039
	adds r0, r3, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08096FC4 @ =0x00002068
	adds r0, r5, #0x0
	movs r1, #0x07
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
	ldr r0, _08096FC8 @ =0x08096FCD
	str r0, [r4, #0x4C]
_08096FB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096FC0: .4byte 0x00002039
_08096FC4: .4byte 0x00002068
_08096FC8: .4byte sub_8096FCC
	thumb_func_start sub_8096FCC
sub_8096FCC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097018 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08097010
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
	ldr r2, _0809701C @ =0x00002039
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
	ldr r0, _08097020 @ =0x08097025
	str r0, [r5, #0x4C]
_08097010:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097018: .4byte 0x03000FD8
_0809701C: .4byte 0x00002039
_08097020: .4byte sub_8097024
	thumb_func_start sub_8097024
sub_8097024:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097060 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x18
	bl play_sfx_80195B4
	ldr r2, _08097064 @ =0x00002068
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
	ldr r0, _08097068 @ =0x0809706D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08097060: .4byte 0x03000FD8
_08097064: .4byte 0x00002068
_08097068: .4byte sub_809706C
	thumb_func_start sub_809706C
sub_809706C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080970B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080970AC
	movs r4, #0x01
	negs r4, r4
	adds r0, r2, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r6, #0x4C]
_080970AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080970B4: .4byte 0x03000FD8
	thumb_func_start sub_80970B8
sub_80970B8:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _08097140 @ =0x03000FF4
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
	ldr r0, _08097144 @ =0x03000FD8
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
	ldr r1, _08097148 @ =0x0809714D
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
_08097140: .4byte 0x03000FF4
_08097144: .4byte 0x03000FD8
_08097148: .4byte sub_809714C
	thumb_func_start sub_809714C
sub_809714C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	ldr r0, _08097298 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x004]
	movs r5, #0x00
	movs r6, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	ldr r2, _0809729C @ =0x03001038
	mov r10, r2
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r4, #0x06
	mov r12, r4
	movs r4, #0x05
_08097182:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _080971B8
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_080971B8:
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _080971EE
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_080971EE:
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08097224
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_08097224:
	adds r3, #0x0C
	subs r4, #0x03
	cmp r4, #0x00
	bge _08097182
	ldr r3, _080972A0 @ =0x0819832C
	ldr r0, _080972A4 @ =0x08198220
	subs r4, r3, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x1C]
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x1C]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	strh r0, [r1, #0x1E]
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x1E]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r4, [sp, #0x004]
	strh r0, [r4, #0x20]
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x20]
	mov r1, r9
	ldr r0, [r1, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r4, r9
	movs r5, #0x20
	ldsh r0, [r4, r5]
	cmp r1, r0
	blt _080972B0
	ldr r0, _080972A8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080972AC @ =0x00005470
	adds r0, r0, r1
	movs r1, #0x03
	b _080972BA
_08097298: .4byte 0x03000FD8
_0809729C: .4byte 0x03001038
_080972A0: .4byte 0x0819832C
_080972A4: .4byte 0x08198220
_080972A8: .4byte 0x03000FDC
_080972AC: .4byte 0x00005470
_080972B0:
	ldr r0, _080974C8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _080974CC @ =0x00005470
	adds r0, r0, r2
	movs r1, #0x02
_080972BA:
	str r1, [r0, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x28]
	movs r4, #0x83
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	movs r2, #0x20
	ldsh r1, [r3, r2]
	bl __divsi3
	ldr r6, _080974C8 @ =0x03000FDC
	ldr r2, [r6, #0x00]
	ldr r3, _080974CC @ =0x00005470
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080972E6
	adds r0, #0xFF
_080972E6:
	asrs r5, r0, #0x08
	ldr r4, _080974D0 @ =0x00005498
	adds r3, r2, r4
	movs r4, #0x00
	str r4, [r3, #0x00]
	ldr r0, _080974D4 @ =0x0000549C
	adds r1, r2, r0
	movs r7, #0x01
	str r7, [r1, #0x00]
	cmp r5, #0x08
	ble _08097302
	movs r0, #0x07
	str r0, [r3, #0x00]
	str r4, [r1, #0x00]
_08097302:
	cmp r5, #0x00
	bgt _08097314
	ldr r0, [r6, #0x00]
	ldr r2, _080974D0 @ =0x00005498
	adds r1, r0, r2
	str r7, [r1, #0x00]
	ldr r3, _080974D4 @ =0x0000549C
	adds r0, r0, r3
	str r4, [r0, #0x00]
_08097314:
	ldr r0, [r6, #0x00]
	ldr r5, _080974D8 @ =0x00005474
	adds r4, r0, r5
	mov r1, r9
	ldr r0, [r1, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x08
	movs r5, #0x20
	ldsh r1, [r1, r5]
	bl __divsi3
	adds r1, r0, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r1, r2
	cmp r0, #0x00
	bge _08097342
	ldr r3, _080974DC @ =0x000001FF
	adds r0, r1, r3
_08097342:
	asrs r0, r0, #0x08
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r4, _080974D8 @ =0x00005474
	adds r1, r0, r4
	ldr r0, [r1, #0x00]
	cmp r0, #0x04
	ble _08097356
	movs r0, #0x04
	str r0, [r1, #0x00]
_08097356:
	ldr r0, [r6, #0x00]
	ldr r5, _080974D8 @ =0x00005474
	adds r1, r0, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08097364
	str r7, [r1, #0x00]
_08097364:
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r3, r0, #0x0
	adds r3, #0xF5
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r1, #0x00
	bge _08097376
	adds r1, #0x03
_08097376:
	asrs r1, r1, #0x02
	ldr r0, [r6, #0x00]
	ldr r4, _080974E0 @ =0x00005478
	adds r2, r0, r4
	movs r0, #0x10
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x03
	bgt _0809738C
	movs r0, #0x04
	str r0, [r2, #0x00]
_0809738C:
	ldr r0, [r6, #0x00]
	ldr r5, _080974E4 @ =0x0000547C
	adds r2, r0, r5
	mov r0, r9
	movs r4, #0x1C
	ldsh r1, [r0, r4]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	subs r1, r1, r0
	movs r0, #0x0A
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x03
	bgt _080973AC
	movs r0, #0x04
	str r0, [r2, #0x00]
_080973AC:
	ldr r0, [r6, #0x00]
	ldr r5, _080974E4 @ =0x0000547C
	adds r1, r0, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x0E
	ble _080973BC
	movs r0, #0x0E
	str r0, [r1, #0x00]
_080973BC:
	ldr r0, [r6, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x07
	adds r4, r0, r1
	mov r2, r9
	ldr r0, [r2, #0x28]
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r3, r0, #0x08
	movs r0, #0x1E
	ldsh r2, [r2, r0]
	mov r5, r9
	movs r0, #0x1C
	ldsh r1, [r5, r0]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080973EC
	adds r0, #0xFF
_080973EC:
	asrs r1, r0, #0x08
	adds r1, r2, r1
	adds r0, r3, #0x0
	bl __divsi3
	movs r1, #0x46
	muls r0, r1
	cmp r0, #0x00
	bge _08097400
	adds r0, #0xFF
_08097400:
	asrs r0, r0, #0x08
	adds r0, #0x32
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, _080974E8 @ =0x00005484
	adds r3, r0, r1
	mov r4, r9
	ldr r2, [r4, #0x28]
	movs r5, #0x84
	lsls r5, r5, #0x01
	adds r0, r2, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x1E
	ldsh r1, [r4, r5]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	cmp r0, #0x03
	bgt _0809742A
	movs r0, #0x04
	str r0, [r3, #0x00]
_0809742A:
	ldr r0, [r6, #0x00]
	ldr r3, _080974E8 @ =0x00005484
	adds r1, r0, r3
	ldr r0, [r1, #0x00]
	cmp r0, #0x08
	ble _0809743A
	movs r0, #0x08
	str r0, [r1, #0x00]
_0809743A:
	mov r4, r9
	movs r5, #0x1C
	ldsh r0, [r4, r5]
	adds r2, #0xF5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	subs r3, r0, r1
	cmp r3, #0x00
	bge _0809744E
	movs r3, #0x00
_0809744E:
	ldr r0, [r6, #0x00]
	ldr r4, _080974EC @ =0x00005488
	adds r5, r0, r4
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r4, r0, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	adds r0, #0xC0
	muls r0, r3
	cmp r0, #0x00
	bge _0809746C
	adds r0, #0xFF
_0809746C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	str r0, [r5, #0x00]
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	cmp r2, r0
	bge _0809747E
	str r2, [r5, #0x00]
_0809747E:
	ldr r5, [sp, #0x000]
	cmp r9, r5
	bne _08097498
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08097498
	ldr r0, _080974F0 @ =0x08097B8D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_08097498:
	ldr r2, [sp, #0x004]
	cmp r9, r2
	bne _080974B2
	ldr r0, [sp, #0x000]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080974B2
	ldr r0, _080974F0 @ =0x08097B8D
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x4C]
_080974B2:
	ldr r0, _080974F4 @ =0x080974F9
	mov r4, r9
	str r0, [r4, #0x4C]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080974C8: .4byte 0x03000FDC
_080974CC: .4byte 0x00005470
_080974D0: .4byte 0x00005498
_080974D4: .4byte 0x0000549C
_080974D8: .4byte 0x00005474
_080974DC: .4byte 0x000001FF
_080974E0: .4byte 0x00005478
_080974E4: .4byte 0x0000547C
_080974E8: .4byte 0x00005484
_080974EC: .4byte 0x00005488
_080974F0: .4byte sub_8097B8C
_080974F4: .4byte sub_80974F8
	thumb_func_start sub_80974F8
sub_80974F8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, _080975B4 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r4, r1
	bne _0809751C
	ldr r2, _080975B8 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_0809751C:
	cmp r4, r5
	bne _0809752C
	ldr r2, _080975BC @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_0809752C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x7C]
	adds r0, r5, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _080975C0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08097558
	cmp r1, #0x04
	bne _0809762C
_08097558:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08097560
	adds r0, #0xFF
_08097560:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809757A
	adds r2, #0xFF
_0809757A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0809759E
	adds r0, #0xFF
_0809759E:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
	b _0809762C
_080975B4: .4byte 0x03000FD8
_080975B8: .4byte 0x00002027
_080975BC: .4byte 0x00002056
_080975C0:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080975D2
	cmp r1, #0x04
	bne _0809762C
_080975D2:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080975DA
	adds r0, #0xFF
_080975DA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080975F4
	adds r2, #0xFF
_080975F4:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08097618
	adds r0, #0xFF
_08097618:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_0809762C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08097644 @ =0x08097EB5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097644: .4byte sub_8097EB4
	thumb_func_start sub_8097648
sub_8097648:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, _080976C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080976BC
	ldr r0, [r2, #0x28]
	ldr r1, _080976C8 @ =0x00002089
	movs r3, #0x40
	negs r3, r3
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	movs r2, #0x01
	str r2, [sp, #0x008]
	movs r2, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	bl sub_807FA14
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080976B2
	cmp r1, #0x04
	bne _080976B6
_080976B2:
	ldr r0, _080976CC @ =0x08097C39
	str r0, [r4, #0x4C]
_080976B6:
	adds r0, r5, #0x0
	bl sub_8097DB4
_080976BC:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_080976C4: .4byte 0x03000FD8
_080976C8: .4byte 0x00002089
_080976CC: .4byte sub_8097C38
	thumb_func_start sub_80976D0
sub_80976D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	ldr r0, _0809770C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r2, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	cmp r7, r6
	bne _08097710
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	b _08097722
_0809770C: .4byte 0x03000FD8
_08097710:
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
_08097722:
	ldr r5, _08097928 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	ldr r1, _0809792C @ =0x0000547C
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	ldr r1, [r5, #0x00]
	ldr r2, _08097930 @ =0x00005478
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	cmp r1, r0
	bcs _08097756
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_8097CB4
_08097756:
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	cmp r7, r6
	bne _0809776C
	ldr r0, _08097934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08097780
_0809776C:
	adds r6, r7, #0x0
	adds r6, #0x9C
	cmp r7, r8
	bne _08097862
	ldr r0, _08097934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08097862
_08097780:
	ldr r5, _08097928 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	ldr r1, _08097938 @ =0x00005470
	mov r9, r1
	add r0, r9
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r4, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r5, [r5, #0x00]
	mov r8, r5
	ldr r0, _0809793C @ =0x00005498
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_81DB964
	ldr r2, _08097940 @ =0x3FF66666
	ldr r3, _08097944 @ =0x66666666
	bl sub_81DB240
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	ldr r0, _08097948 @ =0x0000549C
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_81DB964
	str r0, [sp, #0x00C]
	str r1, [sp, #0x010]
	adds r0, r4, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080977D8
	ldr r2, _0809794C @ =0x41F00000
	ldr r3, _08097950 @ =0x00000000
	bl sub_81DB1D8
_080977D8:
	ldr r2, _08097954 @ =0x3FE00000
	ldr r3, _08097958 @ =0x00000000
	bl sub_81DB240
	ldr r2, _0809795C @ =0x3FD33333
	ldr r3, _08097960 @ =0x33333333
	bl sub_81DB1D8
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, [r7, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	movs r2, #0x20
	ldsh r1, [r7, r2]
	bl __divsi3
	mov r1, r8
	add r1, r9
	ldr r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08097810
	adds r0, #0xFF
_08097810:
	asrs r0, r0, #0x08
	bl sub_81DB964
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r0, r4, #0x0
	bl sub_81DB1D8
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x010]
	bl sub_81DB240
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x008]
	bl sub_81DB1D8
	ldr r2, _08097964 @ =0x40700000
	ldr r3, _08097968 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	ldr r1, [r6, #0x00]
	subs r1, r1, r0
	str r1, [r6, #0x00]
	ldr r0, [r7, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08097862
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097862:
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809787A
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809787A:
	ldr r0, [r6, #0x00]
	subs r0, #0x19
	str r0, [r6, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, _0809796C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x00]
	cmp r0, r1
	bge _08097890
	str r1, [r7, #0x10]
_08097890:
	ldr r6, _08097970 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	cmp r1, r0
	blt _0809791A
	str r1, [r7, #0x10]
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080978CA
	cmp r1, #0x04
	bne _08097916
_080978CA:
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ldsh r5, [r0, r1]
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x0C
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_08097916:
	ldr r0, _08097974 @ =0x08097E29
	str r0, [r7, #0x4C]
_0809791A:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097928: .4byte 0x03000FDC
_0809792C: .4byte 0x0000547C
_08097930: .4byte 0x00005478
_08097934: .4byte 0x0300034C
_08097938: .4byte 0x00005470
_0809793C: .4byte 0x00005498
_08097940: .4byte 0x3FF66666
_08097944: .4byte 0x66666666
_08097948: .4byte 0x0000549C
_0809794C: .4byte 0x41F00000
_08097950: .4byte 0x00000000
_08097954: .4byte 0x3FE00000
_08097958: .4byte 0x00000000
_0809795C: .4byte 0x3FD33333
_08097960: .4byte 0x33333333
_08097964: .4byte 0x40700000
_08097968: .4byte 0x00000000
_0809796C: .4byte 0xFFFFFE00
_08097970: .4byte 0x03000FD8
_08097974: .4byte sub_8097E28
	thumb_func_start sub_8097978
sub_8097978:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	bl sub_807EA24
	ldr r0, _0809799C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	cmp r6, r0
	bne _080979A0
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080979AC
	.byte 0x00, 0x00
_0809799C: .4byte 0x03000FD8
_080979A0:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080979AC:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080979D8
	cmp r1, #0x04
	bne _08097A62
_080979D8:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r7, _08097A34 @ =0x03000FDC
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r1, r0
	ldr r0, [r2, #0x00]
	cmn r0, r1
	beq _08097A44
	ldr r2, _08097A38 @ =0x03001038
	ldr r0, _08097A3C @ =0x0819832C
	ldr r1, _08097A40 @ =0x08198220
	subs r0, r0, r1
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #0x07
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	adds r0, r5, #0x0
	bl _call_via_r4
	b _08097A48
_08097A34: .4byte 0x03000FDC
_08097A38: .4byte 0x03001038
_08097A3C: .4byte 0x0819832C
_08097A40: .4byte 0x08198220
_08097A44:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08097A48:
	adds r2, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08097A62:
	adds r1, r6, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _08097A84 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _08097A88 @ =0x00005488
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08097A8C @ =0x08097A91
	str r0, [r6, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097A84: .4byte 0x03000FDC
_08097A88: .4byte 0x00005488
_08097A8C: .4byte sub_8097A90
	thumb_func_start sub_8097A90
sub_8097A90:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _08097B78 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _08097AE2
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08097AE2
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x02
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_8097CB4
_08097AE2:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097B6E
	cmp r4, r8
	bne _08097B00
	ldr r1, [r7, #0x4C]
	ldr r0, _08097B7C @ =0x080976D1
	cmp r1, r0
	bne _08097B00
	ldr r0, _08097B80 @ =0x08097979
	str r0, [r7, #0x4C]
_08097B00:
	cmp r4, r7
	bne _08097B14
	mov r0, r8
	ldr r1, [r0, #0x4C]
	ldr r0, _08097B7C @ =0x080976D1
	cmp r1, r0
	bne _08097B14
	ldr r0, _08097B80 @ =0x08097979
	mov r1, r8
	str r0, [r1, #0x4C]
_08097B14:
	ldr r0, _08097B78 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _08097B32
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08097B84 @ =0x00002027
	movs r3, #0x00
	bl sub_8082E1C
_08097B32:
	cmp r4, r5
	bne _08097B42
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08097B88 @ =0x00002056
	movs r3, #0x00
	bl sub_8082E1C
_08097B42:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08097B7C @ =0x080976D1
	str r0, [r4, #0x4C]
	movs r0, #0x3F
	subs r1, #0x01
	bl play_sfx_80195B4
_08097B6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097B78: .4byte 0x03000FD8
_08097B7C: .4byte sub_80976D0
_08097B80: .4byte sub_8097978
_08097B84: .4byte 0x00002027
_08097B88: .4byte 0x00002056
	thumb_func_start sub_8097B8C
sub_8097B8C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08097BA0
	cmp r1, #0x04
	bne _08097C2A
_08097BA0:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r7, _08097BFC @ =0x03000FDC
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r1, r0
	ldr r0, [r2, #0x00]
	cmn r0, r1
	beq _08097C0C
	ldr r2, _08097C00 @ =0x03001038
	ldr r0, _08097C04 @ =0x0819832C
	ldr r1, _08097C08 @ =0x08198220
	subs r0, r0, r1
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #0x07
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	adds r0, r5, #0x0
	bl _call_via_r4
	b _08097C10
_08097BFC: .4byte 0x03000FDC
_08097C00: .4byte 0x03001038
_08097C04: .4byte 0x0819832C
_08097C08: .4byte 0x08198220
_08097C0C:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08097C10:
	adds r2, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08097C2A:
	ldr r0, _08097C34 @ =0x08097D51
	str r0, [r6, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097C34: .4byte sub_8097D50
	thumb_func_start sub_8097C38
sub_8097C38:
	push {r4, lr}
	ldr r0, [r0, #0x04]
	ldr r4, [r0, #0x08]
_08097C3E:
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08097CAC
	movs r0, #0x10
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x04]
	adds r0, r0, r1
	str r0, [r2, #0x04]
	movs r0, #0x12
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	str r0, [r2, #0x08]
	movs r1, #0x14
	ldsh r0, [r2, r1]
	ldr r1, [r2, #0x0C]
	adds r1, r1, r0
	str r1, [r2, #0x0C]
	ldrh r0, [r2, #0x14]
	subs r0, #0x66
	movs r3, #0x00
	strh r0, [r2, #0x14]
	cmp r1, #0x00
	ble _08097C72
	adds r4, r2, #0x0
	b _08097C3E
_08097C72:
	str r3, [r2, #0x0C]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x10]
	movs r1, #0x12
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x12]
	movs r1, #0x14
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xFF
	bgt _08097C3E
	adds r0, r2, #0x0
	bl sub_807FA94
	str r0, [r4, #0x00]
	b _08097C3E
_08097CAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8097CB4
sub_8097CB4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097D4C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x88
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08097D44
	subs r0, #0x01
	strh r0, [r1, #0x00]
	bl sub_807FB04
	adds r4, r0, #0x0
	ldr r0, [r5, #0x38]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	subs r1, #0x16
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x01
	bl sub_81DD77C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x99
	bl sub_81DD77C
	movs r1, #0x4C
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x01
	bl sub_81DD77C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x04]
	ldr r1, [r0, #0x08]
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2C
	bl play_sfx_80195B4
_08097D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097D4C: .4byte 0x03000FF4
	thumb_func_start sub_8097D50
sub_8097D50:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _08097DA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097D9C
	cmp r5, r6
	bne _08097D88
	ldr r1, [r4, #0x4C]
	ldr r0, _08097DA8 @ =0x080976D1
	cmp r1, r0
	bne _08097D88
	ldr r0, _08097DAC @ =0x08097979
	str r0, [r4, #0x4C]
_08097D88:
	cmp r5, r4
	bne _08097D98
	ldr r1, [r6, #0x4C]
	ldr r0, _08097DA8 @ =0x080976D1
	cmp r1, r0
	bne _08097D98
	ldr r0, _08097DAC @ =0x08097979
	str r0, [r6, #0x4C]
_08097D98:
	ldr r0, _08097DB0 @ =0x080974F9
	str r0, [r5, #0x4C]
_08097D9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097DA4: .4byte 0x03000FD8
_08097DA8: .4byte sub_80976D0
_08097DAC: .4byte sub_8097978
_08097DB0: .4byte sub_80974F8
	thumb_func_start sub_8097DB4
sub_8097DB4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08097E18 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _08097DD6
	ldr r2, _08097E1C @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08097DD6:
	cmp r4, r5
	bne _08097DE6
	ldr r2, _08097E20 @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08097DE6:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08097E24 @ =0x080976D1
	str r0, [r4, #0x4C]
	subs r1, #0x01
	movs r0, #0x3F
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_08097E18: .4byte 0x03000FD8
_08097E1C: .4byte 0x00002027
_08097E20: .4byte 0x00002056
_08097E24: .4byte sub_80976D0
	thumb_func_start sub_8097E28
sub_8097E28:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, _08097E78 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r7, #0x20
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08097EAA
	ldr r0, [r6, #0x08]
	bl sub_807FB64
	cmp r6, r5
	bne _08097E82
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08097E82
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08097E7C
	adds r0, r4, #0x0
	bl sub_8097DB4
	b _08097E82
	.byte 0x00, 0x00
_08097E78: .4byte 0x03000FD8
_08097E7C:
	adds r0, r4, #0x0
	bl sub_80974F8
_08097E82:
	cmp r6, r4
	bne _08097EA6
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08097EA6
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _08097EA0
	adds r0, r5, #0x0
	bl sub_8097DB4
	b _08097EA6
_08097EA0:
	adds r0, r5, #0x0
	bl sub_80974F8
_08097EA6:
	ldr r0, _08097EB0 @ =0x08097F11
	str r0, [r6, #0x4C]
_08097EAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097EB0: .4byte sub_8097F10
	thumb_func_start sub_8097EB4
sub_8097EB4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08097F08 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097F00
	cmp r4, r5
	bne _08097EEC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097EEC:
	cmp r4, r6
	bne _08097EFC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097EFC:
	ldr r0, _08097F0C @ =0x08097649
	str r0, [r4, #0x4C]
_08097F00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097F08: .4byte 0x03000FD8
_08097F0C: .4byte sub_8097648
	thumb_func_start sub_8097F10
sub_8097F10:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x04]
	ldr r0, [r0, #0x08]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08097F2A
	adds r0, r1, #0x0
	bl sub_807C298
	str r4, [r5, #0x30]
	str r4, [r5, #0x4C]
_08097F2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8097F30
sub_8097F30:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _08097FB8 @ =0x03000FF4
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
	ldr r0, _08097FBC @ =0x03000FD8
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
	ldr r1, _08097FC0 @ =0x08097FC5
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
_08097FB8: .4byte 0x03000FF4
_08097FBC: .4byte 0x03000FD8
_08097FC0: .4byte sub_8097FC4
	thumb_func_start sub_8097FC4
sub_8097FC4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _0809816C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r10, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r9, r0
	movs r6, #0x00
	movs r5, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r1, #0x06
	mov r12, r1
	movs r4, #0x05
_08097FF6:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _0809802C
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_0809802C:
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08098062
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_08098062:
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08098098
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_08098098:
	adds r3, #0x0C
	subs r4, #0x03
	cmp r4, #0x00
	bge _08097FF6
	ldr r3, _08098170 @ =0x0819832C
	ldr r0, _08098174 @ =0x08198220
	subs r4, r3, r0
	ldr r1, _08098178 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r5, #0x00
	mov r2, r9
	strh r0, [r2, #0x1C]
	mov r3, r10
	strh r0, [r3, #0x1C]
	ldr r0, _08098178 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	strh r0, [r1, #0x1E]
	mov r2, r10
	strh r0, [r2, #0x1E]
	ldr r3, _08098178 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r4, r9
	strh r0, [r4, #0x20]
	mov r1, r10
	strh r0, [r1, #0x20]
	ldr r1, _0809817C @ =0x03000FDC
	ldr r0, [r1, #0x00]
	ldr r2, _08098180 @ =0x00005470
	adds r0, r0, r2
	str r5, [r0, #0x00]
	ldr r2, [r1, #0x00]
	ldr r3, _08098184 @ =0x00005474
	adds r1, r2, r3
	movs r0, #0x14
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r4, _08098188 @ =0x00005478
	adds r1, r2, r4
	movs r0, #0xB3
	str r0, [r1, #0x00]
	ldr r0, _0809818C @ =0x0000547C
	adds r2, r2, r0
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x28]
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r3, #0x1C
	ldsh r1, [r1, r3]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r4, [sp, #0x000]
	cmp r4, r10
	bne _0809813A
	mov r0, r9
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809813A
	ldr r0, _08098190 @ =0x08098711
	mov r1, r9
	str r0, [r1, #0x4C]
_0809813A:
	ldr r2, [sp, #0x000]
	cmp r2, r9
	bne _08098154
	mov r0, r10
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08098154
	ldr r0, _08098190 @ =0x08098711
	mov r3, r10
	str r0, [r3, #0x4C]
_08098154:
	ldr r0, _08098194 @ =0x08098199
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809816C: .4byte 0x03000FD8
_08098170: .4byte 0x0819832C
_08098174: .4byte 0x08198220
_08098178: .4byte 0x03001038
_0809817C: .4byte 0x03000FDC
_08098180: .4byte 0x00005470
_08098184: .4byte 0x00005474
_08098188: .4byte 0x00005478
_0809818C: .4byte 0x0000547C
_08098190: .4byte sub_8098710
_08098194: .4byte sub_8098198
	thumb_func_start sub_8098198
sub_8098198:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, _08098254 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r4, r1
	bne _080981BC
	ldr r2, _08098258 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_080981BC:
	cmp r4, r5
	bne _080981CC
	ldr r2, _0809825C @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_080981CC:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x7C]
	adds r0, r5, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _08098260
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080981F8
	cmp r1, #0x04
	bne _080982CC
_080981F8:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08098200
	adds r0, #0xFF
_08098200:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809821A
	adds r2, #0xFF
_0809821A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0809823E
	adds r0, #0xFF
_0809823E:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
	b _080982CC
_08098254: .4byte 0x03000FD8
_08098258: .4byte 0x00002027
_0809825C: .4byte 0x00002056
_08098260:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098272
	cmp r1, #0x04
	bne _080982CC
_08098272:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0809827A
	adds r0, #0xFF
_0809827A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08098294
	adds r2, #0xFF
_08098294:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080982B8
	adds r0, #0xFF
_080982B8:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080982CC:
	ldr r0, _080982D8 @ =0x080988D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080982D8: .4byte sub_80988D8
	thumb_func_start sub_80982DC
sub_80982DC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, _08098358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098350
	ldr r0, [r2, #0x28]
	ldr r1, _0809835C @ =0x00002089
	movs r3, #0x40
	negs r3, r3
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	movs r2, #0x01
	str r2, [sp, #0x008]
	movs r2, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	bl sub_807FA14
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098346
	cmp r1, #0x04
	bne _0809834A
_08098346:
	ldr r0, _08098360 @ =0x08097C39
	str r0, [r4, #0x4C]
_0809834A:
	adds r0, r5, #0x0
	bl sub_80987F4
_08098350:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08098358: .4byte 0x03000FD8
_0809835C: .4byte 0x00002089
_08098360: .4byte sub_8097C38
	thumb_func_start sub_8098364
sub_8098364:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _0809839C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	cmp r6, r5
	bne _080983A0
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	b _080983B2
	.byte 0x00, 0x00
_0809839C: .4byte 0x03000FD8
_080983A0:
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
_080983B2:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x10
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r0, r1
	bcs _080983D4
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_8097CB4
_080983D4:
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	cmp r6, r5
	bne _080983EA
	ldr r0, _08098520 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080983FE
_080983EA:
	adds r4, r6, #0x0
	adds r4, #0x9C
	cmp r6, r7
	bne _08098422
	ldr r0, _08098520 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08098422
_080983FE:
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08098524 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x02
	beq _08098422
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098422:
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809843A
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809843A:
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	subs r0, #0x19
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r0, #0x20
	ldsh r1, [r6, r0]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08098460
	adds r0, #0xFF
_08098460:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	bl __divsi3
	bl sub_81DB964
	ldr r2, _08098528 @ =0x3FF33333
	ldr r3, _0809852C @ =0x33333333
	bl sub_81DB1D8
	ldr r2, _08098530 @ =0x40700000
	ldr r3, _08098534 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	ldr r1, [r6, #0x10]
	subs r1, r1, r0
	str r1, [r6, #0x10]
	ldr r0, [r4, #0x00]
	cmp r1, r0
	bge _0809848E
	str r0, [r6, #0x10]
_0809848E:
	ldr r7, _08098538 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blt _08098518
	str r1, [r6, #0x10]
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080984C8
	cmp r1, #0x04
	bne _08098514
_080984C8:
	ldr r0, [r6, #0x08]
	movs r1, #0x02
	ldsh r5, [r0, r1]
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x30
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_08098514:
	ldr r0, _0809853C @ =0x08098861
	str r0, [r6, #0x4C]
_08098518:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08098520: .4byte 0x0300034C
_08098524: .4byte 0xFFFFFC00
_08098528: .4byte 0x3FF33333
_0809852C: .4byte 0x33333333
_08098530: .4byte 0x40700000
_08098534: .4byte 0x00000000
_08098538: .4byte 0x03000FD8
_0809853C: .4byte sub_8098860
	thumb_func_start sub_8098540
sub_8098540:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_807EA24
	ldr r0, _08098564 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	cmp r4, r0
	bne _08098568
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08098574
	.byte 0x00, 0x00
_08098564: .4byte 0x03000FD8
_08098568:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098574:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098596
	cmp r1, #0x04
	bne _080985F2
_08098596:
	ldr r0, [r4, #0x28]
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r5, r0, #0x0
	adds r5, #0x64
	movs r0, #0x1E
	ldsh r3, [r4, r0]
	cmp r5, r3
	beq _080985D4
	ldr r2, _080985C8 @ =0x03001038
	ldr r0, _080985CC @ =0x0819832C
	ldr r1, _080985D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r1, r5, r3
	bl _call_via_r2
	adds r2, r0, #0x0
	b _080985DA
_080985C8: .4byte 0x03001038
_080985CC: .4byte 0x0819832C
_080985D0: .4byte 0x08198220
_080985D4:
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
_080985DA:
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080985F2:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA4
	adds r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08098618 @ =0x0809861D
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08098618: .4byte sub_809861C
	thumb_func_start sub_809861C
sub_809861C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _080986FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0809866E
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0809866E
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x04
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_8097CB4
_0809866E:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080986F2
	cmp r4, r8
	bne _0809868C
	ldr r1, [r7, #0x4C]
	ldr r0, _08098700 @ =0x08098365
	cmp r1, r0
	bne _0809868C
	ldr r0, _08098704 @ =0x08098541
	str r0, [r7, #0x4C]
_0809868C:
	cmp r4, r7
	bne _080986A0
	mov r0, r8
	ldr r1, [r0, #0x4C]
	ldr r0, _08098700 @ =0x08098365
	cmp r1, r0
	bne _080986A0
	ldr r0, _08098704 @ =0x08098541
	mov r1, r8
	str r0, [r1, #0x4C]
_080986A0:
	ldr r0, _080986FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _080986BE
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08098708 @ =0x00002027
	movs r3, #0x00
	bl sub_8082E1C
_080986BE:
	cmp r4, r5
	bne _080986CE
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _0809870C @ =0x00002056
	movs r3, #0x00
	bl sub_8082E1C
_080986CE:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08098700 @ =0x08098365
	str r0, [r4, #0x4C]
_080986F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080986FC: .4byte 0x03000FD8
_08098700: .4byte sub_8098364
_08098704: .4byte sub_8098540
_08098708: .4byte 0x00002027
_0809870C: .4byte 0x00002056
	thumb_func_start sub_8098710
sub_8098710:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098724
	cmp r1, #0x04
	bne _08098782
_08098724:
	ldr r0, [r4, #0x28]
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r5, r0, #0x0
	adds r5, #0x64
	movs r0, #0x1E
	ldsh r3, [r4, r0]
	cmp r5, r3
	beq _08098764
	ldr r2, _08098758 @ =0x03001038
	ldr r0, _0809875C @ =0x0819832C
	ldr r1, _08098760 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r1, r5, r3
	bl _call_via_r2
	adds r2, r0, #0x0
	b _0809876A
	.byte 0x00, 0x00
_08098758: .4byte 0x03001038
_0809875C: .4byte 0x0819832C
_08098760: .4byte 0x08198220
_08098764:
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
_0809876A:
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08098782:
	ldr r0, _0809878C @ =0x08098791
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0809878C: .4byte sub_8098790
	thumb_func_start sub_8098790
sub_8098790:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _080987E4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080987DC
	cmp r5, r6
	bne _080987C8
	ldr r1, [r4, #0x4C]
	ldr r0, _080987E8 @ =0x08098365
	cmp r1, r0
	bne _080987C8
	ldr r0, _080987EC @ =0x08098541
	str r0, [r4, #0x4C]
_080987C8:
	cmp r5, r4
	bne _080987D8
	ldr r1, [r6, #0x4C]
	ldr r0, _080987E8 @ =0x08098365
	cmp r1, r0
	bne _080987D8
	ldr r0, _080987EC @ =0x08098541
	str r0, [r6, #0x4C]
_080987D8:
	ldr r0, _080987F0 @ =0x08098199
	str r0, [r5, #0x4C]
_080987DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080987E4: .4byte 0x03000FD8
_080987E8: .4byte sub_8098364
_080987EC: .4byte sub_8098540
_080987F0: .4byte sub_8098198
	thumb_func_start sub_80987F4
sub_80987F4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08098850 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _08098816
	ldr r2, _08098854 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08098816:
	cmp r4, r5
	bne _08098826
	ldr r2, _08098858 @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08098826:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _0809885C @ =0x08098365
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08098850: .4byte 0x03000FD8
_08098854: .4byte 0x00002027
_08098858: .4byte 0x00002056
_0809885C: .4byte sub_8098364
	thumb_func_start sub_8098860
sub_8098860:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080988A0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080988CC
	cmp r6, r5
	bne _080988AA
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _080988AA
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080988A4
	adds r0, r4, #0x0
	bl sub_80987F4
	b _080988AA
_080988A0: .4byte 0x03000FD8
_080988A4:
	adds r0, r4, #0x0
	bl sub_8098198
_080988AA:
	cmp r6, r4
	bne _080988C8
	ldr r0, [r5, #0x4C]
	cmp r0, #0x00
	beq _080988C8
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080988C2
	adds r0, r5, #0x0
	bl sub_80987F4
	b _080988C8
_080988C2:
	adds r0, r5, #0x0
	bl sub_8098198
_080988C8:
	ldr r0, _080988D4 @ =0x08098935
	str r0, [r6, #0x4C]
_080988CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080988D4: .4byte sub_8098934
	thumb_func_start sub_80988D8
sub_80988D8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809892C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08098924
	cmp r4, r5
	bne _08098910
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098910:
	cmp r4, r6
	bne _08098920
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098920:
	ldr r0, _08098930 @ =0x080982DD
	str r0, [r4, #0x4C]
_08098924:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809892C: .4byte 0x03000FD8
_08098930: .4byte sub_80982DC
	thumb_func_start sub_8098934
sub_8098934:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x04]
	ldr r0, [r0, #0x08]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0809894E
	adds r0, r1, #0x0
	bl sub_807C298
	str r4, [r5, #0x30]
	str r4, [r5, #0x4C]
_0809894E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8098954
sub_8098954:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08098968
	b _08098A6C
_08098968:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08098990
	adds r1, #0xFF
_08098990:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0809899A
	adds r2, #0xFF
_0809899A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080989A4
	adds r3, #0xFF
_080989A4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08098A74 @ =0x000028DF
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080989B8
	adds r0, #0xFF
_080989B8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x32
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080989C6
	adds r3, #0xFF
_080989C6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080989D0
	adds r0, #0xFF
_080989D0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08098A78 @ =0x0000403D
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r4, #0x00
	str r4, [r0, #0x00]
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x78
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, _08098A7C @ =0x08098A85
	str r0, [r5, #0x4C]
	ldr r0, _08098A80 @ =0x08098C79
	str r0, [r6, #0x4C]
_08098A6C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08098A74: .4byte 0x000028DF
_08098A78: .4byte 0x0000403D
_08098A7C: .4byte sub_8098A84
_08098A80: .4byte sub_8098C78
	thumb_func_start sub_8098A84
sub_8098A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x0C
	strh r0, [r1, #0x00]
	mov r2, r8
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08098AB0
	adds r0, #0xFF
_08098AB0:
	asrs r7, r0, #0x08
	mov r4, r8
	adds r4, #0x0C
	adds r5, r4, #0x0
	movs r1, #0x84
	add r1, r8
	mov r10, r1
	movs r2, #0x88
	add r2, r8
	mov r9, r2
	cmp r4, #0x00
	beq _08098B7A
	ldr r1, _08098B5C @ =0x0819832C
	mov r0, r10
	str r0, [sp, #0x004]
	movs r6, #0x00
	ldr r0, _08098B60 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x000]
_08098AD6:
	ldr r0, _08098B64 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x000]
	adds r2, r2, r1
	adds r0, r6, #0x0
	movs r1, #0x05
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _08098B68 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08098AFC
	adds r0, #0x3F
_08098AFC:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _08098B6C @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08098B18
	adds r0, #0x3F
_08098B18:
	asrs r0, r0, #0x06
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x8C
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08098B3A
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_08098B3A:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08098B70
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _08098B7A
_08098B4C:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08098B4C
	b _08098B7A
	.byte 0x00, 0x00
_08098B5C: .4byte 0x0819832C
_08098B60: .4byte 0x08198220
_08098B64: .4byte 0x03001038
_08098B68: .4byte 0x08198584
_08098B6C: .4byte 0x08198504
_08098B70:
	adds r6, #0x60
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08098AD6
_08098B7A:
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098B8C
	adds r0, #0xFF
_08098B8C:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08098B9C
	adds r1, #0xFF
_08098B9C:
	asrs r3, r1, #0x08
	ldr r2, _08098C70 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08098BE2
	adds r0, #0x10
	cmp r7, r0
	bge _08098BE2
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08098BE2
	ldr r0, _08098C74 @ =0x000007FF
	cmp r1, r0
	bgt _08098BE2
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08098BE2
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098BE2:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	adds r6, r0, #0x0
	cmp r6, #0x00
	beq _08098C56
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098C00
	adds r0, #0xFF
_08098C00:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098C10
	adds r0, #0xFF
_08098C10:
	asrs r3, r0, #0x08
	ldr r2, _08098C70 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08098C56
	adds r0, #0x10
	cmp r7, r0
	bge _08098C56
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08098C56
	ldr r0, _08098C74 @ =0x000007FF
	cmp r1, r0
	bgt _08098C56
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _08098C56
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098C56:
	cmp r7, #0xC7
	ble _08098C60
	mov r0, r8
	bl sub_807C298
_08098C60:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08098C70: .4byte 0x03001038
_08098C74: .4byte 0x000007FF
	thumb_func_start sub_8098C78
sub_8098C78:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098C8E
	adds r0, r2, #0x0
	bl sub_8087540
_08098C8E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA1, 0x8C, 0x09, 0x08
	thumb_func_start sub_8098CA0
sub_8098CA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08098CB8 @ =0x08098CBD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08098CB8: .4byte sub_8098CBC
	thumb_func_start sub_8098CBC
sub_8098CBC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098D10
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08098CE2
	adds r1, #0xFF
_08098CE2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08098CEC
	adds r2, #0xFF
_08098CEC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08098CF6
	adds r3, #0xFF
_08098CF6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08098D18 @ =0x00002841
	bl sub_80DF024
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08098D1C @ =0x08098955
	str r0, [r4, #0x4C]
_08098D10:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08098D18: .4byte 0x00002841
_08098D1C: .4byte sub_8098954
	thumb_func_start sub_8098D20
sub_8098D20:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098E30
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08098D5A
	adds r1, #0xFF
_08098D5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08098D64
	adds r2, #0xFF
_08098D64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08098D6E
	adds r3, #0xFF
_08098D6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08098E38 @ =0x000028C6
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08098D82
	adds r0, #0xFF
_08098D82:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x32
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08098D90
	adds r3, #0xFF
_08098D90:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08098D9A
	adds r0, #0xFF
_08098D9A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08098E3C @ =0x0000403C
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, #0x9C
	movs r4, #0x00
	str r4, [r0, #0x00]
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x78
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	movs r4, #0x07
_08098DE2:
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	subs r4, #0x04
	cmp r4, #0x00
	bge _08098DE2
	ldr r0, _08098E40 @ =0x08098E49
	str r0, [r5, #0x4C]
	ldr r0, _08098E44 @ =0x0809900D
	str r0, [r6, #0x4C]
_08098E30:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08098E38: .4byte 0x000028C6
_08098E3C: .4byte 0x0000403C
_08098E40: .4byte sub_8098E48
_08098E44: .4byte sub_809900C
	thumb_func_start sub_8098E48
sub_8098E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x19
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08098E74
	adds r0, #0xFF
_08098E74:
	asrs r6, r0, #0x08
	adds r4, r7, #0x0
	adds r4, #0x0C
	adds r5, r4, #0x0
	adds r1, r7, #0x0
	adds r1, #0x84
	str r1, [sp, #0x004]
	movs r2, #0x88
	adds r2, r2, r7
	mov r9, r2
	cmp r4, #0x00
	beq _08098F40
	ldr r1, _08098F20 @ =0x0819832C
	ldr r0, [sp, #0x004]
	str r0, [sp, #0x000]
	movs r2, #0x00
	mov r8, r2
	ldr r0, _08098F24 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_08098E9C:
	ldr r0, _08098F28 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	mov r0, r8
	movs r1, #0x09
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _08098F2C @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08098EC0
	adds r0, #0x3F
_08098EC0:
	asrs r0, r0, #0x06
	adds r1, r6, #0x0
	muls r1, r0
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _08098F30 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08098EDC
	adds r0, #0x3F
_08098EDC:
	asrs r0, r0, #0x06
	muls r0, r6
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x8C
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08098EFE
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_08098EFE:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08098F34
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _08098F40
_08098F10:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08098F10
	b _08098F40
	.byte 0x00, 0x00
_08098F20: .4byte 0x0819832C
_08098F24: .4byte 0x08198220
_08098F28: .4byte 0x03001038
_08098F2C: .4byte 0x08198584
_08098F30: .4byte 0x08198504
_08098F34:
	movs r0, #0x60
	add r8, r0
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08098E9C
_08098F40:
	ldr r4, [r7, #0x2C]
	ldr r1, [r4, #0x38]
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098F50
	adds r0, #0xFF
_08098F50:
	asrs r5, r0, #0x08
	ldr r1, [r4, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098F60
	adds r0, #0xFF
_08098F60:
	asrs r2, r0, #0x08
	ldr r3, _08099004 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	lsls r1, r2, #0x02
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	subs r0, #0x08
	cmp r0, r6
	bge _08098FA6
	adds r0, #0x10
	cmp r6, r0
	bge _08098FA6
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	blt _08098FA6
	ldr r0, _08099008 @ =0x000007FF
	cmp r1, r0
	bgt _08098FA6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08098FA6
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098FA6:
	ldr r0, [r4, #0x28]
	bl sub_8087650
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08098FE8
	adds r4, r2, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	subs r0, #0x08
	cmp r0, r6
	bge _08098FE8
	adds r0, #0x10
	cmp r6, r0
	bge _08098FE8
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	blt _08098FE8
	ldr r0, _08099008 @ =0x000007FF
	cmp r1, r0
	bgt _08098FE8
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _08098FE8
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098FE8:
	cmp r6, #0xC7
	ble _08098FF2
	adds r0, r7, #0x0
	bl sub_807C298
_08098FF2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08099004: .4byte 0x03001038
_08099008: .4byte 0x000007FF
	thumb_func_start sub_809900C
sub_809900C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08099022
	adds r0, r2, #0x0
	bl sub_8087540
_08099022:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
