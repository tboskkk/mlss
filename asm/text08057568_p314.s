	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8091FB0
sub_8091FB0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08091FD0
	ldr r2, _08091FD8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08091FD0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08091FD8: .4byte 0x0000204D
	thumb_func_start sub_8091FDC
sub_8091FDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08091FFE
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08091FFE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8092004
sub_8092004:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08092068 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _0809206C @ =0x03000FF4
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
	movs r0, #0x08
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r5, #0x00
	beq _08092074
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
	ldr r0, _08092070 @ =0x08092F09
	b _08092076
_08092068: .4byte 0x084FE8A8
_0809206C: .4byte 0x03000FF4
_08092070: .4byte sub_8092F08
_08092074:
	ldr r0, _08092098 @ =0x08092EC5
_08092076:
	str r0, [r4, #0x4C]
	ldr r0, _0809209C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080920A0 @ =0x006E1E40
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
_08092098: .4byte sub_8092EC4
_0809209C: .4byte 0x03001038
_080920A0: .4byte 0x006E1E40
	thumb_func_start sub_80920A4
sub_80920A4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08092108 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _0809210C @ =0x03000FF4
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
	beq _08092118
	ldr r2, _08092110 @ =0x0000204D
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
	ldr r0, _08092114 @ =0x08092EA1
	b _0809211A
_08092108: .4byte 0x084FE9A4
_0809210C: .4byte 0x03000FF4
_08092110: .4byte 0x0000204D
_08092114: .4byte sub_8092EA0
_08092118:
	ldr r0, _0809213C @ =0x08092E59
_0809211A:
	str r0, [r4, #0x4C]
	ldr r0, _08092140 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08092144 @ =0x005A1440
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
_0809213C: .4byte sub_8092E58
_08092140: .4byte 0x03001038
_08092144: .4byte 0x005A1440
	thumb_func_start sub_8092148
sub_8092148:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08092158
	adds r2, #0xFF
_08092158:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08092162
	adds r3, #0xFF
_08092162:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809216C
	adds r0, #0xFF
_0809216C:
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
	ldr r0, _08092218 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _0809221C @ =0x08087541
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
	bl sub_8092220
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08092218: .4byte 0x084FE8B4
_0809221C: .4byte sub_8087540
	thumb_func_start sub_8092220
sub_8092220:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08092240 @ =0x08092221
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _08092244
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080922FA
	.byte 0x00, 0x00
_08092240: .4byte sub_8092220
_08092244:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0809225E
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809225E:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x02
	bne _08092272
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_08092272:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x04
	bne _08092286
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08092286:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _0809229A
	ldr r2, _080922C0 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809229A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x08
	beq _080922CC
	ldr r0, _080922C4 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080922EA
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, _080922C8 @ =0x08092305
	str r0, [r4, #0x4C]
	b _080922FA
_080922C0: .4byte 0x00002025
_080922C4: .4byte 0x0300034C
_080922C8: .4byte sub_8092304
_080922CC:
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
	ldr r0, _08092300 @ =0x08092405
	str r0, [r4, #0x4C]
_080922EA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_080922FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08092300: .4byte sub_8092404
	thumb_func_start sub_8092304
sub_8092304:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08092324 @ =0x08092305
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092328
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080923FA
	.byte 0x00, 0x00
_08092324: .4byte sub_8092304
_08092328:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08092390
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
	ldr r2, _08092380 @ =0x03001038
	ldr r0, _08092384 @ =0x0819832C
	ldr r1, _08092388 @ =0x08198220
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
	ldr r0, _0809238C @ =0x08092DD5
	str r0, [r4, #0x4C]
	b _080923FA
	.byte 0x00, 0x00
_08092380: .4byte 0x03001038
_08092384: .4byte 0x0819832C
_08092388: .4byte 0x08198220
_0809238C: .4byte sub_8092DD4
_08092390:
	cmp r1, #0x03
	bgt _080923B0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080923EA
	ldr r2, _080923AC @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080923EA
_080923AC: .4byte 0x00002025
_080923B0:
	cmp r1, #0x07
	bgt _080923D0
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080923EA
	ldr r2, _080923CC @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _080923EA
_080923CC: .4byte 0x00002025
_080923D0:
	cmp r1, #0x0B
	bgt _080923EA
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _080923EA
	ldr r2, _08092400 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_080923EA:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x02
	strh r0, [r5, #0x00]
_080923FA:
	pop {r4, r5}
	pop {r0}
	bx r0
_08092400: .4byte 0x00002025
	thumb_func_start sub_8092404
sub_8092404:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809241C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809252E
_0809241C:
	ldr r0, _08092464 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _0809246C
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
	ldr r0, _08092468 @ =0x08092D71
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0809252E
_08092464: .4byte 0x0300034C
_08092468: .4byte sub_8092D70
_0809246C:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x31
	ble _08092518
	ldr r0, [r4, #0x28]
	ldr r1, _080924CC @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _080924E4
	ldr r0, _080924D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _080924E0
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
	ldr r2, _080924D4 @ =0x03001038
	ldr r0, _080924D8 @ =0x0819832C
	ldr r1, _080924DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x08
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08092500
	.byte 0x00, 0x00
_080924CC: .4byte 0x0000012D
_080924D0: .4byte 0x03000FD8
_080924D4: .4byte 0x03001038
_080924D8: .4byte 0x0819832C
_080924DC: .4byte 0x08198220
_080924E0:
	movs r0, #0x32
	b _0809252C
_080924E4:
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
_08092500:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08092514 @ =0x08092DD5
	str r0, [r4, #0x4C]
	b _0809252E
	.byte 0x00, 0x00
_08092514: .4byte sub_8092DD4
_08092518:
	cmp r0, #0x18
	ble _08092528
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08092528:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_0809252C:
	strh r0, [r3, #0x00]
_0809252E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8092534
sub_8092534:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0809254C
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _080926D0
_0809254C:
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
	ldr r3, _080925D8 @ =0x03001038
	ldr r1, _080925DC @ =0x0819832C
	ldr r2, _080925E0 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _080925E4 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08092596
	adds r0, #0x3F
_08092596:
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
	ldr r0, _080925E8 @ =0x08198504
	adds r0, r3, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _080925BA
	adds r0, #0x3F
_080925BA:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r1, r0
	str r0, [r6, #0x18]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080925EC
	ldr r0, [r5, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x04
	adds r0, r0, r7
	b _080925F2
_080925D8: .4byte 0x03001038
_080925DC: .4byte 0x0819832C
_080925E0: .4byte 0x08198220
_080925E4: .4byte 0x08198584
_080925E8: .4byte 0x08198504
_080925EC:
	ldr r0, [r5, #0x00]
	ldr r1, _080926B0 @ =0xFFFFF400
	adds r0, r0, r1
_080925F2:
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x02
	bne _0809260C
	ldr r2, _080926B4 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_0809260C:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x03
	bne _08092620
	ldr r2, _080926B4 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08092620:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x04
	bne _08092634
	ldr r2, _080926B4 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_08092634:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, #0x05
	bne _08092648
	ldr r2, _080926B4 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_08092648:
	movs r7, #0x00
	ldsh r0, [r5, r7]
	cmp r0, #0x06
	bne _0809265C
	ldr r2, _080926B4 @ =0x00002025
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_0809265C:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _080926C0
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
	ldr r0, _080926B8 @ =0x08092D21
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _080926D0
	ldr r3, _080926BC @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _080926D0
_080926B0: .4byte 0xFFFFF400
_080926B4: .4byte 0x00002025
_080926B8: .4byte sub_8092D20
_080926BC: .4byte 0x00000111
_080926C0:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_080926D0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80926D8
sub_80926D8:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _080926E8
	adds r2, #0xFF
_080926E8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080926F2
	adds r3, #0xFF
_080926F2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080926FC
	adds r0, #0xFF
_080926FC:
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
	ldr r0, _080927A8 @ =0x084FE8B4
	str r0, [r2, #0x6C]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x40
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	ldr r0, _080927AC @ =0x08087541
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
	bl sub_80927B0
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080927A8: .4byte 0x084FE8B4
_080927AC: .4byte sub_8087540
	thumb_func_start sub_80927B0
sub_80927B0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _080927D0 @ =0x080927B1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r6, #0x38
	ands r6, r0
	cmp r6, #0x00
	beq _080927D4
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809288E
	.byte 0x00, 0x00
_080927D0: .4byte sub_80927B0
_080927D4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _080927EE
	ldr r2, _08092854 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080927EE:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _08092802
	ldr r2, _08092854 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
_08092802:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x06
	bne _08092816
	ldr r2, _08092854 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_08092816:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _0809282A
	ldr r2, _08092854 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_8082E1C
_0809282A:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x0C
	beq _08092860
	ldr r0, _08092858 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r1, [r1, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _0809287E
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _0809285C @ =0x08092899
	str r0, [r4, #0x4C]
	b _0809288E
	.byte 0x00, 0x00
_08092854: .4byte 0x00002054
_08092858: .4byte 0x0300034C
_0809285C: .4byte sub_8092898
_08092860:
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
	ldr r0, _08092894 @ =0x08092999
	str r0, [r4, #0x4C]
_0809287E:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_0809288E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08092894: .4byte sub_8092998
	thumb_func_start sub_8092898
sub_8092898:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080928B8 @ =0x08092899
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080928BC
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _0809298E
	.byte 0x00, 0x00
_080928B8: .4byte sub_8092898
_080928BC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bge _08092924
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
	ldr r2, _08092914 @ =0x03001038
	ldr r0, _08092918 @ =0x0819832C
	ldr r1, _0809291C @ =0x08198220
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
	ldr r0, _08092920 @ =0x08092DD5
	str r0, [r4, #0x4C]
	b _0809298E
	.byte 0x00, 0x00
_08092914: .4byte 0x03001038
_08092918: .4byte 0x0819832C
_0809291C: .4byte 0x08198220
_08092920: .4byte sub_8092DD4
_08092924:
	cmp r1, #0x08
	bgt _08092944
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809297E
	ldr r2, _08092940 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809297E
_08092940: .4byte 0x00002054
_08092944:
	cmp r1, #0x11
	bgt _08092964
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0809297E
	ldr r2, _08092960 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x01
	bl sub_8082E1C
	b _0809297E
_08092960: .4byte 0x00002054
_08092964:
	cmp r1, #0x1A
	bgt _0809297E
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bls _0809297E
	ldr r2, _08092994 @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x02
	bl sub_8082E1C
_0809297E:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	subs r0, #0x03
	strh r0, [r5, #0x00]
_0809298E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08092994: .4byte 0x00002054
	thumb_func_start sub_8092998
sub_8092998:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080929B0
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08092AC2
_080929B0:
	ldr r0, _080929F8 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _08092A00
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
	ldr r0, _080929FC @ =0x08092CC1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _08092AC2
_080929F8: .4byte 0x0300034C
_080929FC: .4byte sub_8092CC0
_08092A00:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x2C
	ble _08092AAC
	ldr r0, [r4, #0x28]
	ldr r1, _08092A60 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _08092A78
	ldr r0, _08092A64 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _08092A74
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
	ldr r2, _08092A68 @ =0x03001038
	ldr r0, _08092A6C @ =0x0819832C
	ldr r1, _08092A70 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08092A94
	.byte 0x00, 0x00
_08092A60: .4byte 0x0000012D
_08092A64: .4byte 0x03000FD8
_08092A68: .4byte 0x03001038
_08092A6C: .4byte 0x0819832C
_08092A70: .4byte 0x08198220
_08092A74:
	movs r0, #0x2D
	b _08092AC0
_08092A78:
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
_08092A94:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08092AA8 @ =0x08092DD5
	str r0, [r4, #0x4C]
	b _08092AC2
	.byte 0x00, 0x00
_08092AA8: .4byte sub_8092DD4
_08092AAC:
	cmp r0, #0x1D
	ble _08092ABC
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08092ABC:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_08092AC0:
	strh r0, [r3, #0x00]
_08092AC2:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8092AC8
sub_8092AC8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092AE0
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08092C68
_08092AE0:
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
	ldr r3, _08092B6C @ =0x03001038
	ldr r1, _08092B70 @ =0x0819832C
	ldr r2, _08092B74 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	ldr r2, _08092B78 @ =0x08198584
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08092B2A
	adds r0, #0x3F
_08092B2A:
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
	ldr r0, _08092B7C @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08092B4E
	adds r0, #0x3F
_08092B4E:
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
	beq _08092B84
	ldr r0, [r5, #0x00]
	ldr r1, _08092B80 @ =0x00000998
	b _08092B88
_08092B6C: .4byte 0x03001038
_08092B70: .4byte 0x0819832C
_08092B74: .4byte 0x08198220
_08092B78: .4byte 0x08198584
_08092B7C: .4byte 0x08198504
_08092B80: .4byte 0x00000998
_08092B84:
	ldr r0, [r5, #0x00]
	ldr r1, _08092C48 @ =0xFFFFF668
_08092B88:
	adds r0, r0, r1
	str r0, [r5, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x03
	bne _08092BA4
	ldr r2, _08092C4C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x01
	bl sub_8082E1C
_08092BA4:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bne _08092BB8
	ldr r2, _08092C4C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x02
	bl sub_8082E1C
_08092BB8:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x06
	bne _08092BCC
	ldr r2, _08092C4C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x03
	bl sub_8082E1C
_08092BCC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x07
	bne _08092BE0
	ldr r2, _08092C4C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x04
	bl sub_8082E1C
_08092BE0:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bne _08092BF4
	ldr r2, _08092C4C @ =0x00002054
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x05
	bl sub_8082E1C
_08092BF4:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08092C58
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
	ldr r0, _08092C50 @ =0x08092C71
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08092C68
	ldr r1, _08092C54 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _08092C68
_08092C48: .4byte 0xFFFFF668
_08092C4C: .4byte 0x00002054
_08092C50: .4byte sub_8092C70
_08092C54: .4byte 0x00000111
_08092C58:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
_08092C68:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8092C70
sub_8092C70:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08092C88
	ldr r0, _08092CA0 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08092C88:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092CA4
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08092CBC
	.byte 0x00, 0x00
_08092CA0: .4byte 0x00000111
_08092CA4:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _08092CBC
	adds r0, r3, #0x0
	bl sub_808DD2C
_08092CBC:
	pop {r0}
	bx r0
	thumb_func_start sub_8092CC0
sub_8092CC0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092CD8
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08092D16
_08092CD8:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08092CE8
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08092D16
_08092CE8:
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
	ldr r0, _08092D1C @ =0x08092AC9
	str r0, [r4, #0x4C]
_08092D16:
	pop {r4}
	pop {r0}
	bx r0
_08092D1C: .4byte sub_8092AC8
	thumb_func_start sub_8092D20
sub_8092D20:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08092D38
	ldr r0, _08092D50 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08092D38:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092D54
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08092D6C
	.byte 0x00, 0x00
_08092D50: .4byte 0x00000111
_08092D54:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _08092D6C
	adds r0, r3, #0x0
	bl sub_808DD2C
_08092D6C:
	pop {r0}
	bx r0
	thumb_func_start sub_8092D70
sub_8092D70:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092D88
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08092DC4
_08092D88:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08092D98
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _08092DC4
_08092D98:
	ldr r1, [r4, #0x30]
	adds r2, r1, #0x0
	adds r2, #0xA0
	movs r0, #0xB4
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, #0xA4
	ldr r0, _08092DCC @ =0xFFFFFE34
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
	ldr r0, _08092DD0 @ =0x08092535
	str r0, [r4, #0x4C]
_08092DC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08092DCC: .4byte 0xFFFFFE34
_08092DD0: .4byte sub_8092534
	thumb_func_start sub_8092DD4
sub_8092DD4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08092DEC
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _08092DFE
_08092DEC:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08092DFE
	adds r0, r2, #0x0
	bl sub_808DD2C
_08092DFE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
