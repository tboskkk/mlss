	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80817A0
sub_80817A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	ldr r6, [r0, #0x08]
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _080818EC @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	ldr r2, _080818F0 @ =0x00002054
	cmp r0, #0x00
	bne _080817C4
	subs r2, #0x2F
_080817C4:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080817E2
	adds r1, #0xFF
_080817E2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080817EC
	adds r2, #0xFF
_080817EC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080817F6
	adds r3, #0xFF
_080817F6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	bl sub_80DF024
	movs r7, #0x00
	ldr r2, _080818F4 @ =0xFFFF0000
	mov r9, r2
_08081808:
	ldr r0, _080818E8 @ =0x03000FD8
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
	bne _08081868
	ldr r1, [r6, #0x28]
	movs r5, #0x84
	lsls r5, r5, #0x01
	adds r0, r1, r5
	movs r2, #0x00
	ldsh r3, [r0, r2]
	ldr r0, [r4, #0x28]
	adds r0, r0, r5
	movs r5, #0x00
	ldsh r2, [r0, r5]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r9
	asrs r5, r1, #0x10
	movs r1, #0x8C
	cmp r0, r5
	bne _0808184A
	movs r1, #0x78
_0808184A:
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8108180
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_08081868:
	adds r1, r7, #0x1
	ldr r0, _080818E8 @ =0x03000FD8
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
	bne _080818CA
	ldr r1, [r6, #0x28]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r5, #0x00
	ldsh r3, [r0, r5]
	ldr r0, [r4, #0x28]
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r2, [r0, r5]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r9
	asrs r5, r1, #0x10
	movs r1, #0x8C
	cmp r0, r5
	bne _080818AC
	movs r1, #0x78
_080818AC:
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8108180
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080818CA:
	adds r7, #0x02
	cmp r7, #0x05
	ble _08081808
	movs r0, #0x1E
	mov r2, r8
	strh r0, [r2, #0x10]
	ldr r0, _080818F8 @ =0x08081CC1
	str r0, [r2, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080818E8: .4byte 0x03000FD8
_080818EC: .4byte 0x000002BE
_080818F0: .4byte 0x00002054
_080818F4: .4byte 0xFFFF0000
_080818F8: .4byte sub_8081CC0
	thumb_func_start sub_80818FC
sub_80818FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r5, [r7, #0x08]
	adds r0, r5, #0x0
	bl sub_8081444
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r6, r0, #0x1
	ldr r0, _08081940 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0808192E
	lsls r6, r6, #0x01
_0808192E:
	ldr r0, [r5, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xF6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r6
	bgt _08081944
	movs r0, #0x00
	b _08081948
_08081940: .4byte 0x03000FD8
_08081944:
	ldrh r0, [r1, #0x00]
	subs r0, r0, r6
_08081948:
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081952
	adds r1, #0xFF
_08081952:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0808195C
	adds r2, #0xFF
_0808195C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08081966
	adds r3, #0xFF
_08081966:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_807CC3C
	ldr r0, _08081A4C @ =0x084FB814
	ldrh r2, [r0, #0x0A]
	ldr r0, _08081A50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _08081A54 @ =0x000002BE
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ands r4, r0
	cmp r4, #0x00
	beq _0808199C
	adds r2, #0x01
_0808199C:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x04
	strh r0, [r7, #0x10]
	ldr r0, _08081A58 @ =0x03001038
	mov r9, r0
	ldr r1, _08081A5C @ =0x0819832C
	ldr r0, _08081A60 @ =0x08198220
	subs r4, r1, r0
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r4
	ldr r1, [r5, #0x28]
	adds r1, #0xD8
	movs r2, #0x03
	mov r8, r2
	ldr r0, [r5, #0x38]
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _080819DE
	adds r0, #0xFF
_080819DE:
	asrs r0, r0, #0x08
	movs r1, #0x04
	bl _call_via_r3
	adds r6, r0, #0x0
	mov r3, r9
	ldr r0, [r3, #0x00]
	adds r2, r0, r4
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	mov r3, r8
	muls r3, r1
	adds r1, r3, #0x0
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08081A04
	adds r0, #0xFF
_08081A04:
	asrs r0, r0, #0x08
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r5, #0x40]
	cmp r2, #0x00
	bge _08081A26
	adds r2, #0xFF
_08081A26:
	asrs r2, r2, #0x08
	adds r2, #0x18
	adds r0, r5, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldrh r0, [r7, #0x10]
	subs r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08081A64 @ =0x08081C7D
	str r0, [r7, #0x04]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081A4C: .4byte 0x084FB814
_08081A50: .4byte 0x03000FD8
_08081A54: .4byte 0x000002BE
_08081A58: .4byte 0x03001038
_08081A5C: .4byte 0x0819832C
_08081A60: .4byte 0x08198220
_08081A64: .4byte sub_8081C7C
	thumb_func_start sub_8081A68
sub_8081A68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08081B28
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	beq _08081B20
	adds r6, r0, #0x0
	ldr r1, _08081B14 @ =0x03001038
	mov r10, r1
	ldr r1, _08081B18 @ =0x0819832C
	ldr r0, _08081B1C @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r3, r0, r1
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	subs r7, r6, #0x1
	ldr r0, [r4, #0x38]
	adds r2, r0, #0x0
	muls r2, r7
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08081AB8
	adds r0, #0xFF
_08081AB8:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	bl _call_via_r3
	mov r9, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r1, [r4, #0x3C]
	muls r1, r7
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08081ADC
	adds r0, #0xFF
_08081ADC:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08081AFE
	adds r2, #0xFF
_08081AFE:
	asrs r2, r2, #0x08
	adds r2, #0x14
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldrh r0, [r5, #0x10]
	subs r0, #0x01
	strh r0, [r5, #0x10]
	b _08081B28
_08081B14: .4byte 0x03001038
_08081B18: .4byte 0x0819832C
_08081B1C: .4byte 0x08198220
_08081B20:
	movs r0, #0x14
	strh r0, [r5, #0x10]
	ldr r0, _08081B38 @ =0x08081B3D
	str r0, [r5, #0x04]
_08081B28:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081B38: .4byte sub_8081B3C
	thumb_func_start sub_8081B3C
sub_8081B3C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, [r5, #0x08]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r7, [r0, r2]
	cmp r7, #0x00
	bne _08081BB0
	ldr r0, _08081BA0 @ =0x00000111
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x01
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, _08081BA4 @ =0x0807DD39
	adds r1, r6, #0x0
	bl sub_807FF48
	ldr r0, _08081BA8 @ =0x08081C55
	str r0, [r5, #0x04]
	strh r7, [r5, #0x10]
	ldr r3, _08081BAC @ =0x03000FD8
	ldr r1, [r3, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	ldrb r1, [r0, #0x00]
	mvns r1, r1
	adds r3, r3, r5
	ands r1, r4
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08081BDE
	.byte 0x00, 0x00
_08081BA0: .4byte 0x00000111
_08081BA4: .4byte sub_807DD38
_08081BA8: .4byte sub_8081C54
_08081BAC: .4byte 0x03000FD8
_08081BB0:
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	ble _08081BC0
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
	b _08081BDE
_08081BC0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08081BE4 @ =0x08081F85
	str r0, [r5, #0x04]
_08081BDE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081BE4: .4byte sub_8081F84
	thumb_func_start sub_8081BE8
sub_8081BE8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_810835C
	ldr r0, _08081C48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08081C4C @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r6, #0xB3
	lsls r6, r6, #0x01
	cmp r0, #0x00
	bne _08081C10
	subs r6, #0x0C
_08081C10:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08081C18
	adds r1, #0xFF
_08081C18:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08081C22
	adds r2, #0xFF
_08081C22:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08081C2C
	adds r3, #0xFF
_08081C2C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x10]
	ldr r0, _08081C50 @ =0x08082181
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081C48: .4byte 0x03000FD8
_08081C4C: .4byte 0x000002BE
_08081C50: .4byte sub_8082180
