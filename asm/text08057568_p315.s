	.include "asm/macros.inc"

	.syntax unified
	.text

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
