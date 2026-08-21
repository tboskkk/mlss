	.include "asm/macros.inc"

	.syntax unified
	.text

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
