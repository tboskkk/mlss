	.syntax unified
	.text

	thumb_func_start sub_810971C
sub_810971C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x000]
	ldr r0, _081097A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x7C]
	str r0, [sp, #0x004]
	ldr r2, [r0, #0x18]
	str r2, [sp, #0x008]
	ldr r3, [r0, #0x1C]
	str r3, [sp, #0x00C]
	ldr r4, [sp, #0x000]
	movs r6, #0x16
	ldsh r4, [r4, r6]
	str r4, [sp, #0x010]
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	movs r4, #0x00
	ldsh r3, [r0, r4]
	str r3, [sp, #0x014]
	movs r6, #0xC4
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r2, [r0, r3]
	str r2, [sp, #0x018]
	ldr r4, _081097A8 @ =0x00000316
	adds r1, r1, r4
	movs r0, #0x00
	ldsh r6, [r1, r0]
	mov r10, r6
	ldr r5, _081097AC @ =0x03001038
	ldr r4, _081097B0 @ =0x0819832C
	ldr r0, _081097B4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x08
	ldr r1, [sp, #0x010]
	bl _call_via_r2
	adds r7, r0, #0x0
	subs r6, r7, r6
	movs r0, #0xFF
	ands r6, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x010]
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r0, #0x20
	adds r1, r3, #0x0
	bl _call_via_r2
	cmp r6, #0x7F
	bgt _081097B8
	cmp r6, r0
	blt _081097C0
	add r10, r0
	b _081097CE
_081097A4: .4byte 0x03000FD8
_081097A8: .4byte 0x00000316
_081097AC: .4byte 0x03001038
_081097B0: .4byte 0x0819832C
_081097B4: .4byte 0x08198220
_081097B8:
	ldr r4, _081097C4 @ =0xFFFFFF00
	adds r6, r6, r4
	cmn r6, r0
	ble _081097C8
_081097C0:
	mov r10, r7
	b _081097CE
_081097C4: .4byte 0xFFFFFF00
_081097C8:
	mov r6, r10
	subs r6, r6, r0
	mov r10, r6
_081097CE:
	movs r0, #0xFF
	mov r1, r10
	ands r1, r0
	mov r10, r1
	ldr r0, _081097F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _081097F4 @ =0x00000316
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r3, [sp, #0x010]
	cmp r3, #0x01
	ble _081097FC
	ldr r0, _081097F8 @ =0x0300034C
	adds r0, #0x45
	movs r1, #0x08
	b _08109802
	.byte 0x00, 0x00
_081097F0: .4byte 0x03000FD8
_081097F4: .4byte 0x00000316
_081097F8: .4byte 0x0300034C
_081097FC:
	ldr r0, _08109840 @ =0x0300034C
	adds r0, #0x45
	movs r1, #0x04
_08109802:
	strb r1, [r0, #0x00]
	movs r4, #0x00
	mov r9, r4
_08109808:
	ldr r0, _08109844 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	mov r6, r9
	lsls r2, r6, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	ldr r5, [r1, #0x00]
	adds r7, r0, #0x0
	cmp r5, #0x00
	bne _08109822
	b _08109BEC
_08109822:
	movs r4, #0x00
	mov r8, r4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	mov r12, r0
	cmp r1, #0x05
	bls _08109834
	b _08109970
_08109834:
	lsls r0, r1, #0x02
	ldr r1, _08109848 @ =lbl_0810984C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08109840: .4byte 0x0300034C
_08109844: .4byte 0x03000FD8
_08109848: .4byte lbl_0810984C
lbl_0810984C:
	.4byte _08109970
	.4byte _08109864
	.4byte _081098C6
	.4byte _081098F0
	.4byte _08109970
	.4byte _08109952
_08109864:
	ldr r2, [r7, #0]
	adds r0, r2, #0
	adds r0, #128 @ 0x80
	ldr r6, [r0, #0]
	adds r0, r6, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r3, #6
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #2
	bne.n _081098C0
	adds r0, r2, #0
	adds r0, #132 @ 0x84
	ldr r4, [r0, #0]
	adds r0, r4, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #2
	bne.n _081098C0
	movs r1, #208 @ 0xd0
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq.n _081098C0
	movs r2, #143 @ 0x8f
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r1, [r0, #0]
	movs r2, #192 @ 0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne.n _081098C0
	movs r3, #143 @ 0x8f
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrh r1, [r0, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq.n _08109970
_081098C0:
	movs r4, #1
	mov r8, r4
	b.n _08109970
_081098C6:
	ldr r0, [r7, #0]
	ldr r6, [pc, #32] @ (0x81098ec)
	adds r0, r0, r6
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq.n _081098E6
	ldr r1, [sp, #4]
	movs r2, #143 @ 0x8f
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq.n _08109970
_081098E6:
	movs r3, #1
	mov r8, r3
	b.n _08109970
	lsls r1, r0, #13
	movs r0, r0
_081098F0:
	ldr r3, [r7, #0]
	ldr r0, [r3, #28]
	ldrb r1, [r0, #0]
	movs r0, #128 @ 0x80
	ands r0, r1
	cmp r0, #0
	bne.n _0810994C
	adds r0, r3, #0
	adds r0, #128 @ 0x80
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r4, #6
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #2
	bne.n _08109926
	movs r6, #143 @ 0x8f
	lsls r6, r6, #1
	adds r0, r2, r6
	ldrh r1, [r0, #0]
	movs r0, #192 @ 0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne.n _0810994C
_08109926:
	adds r0, r3, #0
	adds r0, #132 @ 0x84
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #2
	bne.n _08109970
	movs r1, #143 @ 0x8f
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0, #0]
	movs r0, #192 @ 0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _08109970
_0810994C:
	movs r2, #1
	mov r8, r2
	b.n _08109970
_08109952:
	ldr r0, [r7, #0]
	movs r3, #196 @ 0xc4
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #16]
	movs r4, #0
	str r4, [sp, #24]
	ldr r6, [sp, #4]
	ldr r0, [r6, #52] @ 0x34
	cmp r0, #0
	beq.n _08109970
	movs r0, #2
	mov r8, r0
_08109970:
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x07]
	lsrs r0, r0, #0x05
	subs r0, #0x01
	cmp r9, r0
	bne _08109986
	b _08109BEC
_08109986:
	mov r2, r12
	ldr r1, [r2, #0x00]
	cmp r1, #0x05
	bne _08109990
	movs r1, #0x04
_08109990:
	mov r3, r8
	cmp r3, #0x01
	bne _08109998
	adds r1, #0x05
_08109998:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _081099AC
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081099AC:
	ldr r4, [sp, #0x010]
	cmp r4, #0x01
	ble _08109A9C
	ldr r3, _08109A78 @ =0x03001038
	ldr r1, _08109A7C @ =0x0819832C
	ldr r0, _08109A80 @ =0x08198220
	subs r4, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r6, r9
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x010]
	str r3, [sp, #0x01C]
	bl _call_via_r2
	mov r1, r10
	subs r0, r0, r1
	ldr r2, _08109A84 @ =0x08198504
	movs r1, #0xFF
	ands r0, r1
	lsls r1, r0, #0x01
	adds r2, r1, r2
	movs r6, #0x00
	ldsh r0, [r2, r6]
	ldr r3, [sp, #0x01C]
	cmp r0, #0x00
	bge _081099E4
	adds r0, #0x3F
_081099E4:
	asrs r0, r0, #0x06
	ldr r2, [sp, #0x014]
	muls r0, r2
	cmp r0, #0x00
	bge _081099F0
	adds r0, #0xFF
_081099F0:
	asrs r7, r0, #0x08
	ldr r0, _08109A88 @ =0x08198584
	adds r0, r1, r0
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _08109A00
	adds r0, #0x3F
_08109A00:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	muls r0, r1
	cmp r0, #0x00
	bge _08109A0C
	adds r0, #0xFF
_08109A0C:
	asrs r2, r0, #0x08
	ldr r0, _08109A8C @ =0xFFFFE000
	adds r6, r2, r0
	ldr r0, [r3, #0x00]
	adds r3, r0, r4
	movs r4, #0xC8
	lsls r4, r4, #0x10
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08109A24
	ldr r1, _08109A90 @ =0xFFFFE00F
	adds r0, r2, r1
_08109A24:
	asrs r0, r0, #0x04
	movs r1, #0xC8
	lsls r1, r1, #0x04
	subs r1, r1, r0
	adds r0, r4, #0x0
	bl _call_via_r3
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08109A40
	ldr r2, _08109A94 @ =0x00000FFF
	adds r0, r0, r2
_08109A40:
	asrs r0, r0, #0x0C
	ldr r3, [sp, #0x008]
	adds r0, r3, r0
	str r0, [r5, #0x10]
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r0, r0, #0x03
	adds r0, r0, r4
	lsls r0, r0, #0x0A
	cmp r0, #0x00
	bge _08109A5A
	ldr r1, _08109A94 @ =0x00000FFF
	adds r0, r0, r1
_08109A5A:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x00C]
	adds r0, r2, r0
	ldr r3, _08109A98 @ =0xFFFF9C00
	adds r0, r0, r3
	str r0, [r5, #0x14]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r2, [sp, #0x008]
	adds r0, r2, r7
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, r6
	str r0, [r1, #0x00]
	b _08109AEC
_08109A78: .4byte 0x03001038
_08109A7C: .4byte 0x0819832C
_08109A80: .4byte 0x08198220
_08109A84: .4byte 0x08198504
_08109A88: .4byte 0x08198584
_08109A8C: .4byte 0xFFFFE000
_08109A90: .4byte 0xFFFFE00F
_08109A94: .4byte 0x00000FFF
_08109A98: .4byte 0xFFFF9C00
_08109A9C:
	ldr r2, _08109B3C @ =0x03001038
	ldr r1, _08109B40 @ =0x0819832C
	ldr r0, _08109B44 @ =0x08198220
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r2, r0, r1
	movs r3, #0xC8
	lsls r3, r3, #0x10
	ldr r4, [sp, #0x014]
	ldr r6, _08109B48 @ =0xFFFFE000
	adds r0, r4, r6
	cmp r0, #0x00
	bge _08109ABA
	ldr r1, _08109B4C @ =0xFFFFE00F
	adds r0, r4, r1
_08109ABA:
	asrs r0, r0, #0x04
	movs r1, #0xC8
	lsls r1, r1, #0x04
	subs r1, r1, r0
	adds r0, r3, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, [sp, #0x008]
	str r2, [r5, #0x10]
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r0, r0, #0x03
	adds r0, r0, r4
	lsls r0, r0, #0x0A
	cmp r0, #0x00
	bge _08109AE0
	ldr r3, _08109B50 @ =0x00000FFF
	adds r0, r0, r3
_08109AE0:
	asrs r0, r0, #0x0C
	ldr r6, [sp, #0x00C]
	adds r0, r6, r0
	ldr r1, _08109B54 @ =0xFFFF9C00
	adds r0, r0, r1
	str r0, [r5, #0x14]
_08109AEC:
	ldr r2, [sp, #0x018]
	cmp r9, r2
	bne _08109B90
	mov r3, r8
	cmp r3, #0x00
	bne _08109B90
	ldr r6, [sp, #0x000]
	movs r1, #0x18
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	beq _08109B5C
	adds r1, r0, #0x0
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x18]
	subs r0, #0x80
	strh r0, [r6, #0x18]
	ldr r0, _08109B58 @ =0x08198504
	movs r3, #0x02
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08109B1C
	adds r0, #0x3F
_08109B1C:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r6, #0xC0
	lsls r6, r6, #0x06
	adds r0, r0, r6
	ldr r1, [r5, #0x18]
	cmp r0, r1
	blt _08109B96
	adds r0, r5, #0x0
	adds r0, #0xAC
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x000]
	strh r1, [r2, #0x18]
	b _08109B96
	.byte 0x00, 0x00
_08109B3C: .4byte 0x03001038
_08109B40: .4byte 0x0819832C
_08109B44: .4byte 0x08198220
_08109B48: .4byte 0xFFFFE000
_08109B4C: .4byte 0xFFFFE00F
_08109B50: .4byte 0x00000FFF
_08109B54: .4byte 0xFFFF9C00
_08109B58: .4byte 0x08198504
_08109B5C:
	ldr r3, _08109B8C @ =0x08198504
	adds r2, r5, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	adds r1, r0, #0x1
	strh r1, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0E
	adds r0, #0x01
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08109B80
	adds r0, #0x3F
_08109B80:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r6, #0xC0
	lsls r6, r6, #0x06
	adds r0, r0, r6
	b _08109B94
_08109B8C: .4byte 0x08198504
_08109B90:
	movs r0, #0xC0
	lsls r0, r0, #0x06
_08109B94:
	str r0, [r5, #0x18]
_08109B96:
	mov r0, r8
	cmp r0, #0x02
	bne _08109BB8
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
	b _08109BD6
_08109BB8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08109BCE
	adds r0, #0x0F
_08109BCE:
	asrs r0, r0, #0x04
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x08]
	strh r0, [r1, #0x06]
_08109BD6:
	ldr r1, [sp, #0x018]
	cmp r9, r1
	beq _08109BEC
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
_08109BEC:
	movs r2, #0x01
	add r9, r2
	mov r3, r9
	cmp r3, #0x03
	bgt _08109BF8
	b _08109808
_08109BF8:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
