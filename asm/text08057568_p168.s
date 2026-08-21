	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8110620
sub_8110620:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _081106C6
	ldr r2, [r5, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r7, r1, r0
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x14]
	subs r1, r1, r0
	mov r8, r1
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	ldr r0, [r5, #0x18]
	subs r4, r4, r0
	ldr r2, _08110688 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r3, r1, #0x0
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r4, #0x0
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _0811068E
	cmp r0, #0x00
	bge _0811068C
	negs r0, r0
	b _0811068E
_08110688: .4byte 0x03001038
_0811068C:
	movs r0, #0x02
_0811068E:
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08110698
	adds r0, #0xFF
_08110698:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	mov r1, r8
	cmp r1, #0x00
	bge _081106A8
	adds r1, #0xFF
_081106A8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r0, _081106D0 @ =0x081106D5
	str r0, [r5, #0x4C]
_081106C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081106D0: .4byte sub_81106D4
	thumb_func_start sub_81106D4
sub_81106D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r1, r0
	ldr r0, [r5, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r0, r1
	ble _081107C4
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x38]
	str r0, [r5, #0x10]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x3C]
	str r0, [r5, #0x14]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	ldr r2, _081107AC @ =0x00000113
	adds r0, r1, r2
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	beq _081107B4
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
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
	ldr r0, _081107B0 @ =0x08110949
	str r0, [r5, #0x4C]
	movs r0, #0xA3
	bl stop_sfx_80195A8
	b _081107C4
_081107AC: .4byte 0x00000113
_081107B0: .4byte sub_8110948
_081107B4:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r5, #0x4C]
_081107C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81107CC
sub_81107CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0811086E
	ldr r2, [r4, #0x28]
	adds r5, r2, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08110868
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bge _08110868
	str r1, [r4, #0x38]
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	adds r0, r2, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldrh r1, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r1, r0
	ldr r0, _08110838 @ =0x00004136
	cmp r1, r0
	bne _0811083C
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, r0, #0x2
	b _0811083E
	.byte 0x00, 0x00
_08110838: .4byte 0x00004136
_0811083C:
	movs r1, #0x00
_0811083E:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x08]
	ldr r0, [r5, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r1, #0x23
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x0C
	bl sub_80883A0
	b _0811086E
_08110868:
	adds r0, r4, #0x0
	bl sub_807C298
_0811086E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8110874
sub_8110874:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x2C]
	ldr r0, [r1, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r7, r0, r2
	ldrh r0, [r7, #0x00]
	movs r4, #0xF0
	lsls r4, r4, #0x08
	adds r5, r4, #0x0
	ands r5, r0
	ldr r0, _081108FC @ =0x0000FFFF
	eors r5, r0
	adds r0, r6, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08110900 @ =0x081104AD
	str r0, [r6, #0x4C]
	ldrh r0, [r7, #0x00]
	ands r4, r0
	ands r5, r4
	lsls r0, r5, #0x10
	cmp r0, #0x00
	beq _081108F4
	lsrs r5, r0, #0x1C
	movs r3, #0x00
	movs r1, #0x01
	adds r0, r5, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _081108D2
	movs r2, #0x01
_081108BA:
	lsls r1, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r1, r1, r0
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	asrs r0, r1
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _081108BA
_081108D2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08110904 @ =0x00004136
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x28]
	ldr r2, _08110908 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
_081108F4:
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081108FC: .4byte 0x0000FFFF
_08110900: .4byte sub_81104AC
_08110904: .4byte 0x00004136
_08110908: .4byte 0x00000113
	thumb_func_start sub_811090C
sub_811090C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _08110938
	ldr r1, [r4, #0x30]
	ldr r3, _08110940 @ =0x081109D1
	cmp r1, #0x00
	beq _0811092E
	movs r2, #0x01
_08110922:
	adds r0, r1, #0x0
	adds r0, #0xA8
	str r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _08110922
_0811092E:
	str r3, [r4, #0x4C]
	ldr r0, _08110944 @ =0x0000010F
	bl stop_sfx_80195A8
	movs r0, #0x00
_08110938:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08110940: .4byte sub_81109D0
_08110944: .4byte 0x0000010F
	thumb_func_start sub_8110948
sub_8110948:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0811096A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0811096A:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x09, 0x11, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xF5, 0x09, 0x11, 0x08
	thumb_func_start sub_8110988
sub_8110988:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	negs r1, r1
	adds r1, #0x0D
	adds r0, r4, #0x0
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
	ldr r0, _081109C8 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _081109CC @ =0x08110A31
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_081109C8: .4byte 0x00000119
_081109CC: .4byte sub_8110A30
