	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8090E4C
sub_8090E4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08090E6E
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08090E6E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8090E74
sub_8090E74:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08090ED8 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08090EDC @ =0x03000FF4
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
	beq _08090EE4
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
	ldr r0, _08090EE0 @ =0x08091D79
	b _08090EE6
	.byte 0x00, 0x00
_08090ED8: .4byte 0x084FE8A8
_08090EDC: .4byte 0x03000FF4
_08090EE0: .4byte sub_8091D78
_08090EE4:
	ldr r0, _08090F08 @ =0x08091D35
_08090EE6:
	str r0, [r4, #0x4C]
	ldr r0, _08090F0C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090F10 @ =0x00689E40
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
_08090F08: .4byte sub_8091D34
_08090F0C: .4byte 0x03001038
_08090F10: .4byte 0x00689E40
	thumb_func_start sub_8090F14
sub_8090F14:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08090F78 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08090F7C @ =0x03000FF4
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
	movs r0, #0x16
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x0A
	cmp r5, #0x00
	beq _08090F88
	ldr r2, _08090F80 @ =0x0000204D
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
	ldr r0, _08090F84 @ =0x08091D11
	b _08090F8A
_08090F78: .4byte 0x084FE9A4
_08090F7C: .4byte 0x03000FF4
_08090F80: .4byte 0x0000204D
_08090F84: .4byte sub_8091D10
_08090F88:
	ldr r0, _08090FAC @ =0x08091CC9
_08090F8A:
	str r0, [r4, #0x4C]
	ldr r0, _08090FB0 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090FB4 @ =0x00559440
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
_08090FAC: .4byte sub_8091CC8
_08090FB0: .4byte 0x03001038
_08090FB4: .4byte 0x00559440
	thumb_func_start sub_8090FB8
sub_8090FB8:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08090FC8
	adds r2, #0xFF
_08090FC8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08090FD2
	adds r3, #0xFF
_08090FD2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08090FDC
	adds r0, #0xFF
_08090FDC:
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
	ldr r0, _08091088 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0809108C @ =0x08087541
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
	bl sub_8091090
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091088: .4byte 0x084FE8B4
_0809108C: .4byte sub_8087540
	thumb_func_start sub_8091090
sub_8091090:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _080910B0 @ =0x08091091
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _080910B4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809116A
	.byte 0x00, 0x00
_080910B0: .4byte sub_8091090
_080910B4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _080910CE
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080910CE:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _080910E2
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_080910E2:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x06
	bne _080910F6
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080910F6:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _0809110A
	ldr r2, _08091130 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809110A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0C
	beq _0809113C
	ldr r0, _08091134 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0809115A
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, _08091138 @ =0x08091175
	str r0, [r4, #0x4C]
	b _0809116A
_08091130: .4byte 0x00002025
_08091134: .4byte 0x0300034C
_08091138: .4byte sub_8091174
_0809113C:
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
	ldr r0, _08091170 @ =0x08091275
	str r0, [r4, #0x4C]
_0809115A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0809116A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08091170: .4byte sub_8091274
	thumb_func_start sub_8091174
sub_8091174:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08091194 @ =0x08091175
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091198
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809126A
	.byte 0x00, 0x00
_08091194: .4byte sub_8091174
_08091198:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08091200
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
	ldr r2, _080911F0 @ =0x03001038
	ldr r0, _080911F4 @ =0x0819832C
	ldr r1, _080911F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0A
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
	ldr r0, _080911FC @ =0x08091C45
	str r0, [r4, #0x4C]
	b _0809126A
	.byte 0x00, 0x00
_080911F0: .4byte 0x03001038
_080911F4: .4byte 0x0819832C
_080911F8: .4byte 0x08198220
_080911FC: .4byte sub_8091C44
_08091200:
	cmp r1, #0x05
	bgt _08091220
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809125A
	ldr r2, _0809121C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809125A
_0809121C: .4byte 0x00002025
_08091220:
	cmp r1, #0x0B
	bgt _08091240
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0809125A
	ldr r2, _0809123C @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0809125A
_0809123C: .4byte 0x00002025
_08091240:
	cmp r1, #0x11
	bgt _0809125A
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0809125A
	ldr r2, _08091270 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0809125A:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_0809126A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08091270: .4byte 0x00002025
	thumb_func_start sub_8091274
sub_8091274:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809128C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809139E
_0809128C:
	ldr r0, _080912D4 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _080912DC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x16
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
	ldr r0, _080912D8 @ =0x08091BE1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0809139E
_080912D4: .4byte 0x0300034C
_080912D8: .4byte sub_8091BE0
_080912DC:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x31
	ble _08091388
	ldr r0, [r4, #0x28]
	ldr r1, _0809133C @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _08091354
	ldr r0, _08091340 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _08091350
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
	ldr r2, _08091344 @ =0x03001038
	ldr r0, _08091348 @ =0x0819832C
	ldr r1, _0809134C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0A
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08091370
	.byte 0x00, 0x00
_0809133C: .4byte 0x0000012D
_08091340: .4byte 0x03000FD8
_08091344: .4byte 0x03001038
_08091348: .4byte 0x0819832C
_0809134C: .4byte 0x08198220
_08091350:
	movs r0, #0x32
	b _0809139C
_08091354:
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
_08091370:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091384 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _0809139E
	.byte 0x00, 0x00
_08091384: .4byte sub_8091C44
_08091388:
	cmp r0, #0x18
	ble _08091398
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08091398:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0809139C:
	strh r0, [r3, #0x00]
_0809139E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80913A4
sub_80913A4:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080913BC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091540
_080913BC:
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
	ldr r3, _08091448 @ =0x03001038
	ldr r1, _0809144C @ =0x0819832C
	ldr r2, _08091450 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _08091454 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08091406
	adds r0, #0x3F
_08091406:
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
	ldr r0, _08091458 @ =0x08198504
	adds r0, r3, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0809142A
	adds r0, #0x3F
_0809142A:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0809145C
	ldr r0, [r5, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r0, r0, r7
	b _08091462
_08091448: .4byte 0x03001038
_0809144C: .4byte 0x0819832C
_08091450: .4byte 0x08198220
_08091454: .4byte 0x08198584
_08091458: .4byte 0x08198504
_0809145C:
	ldr r0, [r5, #0x00]
	ldr r1, _08091520 @ =0xFFFFF400
	adds r0, r0, r1
_08091462:
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x02
	bne _0809147C
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_0809147C:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x03
	bne _08091490
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08091490:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	bne _080914A4
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_080914A4:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x05
	bne _080914B8
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_080914B8:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x06
	bne _080914CC
	ldr r2, _08091524 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_080914CC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08091530
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
	ldr r0, _08091528 @ =0x08091B91
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08091540
	ldr r3, _0809152C @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08091540
_08091520: .4byte 0xFFFFF400
_08091524: .4byte 0x00002025
_08091528: .4byte sub_8091B90
_0809152C: .4byte 0x00000111
_08091530:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08091540:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8091548
sub_8091548:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08091558
	adds r2, #0xFF
_08091558:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08091562
	adds r3, #0xFF
_08091562:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809156C
	adds r0, #0xFF
_0809156C:
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
	ldr r0, _08091618 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0809161C @ =0x08087541
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
	bl sub_8091620
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091618: .4byte 0x084FE8B4
_0809161C: .4byte sub_8087540
	thumb_func_start sub_8091620
sub_8091620:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08091640 @ =0x08091621
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _08091644
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080916FE
	.byte 0x00, 0x00
_08091640: .4byte sub_8091620
_08091644:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0809165E
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809165E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _08091672
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_08091672:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _08091686
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08091686:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0809169A
	ldr r2, _080916C4 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809169A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x08
	beq _080916D0
	ldr r0, _080916C8 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080916EE
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _080916CC @ =0x08091709
	str r0, [r4, #0x4C]
	b _080916FE
	.byte 0x00, 0x00
_080916C4: .4byte 0x00002054
_080916C8: .4byte 0x0300034C
_080916CC: .4byte sub_8091708
_080916D0:
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
	ldr r0, _08091704 @ =0x08091809
	str r0, [r4, #0x4C]
_080916EE:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_080916FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08091704: .4byte sub_8091808
	thumb_func_start sub_8091708
sub_8091708:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08091728 @ =0x08091709
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809172C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080917FE
	.byte 0x00, 0x00
_08091728: .4byte sub_8091708
_0809172C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08091794
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
	ldr r2, _08091784 @ =0x03001038
	ldr r0, _08091788 @ =0x0819832C
	ldr r1, _0809178C @ =0x08198220
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
	ldr r0, _08091790 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _080917FE
	.byte 0x00, 0x00
_08091784: .4byte 0x03001038
_08091788: .4byte 0x0819832C
_0809178C: .4byte 0x08198220
_08091790: .4byte sub_8091C44
_08091794:
	cmp r1, #0x05
	bgt _080917B4
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080917EE
	ldr r2, _080917B0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080917EE
_080917B0: .4byte 0x00002054
_080917B4:
	cmp r1, #0x0B
	bgt _080917D4
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080917EE
	ldr r2, _080917D0 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _080917EE
_080917D0: .4byte 0x00002054
_080917D4:
	cmp r1, #0x11
	bgt _080917EE
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _080917EE
	ldr r2, _08091804 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080917EE:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_080917FE:
	pop {r4, r5}
	pop {r0}
	bx r0
_08091804: .4byte 0x00002054
	thumb_func_start sub_8091808
sub_8091808:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091820
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091932
_08091820:
	ldr r0, _08091868 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _08091870
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x06
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, #0x08
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
	ldr r0, _0809186C @ =0x08091B31
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _08091932
_08091868: .4byte 0x0300034C
_0809186C: .4byte sub_8091B30
_08091870:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x26
	ble _0809191C
	ldr r0, [r4, #0x28]
	ldr r1, _080918D0 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _080918E8
	ldr r0, _080918D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _080918E4
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
	ldr r2, _080918D8 @ =0x03001038
	ldr r0, _080918DC @ =0x0819832C
	ldr r1, _080918E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08091904
	.byte 0x00, 0x00
_080918D0: .4byte 0x0000012D
_080918D4: .4byte 0x03000FD8
_080918D8: .4byte 0x03001038
_080918DC: .4byte 0x0819832C
_080918E0: .4byte 0x08198220
_080918E4:
	movs r0, #0x27
	b _08091930
_080918E8:
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
_08091904:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08091918 @ =0x08091C45
	str r0, [r4, #0x4C]
	b _08091932
	.byte 0x00, 0x00
_08091918: .4byte sub_8091C44
_0809191C:
	cmp r0, #0x17
	ble _0809192C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0809192C:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_08091930:
	strh r0, [r3, #0x00]
_08091932:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8091938
sub_8091938:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091950
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091AD8
_08091950:
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
	ldr r3, _080919DC @ =0x03001038
	ldr r1, _080919E0 @ =0x0819832C
	ldr r2, _080919E4 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _080919E8 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0809199A
	adds r0, #0x3F
_0809199A:
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
	ldr r0, _080919EC @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080919BE
	adds r0, #0x3F
_080919BE:
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
	beq _080919F4
	ldr r0, [r5, #0x00]
	ldr r1, _080919F0 @ =0x00000998
	b _080919F8
_080919DC: .4byte 0x03001038
_080919E0: .4byte 0x0819832C
_080919E4: .4byte 0x08198220
_080919E8: .4byte 0x08198584
_080919EC: .4byte 0x08198504
_080919F0: .4byte 0x00000998
_080919F4:
	ldr r0, [r5, #0x00]
	ldr r1, _08091AB8 @ =0xFFFFF668
_080919F8:
	adds r0, r0, r1
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _08091A14
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_08091A14:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _08091A28
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08091A28:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _08091A3C
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_08091A3C:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08091A50
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_08091A50:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bne _08091A64
	ldr r2, _08091ABC @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_08091A64:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08091AC8
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
	ldr r0, _08091AC0 @ =0x08091AE1
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08091AD8
	ldr r1, _08091AC4 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08091AD8
_08091AB8: .4byte 0xFFFFF668
_08091ABC: .4byte 0x00002054
_08091AC0: .4byte sub_8091AE0
_08091AC4: .4byte 0x00000111
_08091AC8:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08091AD8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8091AE0
sub_8091AE0:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08091AF8
	ldr r0, _08091B10 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08091AF8:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091B14
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08091B2C
	.byte 0x00, 0x00
_08091B10: .4byte 0x00000111
_08091B14:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _08091B2C
	adds r0, r3, #0x0
	bl sub_808DD2C
_08091B2C:
	pop {r0}
	bx r0
	thumb_func_start sub_8091B30
sub_8091B30:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091B48
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091B86
_08091B48:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08091B58
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08091B86
_08091B58:
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
	ldr r0, _08091B8C @ =0x08091939
	str r0, [r4, #0x4C]
_08091B86:
	pop {r4}
	pop {r0}
	bx r0
_08091B8C: .4byte sub_8091938
	thumb_func_start sub_8091B90
sub_8091B90:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08091BA8
	ldr r0, _08091BC0 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08091BA8:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091BC4
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08091BDC
	.byte 0x00, 0x00
_08091BC0: .4byte 0x00000111
_08091BC4:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08091BDC
	adds r0, r3, #0x0
	bl sub_808DD2C
_08091BDC:
	pop {r0}
	bx r0
	thumb_func_start sub_8091BE0
sub_8091BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091BF8
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08091C34
_08091BF8:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08091C08
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08091C34
_08091C08:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08091C3C @ =0xFFFFFE34
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
	ldr r0, _08091C40 @ =0x080913A5
	str r0, [r4, #0x4C]
_08091C34:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091C3C: .4byte 0xFFFFFE34
_08091C40: .4byte sub_80913A4
	thumb_func_start sub_8091C44
sub_8091C44:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08091C5C
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08091C6E
_08091C5C:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08091C6E
	adds r0, r2, #0x0
	bl sub_808DD2C
_08091C6E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
