	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80AC71C
sub_80AC71C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r7, _080AC804 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r1, #0x01
	movs r4, #0x01
	strb r4, [r0, #0x0E]
	ldr r5, [r7, #0x00]
	ldr r0, _080AC808 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x08]
	lsls r2, r2, #0x0E
	lsrs r2, r2, #0x1B
	ands r2, r1
	ldrb r3, [r0, #0x0B]
	lsrs r3, r3, #0x06
	ldrb r0, [r0, #0x0C]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r3
	lsrs r0, r0, #0x01
	ands r0, r4
	lsls r0, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r5, #0x0A]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x0A]
	ldr r1, [r7, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x53
	mov r1, r8
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC78E
	cmp r1, #0x04
	bne _080AC7D2
_080AC78E:
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x50
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6E
	mov r7, r8
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080AC7D2:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AC7E6
	cmp r2, #0x04
	bne _080AC84C
_080AC7E6:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC810
	ldr r2, _080AC80C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC81C
_080AC804: .4byte 0x03000FD8
_080AC808: .4byte 0x03000FF4
_080AC80C: .4byte 0x00002002
_080AC810:
	ldr r2, _080AC8EC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC81C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AC832
	movs r2, #0x01
_080AC832:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC84C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC85A
	cmp r2, #0x04
	bne _080AC864
_080AC85A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080AC864:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080AC878
	cmp r2, #0x04
	bne _080AC8C0
_080AC878:
	ldr r5, _080AC8F0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x28
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6E
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
_080AC8C0:
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AC8CE
	cmp r2, #0x04
	bne _080AC934
_080AC8CE:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AC8F8
	ldr r2, _080AC8F4 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AC904
_080AC8EC: .4byte 0x0000204F
_080AC8F0: .4byte 0x03000FD8
_080AC8F4: .4byte 0x00002002
_080AC8F8:
	ldr r2, _080AC948 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AC904:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080AC91A
	movs r2, #0x01
_080AC91A:
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
_080AC934:
	ldr r0, _080AC94C @ =0x080B31F1
	mov r7, r9
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC948: .4byte 0x0000204F
_080AC94C: .4byte sub_80B31F0
	thumb_func_start sub_80AC950
sub_80AC950:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080AC9B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r0, #0x74]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	bne _080AC9A8
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC974
	cmp r1, #0x04
	bne _080AC9A4
_080AC974:
	ldr r2, _080AC9B4 @ =0x03001038
	ldr r0, _080AC9B8 @ =0x0819832C
	ldr r1, _080AC9BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AC9A4:
	ldr r0, _080AC9C0 @ =0x080AC9C5
	str r0, [r6, #0x4C]
_080AC9A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC9B0: .4byte 0x03000FD8
_080AC9B4: .4byte 0x03001038
_080AC9B8: .4byte 0x0819832C
_080AC9BC: .4byte 0x08198220
_080AC9C0: .4byte sub_80AC9C4
	thumb_func_start sub_80AC9C4
sub_80AC9C4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080ACA5C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080ACA56
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ACA08
	cmp r1, #0x04
	bne _080ACA24
_080ACA08:
	ldr r2, _080ACA60 @ =0x00002032
	adds r0, r5, #0x0
	movs r1, #0x00
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
_080ACA24:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ACA36
	cmp r1, #0x04
	bne _080ACA52
_080ACA36:
	ldr r2, _080ACA64 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x00
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
_080ACA52:
	ldr r0, _080ACA68 @ =0x080ACA6D
	str r0, [r7, #0x4C]
_080ACA56:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080ACA5C: .4byte 0x03000FD8
_080ACA60: .4byte 0x00002032
_080ACA64: .4byte 0x00002061
_080ACA68: .4byte sub_80ACA6C
	thumb_func_start sub_80ACA6C
sub_80ACA6C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080ACB0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r12, r1
	mov r3, r12
	adds r3, #0x08
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ACB04
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ACAA2
	cmp r1, #0x04
	bne _080ACAF4
_080ACAA2:
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _080ACAAA
	adds r0, #0xFF
_080ACAAA:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	adds r5, #0x0C
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080ACAC4
	adds r0, #0xFF
_080ACAC4:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080ACADA
	adds r3, #0xFF
_080ACADA:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080ACAF4:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080ACB10 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080ACB14 @ =0x080ACB19
	str r0, [r6, #0x4C]
_080ACB04:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080ACB0C: .4byte 0x03000FD8
_080ACB10: .4byte 0x00000FFF
_080ACB14: .4byte sub_80ACB18
	thumb_func_start sub_80ACB18
sub_80ACB18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r10, r0
	ldr r0, _080ACC30 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r1, r0
	add r0, r9
	mov r12, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	str r3, [sp, #0x004]
	lsls r1, r1, #0x02
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080ACB82
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080ACB82:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	cmp r0, #0x00
	beq _080ACB92
	b _080ACFAC
_080ACB92:
	mov r1, r12
	cmp r1, #0x00
	bge _080ACB9A
	movs r1, #0x00
_080ACB9A:
	ldr r0, _080ACC34 @ =0x00007FFF
	cmp r1, r0
	ble _080ACBA2
	adds r1, r0, #0x0
_080ACBA2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080ACBB8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080ACBBA
_080ACBB8:
	movs r2, #0x00
_080ACBBA:
	adds r4, r5, #0x0
	adds r4, #0x7E
	adds r7, r5, #0x0
	adds r7, #0xAE
	cmp r2, #0x00
	beq _080ACC9C
	ldr r2, _080ACC30 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080ACC38
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACBEA
	movs r1, #0x66
_080ACBDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACBDE
_080ACBEA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACBFE
	movs r1, #0x66
_080ACBF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACBF2
_080ACBFE:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACC12
	movs r1, #0x66
_080ACC06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC06
_080ACC12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACC94
	movs r1, #0x06
_080ACC1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACC26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACC26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACC1C
	b _080ACC94
	.byte 0x00, 0x00
_080ACC30: .4byte 0x03000FD8
_080ACC34: .4byte 0x00007FFF
_080ACC38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACC4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACC42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC42
_080ACC4E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACC64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACC58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC58
_080ACC64:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACC7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACC6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC6E
_080ACC7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACC94
	movs r1, #0x10
_080ACC84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACC8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACC8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACC84
_080ACC94:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080ACC9C:
	ldr r1, [sp, #0x004]
	mov r2, r9
	cmp r1, #0x00
	bge _080ACCA6
	movs r1, #0x00
_080ACCA6:
	mov r0, r9
	cmp r0, #0x00
	bge _080ACCAE
	movs r2, #0x00
_080ACCAE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ACCB8
	adds r1, r0, #0x0
_080ACCB8:
	ldr r0, _080ACDEC @ =0x00007FFF
	cmp r2, r0
	ble _080ACCC0
	adds r2, r0, #0x0
_080ACCC0:
	cmp r2, r1
	bge _080ACCC6
	adds r1, r2, #0x0
_080ACCC6:
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080ACCDC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ACCDE
_080ACCDC:
	movs r1, #0x00
_080ACCDE:
	cmp r1, #0x00
	beq _080ACD1E
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080ACDF0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080ACD1E
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x03
	adds r1, r6, #0x0
	movs r2, #0x18
	bl sub_807EAE4
	ldrh r1, [r7, #0x00]
	ldr r0, _080ACDF4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
_080ACD1E:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080ACD28
	b _080ACFAC
_080ACD28:
	mov r1, r9
	cmp r1, #0x00
	bge _080ACD30
	movs r1, #0x00
_080ACD30:
	ldr r0, _080ACDEC @ =0x00007FFF
	cmp r1, r0
	ble _080ACD38
	adds r1, r0, #0x0
_080ACD38:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080ACD4E
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080ACD50
_080ACD4E:
	movs r2, #0x00
_080ACD50:
	cmp r2, #0x00
	bne _080ACD56
	b _080ACE64
_080ACD56:
	ldr r3, _080ACDF8 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldrh r1, [r7, #0x00]
	ldr r0, _080ACDF4 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ACDFC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACDA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACD96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACD96
_080ACDA2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACDB8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACDAC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACDAC
_080ACDB8:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACDCE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACDC2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACDC2
_080ACDCE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACE58
	movs r1, #0x10
_080ACDD8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACDE2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACDE2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACDD8
	b _080ACE58
	.byte 0x00, 0x00
_080ACDEC: .4byte 0x00007FFF
_080ACDF0: .4byte 0x0300034C
_080ACDF4: .4byte 0x00000FFF
_080ACDF8: .4byte 0x03000FD8
_080ACDFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACE12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACE06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACE06
_080ACE12:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACE28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACE1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACE1C
_080ACE28:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACE3E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACE32:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACE32
_080ACE3E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACE58
	movs r1, #0x10
_080ACE48:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACE52
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACE52:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACE48
_080ACE58:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080ACFAC
_080ACE64:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, r9
	ble _080ACE6E
	b _080ACFAC
_080ACE6E:
	ldr r0, _080ACF2C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ACE84
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080ACE84
	b _080ACFAC
_080ACE84:
	ldr r2, _080ACF30 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080ACFAC
	ldrh r1, [r7, #0x00]
	ldr r0, _080ACF34 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ACF38
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACEE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACED6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACED6
_080ACEE2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACEF8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACEEC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACEEC
_080ACEF8:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACF0E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF02:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF02
_080ACF0E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACF94
	movs r1, #0x10
_080ACF18:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACF22
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACF22:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACF18
	b _080ACF94
	.byte 0x00, 0x00
_080ACF2C: .4byte 0x0300034C
_080ACF30: .4byte 0x03000FD8
_080ACF34: .4byte 0x00000FFF
_080ACF38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACF4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF42
_080ACF4E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACF64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF58
_080ACF64:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACF7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF6E
_080ACF7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACF94
	movs r1, #0x10
_080ACF84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACF8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACF8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACF84
_080ACF94:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x18
	bl sub_807EAE4
_080ACFAC:
	ldrh r0, [r7, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080AD020
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080ACFC0
	movs r1, #0x00
_080ACFC0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080ACFCA
	adds r2, r0, #0x0
_080ACFCA:
	ldr r0, _080AD014 @ =0x00007FFF
	cmp r1, r0
	ble _080ACFD2
	adds r1, r0, #0x0
_080ACFD2:
	cmp r1, r2
	bge _080ACFD8
	adds r2, r1, #0x0
_080ACFD8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080ACFF2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080ACFF4
_080ACFF2:
	movs r2, #0x00
_080ACFF4:
	cmp r2, #0x00
	beq _080AD020
	cmp r3, #0x01
	ble _080AD020
	ldrh r0, [r7, #0x00]
	ldr r1, _080AD018 @ =0x00000FFF
	ands r1, r0
	strh r1, [r7, #0x00]
	ldr r1, _080AD01C @ =0x080AD71D
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080AD08C
	.byte 0x00, 0x00
_080AD014: .4byte 0x00007FFF
_080AD018: .4byte 0x00000FFF
_080AD01C: .4byte sub_80AD71C
_080AD020:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AD08C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD040
	cmp r1, #0x04
	bne _080AD05C
_080AD040:
	ldr r2, _080AD09C @ =0x00002032
	adds r0, r6, #0x0
	movs r1, #0x06
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
_080AD05C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD06E
	cmp r1, #0x04
	bne _080AD086
_080AD06E:
	ldr r2, _080AD0A0 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD086:
	ldr r0, _080AD0A4 @ =0x080AD0A9
	mov r4, r10
	str r0, [r4, #0x4C]
_080AD08C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD09C: .4byte 0x00002032
_080AD0A0: .4byte 0x00002061
_080AD0A4: .4byte sub_80AD0A8
	thumb_func_start sub_80AD0A8
sub_80AD0A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AD178 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r7, r2, #0x0
	adds r7, #0x08
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AD16A
	ldr r0, [r7, #0x10]
	ldr r1, _080AD17C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r7, #0x10]
	str r0, [r7, #0x38]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD0E4
	cmp r1, #0x04
	bne _080AD0FC
_080AD0E4:
	ldr r2, _080AD180 @ =0x00002061
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD0FC:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD10E
	cmp r1, #0x04
	bne _080AD164
_080AD10E:
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ldsh r6, [r0, r1]
	ldr r5, _080AD178 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x18
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r7, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_8088164
_080AD164:
	ldr r0, _080AD184 @ =0x080B3171
	mov r1, r8
	str r0, [r1, #0x4C]
_080AD16A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AD178: .4byte 0x03000FD8
_080AD17C: .4byte 0xFFFFF000
_080AD180: .4byte 0x00002061
_080AD184: .4byte sub_80B3170
	thumb_func_start sub_80AD188
sub_80AD188:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AD21C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080AD1A8
	adds r1, #0x0F
_080AD1A8:
	asrs r1, r1, #0x04
	ldr r0, _080AD220 @ =0xFFFFFD30
	cmp r1, r0
	bge _080AD224
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD1C2
	cmp r1, #0x04
	bne _080AD212
_080AD1C2:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080AD1CA
	adds r0, #0xFF
_080AD1CA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AD1E4
	adds r2, #0xFF
_080AD1E4:
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
	movs r1, #0x28
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AD212:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	b _080AD2A4
	.byte 0x00, 0x00
_080AD21C: .4byte 0x03000FD8
_080AD220: .4byte 0xFFFFFD30
_080AD224:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD236
	cmp r1, #0x04
	bne _080AD29E
_080AD236:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080AD240
	adds r1, #0xFF
_080AD240:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	mov r1, r12
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080AD258
	adds r0, #0xFF
_080AD258:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r0, r12
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080AD270
	adds r3, #0xFF
_080AD270:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_808843C
	movs r1, #0x28
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080AD29E:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
_080AD2A4:
	str r0, [r1, #0x00]
	ldr r0, _080AD2B4 @ =0x080AD2B9
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AD2B4: .4byte sub_80AD2B8
	thumb_func_start sub_80AD2B8
sub_80AD2B8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AD334 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AD2E0
	b _080AD42C
_080AD2E0:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080AD340
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AD2F2
	adds r1, #0xFF
_080AD2F2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AD2FC
	adds r2, #0xFF
_080AD2FC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AD306
	adds r3, #0xFF
_080AD306:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AD338 @ =0x00002FF9
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD32E
	cmp r1, #0x04
	beq _080AD32E
	b _080AD42C
_080AD32E:
	ldr r0, _080AD33C @ =0x080AD189
	b _080AD42A
	.byte 0x00, 0x00
_080AD334: .4byte 0x03000FD8
_080AD338: .4byte 0x00002FF9
_080AD33C: .4byte sub_80AD188
_080AD340:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AD384 @ =0x040210A8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r6, #0x24]
	adds r1, #0x01
	strh r1, [r6, #0x24]
	cmp r0, #0x01
	bne _080AD388
	adds r0, r6, #0x0
	bl sub_8086764
	b _080AD42C
_080AD384: .4byte 0x040210A8
_080AD388:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AD3A4
	ldr r2, _080AD434 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AD3F0
_080AD3A4:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AD3AC
	adds r1, #0xFF
_080AD3AC:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AD3C2
	adds r0, #0xFF
_080AD3C2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AD3D8
	adds r3, #0xFF
_080AD3D8:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AD438 @ =0x000006E3
	str r5, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AD3F0:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD402
	cmp r1, #0x04
	bne _080AD41E
_080AD402:
	ldr r2, _080AD43C @ =0x00002005
	adds r0, r6, #0x0
	movs r1, #0x00
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
_080AD41E:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080AD440 @ =0x080B314D
_080AD42A:
	str r0, [r7, #0x4C]
_080AD42C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD434: .4byte 0x00000111
_080AD438: .4byte 0x000006E3
_080AD43C: .4byte 0x00002005
_080AD440: .4byte 0x080B314D
	thumb_func_start sub_80AD444
sub_80AD444:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _080AD500 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r7, r5, #0x0
	adds r7, #0xB6
	movs r0, #0x00
	ldsh r1, [r7, r0]
	movs r0, #0xDE
	muls r0, r1
	cmp r0, #0x00
	bge _080AD46A
	adds r0, #0xFF
_080AD46A:
	asrs r0, r0, #0x08
	movs r1, #0x00
	mov r8, r1
	strh r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xBA
	ldrh r0, [r4, #0x00]
	subs r0, #0x80
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, _080AD504 @ =0xFFFFFC00
	cmp r0, r1
	bgt _080AD4F4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	mov r1, r8
	strh r1, [r7, #0x00]
	strh r1, [r4, #0x00]
	mov r0, r8
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD4BC
	cmp r1, #0x04
	bne _080AD4EE
_080AD4BC:
	ldr r2, _080AD508 @ =0x03001038
	ldr r0, _080AD50C @ =0x0819832C
	ldr r1, _080AD510 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x86
	mov r1, r8
	strh r1, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AD4EE:
	ldr r0, _080AD514 @ =0x080AD519
	mov r1, r9
	str r0, [r1, #0x4C]
_080AD4F4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD500: .4byte 0x03000FD8
_080AD504: .4byte 0xFFFFFC00
_080AD508: .4byte 0x03001038
_080AD50C: .4byte 0x0819832C
_080AD510: .4byte 0x08198220
_080AD514: .4byte sub_80AD518
	thumb_func_start sub_80AD518
sub_80AD518:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080AD5D4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AD542
	b _080AD710
_080AD542:
	movs r0, #0x00
	str r0, [r5, #0x18]
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD564
	cmp r1, #0x04
	bne _080AD5A2
_080AD564:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AD572
	adds r0, #0xFF
_080AD572:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AD580
	adds r0, #0xFF
_080AD580:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AD58E
	adds r0, #0xFF
_080AD58E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080AD5A2:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AD5B6
	cmp r2, #0x04
	bne _080AD618
_080AD5B6:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AD5DC
	ldr r2, _080AD5D8 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AD5E8
_080AD5D4: .4byte 0x03000FD8
_080AD5D8: .4byte 0x00002002
_080AD5DC:
	ldr r2, _080AD6B4 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AD5E8:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AD5FE
	movs r2, #0x01
_080AD5FE:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD618:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AD626
	cmp r2, #0x04
	bne _080AD630
_080AD626:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080AD630:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AD644
	cmp r2, #0x04
	bne _080AD686
_080AD644:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AD652
	adds r0, #0xFF
_080AD652:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AD660
	adds r0, #0xFF
_080AD660:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AD66E
	adds r0, #0xFF
_080AD66E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AD686:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD694
	cmp r1, #0x04
	bne _080AD6F8
_080AD694:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AD6BC
	ldr r2, _080AD6B8 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AD6C8
	.byte 0x00, 0x00
_080AD6B4: .4byte 0x0000204F
_080AD6B8: .4byte 0x00002002
_080AD6BC:
	ldr r2, _080AD718 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AD6C8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080AD6DE
	movs r2, #0x01
_080AD6DE:
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
_080AD6F8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AD706
	cmp r2, #0x04
	bne _080AD710
_080AD706:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AD710:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD718: .4byte 0x0000204F
	thumb_func_start sub_80AD71C
sub_80AD71C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x004]
	ldr r6, _080AD818 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	movs r0, #0x08
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [sp, #0x004]
	ldr r1, [r1, #0x2C]
	mov r9, r1
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080AD74A
	adds r1, #0xFF
_080AD74A:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080AD754
	adds r2, #0xFF
_080AD754:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080AD75E
	adds r3, #0xFF
_080AD75E:
	asrs r3, r3, #0x08
	adds r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080AD81C @ =0x00002FBA
	bl sub_80DF024
	ldr r0, [r7, #0x38]
	mov r1, r8
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AD820
	adds r1, r7, #0x0
	adds r3, r6, #0x0
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	adds r6, r5, #0x0
	adds r6, #0xA8
	adds r5, #0x7E
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0x7E
	str r0, [sp, #0x00C]
	adds r0, #0x26
	str r0, [sp, #0x010]
	adds r0, #0x04
	str r0, [sp, #0x014]
	adds r0, #0x04
	str r0, [sp, #0x018]
	adds r4, #0xB0
	str r4, [sp, #0x01C]
	cmp r7, #0x00
	beq _080AD7CE
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD7C2:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD7C2
_080AD7CE:
	mov r1, r8
	cmp r1, #0x00
	beq _080AD7E4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD7D8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD7D8
_080AD7E4:
	mov r1, r9
	cmp r1, #0x00
	beq _080AD7FA
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD7EE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD7EE
_080AD7FA:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080AD8A2
	movs r2, #0x10
_080AD804:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080AD80E
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080AD80E:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080AD804
	b _080AD8A2
	.byte 0x00, 0x00
_080AD818: .4byte 0x03000FD8
_080AD81C: .4byte 0x00002FBA
_080AD820:
	adds r1, r7, #0x0
	adds r3, r6, #0x0
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	adds r6, r5, #0x0
	adds r6, #0xA8
	adds r5, #0x7E
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0x7E
	str r0, [sp, #0x00C]
	adds r0, #0x26
	str r0, [sp, #0x010]
	adds r0, #0x04
	str r0, [sp, #0x014]
	adds r0, #0x04
	str r0, [sp, #0x018]
	adds r4, #0xB0
	str r4, [sp, #0x01C]
	cmp r7, #0x00
	beq _080AD85C
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD850:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD850
_080AD85C:
	mov r1, r8
	cmp r1, #0x00
	beq _080AD872
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD866:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD866
_080AD872:
	mov r1, r9
	cmp r1, #0x00
	beq _080AD888
	movs r2, #0x80
	lsls r2, r2, #0x01
_080AD87C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080AD87C
_080AD888:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080AD8A2
	movs r2, #0x10
_080AD892:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080AD89C
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080AD89C:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080AD892
_080AD8A2:
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r0, #0xF4
	ldrb r5, [r0, #0x00]
	adds r3, r5, #0x0
	mov r0, r10
	str r5, [r0, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	mov r12, r6
	b _080AD920
_080AD8D0:
	ldr r0, _080ADA44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r6, r1, #0x0
	adds r6, #0x58
	adds r0, r6, r0
	ldr r2, [r0, #0x00]
	adds r4, r2, #0x0
	adds r4, #0x08
	adds r1, r2, #0x0
	adds r1, #0xA4
	movs r0, #0x02
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080AD920
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AD920
	lsls r0, r5, #0x02
	adds r0, r6, r0
	ldr r0, [r0, #0x00]
	adds r0, #0xA4
	str r3, [r0, #0x00]
	adds r5, r3, #0x0
	mov r1, r12
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080AD920:
	adds r3, #0x01
	cmp r3, #0x06
	bne _080AD928
	movs r3, #0x00
_080AD928:
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bne _080AD8D0
	ldr r0, _080ADA44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xA4
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r0, #0x8B
	lsls r0, r0, #0x01
	bl play_sfx_80195B4
	ldr r1, [sp, #0x008]
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD960
	cmp r1, #0x04
	bne _080AD978
_080AD960:
	ldr r2, _080ADA48 @ =0x00002032
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD978:
	ldr r1, [sp, #0x00C]
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD988
	cmp r1, #0x04
	bne _080AD9A2
_080AD988:
	ldr r2, _080ADA4C @ =0x00002061
	mov r0, r8
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD9A2:
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	movs r0, #0x01
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	ldr r1, [sp, #0x01C]
	str r0, [r1, #0x00]
	ldr r0, _080ADA44 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldr r0, [sp, #0x010]
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r2, #0x08
	str r2, [r7, #0x2C]
	ldr r5, [r7, #0x30]
	ldr r3, [r2, #0x28]
	adds r3, #0xE4
	ldr r0, [r3, #0x00]
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r3, #0x00]
	movs r1, #0x05
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r3, #0x00]
	movs r1, #0x06
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	ldr r1, _080ADA50 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080ADA14
	movs r1, #0x02
_080ADA14:
	ldr r2, _080ADA54 @ =0x00002093
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	bl sub_8086E8C
	ldr r1, [r7, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, _080ADA58 @ =0x080ADA5D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080ADA44: .4byte 0x03000FD8
_080ADA48: .4byte 0x00002032
_080ADA4C: .4byte 0x00002061
_080ADA50: .4byte 0xFFFFF400
_080ADA54: .4byte 0x00002093
_080ADA58: .4byte sub_80ADA5C
	thumb_func_start sub_80ADA5C
sub_80ADA5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r2, _080ADAC8 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r0, [r3, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r3, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, _080ADACC @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	mov r10, r2
	cmp r0, #0x00
	beq _080ADB00
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080ADAD4
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADABE
	cmp r1, #0x04
	beq _080ADABE
	b _080ADC8E
_080ADABE:
	ldr r0, _080ADAD0 @ =0x080AE18D
	mov r1, r9
	str r0, [r1, #0x4C]
	b _080ADC8E
	.byte 0x00, 0x00
_080ADAC8: .4byte 0x03000FD8
_080ADACC: .4byte 0x0300034C
_080ADAD0: .4byte sub_80AE18C
_080ADAD4:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADAF6
	cmp r1, #0x04
	beq _080ADAF6
	b _080ADC8E
_080ADAF6:
	ldr r0, _080ADAFC @ =0x080AE905
	b _080ADC8A
	.byte 0x00, 0x00
_080ADAFC: .4byte sub_80AE904
_080ADB00:
	adds r4, #0xB0
	ldr r2, [r4, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ADB14
	adds r0, r2, #0x0
	subs r0, #0xCC
	b _080ADB18
_080ADB14:
	ldr r1, _080ADB60 @ =0xFFFFFF00
	adds r0, r2, r1
_080ADB18:
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	ble _080ADB28
	b _080ADC8E
_080ADB28:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080ADB68
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x05
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x03
	cmp r0, #0x00
	beq _080ADB52
	movs r1, #0x01
_080ADB52:
	ldr r2, _080ADB64 @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080ADC8E
	.byte 0x00, 0x00
_080ADB60: .4byte 0xFFFFFF00
_080ADB64: .4byte 0x00002093
_080ADB68:
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r4, r10
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080ADB88
	movs r1, #0x02
_080ADB88:
	ldr r2, _080ADC9C @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x9C
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0xA0
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _080ADBC2
	ldr r0, [r7, #0x00]
	subs r0, #0x01
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_080ADBC2:
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r3, #0x08
	str r3, [r5, #0x2C]
	ldr r0, [r5, #0x30]
	ldr r4, [r3, #0x28]
	adds r4, #0xE4
	ldr r1, [r4, #0x00]
	movs r2, #0x04
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x10]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x00]
	movs r2, #0x05
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0x06
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x18]
	adds r1, r1, r2
	ldr r2, _080ADCA0 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x18]
	bl sub_8086E8C
	ldr r1, [r5, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bgt _080ADC8E
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADC3A
	cmp r1, #0x04
	bne _080ADC52
_080ADC3A:
	ldr r2, _080ADCA4 @ =0x00002032
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADC52:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADC64
	cmp r1, #0x04
	bne _080ADC7C
_080ADC64:
	ldr r2, _080ADCA8 @ =0x00002061
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
_080ADC7C:
	movs r0, #0x02
	str r0, [r7, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _080ADCAC @ =0x080ADCB1
_080ADC8A:
	mov r2, r9
	str r0, [r2, #0x4C]
_080ADC8E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080ADC9C: .4byte 0x00002093
_080ADCA0: .4byte 0xFFFFF400
_080ADCA4: .4byte 0x00002032
_080ADCA8: .4byte 0x00002061
_080ADCAC: .4byte sub_80ADCB0
	thumb_func_start sub_80ADCB0
sub_80ADCB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r2, _080ADD1C @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r0, [r3, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r3, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, _080ADD20 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080ADD54
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080ADD28
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADD12
	cmp r1, #0x04
	beq _080ADD12
	b _080ADEF0
_080ADD12:
	ldr r0, _080ADD24 @ =0x080AE18D
	mov r1, r9
	str r0, [r1, #0x4C]
	b _080ADEF0
	.byte 0x00, 0x00
_080ADD1C: .4byte 0x03000FD8
_080ADD20: .4byte 0x0300034C
_080ADD24: .4byte sub_80AE18C
_080ADD28:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADD4A
	cmp r1, #0x04
	beq _080ADD4A
	b _080ADEF0
_080ADD4A:
	ldr r0, _080ADD50 @ =0x080AF295
	b _080ADEEC
	.byte 0x00, 0x00
_080ADD50: .4byte sub_80AF294
_080ADD54:
	adds r4, #0xB0
	ldr r2, [r4, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ADD68
	adds r0, r2, #0x0
	subs r0, #0xCC
	b _080ADD6C
_080ADD68:
	ldr r1, _080ADDB4 @ =0xFFFFFF00
	adds r0, r2, r1
_080ADD6C:
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	ble _080ADD7C
	b _080ADEF0
_080ADD7C:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080ADDBC
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	mov r2, r10
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x03
	cmp r0, #0x00
	beq _080ADDA6
	movs r1, #0x01
_080ADDA6:
	ldr r2, _080ADDB8 @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080ADEF0
	.byte 0x00, 0x00
_080ADDB4: .4byte 0xFFFFFF00
_080ADDB8: .4byte 0x00002093
_080ADDBC:
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r2, r10
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r4, r8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080ADDDC
	movs r1, #0x02
_080ADDDC:
	ldr r2, _080ADF00 @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x9C
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0xA0
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _080ADE16
	ldr r0, [r7, #0x00]
	subs r0, #0x01
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_080ADE16:
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r3, #0x08
	str r3, [r5, #0x2C]
	ldr r0, [r5, #0x30]
	ldr r4, [r3, #0x28]
	adds r4, #0xE4
	ldr r1, [r4, #0x00]
	movs r2, #0x04
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x10]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x00]
	movs r2, #0x05
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0x06
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x18]
	adds r1, r1, r2
	ldr r2, _080ADF04 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x18]
	bl sub_8086E8C
	ldr r1, [r5, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bgt _080ADEF0
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADE8E
	cmp r1, #0x04
	bne _080ADEA6
_080ADE8E:
	ldr r2, _080ADF08 @ =0x00002032
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADEA6:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADEB8
	cmp r1, #0x04
	bne _080ADED0
_080ADEB8:
	ldr r2, _080ADF0C @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADED0:
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x05
	str r0, [r7, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x03
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r0, _080ADF10 @ =0x080ADF15
_080ADEEC:
	mov r2, r9
	str r0, [r2, #0x4C]
_080ADEF0:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080ADF00: .4byte 0x00002093
_080ADF04: .4byte 0xFFFFF400
_080ADF08: .4byte 0x00002032
_080ADF0C: .4byte 0x00002061
_080ADF10: .4byte sub_80ADF14
	thumb_func_start sub_80ADF14
sub_80ADF14:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r2, _080ADF78 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r0, [r3, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r3, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, _080ADF7C @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080ADFB0
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080ADF80
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	bne _080ADF6E
	b _080AE16C
_080ADF6E:
	cmp r1, #0x04
	beq _080ADF74
	b _080AE172
_080ADF74:
	b _080AE16C
	.byte 0x00, 0x00
_080ADF78: .4byte 0x03000FD8
_080ADF7C: .4byte 0x0300034C
_080ADF80:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADFA2
	cmp r1, #0x04
	beq _080ADFA2
	b _080AE172
_080ADFA2:
	ldr r0, _080ADFAC @ =0x080AFC25
	mov r2, r8
	str r0, [r2, #0x4C]
	b _080AE172
	.byte 0x00, 0x00
_080ADFAC: .4byte sub_80AFC24
_080ADFB0:
	adds r4, #0xB0
	ldr r2, [r4, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ADFC4
	adds r0, r2, #0x0
	subs r0, #0xCC
	b _080ADFC8
_080ADFC4:
	ldr r1, _080AE008 @ =0xFFFFFF00
	adds r0, r2, r1
_080ADFC8:
	str r0, [r4, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	ble _080ADFD6
	b _080AE172
_080ADFD6:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080AE010
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r3, [r6, #0x30]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x03
	cmp r0, #0x00
	beq _080ADFFC
	movs r1, #0x01
_080ADFFC:
	ldr r2, _080AE00C @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080AE172
_080AE008: .4byte 0xFFFFFF00
_080AE00C: .4byte 0x00002093
_080AE010:
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x03
	str r0, [r2, #0x00]
	ldr r3, [r6, #0x30]
	adds r4, r7, #0x0
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080AE02E
	movs r1, #0x02
_080AE02E:
	ldr r2, _080AE17C @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x00]
	movs r0, #0x01
	negs r0, r0
	adds r5, #0xA0
	cmp r1, r0
	bne _080AE066
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_080AE066:
	ldr r1, [r7, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r3, #0x08
	str r3, [r6, #0x2C]
	ldr r0, [r6, #0x30]
	ldr r4, [r3, #0x28]
	adds r4, #0xE4
	ldr r1, [r4, #0x00]
	movs r2, #0x04
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x10]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x00]
	movs r2, #0x05
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0x06
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x18]
	adds r1, r1, r2
	ldr r2, _080AE180 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x18]
	bl sub_8086E8C
	ldr r1, [r6, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080AE172
	adds r0, r6, #0x0
	bl sub_807EA24
	bl sub_807F448
	ldr r0, [r6, #0x30]
	bl sub_807C298
	movs r4, #0x00
	movs r7, #0x00
_080AE0D2:
	ldr r0, _080AE184 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _080AE102
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080AE102
	str r5, [r6, #0x2C]
_080AE102:
	adds r1, r7, #0x1
	ldr r0, _080AE184 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _080AE134
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080AE134
	str r5, [r6, #0x2C]
_080AE134:
	adds r1, r7, #0x2
	ldr r0, _080AE184 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _080AE166
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080AE166
	str r5, [r6, #0x2C]
_080AE166:
	adds r7, #0x03
	cmp r7, #0x05
	ble _080AE0D2
_080AE16C:
	ldr r0, _080AE188 @ =0x080AE18D
	mov r1, r8
	str r0, [r1, #0x4C]
_080AE172:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AE17C: .4byte 0x00002093
_080AE180: .4byte 0xFFFFF400
_080AE184: .4byte 0x03000FD8
_080AE188: .4byte sub_80AE18C
	thumb_func_start sub_80AE18C
sub_80AE18C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080AE234 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AE22E
	ldr r1, [r4, #0x30]
	cmp r1, #0x00
	beq _080AE1C8
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _080AE1C8
	adds r0, r1, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE1C8:
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE1E6
	cmp r1, #0x04
	bne _080AE202
_080AE1E6:
	ldr r2, _080AE238 @ =0x00002032
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
_080AE202:
	ldr r0, [r4, #0x38]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0x3C]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r4, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r5, #0x18]
	str r0, [r5, #0x40]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _080AE23C @ =0x080AE241
	str r0, [r6, #0x4C]
_080AE22E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080AE234: .4byte 0x03000FD8
_080AE238: .4byte 0x00002032
_080AE23C: .4byte sub_80AE240
	thumb_func_start sub_80AE240
sub_80AE240:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080AE358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r1, r10
	ldr r4, [r1, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE26C
	cmp r1, #0x04
	bne _080AE288
_080AE26C:
	ldr r2, _080AE35C @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0C
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
_080AE288:
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080AE294
	adds r0, #0x0F
_080AE294:
	asrs r6, r0, #0x04
	ldr r1, [r4, #0x14]
	ldr r0, [r5, #0x14]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080AE2A2
	adds r0, #0x0F
_080AE2A2:
	asrs r7, r0, #0x04
	ldr r2, _080AE360 @ =0x03001038
	mov r9, r2
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r8, r0
	movs r0, #0xB4
	lsls r0, r0, #0x02
	cmp r8, r0
	ble _080AE36C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE2D6
	cmp r1, #0x04
	beq _080AE2D6
	b _080AE3E8
_080AE2D6:
	ldr r4, _080AE364 @ =0x0819832C
	ldr r0, _080AE368 @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	lsls r0, r6, #0x04
	subs r0, r0, r6
	lsls r0, r0, #0x01
	mov r1, r8
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	lsls r0, r7, #0x04
	subs r0, r0, r7
	lsls r0, r0, #0x01
	mov r1, r8
	bl _call_via_r2
	adds r3, r0, #0x0
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080AE30C
	adds r0, #0xFF
_080AE30C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, r6
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080AE324
	adds r2, #0xFF
_080AE324:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	adds r2, r2, r3
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
	b _080AE3E8
	.byte 0x00, 0x00
_080AE358: .4byte 0x03000FD8
_080AE35C: .4byte 0x00002061
_080AE360: .4byte 0x03001038
_080AE364: .4byte 0x0819832C
_080AE368: .4byte 0x08198220
_080AE36C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE37E
	cmp r1, #0x04
	bne _080AE3CA
_080AE37E:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080AE386
	adds r1, #0xFF
_080AE386:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AE39C
	adds r2, #0xFF
_080AE39C:
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
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080AE3CA:
	mov r0, r10
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE3DC
	cmp r1, #0x04
	bne _080AE3EE
_080AE3DC:
	ldr r0, _080AE3E4 @ =0x080AE571
	mov r2, r10
	str r0, [r2, #0x4C]
	b _080AE3EE
_080AE3E4: .4byte sub_80AE570
_080AE3E8:
	ldr r0, _080AE400 @ =0x080AE405
	mov r1, r10
	str r0, [r1, #0x4C]
_080AE3EE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AE400: .4byte sub_80AE404
	thumb_func_start sub_80AE404
sub_80AE404:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AE550 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080AE554 @ =0x03001038
	ldr r2, _080AE558 @ =0x0819832C
	ldr r3, _080AE55C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AE452
	adds r0, r6, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AE454
_080AE452:
	movs r1, #0x00
_080AE454:
	cmp r1, #0x00
	beq _080AE486
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE46A
	cmp r1, #0x04
	bne _080AE486
_080AE46A:
	ldr r2, _080AE560 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0B
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
_080AE486:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _080AE4C6
	ldr r1, [r5, #0x18]
	ldr r0, _080AE564 @ =0x000025FF
	cmp r1, r0
	bgt _080AE4C6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE4AA
	cmp r1, #0x04
	bne _080AE4C6
_080AE4AA:
	ldr r2, _080AE560 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0A
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
_080AE4C6:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AE548
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AE4E6
	adds r1, #0xFF
_080AE4E6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AE4F0
	adds r2, #0xFF
_080AE4F0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AE4FA
	adds r3, #0xFF
_080AE4FA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080AE568 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE516
	cmp r1, #0x04
	bne _080AE532
_080AE516:
	ldr r2, _080AE560 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0B
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
_080AE532:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE544
	cmp r1, #0x04
	bne _080AE548
_080AE544:
	ldr r0, _080AE56C @ =0x080AE241
	str r0, [r7, #0x4C]
_080AE548:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AE550: .4byte 0x03000FD8
_080AE554: .4byte 0x03001038
_080AE558: .4byte 0x0819832C
_080AE55C: .4byte 0x08198220
_080AE560: .4byte 0x00002061
_080AE564: .4byte 0x000025FF
_080AE568: .4byte 0x00002FF9
_080AE56C: .4byte sub_80AE240
	thumb_func_start sub_80AE570
sub_80AE570:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	ldr r1, _080AE698 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r1, [r2, #0x70]
	adds r1, #0x08
	mov r8, r1
	ldr r5, [r2, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080AE69C @ =0x03001038
	ldr r2, _080AE6A0 @ =0x0819832C
	ldr r3, _080AE6A4 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AE5C8
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080AE5CA
_080AE5C8:
	movs r1, #0x00
_080AE5CA:
	cmp r1, #0x00
	beq _080AE5FC
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE5E0
	cmp r1, #0x04
	bne _080AE5FC
_080AE5E0:
	ldr r2, _080AE6A8 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x0B
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
_080AE5FC:
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _080AE63C
	ldr r1, [r6, #0x18]
	ldr r0, _080AE6AC @ =0x000025FF
	cmp r1, r0
	bgt _080AE63C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE620
	cmp r1, #0x04
	bne _080AE63C
_080AE620:
	ldr r2, _080AE6A8 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x0A
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
_080AE63C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AE64C
	b _080AE8F2
_080AE64C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	mov r5, r8
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AE6B0 @ =0x040211A8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r6, #0x24]
	adds r1, #0x01
	strh r1, [r6, #0x24]
	cmp r0, #0x01
	bne _080AE6B4
	adds r0, r6, #0x0
	bl sub_8086764
	b _080AE8F2
_080AE698: .4byte 0x03000FD8
_080AE69C: .4byte 0x03001038
_080AE6A0: .4byte 0x0819832C
_080AE6A4: .4byte 0x08198220
_080AE6A8: .4byte 0x00002061
_080AE6AC: .4byte 0x000025FF
_080AE6B0: .4byte 0x040211A8
_080AE6B4:
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AE6D0
	ldr r4, _080AE7A8 @ =0x00000111
	adds r0, r1, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AE71C
_080AE6D0:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080AE6D8
	adds r1, #0xFF
_080AE6D8:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080AE6EE
	adds r0, #0xFF
_080AE6EE:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080AE704
	adds r3, #0xFF
_080AE704:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AE7AC @ =0x000006E3
	str r7, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AE71C:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AE73C
	cmp r2, #0x04
	bne _080AE77A
_080AE73C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE74A
	adds r0, #0xFF
_080AE74A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE758
	adds r0, #0xFF
_080AE758:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE766
	adds r0, #0xFF
_080AE766:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AE77A:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE788
	cmp r1, #0x04
	bne _080AE7F0
_080AE788:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AE7B4
	ldr r2, _080AE7B0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AE7C0
	.byte 0x00, 0x00
_080AE7A8: .4byte 0x00000111
_080AE7AC: .4byte 0x000006E3
_080AE7B0: .4byte 0x00002002
_080AE7B4:
	ldr r2, _080AE890 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE7C0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080AE7D6
	movs r2, #0x01
_080AE7D6:
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
_080AE7F0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AE7FE
	cmp r2, #0x04
	bne _080AE808
_080AE7FE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AE808:
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AE81C
	cmp r2, #0x04
	bne _080AE860
_080AE81C:
	mov r5, r8
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE82C
	adds r0, #0xFF
_080AE82C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE83A
	adds r0, #0xFF
_080AE83A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE848
	adds r0, #0xFF
_080AE848:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_80880C4
_080AE860:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE86E
	cmp r1, #0x04
	bne _080AE8D8
_080AE86E:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AE898
	ldr r2, _080AE894 @ =0x00002002
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AE8A4
	.byte 0x00, 0x00
_080AE890: .4byte 0x0000204F
_080AE894: .4byte 0x00002002
_080AE898:
	ldr r2, _080AE900 @ =0x0000204F
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE8A4:
	mov r5, r8
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	mov r0, r8
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080AE8BC
	movs r2, #0x01
_080AE8BC:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AE8D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AE8E6
	cmp r2, #0x04
	bne _080AE8F2
_080AE8E6:
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	mov r0, r8
	bl sub_808863C
_080AE8F2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AE900: .4byte 0x0000204F
	thumb_func_start sub_80AE904
sub_80AE904:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AEA6C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	mov r8, r0
	mov r4, r8
	adds r4, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AE934
	b _080AEA5E
_080AE934:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080AE956
	adds r0, r1, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE956:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0x7D
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE974
	cmp r1, #0x04
	bne _080AE990
_080AE974:
	ldr r2, _080AEA70 @ =0x00002032
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
_080AE990:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080AE9A4
	cmp r2, #0x04
	bne _080AE9C0
_080AE9A4:
	ldr r2, _080AEA74 @ =0x00002061
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
_080AE9C0:
	ldr r0, [r5, #0x38]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AE9EC
	cmp r2, #0x04
	bne _080AEA4C
_080AE9EC:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080AE9F4
	adds r0, #0xFF
_080AE9F4:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x18
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080AEA0E
	adds r0, #0xFF
_080AEA0E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080AEA24
	adds r3, #0xFF
_080AEA24:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080AEA4C:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AEA78 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AEA7C @ =0x080AEA81
	mov r1, r9
	str r0, [r1, #0x4C]
_080AEA5E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AEA6C: .4byte 0x03000FD8
_080AEA70: .4byte 0x00002032
_080AEA74: .4byte 0x00002061
_080AEA78: .4byte 0x00000FFF
_080AEA7C: .4byte sub_80AEA80
	thumb_func_start sub_80AEA80
sub_80AEA80:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080AEB94 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r1, r1, #0x03
	mov r0, r10
	subs r0, r0, r1
	str r0, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AEAE4
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AEAE4:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AEAF4
	b _080AF00E
_080AEAF4:
	mov r1, r12
	cmp r1, #0x00
	bge _080AEAFC
	movs r1, #0x00
_080AEAFC:
	ldr r0, _080AEB98 @ =0x00007FFF
	cmp r1, r0
	ble _080AEB04
	adds r1, r0, #0x0
_080AEB04:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AEB1A
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AEB1C
_080AEB1A:
	movs r2, #0x00
_080AEB1C:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080AEC00
	ldr r2, _080AEB94 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AEB9C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEB50
	movs r1, #0x66
_080AEB44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEB44
_080AEB50:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEB64
	movs r1, #0x66
_080AEB58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEB58
_080AEB64:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEB78
	movs r1, #0x66
_080AEB6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEB6C
_080AEB78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEBF8
	movs r1, #0x06
_080AEB82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEB8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEB8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEB82
	b _080AEBF8
_080AEB94: .4byte 0x03000FD8
_080AEB98: .4byte 0x00007FFF
_080AEB9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEBB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEBA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEBA6
_080AEBB2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEBC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEBBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEBBC
_080AEBC8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEBDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEBD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEBD2
_080AEBDE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEBF8
	movs r1, #0x10
_080AEBE8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEBF2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEBF2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEBE8
_080AEBF8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AEC00:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080AEC0A
	movs r1, #0x00
_080AEC0A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AEC14
	adds r1, r0, #0x0
_080AEC14:
	ldr r0, _080AED08 @ =0x00007FFF
	cmp r2, r0
	ble _080AEC1C
	adds r2, r0, #0x0
_080AEC1C:
	cmp r2, r1
	bge _080AEC22
	adds r1, r2, #0x0
_080AEC22:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AEC3A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AEC3C
_080AEC3A:
	movs r1, #0x00
_080AEC3C:
	cmp r1, #0x00
	bne _080AEC42
	b _080AED88
_080AEC42:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AED0C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AEC60
	b _080AED88
_080AEC60:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080AED10 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080AED76
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AED14
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AECC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AECB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AECB4
_080AECC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AECD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AECCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AECCA
_080AECD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AECEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AECE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AECE0
_080AECEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AED72
	movs r1, #0x10
_080AECF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AED00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AED00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AECF6
	b _080AED72
_080AED08: .4byte 0x00007FFF
_080AED0C: .4byte 0x0300034C
_080AED10: .4byte 0x03000FD8
_080AED14:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AED2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AED20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AED20
_080AED2C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AED42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AED36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AED36
_080AED42:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AED58
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AED4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AED4C
_080AED58:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AED72
	movs r1, #0x10
_080AED62:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AED6C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AED6C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AED62
_080AED72:
	bl sub_807F448
_080AED76:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080AEE58 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080AED88:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AED94
	b _080AF00E
_080AED94:
	mov r1, r10
	ldr r0, _080AEE5C @ =0x00007FFF
	cmp r1, r0
	ble _080AED9E
	adds r1, r0, #0x0
_080AED9E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AEDB6
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AEDB8
_080AEDB6:
	movs r2, #0x00
_080AEDB8:
	cmp r2, #0x00
	bne _080AEDBE
	b _080AEECC
_080AEDBE:
	ldr r3, _080AEE60 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AEE58 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AEE64
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEE0E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE02:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE02
_080AEE0E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEE24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE18
_080AEE24:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEE3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE2E
_080AEE3A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEEC0
	movs r1, #0x10
_080AEE44:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEE4E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEE4E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEE44
	b _080AEEC0
	.byte 0x00, 0x00
_080AEE58: .4byte 0x00000FFF
_080AEE5C: .4byte 0x00007FFF
_080AEE60: .4byte 0x03000FD8
_080AEE64:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEE7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE6E
_080AEE7A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEE90
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE84
_080AEE90:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEEA6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE9A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE9A
_080AEEA6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEEC0
	movs r1, #0x10
_080AEEB0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEEBA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEEBA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEEB0
_080AEEC0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AF00E
_080AEECC:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080AEED8
	b _080AF00E
_080AEED8:
	ldr r0, _080AEF90 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AEEE6
	b _080AF00E
_080AEEE6:
	ldr r2, _080AEF94 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080AF00E
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AEF98 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AEF9C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEF48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEF3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEF3C
_080AEF48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEF5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEF52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEF52
_080AEF5E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEF74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEF68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEF68
_080AEF74:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEFF8
	movs r1, #0x10
_080AEF7E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEF88
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEF88:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEF7E
	b _080AEFF8
_080AEF90: .4byte 0x0300034C
_080AEF94: .4byte 0x03000FD8
_080AEF98: .4byte 0x00000FFF
_080AEF9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEFB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEFA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEFA6
_080AEFB2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEFC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEFBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEFBC
_080AEFC8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEFDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEFD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEFD2
_080AEFDE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEFF8
	movs r1, #0x10
_080AEFE8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEFF2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEFF2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEFE8
_080AEFF8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AF00E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	bne _080AF01A
	b _080AF168
_080AF01A:
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r3, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AF02A
	adds r2, r0, #0x0
_080AF02A:
	ldr r0, _080AF150 @ =0x00007FFF
	cmp r3, r0
	ble _080AF032
	adds r3, r0, #0x0
_080AF032:
	cmp r3, r2
	bge _080AF038
	adds r2, r3, #0x0
_080AF038:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080AF052
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080AF054
_080AF052:
	movs r2, #0x00
_080AF054:
	cmp r2, #0x00
	bne _080AF05A
	b _080AF168
_080AF05A:
	cmp r1, #0x02
	beq _080AF060
	b _080AF168
_080AF060:
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF078
	cmp r1, #0x04
	bne _080AF094
_080AF078:
	ldr r2, _080AF154 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080AF094:
	ldr r0, [r6, #0x28]
	ldr r3, _080AF158 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AF15C @ =0x040313A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AF0EC
	ldr r2, _080AF158 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AF138
_080AF0EC:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AF0F4
	adds r1, #0xFF
_080AF0F4:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AF10A
	adds r0, #0xFF
_080AF10A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AF120
	adds r3, #0xFF
_080AF120:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AF160 @ =0x00002E10
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AF138:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF14C
	cmp r1, #0x04
	beq _080AF14C
	b _080AF278
_080AF14C:
	ldr r0, _080AF164 @ =0x080B3135
	b _080AF274
_080AF150: .4byte 0x00007FFF
_080AF154: .4byte 0x00002061
_080AF158: .4byte 0x00000111
_080AF15C: .4byte 0x040313A8
_080AF160: .4byte 0x00002E10
_080AF164: .4byte 0x080B3135
_080AF168:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AF178
	b _080AF278
_080AF178:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF19A
	cmp r1, #0x04
	bne _080AF1B6
_080AF19A:
	ldr r2, _080AF1F0 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080AF1B6:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AF1F4 @ =0x040212A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080AF1F8
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AF278
_080AF1F0: .4byte 0x00002061
_080AF1F4: .4byte 0x040212A8
_080AF1F8:
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AF214
	ldr r2, _080AF288 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AF260
_080AF214:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AF21C
	adds r1, #0xFF
_080AF21C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AF232
	adds r0, #0xFF
_080AF232:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AF248
	adds r3, #0xFF
_080AF248:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AF28C @ =0x000006E3
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AF260:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF272
	cmp r1, #0x04
	bne _080AF278
_080AF272:
	ldr r0, _080AF290 @ =0x080B3141
_080AF274:
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AF278:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AF288: .4byte 0x00000111
_080AF28C: .4byte 0x000006E3
_080AF290: .4byte 0x080B3141
	thumb_func_start sub_80AF294
sub_80AF294:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AF3FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	mov r8, r0
	mov r4, r8
	adds r4, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AF2C4
	b _080AF3EE
_080AF2C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080AF2E6
	adds r0, r1, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AF2E6:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0x7D
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF304
	cmp r1, #0x04
	bne _080AF320
_080AF304:
	ldr r2, _080AF400 @ =0x00002032
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
_080AF320:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080AF334
	cmp r2, #0x04
	bne _080AF350
_080AF334:
	ldr r2, _080AF404 @ =0x00002061
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
_080AF350:
	ldr r0, [r5, #0x38]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AF37C
	cmp r2, #0x04
	bne _080AF3DC
_080AF37C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080AF384
	adds r0, #0xFF
_080AF384:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x18
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080AF39E
	adds r0, #0xFF
_080AF39E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080AF3B4
	adds r3, #0xFF
_080AF3B4:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0x90
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080AF3DC:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AF408 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AF40C @ =0x080AF411
	mov r1, r9
	str r0, [r1, #0x4C]
_080AF3EE:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AF3FC: .4byte 0x03000FD8
_080AF400: .4byte 0x00002032
_080AF404: .4byte 0x00002061
_080AF408: .4byte 0x00000FFF
_080AF40C: .4byte sub_80AF410
	thumb_func_start sub_80AF410
sub_80AF410:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080AF524 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r1, r1, #0x03
	mov r0, r10
	subs r0, r0, r1
	str r0, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AF474
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AF474:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AF484
	b _080AF99E
_080AF484:
	mov r1, r12
	cmp r1, #0x00
	bge _080AF48C
	movs r1, #0x00
_080AF48C:
	ldr r0, _080AF528 @ =0x00007FFF
	cmp r1, r0
	ble _080AF494
	adds r1, r0, #0x0
_080AF494:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AF4AA
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AF4AC
_080AF4AA:
	movs r2, #0x00
_080AF4AC:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080AF590
	ldr r2, _080AF524 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AF52C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF4E0
	movs r1, #0x66
_080AF4D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF4D4
_080AF4E0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF4F4
	movs r1, #0x66
_080AF4E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF4E8
_080AF4F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF508
	movs r1, #0x66
_080AF4FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF4FC
_080AF508:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF588
	movs r1, #0x06
_080AF512:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF51C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF51C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF512
	b _080AF588
_080AF524: .4byte 0x03000FD8
_080AF528: .4byte 0x00007FFF
_080AF52C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF542
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF536:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF536
_080AF542:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF558
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF54C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF54C
_080AF558:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF56E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF562:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF562
_080AF56E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF588
	movs r1, #0x10
_080AF578:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF582
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF582:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF578
_080AF588:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AF590:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080AF59A
	movs r1, #0x00
_080AF59A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AF5A4
	adds r1, r0, #0x0
_080AF5A4:
	ldr r0, _080AF698 @ =0x00007FFF
	cmp r2, r0
	ble _080AF5AC
	adds r2, r0, #0x0
_080AF5AC:
	cmp r2, r1
	bge _080AF5B2
	adds r1, r2, #0x0
_080AF5B2:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AF5CA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AF5CC
_080AF5CA:
	movs r1, #0x00
_080AF5CC:
	cmp r1, #0x00
	bne _080AF5D2
	b _080AF718
_080AF5D2:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AF69C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AF5F0
	b _080AF718
_080AF5F0:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080AF6A0 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080AF706
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AF6A4
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AF650
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF644:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF644
_080AF650:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF666
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF65A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF65A
_080AF666:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF67C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF670:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF670
_080AF67C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF702
	movs r1, #0x10
_080AF686:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF690
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF690:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF686
	b _080AF702
_080AF698: .4byte 0x00007FFF
_080AF69C: .4byte 0x0300034C
_080AF6A0: .4byte 0x03000FD8
_080AF6A4:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AF6BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF6B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF6B0
_080AF6BC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF6D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF6C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF6C6
_080AF6D2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF6E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF6DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF6DC
_080AF6E8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF702
	movs r1, #0x10
_080AF6F2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF6FC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF6FC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF6F2
_080AF702:
	bl sub_807F448
_080AF706:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080AF7E8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080AF718:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AF724
	b _080AF99E
_080AF724:
	mov r1, r10
	ldr r0, _080AF7EC @ =0x00007FFF
	cmp r1, r0
	ble _080AF72E
	adds r1, r0, #0x0
_080AF72E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AF746
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AF748
_080AF746:
	movs r2, #0x00
_080AF748:
	cmp r2, #0x00
	bne _080AF74E
	b _080AF85C
_080AF74E:
	ldr r3, _080AF7F0 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AF7E8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AF7F4
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF79E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF792:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF792
_080AF79E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF7B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF7A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF7A8
_080AF7B4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF7CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF7BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF7BE
_080AF7CA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF850
	movs r1, #0x10
_080AF7D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF7DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF7DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF7D4
	b _080AF850
	.byte 0x00, 0x00
_080AF7E8: .4byte 0x00000FFF
_080AF7EC: .4byte 0x00007FFF
_080AF7F0: .4byte 0x03000FD8
_080AF7F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF80A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF7FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF7FE
_080AF80A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF820
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF814:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF814
_080AF820:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF836
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF82A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF82A
_080AF836:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF850
	movs r1, #0x10
_080AF840:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF84A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF84A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF840
_080AF850:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AF99E
_080AF85C:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080AF868
	b _080AF99E
_080AF868:
	ldr r0, _080AF920 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AF876
	b _080AF99E
_080AF876:
	ldr r2, _080AF924 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080AF99E
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AF928 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AF92C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF8D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF8CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF8CC
_080AF8D8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF8EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF8E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF8E2
_080AF8EE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF904
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF8F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF8F8
_080AF904:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF988
	movs r1, #0x10
_080AF90E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF918
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF918:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF90E
	b _080AF988
_080AF920: .4byte 0x0300034C
_080AF924: .4byte 0x03000FD8
_080AF928: .4byte 0x00000FFF
_080AF92C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AF942
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF936:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF936
_080AF942:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AF958
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF94C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF94C
_080AF958:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AF96E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AF962:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AF962
_080AF96E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AF988
	movs r1, #0x10
_080AF978:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AF982
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AF982:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AF978
_080AF988:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AF99E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	bne _080AF9AA
	b _080AFAF8
_080AF9AA:
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r3, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AF9BA
	adds r2, r0, #0x0
_080AF9BA:
	ldr r0, _080AFAE0 @ =0x00007FFF
	cmp r3, r0
	ble _080AF9C2
	adds r3, r0, #0x0
_080AF9C2:
	cmp r3, r2
	bge _080AF9C8
	adds r2, r3, #0x0
_080AF9C8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080AF9E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080AF9E4
_080AF9E2:
	movs r2, #0x00
_080AF9E4:
	cmp r2, #0x00
	bne _080AF9EA
	b _080AFAF8
_080AF9EA:
	cmp r1, #0x02
	beq _080AF9F0
	b _080AFAF8
_080AF9F0:
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFA08
	cmp r1, #0x04
	bne _080AFA24
_080AFA08:
	ldr r2, _080AFAE4 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080AFA24:
	ldr r0, [r6, #0x28]
	ldr r3, _080AFAE8 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AFAEC @ =0x040315A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AFA7C
	ldr r2, _080AFAE8 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AFAC8
_080AFA7C:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AFA84
	adds r1, #0xFF
_080AFA84:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AFA9A
	adds r0, #0xFF
_080AFA9A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AFAB0
	adds r3, #0xFF
_080AFAB0:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AFAF0 @ =0x00002E29
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AFAC8:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFADC
	cmp r1, #0x04
	beq _080AFADC
	b _080AFC08
_080AFADC:
	ldr r0, _080AFAF4 @ =0x080B3135
	b _080AFC04
_080AFAE0: .4byte 0x00007FFF
_080AFAE4: .4byte 0x00002061
_080AFAE8: .4byte 0x00000111
_080AFAEC: .4byte 0x040315A8
_080AFAF0: .4byte 0x00002E29
_080AFAF4: .4byte 0x080B3135
_080AFAF8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AFB08
	b _080AFC08
_080AFB08:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFB2A
	cmp r1, #0x04
	bne _080AFB46
_080AFB2A:
	ldr r2, _080AFB80 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080AFB46:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AFB84 @ =0x040214A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080AFB88
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AFC08
_080AFB80: .4byte 0x00002061
_080AFB84: .4byte 0x040214A8
_080AFB88:
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AFBA4
	ldr r2, _080AFC18 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AFBF0
_080AFBA4:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AFBAC
	adds r1, #0xFF
_080AFBAC:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AFBC2
	adds r0, #0xFF
_080AFBC2:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AFBD8
	adds r3, #0xFF
_080AFBD8:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AFC1C @ =0x000006F7
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AFBF0:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFC02
	cmp r1, #0x04
	bne _080AFC08
_080AFC02:
	ldr r0, _080AFC20 @ =0x080B3141
_080AFC04:
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AFC08:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AFC18: .4byte 0x00000111
_080AFC1C: .4byte 0x000006F7
_080AFC20: .4byte 0x080B3141
	thumb_func_start sub_80AFC24
sub_80AFC24:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080AFD8C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	mov r8, r0
	mov r4, r8
	adds r4, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080AFC54
	b _080AFD7E
_080AFC54:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080AFC76
	adds r0, r1, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AFC76:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0x7D
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AFC94
	cmp r1, #0x04
	bne _080AFCB0
_080AFC94:
	ldr r2, _080AFD90 @ =0x00002032
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
_080AFCB0:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080AFCC4
	cmp r2, #0x04
	bne _080AFCE0
_080AFCC4:
	ldr r2, _080AFD94 @ =0x00002061
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
_080AFCE0:
	ldr r0, [r5, #0x38]
	movs r1, #0xA0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	mov r8, r1
	add r0, r8
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AFD0E
	cmp r2, #0x04
	bne _080AFD6C
_080AFD0E:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080AFD16
	adds r0, #0xFF
_080AFD16:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x18
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080AFD30
	adds r0, #0xFF
_080AFD30:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080AFD46
	adds r3, #0xFF
_080AFD46:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	mov r1, r8
	bl sub_80880C4
_080AFD6C:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AFD98 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AFD9C @ =0x080AFDA1
	mov r1, r9
	str r0, [r1, #0x4C]
_080AFD7E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AFD8C: .4byte 0x03000FD8
_080AFD90: .4byte 0x00002032
_080AFD94: .4byte 0x00002061
_080AFD98: .4byte 0x00000FFF
_080AFD9C: .4byte sub_80AFDA0
	thumb_func_start sub_80AFDA0
sub_80AFDA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080AFEB4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	str r1, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080AFE04
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AFE04:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AFE14
	b _080B032E
_080AFE14:
	mov r1, r12
	cmp r1, #0x00
	bge _080AFE1C
	movs r1, #0x00
_080AFE1C:
	ldr r0, _080AFEB8 @ =0x00007FFF
	cmp r1, r0
	ble _080AFE24
	adds r1, r0, #0x0
_080AFE24:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080AFE3A
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080AFE3C
_080AFE3A:
	movs r2, #0x00
_080AFE3C:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080AFF20
	ldr r2, _080AFEB4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AFEBC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AFE70
	movs r1, #0x66
_080AFE64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFE64
_080AFE70:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AFE84
	movs r1, #0x66
_080AFE78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFE78
_080AFE84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AFE98
	movs r1, #0x66
_080AFE8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFE8C
_080AFE98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AFF18
	movs r1, #0x06
_080AFEA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AFEAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AFEAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AFEA2
	b _080AFF18
_080AFEB4: .4byte 0x03000FD8
_080AFEB8: .4byte 0x00007FFF
_080AFEBC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AFED2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFEC6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFEC6
_080AFED2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AFEE8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFEDC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFEDC
_080AFEE8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AFEFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFEF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFEF2
_080AFEFE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AFF18
	movs r1, #0x10
_080AFF08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AFF12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AFF12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AFF08
_080AFF18:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AFF20:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080AFF2A
	movs r1, #0x00
_080AFF2A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AFF34
	adds r1, r0, #0x0
_080AFF34:
	ldr r0, _080B0028 @ =0x00007FFF
	cmp r2, r0
	ble _080AFF3C
	adds r2, r0, #0x0
_080AFF3C:
	cmp r2, r1
	bge _080AFF42
	adds r1, r2, #0x0
_080AFF42:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AFF5A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AFF5C
_080AFF5A:
	movs r1, #0x00
_080AFF5C:
	cmp r1, #0x00
	bne _080AFF62
	b _080B00A8
_080AFF62:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B002C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AFF80
	b _080B00A8
_080AFF80:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B0030 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B0096
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0034
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AFFE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFFD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFFD4
_080AFFE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AFFF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFFEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFFEA
_080AFFF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B000C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0000:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0000
_080B000C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0092
	movs r1, #0x10
_080B0016:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0020
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0020:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0016
	b _080B0092
_080B0028: .4byte 0x00007FFF
_080B002C: .4byte 0x0300034C
_080B0030: .4byte 0x03000FD8
_080B0034:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B004C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0040:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0040
_080B004C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B0062
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0056:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0056
_080B0062:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0078
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B006C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B006C
_080B0078:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0092
	movs r1, #0x10
_080B0082:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B008C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B008C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0082
_080B0092:
	bl sub_807F448
_080B0096:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B0178 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B00A8:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B00B4
	b _080B032E
_080B00B4:
	mov r1, r10
	ldr r0, _080B017C @ =0x00007FFF
	cmp r1, r0
	ble _080B00BE
	adds r1, r0, #0x0
_080B00BE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B00D6
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B00D8
_080B00D6:
	movs r2, #0x00
_080B00D8:
	cmp r2, #0x00
	bne _080B00DE
	b _080B01EC
_080B00DE:
	ldr r3, _080B0180 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B0178 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0184
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B012E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0122:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0122
_080B012E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B0144
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0138:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0138
_080B0144:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B015A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B014E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B014E
_080B015A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B01E0
	movs r1, #0x10
_080B0164:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B016E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B016E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0164
	b _080B01E0
	.byte 0x00, 0x00
_080B0178: .4byte 0x00000FFF
_080B017C: .4byte 0x00007FFF
_080B0180: .4byte 0x03000FD8
_080B0184:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B019A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B018E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B018E
_080B019A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B01B0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B01A4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B01A4
_080B01B0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B01C6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B01BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B01BA
_080B01C6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B01E0
	movs r1, #0x10
_080B01D0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B01DA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B01DA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B01D0
_080B01E0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B032E
_080B01EC:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080B01F8
	b _080B032E
_080B01F8:
	ldr r0, _080B02B0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B0206
	b _080B032E
_080B0206:
	ldr r2, _080B02B4 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B032E
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B02B8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B02BC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0268
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B025C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B025C
_080B0268:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B027E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0272:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0272
_080B027E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0294
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0288:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0288
_080B0294:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0318
	movs r1, #0x10
_080B029E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B02A8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B02A8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B029E
	b _080B0318
_080B02B0: .4byte 0x0300034C
_080B02B4: .4byte 0x03000FD8
_080B02B8: .4byte 0x00000FFF
_080B02BC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B02D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B02C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B02C6
_080B02D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B02E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B02DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B02DC
_080B02E8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B02FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B02F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B02F2
_080B02FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0318
	movs r1, #0x10
_080B0308:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0312
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0312:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0308
_080B0318:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B032E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	bne _080B033A
	b _080B0488
_080B033A:
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r3, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B034A
	adds r2, r0, #0x0
_080B034A:
	ldr r0, _080B0470 @ =0x00007FFF
	cmp r3, r0
	ble _080B0352
	adds r3, r0, #0x0
_080B0352:
	cmp r3, r2
	bge _080B0358
	adds r2, r3, #0x0
_080B0358:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080B0372
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080B0374
_080B0372:
	movs r2, #0x00
_080B0374:
	cmp r2, #0x00
	bne _080B037A
	b _080B0488
_080B037A:
	cmp r1, #0x02
	beq _080B0380
	b _080B0488
_080B0380:
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0398
	cmp r1, #0x04
	bne _080B03B4
_080B0398:
	ldr r2, _080B0474 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080B03B4:
	ldr r0, [r6, #0x28]
	ldr r3, _080B0478 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B047C @ =0x040317A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080B040C
	ldr r2, _080B0478 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B0458
_080B040C:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B0414
	adds r1, #0xFF
_080B0414:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B042A
	adds r0, #0xFF
_080B042A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B0440
	adds r3, #0xFF
_080B0440:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B0480 @ =0x00002E47
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B0458:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B046C
	cmp r1, #0x04
	beq _080B046C
	b _080B0598
_080B046C:
	ldr r0, _080B0484 @ =0x080B3135
	b _080B0594
_080B0470: .4byte 0x00007FFF
_080B0474: .4byte 0x00002061
_080B0478: .4byte 0x00000111
_080B047C: .4byte 0x040317A8
_080B0480: .4byte 0x00002E47
_080B0484: .4byte 0x080B3135
_080B0488:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B0498
	b _080B0598
_080B0498:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B04BA
	cmp r1, #0x04
	bne _080B04D6
_080B04BA:
	ldr r2, _080B0510 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080B04D6:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B0514 @ =0x040216A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080B0518
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B0598
_080B0510: .4byte 0x00002061
_080B0514: .4byte 0x040216A8
_080B0518:
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080B0534
	ldr r2, _080B05A8 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B0580
_080B0534:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B053C
	adds r1, #0xFF
_080B053C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B0552
	adds r0, #0xFF
_080B0552:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B0568
	adds r3, #0xFF
_080B0568:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B05AC @ =0x0000070B
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B0580:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0592
	cmp r1, #0x04
	bne _080B0598
_080B0592:
	ldr r0, _080B05B0 @ =0x080B3141
_080B0594:
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B0598:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B05A8: .4byte 0x00000111
_080B05AC: .4byte 0x0000070B
_080B05B0: .4byte 0x080B3141
	thumb_func_start sub_80B05B4
sub_80B05B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B0678 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B069C
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B05EE
	cmp r1, #0x04
	bne _080B0644
_080B05EE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080B05F6
	adds r0, #0xFF
_080B05F6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3C
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080B0610
	adds r2, #0xFF
_080B0610:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B0630
	adds r0, #0xFF
_080B0630:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B0644:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0656
	cmp r1, #0x04
	bne _080B0698
_080B0656:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B067C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B0688
	.byte 0x00, 0x00
_080B0678: .4byte 0x03000FD8
_080B067C:
	ldr r2, _080B06A4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B0688:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B0698:
	ldr r0, _080B06A8 @ =0x080B06AD
	str r0, [r7, #0x4C]
_080B069C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B06A4: .4byte 0x0000204D
_080B06A8: .4byte sub_80B06AC
	thumb_func_start sub_80B06AC
sub_80B06AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B0734 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B0738 @ =0x03001038
	ldr r2, _080B073C @ =0x0819832C
	ldr r3, _080B0740 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B06FA
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B06FC
_080B06FA:
	movs r1, #0x00
_080B06FC:
	cmp r1, #0x00
	beq _080B0760
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0712
	cmp r1, #0x04
	bne _080B0760
_080B0712:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B0744
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B0750
	.byte 0x00, 0x00
_080B0734: .4byte 0x03000FD8
_080B0738: .4byte 0x03001038
_080B073C: .4byte 0x0819832C
_080B0740: .4byte 0x08198220
_080B0744:
	ldr r2, _080B07A8 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B0750:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B0760:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B07F2
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B078C
	cmp r1, #0x04
	bne _080B07C8
_080B078C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B07AC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B07B8
_080B07A8: .4byte 0x0000204D
_080B07AC:
	ldr r2, _080B07FC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B07B8:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B07C8:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B07D0
	adds r1, #0xFF
_080B07D0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B07DA
	adds r2, #0xFF
_080B07DA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B07E4
	adds r3, #0xFF
_080B07E4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r0, _080B0800 @ =0x080B0805
	str r0, [r7, #0x4C]
_080B07F2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B07FC: .4byte 0x0000204D
_080B0800: .4byte sub_80B0804
	thumb_func_start sub_80B0804
sub_80B0804:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080B08B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B0826
	b _080B09F0
_080B0826:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0844
	cmp r1, #0x04
	bne _080B0882
_080B0844:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0852
	adds r0, #0xFF
_080B0852:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0860
	adds r0, #0xFF
_080B0860:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B086E
	adds r0, #0xFF
_080B086E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080B0882:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B0896
	cmp r2, #0x04
	bne _080B08F8
_080B0896:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B08BC
	ldr r2, _080B08B8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B08C8
_080B08B4: .4byte 0x03000FD8
_080B08B8: .4byte 0x00002002
_080B08BC:
	ldr r2, _080B0994 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B08C8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B08DE
	movs r2, #0x01
_080B08DE:
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
_080B08F8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B0906
	cmp r2, #0x04
	bne _080B0910
_080B0906:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080B0910:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B0924
	cmp r2, #0x04
	bne _080B0966
_080B0924:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0932
	adds r0, #0xFF
_080B0932:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B0940
	adds r0, #0xFF
_080B0940:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B094E
	adds r0, #0xFF
_080B094E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B0966:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0974
	cmp r1, #0x04
	bne _080B09D8
_080B0974:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B099C
	ldr r2, _080B0998 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B09A8
	.byte 0x00, 0x00
_080B0994: .4byte 0x0000204F
_080B0998: .4byte 0x00002002
_080B099C:
	ldr r2, _080B09F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B09A8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B09BE
	movs r2, #0x01
_080B09BE:
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
_080B09D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B09E6
	cmp r2, #0x04
	bne _080B09F0
_080B09E6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B09F0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B09F8: .4byte 0x0000204F
	thumb_func_start sub_80B09FC
sub_80B09FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B0B54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B0A26
	b _080B0B46
_080B0A26:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0A46
	cmp r1, #0x04
	bne _080B0A9C
_080B0A46:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080B0A4E
	adds r0, #0xFF
_080B0A4E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x20
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080B0A68
	adds r2, #0xFF
_080B0A68:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B0A8A
	adds r0, #0xFF
_080B0A8A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080B0B58 @ =0x00000399
	adds r0, r4, #0x0
	bl sub_8088164
_080B0A9C:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0AAE
	cmp r1, #0x04
	bne _080B0B06
_080B0AAE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B0AB6
	adds r1, #0xFF
_080B0AB6:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B0ACC
	adds r0, #0xFF
_080B0ACC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B0AE2
	adds r3, #0xFF
_080B0AE2:
	asrs r3, r3, #0x08
	adds r3, #0x18
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r0, #0x20
	adds r1, r7, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_8088164
_080B0B06:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0B18
	cmp r1, #0x04
	bne _080B0B34
_080B0B18:
	ldr r2, _080B0B5C @ =0x00002061
	adds r0, r4, #0x0
	movs r1, #0x01
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
_080B0B34:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B0B60 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B0B64 @ =0x080B0B69
	mov r1, r9
	str r0, [r1, #0x4C]
_080B0B46:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B0B54: .4byte 0x03000FD8
_080B0B58: .4byte 0x00000399
_080B0B5C: .4byte 0x00002061
_080B0B60: .4byte 0x00000FFF
_080B0B64: .4byte sub_80B0B68
	thumb_func_start sub_80B0B68
sub_80B0B68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r4, _080B0CAC @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080B0BA8
	b _080B11CC
_080B0BA8:
	ldr r2, _080B0CB0 @ =0x03001038
	ldr r0, _080B0CB4 @ =0x0819832C
	ldr r1, _080B0CB8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	bl _call_via_r2
	mov r10, r0
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	mov r3, r10
	subs r4, r3, r0
	lsls r0, r1, #0x01
	subs r3, r3, r0
	str r3, [sp, #0x008]
	str r3, [sp, #0x00C]
	adds r0, r0, r1
	lsls r0, r0, #0x01
	add r10, r0
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B0BFE
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B0BFE:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B0C0E
	b _080B1150
_080B0C0E:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B0C16
	movs r1, #0x00
_080B0C16:
	ldr r0, _080B0CBC @ =0x00007FFF
	cmp r1, r0
	ble _080B0C1E
	adds r1, r0, #0x0
_080B0C1E:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B0C34
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B0C36
_080B0C34:
	movs r2, #0x00
_080B0C36:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r0, #0xAE
	adds r0, r0, r6
	mov r9, r0
	cmp r2, #0x00
	beq _080B0D24
	ldr r2, _080B0CAC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B0CC0
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0C68
	movs r1, #0x4C
_080B0C5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C5C
_080B0C68:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0C7C
	movs r1, #0x4C
_080B0C70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C70
_080B0C7C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0C90
	movs r1, #0x4C
_080B0C84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C84
_080B0C90:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0D1C
	movs r1, #0x04
_080B0C9A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0CA4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0CA4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0C9A
	b _080B0D1C
_080B0CAC: .4byte 0x03000FD8
_080B0CB0: .4byte 0x03001038
_080B0CB4: .4byte 0x0819832C
_080B0CB8: .4byte 0x08198220
_080B0CBC: .4byte 0x00007FFF
_080B0CC0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0CD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CCA
_080B0CD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0CEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CE0
_080B0CEC:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CF6
_080B0D02:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0D1C
	movs r1, #0x10
_080B0D0C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0D16
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0D16:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0D0C
_080B0D1C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B0D24:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B0D2E
	movs r1, #0x00
_080B0D2E:
	mov r3, r10
	cmp r3, #0x00
	bge _080B0D36
	movs r2, #0x00
_080B0D36:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B0D40
	adds r1, r0, #0x0
_080B0D40:
	ldr r0, _080B0E38 @ =0x00007FFF
	cmp r2, r0
	ble _080B0D48
	adds r2, r0, #0x0
_080B0D48:
	cmp r2, r1
	bge _080B0D4E
	adds r1, r2, #0x0
_080B0D4E:
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, r1
	blt _080B0D64
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B0D66
_080B0D64:
	movs r1, #0x00
_080B0D66:
	cmp r1, #0x00
	bne _080B0D6C
	b _080B0EBC
_080B0D6C:
	ldr r1, _080B0E3C @ =0xFF000001
	movs r4, #0x28
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080B0E40 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B0D8E
	b _080B0EBC
_080B0D8E:
	movs r0, #0x07
	adds r1, r7, #0x0
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B0E44 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B0EAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0E48
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B0DEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0DE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0DE2
_080B0DEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0E04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0DF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0DF8
_080B0E04:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E0E
_080B0E1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0EA6
	movs r1, #0x10
_080B0E24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0E2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0E2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0E24
	b _080B0EA6
	.byte 0x00, 0x00
_080B0E38: .4byte 0x00007FFF
_080B0E3C: .4byte 0xFF000001
_080B0E40: .4byte 0x0300034C
_080B0E44: .4byte 0x03000FD8
_080B0E48:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B0E60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E54
_080B0E60:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0E76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E6A
_080B0E76:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0E8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E80
_080B0E8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0EA6
	movs r1, #0x10
_080B0E96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0EA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0EA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0E96
_080B0EA6:
	bl sub_807F448
_080B0EAA:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B0F8C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B0EBC:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B0EC8
	b _080B1150
_080B0EC8:
	mov r1, r10
	cmp r1, #0x00
	bge _080B0ED0
	movs r1, #0x00
_080B0ED0:
	ldr r0, _080B0F90 @ =0x00007FFF
	cmp r1, r0
	ble _080B0ED8
	adds r1, r0, #0x0
_080B0ED8:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B0EEE
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B0EF0
_080B0EEE:
	movs r2, #0x00
_080B0EF0:
	cmp r2, #0x00
	bne _080B0EF6
	b _080B1000
_080B0EF6:
	ldr r3, _080B0F94 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080B0F8C @ =0x00000FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0F98
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0F44
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F38:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F38
_080B0F44:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0F5A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F4E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F4E
_080B0F5A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0F70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F64
_080B0F70:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0FF4
	movs r1, #0x10
_080B0F7A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0F84
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0F84:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0F7A
	b _080B0FF4
_080B0F8C: .4byte 0x00000FFF
_080B0F90: .4byte 0x00007FFF
_080B0F94: .4byte 0x03000FD8
_080B0F98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0FAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FA2
_080B0FAE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0FC4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FB8
_080B0FC4:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0FDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FCE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FCE
_080B0FDA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0FF4
	movs r1, #0x10
_080B0FE4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0FEE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0FEE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0FE4
_080B0FF4:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B1150
_080B1000:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, r10
	ble _080B100A
	b _080B1150
_080B100A:
	ldr r0, _080B10C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080B10CC @ =0xFF000001
	ands r0, r1
	cmp r0, #0x00
	bne _080B1020
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080B1020
	b _080B1150
_080B1020:
	ldr r2, _080B10D0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	ldr r1, _080B10D4 @ =0x00FFFFFE
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B104E
	b _080B1150
_080B104E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B10D8 @ =0x00000FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B10DC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B1080
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B1074:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B1074
_080B1080:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B1096
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B108A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B108A
_080B1096:
	mov r2, r8
	cmp r2, #0x00
	beq _080B10AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10A0
_080B10AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B1138
	movs r1, #0x10
_080B10B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B10C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B10C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B10B6
	b _080B1138
_080B10C8: .4byte 0x0300034C
_080B10CC: .4byte 0xFF000001
_080B10D0: .4byte 0x03000FD8
_080B10D4: .4byte 0x00FFFFFE
_080B10D8: .4byte 0x00000FFF
_080B10DC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B10F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10E6
_080B10F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B1108
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10FC
_080B1108:
	mov r2, r8
	cmp r2, #0x00
	beq _080B111E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B1112:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B1112
_080B111E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B1138
	movs r1, #0x10
_080B1128:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B1132
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B1132:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B1128
_080B1138:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080B1150:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B11CC
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080B1164
	movs r1, #0x00
_080B1164:
	mov r4, r10
	cmp r4, #0x00
	bge _080B116C
	movs r2, #0x00
_080B116C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1176
	adds r1, r0, #0x0
_080B1176:
	ldr r0, _080B11C0 @ =0x00007FFF
	cmp r2, r0
	ble _080B117E
	adds r2, r0, #0x0
_080B117E:
	cmp r2, r1
	bge _080B1184
	adds r1, r2, #0x0
_080B1184:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r1
	blt _080B119E
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B11A0
_080B119E:
	movs r1, #0x00
_080B11A0:
	cmp r1, #0x00
	beq _080B11CC
	cmp r3, #0x01
	ble _080B11CC
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B11C4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080B11C8 @ =0x080B30D9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B14F4
_080B11C0: .4byte 0x00007FFF
_080B11C4: .4byte 0x00000FFF
_080B11C8: .4byte sub_80B30D8
_080B11CC:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B11D4
	movs r2, #0x00
_080B11D4:
	ldr r0, _080B13AC @ =0x00007FFF
	cmp r2, r0
	ble _080B11DC
	adds r2, r0, #0x0
_080B11DC:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B11F8
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r1, #0x01
	cmp r0, r2
	bge _080B11FA
_080B11F8:
	movs r1, #0x00
_080B11FA:
	cmp r1, #0x00
	beq _080B1252
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1210
	cmp r1, #0x04
	bne _080B1228
_080B1210:
	ldr r2, _080B13B0 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1228:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B123A
	cmp r1, #0x04
	bne _080B1252
_080B123A:
	ldr r2, _080B13B4 @ =0x00002032
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1252:
	mov r1, r10
	cmp r1, #0x00
	bge _080B125A
	movs r1, #0x00
_080B125A:
	ldr r0, _080B13AC @ =0x00007FFF
	cmp r1, r0
	ble _080B1262
	adds r1, r0, #0x0
_080B1262:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B1278
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B127A
_080B1278:
	movs r2, #0x00
_080B127A:
	cmp r2, #0x00
	beq _080B12E4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1290
	cmp r1, #0x04
	bne _080B12AC
_080B1290:
	ldr r2, _080B13B0 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x01
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
_080B12AC:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B12BE
	cmp r1, #0x04
	bne _080B12E4
_080B12BE:
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B12E4:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B12F4
	b _080B14F4
_080B12F4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	mov r5, r8
	ldr r0, [r5, #0x28]
	ldr r1, _080B13B8 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080B1324
	mov r0, r8
	bl sub_8086700
_080B1324:
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B1340
	cmp r2, #0x04
	bne _080B137E
_080B1340:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B134E
	adds r0, #0xFF
_080B134E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B135C
	adds r0, #0xFF
_080B135C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B136A
	adds r0, #0xFF
_080B136A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B137E:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B138C
	cmp r1, #0x04
	bne _080B13FC
_080B138C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B13C0
	ldr r2, _080B13BC @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B13CC
	.byte 0x00, 0x00
_080B13AC: .4byte 0x00007FFF
_080B13B0: .4byte 0x00002061
_080B13B4: .4byte 0x00002032
_080B13B8: .4byte 0x00000111
_080B13BC: .4byte 0x00002002
_080B13C0:
	ldr r2, _080B1498 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B13CC:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080B13E2
	movs r2, #0x01
_080B13E2:
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
_080B13FC:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B140A
	cmp r2, #0x04
	bne _080B1414
_080B140A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B1414:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B1428
	cmp r2, #0x04
	bne _080B146A
_080B1428:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1436
	adds r0, #0xFF
_080B1436:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1444
	adds r0, #0xFF
_080B1444:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1452
	adds r0, #0xFF
_080B1452:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080B146A:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1478
	cmp r1, #0x04
	bne _080B14DC
_080B1478:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B14A0
	ldr r2, _080B149C @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B14AC
	.byte 0x00, 0x00
_080B1498: .4byte 0x0000204F
_080B149C: .4byte 0x00002002
_080B14A0:
	ldr r2, _080B1504 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B14AC:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080B14C2
	movs r2, #0x01
_080B14C2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B14DC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B14EA
	cmp r2, #0x04
	bne _080B14F4
_080B14EA:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080B14F4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B1504: .4byte 0x0000204F
	thumb_func_start sub_80B1508
sub_80B1508:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B15F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blt _080B15E6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1554
	cmp r1, #0x04
	bne _080B156C
_080B1554:
	ldr r2, _080B15F4 @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B156C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B157E
	cmp r1, #0x04
	bne _080B1596
_080B157E:
	ldr r2, _080B15F8 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1596:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r6, #0x0
	adds r0, #0xC3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r0, r6, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r4, #0x26]
	ldr r0, _080B15FC @ =0xFFFFF000
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r4, #0x26]
	ldr r0, _080B1600 @ =0x080B1605
	mov r1, r8
	str r0, [r1, #0x4C]
_080B15E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B15F0: .4byte 0x03000FD8
_080B15F4: .4byte 0x00002032
_080B15F8: .4byte 0x00002061
_080B15FC: .4byte 0xFFFFF000
_080B1600: .4byte sub_80B1604
	thumb_func_start sub_80B1604
sub_80B1604:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080B17B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r10, r0
	ldr r1, [r4, #0x10]
	mov r8, r1
	movs r6, #0xE6
	mov r1, r8
	muls r1, r6
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	movs r2, #0x1A
	muls r0, r2
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B1644
	adds r1, #0xFF
_080B1644:
	asrs r5, r1, #0x08
	ldr r7, [r4, #0x14]
	adds r1, r7, #0x0
	muls r1, r6
	adds r0, r3, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	muls r0, r2
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B165C
	adds r1, #0xFF
_080B165C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x38]
	subs r2, r5, r2
	movs r5, #0xB6
	adds r5, r5, r3
	mov r12, r5
	movs r6, #0x00
	ldsh r0, [r5, r6]
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	add r2, r8
	str r2, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	subs r1, r1, r0
	adds r3, #0xB8
	movs r5, #0x00
	ldsh r0, [r3, r5]
	adds r1, r1, r0
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r7, r1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r0, r0, r6
	str r0, [r4, #0x18]
	mov r0, r9
	str r2, [r0, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, r9
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	mov r5, r12
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	ldr r2, _080B17BC @ =0x03001038
	movs r6, #0x00
	ldsh r0, [r5, r6]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	adds r6, r1, #0x0
	muls r6, r1
	adds r1, r6, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	cmp r5, #0x0F
	bgt _080B1714
	ldrh r1, [r4, #0x26]
	ldr r0, _080B17C0 @ =0x00000FFF
	ands r0, r1
	cmp r0, #0x00
	beq _080B1714
	ldr r0, _080B17C4 @ =0xFFFFF000
	ands r0, r1
	strh r0, [r4, #0x26]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B16F4
	adds r1, #0xFF
_080B16F4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B16FE
	adds r2, #0xFF
_080B16FE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B1708
	adds r3, #0xFF
_080B1708:
	asrs r3, r3, #0x08
	subs r3, #0x0E
	str r4, [sp, #0x000]
	ldr r0, _080B17C8 @ =0x00002FBA
	bl sub_80DF024
_080B1714:
	cmp r5, #0x08
	bgt _080B17A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1734
	cmp r1, #0x04
	bne _080B174C
_080B1734:
	ldr r2, _080B17CC @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B174C:
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B175E
	cmp r1, #0x04
	bne _080B1778
_080B175E:
	ldr r2, _080B17D0 @ =0x00002061
	mov r0, r9
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r9
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1778:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x8C
	mov r0, r10
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	mov r3, r10
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _080B17D4 @ =0x080B17D9
	ldr r5, [sp, #0x004]
	str r0, [r5, #0x4C]
_080B17A8:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B17B8: .4byte 0x03000FD8
_080B17BC: .4byte 0x03001038
_080B17C0: .4byte 0x00000FFF
_080B17C4: .4byte 0xFFFFF000
_080B17C8: .4byte 0x00002FBA
_080B17CC: .4byte 0x00002032
_080B17D0: .4byte 0x00002061
_080B17D4: .4byte sub_80B17D8
	thumb_func_start sub_80B17D8
sub_80B17D8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080B18BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r6, r1, #0x0
	adds r6, #0xB0
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _080B1812
	ldr r0, _080B18C0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080B1812
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	movs r0, #0x00
	str r0, [r6, #0x00]
_080B1812:
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r1, r0, #0x05
	subs r1, r1, r0
	ldr r3, _080B18C4 @ =0xFFFFB334
	adds r0, r1, r3
	adds r6, r2, #0x0
	cmp r0, #0x00
	bge _080B1830
	ldr r2, _080B18C8 @ =0xFFFFB433
	adds r0, r1, r2
_080B1830:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r5, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _080B18B6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B185E
	cmp r1, #0x04
	bne _080B188C
_080B185E:
	ldr r2, _080B18CC @ =0x03001038
	ldr r0, _080B18D0 @ =0x0819832C
	ldr r1, _080B18D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0B
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080B188C:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r6, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B18D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B18DC @ =0x080B18E1
	str r0, [r7, #0x4C]
_080B18B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B18BC: .4byte 0x03000FD8
_080B18C0: .4byte 0x0300034C
_080B18C4: .4byte 0xFFFFB334
_080B18C8: .4byte 0xFFFFB433
_080B18CC: .4byte 0x03001038
_080B18D0: .4byte 0x0819832C
_080B18D4: .4byte 0x08198220
_080B18D8: .4byte 0x00000FFF
_080B18DC: .4byte sub_80B18E0
	thumb_func_start sub_80B18E0
sub_80B18E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080B1920 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r4, #0xBA
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r7, #0x08]
	movs r3, #0x06
	ldsh r0, [r0, r3]
	cmp r0, #0x9F
	bgt _080B1924
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	b _080B1930
_080B1920: .4byte 0x03000FD8
_080B1924:
	movs r0, #0xF3
	muls r0, r1
	cmp r0, #0x00
	bge _080B192E
	adds r0, #0xFF
_080B192E:
	asrs r0, r0, #0x08
_080B1930:
	adds r1, r6, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r4, #0x00
	ldsh r1, [r1, r4]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	str r0, [r5, #0x18]
	ldr r3, _080B1A2C @ =0x03001038
	ldr r1, _080B1A30 @ =0x0819832C
	ldr r2, _080B1A34 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	ldr r1, [r7, #0x18]
	subs r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x00
	bne _080B1976
	b _080B1DE0
_080B1976:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r1, r3
	bge _080B1996
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B1996:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B19A2
	b _080B1D72
_080B19A2:
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B19BE
	mov r1, r9
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B19C0
_080B19BE:
	movs r1, #0x00
_080B19C0:
	cmp r1, #0x00
	beq _080B1AA0
	ldr r2, _080B1A38 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B1A3C
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B19E6
	movs r3, #0x99
_080B19DA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B19DA
_080B19E6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B19FA
	movs r3, #0x99
_080B19EE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B19EE
_080B19FA:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080B1A0E
	movs r3, #0x99
_080B1A02:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A02
_080B1A0E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1A98
	movs r2, #0x09
_080B1A18:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1A22
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1A22:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1A18
	b _080B1A98
	.byte 0x00, 0x00
_080B1A2C: .4byte 0x03001038
_080B1A30: .4byte 0x0819832C
_080B1A34: .4byte 0x08198220
_080B1A38: .4byte 0x03000FD8
_080B1A3C:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1A52
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A46:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A46
_080B1A52:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1A68
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A5C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A5C
_080B1A68:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080B1A7E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1A72:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1A72
_080B1A7E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1A98
	movs r2, #0x10
_080B1A88:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1A92
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1A92:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1A88
_080B1A98:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B1AA0:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1AB0
	adds r1, r0, #0x0
_080B1AB0:
	ldr r0, _080B1BD0 @ =0x00007FFF
	cmp r2, r0
	ble _080B1AB8
	adds r2, r0, #0x0
_080B1AB8:
	cmp r2, r1
	bge _080B1ABE
	adds r1, r2, #0x0
_080B1ABE:
	mov r0, r9
	movs r3, #0x00
	ldsh r0, [r0, r3]
	mov r12, r0
	cmp r12, r1
	blt _080B1AD4
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B1AD6
_080B1AD4:
	movs r1, #0x00
_080B1AD6:
	cmp r1, #0x00
	beq _080B1B0A
	movs r3, #0x10
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080B1BD4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080B1B0A
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B1BD8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B1B0A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B1B16
	b _080B1D72
_080B1B16:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080B1BD0 @ =0x00007FFF
	cmp r1, r0
	ble _080B1B22
	adds r1, r0, #0x0
_080B1B22:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B1B36
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B1B38
_080B1B36:
	movs r2, #0x00
_080B1B38:
	cmp r2, #0x00
	bne _080B1B3E
	b _080B1C48
_080B1B3E:
	ldr r4, _080B1BDC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r2, #0x30
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B1BD8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r2, r4, #0x0
	cmp r0, #0x00
	beq _080B1BE0
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1B88
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1B7C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1B7C
_080B1B88:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1B9E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1B92:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1B92
_080B1B9E:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1BB4
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1BA8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1BA8
_080B1BB4:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1C3C
	movs r2, #0x10
_080B1BBE:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1BC8
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1BC8:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1BBE
	b _080B1C3C
_080B1BD0: .4byte 0x00007FFF
_080B1BD4: .4byte 0x0300034C
_080B1BD8: .4byte 0x00000FFF
_080B1BDC: .4byte 0x03000FD8
_080B1BE0:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1BF6
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1BEA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1BEA
_080B1BF6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1C0C
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1C00:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1C00
_080B1C0C:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1C22
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1C16:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1C16
_080B1C22:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1C3C
	movs r2, #0x10
_080B1C2C:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1C36
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1C36:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1C2C
_080B1C3C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B1D72
_080B1C48:
	mov r4, r9
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	ble _080B1C58
	b _080B1D72
_080B1C58:
	ldr r0, _080B1D00 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B1C66
	b _080B1D72
_080B1C66:
	ldr r1, _080B1D04 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r2, [r4, #0x0A]
	movs r3, #0x30
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #0x0A]
	ldr r3, [r1, #0x00]
	movs r0, #0x00
	adds r2, r1, #0x0
	cmp r0, #0x00
	bne _080B1D72
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B1D08 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B1D0C
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1CB6
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CAA:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CAA
_080B1CB6:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1CCC
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CC0:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CC0
_080B1CCC:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1CE2
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1CD6:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1CD6
_080B1CE2:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1D68
	movs r2, #0x10
_080B1CEC:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1CF6
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1CF6:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1CEC
	b _080B1D68
	.byte 0x00, 0x00
_080B1D00: .4byte 0x0300034C
_080B1D04: .4byte 0x03000FD8
_080B1D08: .4byte 0x00000FFF
_080B1D0C:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B1D22
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D16:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D16
_080B1D22:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B1D38
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D2C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D2C
_080B1D38:
	adds r1, r7, #0x0
	cmp r1, #0x00
	beq _080B1D4E
	movs r3, #0x80
	lsls r3, r3, #0x01
_080B1D42:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B1D42
_080B1D4E:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B1D68
	movs r2, #0x10
_080B1D58:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B1D62
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B1D62:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B1D58
_080B1D68:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
_080B1D72:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B1DE0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1D8C
	adds r1, r0, #0x0
_080B1D8C:
	ldr r0, _080B1DD4 @ =0x00007FFF
	cmp r2, r0
	ble _080B1D94
	adds r2, r0, #0x0
_080B1D94:
	cmp r2, r1
	bge _080B1D9A
	adds r1, r2, #0x0
_080B1D9A:
	mov r4, r9
	movs r7, #0x00
	ldsh r0, [r4, r7]
	cmp r0, r1
	blt _080B1DB2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B1DB4
_080B1DB2:
	movs r1, #0x00
_080B1DB4:
	cmp r1, #0x00
	beq _080B1DE0
	cmp r3, #0x01
	ble _080B1DE0
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B1DD8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080B1DDC @ =0x080B24D1
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080B1E20
_080B1DD4: .4byte 0x00007FFF
_080B1DD8: .4byte 0x00000FFF
_080B1DDC: .4byte sub_80B24D0
_080B1DE0:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x02
	bne _080B1E0C
	ldr r0, _080B1E30 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080B1E0C
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r2, #0x00]
_080B1E0C:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B1E20
	ldr r0, _080B1E34 @ =0x080B1E39
	mov r7, r10
	str r0, [r7, #0x4C]
_080B1E20:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B1E30: .4byte 0x0300034C
_080B1E34: .4byte sub_80B1E38
	thumb_func_start sub_80B1E38
sub_80B1E38:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B1F48 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r6, [r1, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r4, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B1E64
	b _080B2048
_080B1E64:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080B1F4C @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B1F50 @ =0x040308A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B1EC8
	ldr r2, _080B1F4C @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B1F14
_080B1EC8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B1ED0
	adds r1, #0xFF
_080B1ED0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B1EE6
	adds r0, #0xFF
_080B1EE6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B1EFC
	adds r3, #0xFF
_080B1EFC:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B1F54 @ =0x0000070B
	str r4, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80DF024
_080B1F14:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1F26
	cmp r1, #0x04
	bne _080B1F74
_080B1F26:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B1F58
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B1F64
	.byte 0x00, 0x00
_080B1F48: .4byte 0x03000FD8
_080B1F4C: .4byte 0x00000111
_080B1F50: .4byte 0x040308A8
_080B1F54: .4byte 0x0000070B
_080B1F58:
	ldr r2, _080B1FA8 @ =0x0000204D
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B1F64:
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B1F74:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B1F88
	cmp r2, #0x04
	bne _080B1FC8
_080B1F88:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B1FAC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B1FB8
_080B1FA8: .4byte 0x0000204D
_080B1FAC:
	ldr r2, _080B2054 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B1FB8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B1FC8:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B1FE0
	cmp r2, #0x04
	bne _080B203A
_080B1FE0:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B1FE8
	adds r0, #0xFF
_080B1FE8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B2002
	adds r2, #0xFF
_080B2002:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B2026
	adds r0, #0xFF
_080B2026:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B203A:
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r1, [r7, #0x10]
	str r1, [r0, #0x00]
	ldr r0, _080B2058 @ =0x080B205D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B2048:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B2054: .4byte 0x0000204D
_080B2058: .4byte sub_80B205C
	thumb_func_start sub_80B205C
sub_80B205C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B2128 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B20A2
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B20A2
	strh r1, [r2, #0x06]
_080B20A2:
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B212C @ =0x03001038
	ldr r2, _080B2130 @ =0x0819832C
	ldr r3, _080B2134 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B20F0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B20F2
_080B20F0:
	movs r1, #0x00
_080B20F2:
	cmp r1, #0x00
	beq _080B21A8
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2108
	cmp r1, #0x04
	bne _080B2154
_080B2108:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2138
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2144
_080B2128: .4byte 0x03000FD8
_080B212C: .4byte 0x03001038
_080B2130: .4byte 0x0819832C
_080B2134: .4byte 0x08198220
_080B2138:
	ldr r2, _080B2188 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2144:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2154:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2166
	cmp r1, #0x04
	bne _080B21A8
_080B2166:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B218C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2198
	.byte 0x00, 0x00
_080B2188: .4byte 0x0000204D
_080B218C:
	ldr r2, _080B2248 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2198:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B21A8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B21B8
	b _080B22C2
_080B21B8:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r7, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B21D4
	adds r1, #0xFF
_080B21D4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B21DE
	adds r2, #0xFF
_080B21DE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B21E8
	adds r3, #0xFF
_080B21E8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B21FA
	adds r1, #0xFF
_080B21FA:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B2204
	adds r2, #0xFF
_080B2204:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B220E
	adds r3, #0xFF
_080B220E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B222A
	cmp r1, #0x04
	bne _080B2268
_080B222A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B224C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2258
	.byte 0x00, 0x00
_080B2248: .4byte 0x0000204D
_080B224C:
	ldr r2, _080B229C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2258:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2268:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B227A
	cmp r1, #0x04
	bne _080B22BC
_080B227A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B22A0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B22AC
	.byte 0x00, 0x00
_080B229C: .4byte 0x0000204D
_080B22A0:
	ldr r2, _080B22D0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B22AC:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B22BC:
	ldr r0, _080B22D4 @ =0x080B22D9
	mov r3, r8
	str r0, [r3, #0x4C]
_080B22C2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B22D0: .4byte 0x0000204D
_080B22D4: .4byte sub_80B22D8
	thumb_func_start sub_80B22D8
sub_80B22D8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080B2388 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B22FA
	b _080B24C4
_080B22FA:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2318
	cmp r1, #0x04
	bne _080B2356
_080B2318:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2326
	adds r0, #0xFF
_080B2326:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2334
	adds r0, #0xFF
_080B2334:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2342
	adds r0, #0xFF
_080B2342:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080B2356:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B236A
	cmp r2, #0x04
	bne _080B23CC
_080B236A:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2390
	ldr r2, _080B238C @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B239C
_080B2388: .4byte 0x03000FD8
_080B238C: .4byte 0x00002002
_080B2390:
	ldr r2, _080B2468 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B239C:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B23B2
	movs r2, #0x01
_080B23B2:
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
_080B23CC:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B23DA
	cmp r2, #0x04
	bne _080B23E4
_080B23DA:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080B23E4:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B23F8
	cmp r2, #0x04
	bne _080B243A
_080B23F8:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2406
	adds r0, #0xFF
_080B2406:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2414
	adds r0, #0xFF
_080B2414:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2422
	adds r0, #0xFF
_080B2422:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B243A:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2448
	cmp r1, #0x04
	bne _080B24AC
_080B2448:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2470
	ldr r2, _080B246C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B247C
	.byte 0x00, 0x00
_080B2468: .4byte 0x0000204F
_080B246C: .4byte 0x00002002
_080B2470:
	ldr r2, _080B24CC @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B247C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B2492
	movs r2, #0x01
_080B2492:
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
_080B24AC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B24BA
	cmp r2, #0x04
	bne _080B24C4
_080B24BA:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B24C4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B24CC: .4byte 0x0000204F
	thumb_func_start sub_80B24D0
sub_80B24D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B2558 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r3, r4, #0x0
	adds r3, #0x08
	ldr r0, _080B255C @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080B2500
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r2, #0x00]
_080B2500:
	ldr r0, [r3, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B2552
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B251E
	cmp r1, #0x04
	bne _080B254E
_080B251E:
	ldr r2, _080B2560 @ =0x03001038
	ldr r0, _080B2564 @ =0x0819832C
	ldr r1, _080B2568 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x50
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B254E:
	ldr r0, _080B256C @ =0x080B2571
	str r0, [r5, #0x4C]
_080B2552:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B2558: .4byte 0x03000FD8
_080B255C: .4byte 0x0300034C
_080B2560: .4byte 0x03001038
_080B2564: .4byte 0x0819832C
_080B2568: .4byte 0x08198220
_080B256C: .4byte sub_80B2570
	thumb_func_start sub_80B2570
sub_80B2570:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x008]
	ldr r0, _080B26AC @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r4
	mov r8, r1
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r2, [sp, #0x008]
	ldr r6, [r2, #0x2C]
	mov r0, r8
	bl sub_80884AC
	ldr r0, [r6, #0x28]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, #0x2A
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1B
	ldr r3, [sp, #0x00C]
	adds r3, #0x28
	mov r9, r3
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r1, r1, r0
	str r1, [sp, #0x010]
	cmp r1, #0x00
	bne _080B25C2
	b _080B2898
_080B25C2:
	ldr r0, _080B26B0 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r1, [r7, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080B25D4
	b _080B2898
_080B25D4:
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r7, #0x00]
	ldr r1, _080B26B4 @ =0x082000DC
	add r0, sp, #0x004
	movs r2, #0x03
	bl memcpy
	ldr r0, [r6, #0x28]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	ands r3, r0
	cmp r3, #0x00
	beq _080B2604
	b _080B2898
_080B2604:
	ldr r2, _080B26B8 @ =0x03001038
	ldr r0, _080B26BC @ =0x0819832C
	ldr r1, _080B26C0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, _080B26C4 @ =0x000002BF
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	add r0, sp
	adds r0, #0x04
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x010]
	adds r1, #0x04
	str r3, [sp, #0x018]
	bl _call_via_r2
	ldr r1, [r4, #0x00]
	ldr r3, [sp, #0x018]
	cmp r0, r1
	blt _080B2638
	b _080B2898
_080B2638:
	str r3, [r7, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B26C8
	mov r1, r8
	mov r3, r10
	mov r4, r9
	cmp r1, #0x00
	beq _080B2662
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2656:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2656
_080B2662:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B2678
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B266C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B266C
_080B2678:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B268E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2682:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2682
_080B268E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B2728
	movs r2, #0x10
_080B2698:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B26A2
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B26A2:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B2698
	b _080B2728
	.byte 0x00, 0x00
_080B26AC: .4byte 0x03000FD8
_080B26B0: .4byte 0x0300034C
_080B26B4: .4byte 0x082000DC
_080B26B8: .4byte 0x03001038
_080B26BC: .4byte 0x0819832C
_080B26C0: .4byte 0x08198220
_080B26C4: .4byte 0x000002BF
_080B26C8:
	mov r1, r8
	mov r3, r10
	mov r4, r9
	cmp r1, #0x00
	beq _080B26E2
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B26D6:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B26D6
_080B26E2:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B26F8
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B26EC:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B26EC
_080B26F8:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B270E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2702:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2702
_080B270E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B2728
	movs r2, #0x10
_080B2718:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B2722
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B2722:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B2718
_080B2728:
	adds r0, r5, #0x0
	bl sub_807EA24
	bl sub_807F448
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x02
	mov r1, r8
	movs r2, #0x28
	bl sub_807EAE4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x1B
	lsrs r4, r4, #0x1B
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, [sp, #0x010]
	bl sub_81DD77C
	cmp r4, r0
	bhi _080B275C
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x2A]
	b _080B2760
_080B275C:
	ldr r1, [sp, #0x00C]
	ldrh r0, [r1, #0x28]
_080B2760:
	lsrs r4, r0, #0x05
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_80F6F74
	ldr r0, [r6, #0x28]
	movs r3, #0x91
	lsls r3, r3, #0x01
	adds r2, r0, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _080B27A8 @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r7, #0x00
	lsrs r0, r4, #0x07
	cmp r0, #0x04
	bne _080B27B8
	ldr r1, _080B27AC @ =0x083BBDD0
	movs r0, #0x7F
	ands r4, r0
	lsls r2, r4, #0x04
	adds r0, r2, r1
	ldrb r0, [r0, #0x02]
	ldr r3, _080B27B0 @ =0x00004188
	adds r7, r0, r3
	adds r1, #0x0C
	adds r2, r2, r1
	ldr r0, _080B27B4 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	b _080B27D8
_080B27A8: .4byte 0xFFFFFE7F
_080B27AC: .4byte 0x083BBDD0
_080B27B0: .4byte 0x00004188
_080B27B4: .4byte 0x0300034C
_080B27B8:
	cmp r0, #0x01
	bne _080B27FC
	ldr r7, _080B27F0 @ =0x00004193
	ldr r2, _080B27F4 @ =0x083BD844
	movs r0, #0x7F
	ands r0, r4
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, _080B27F8 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
_080B27D8:
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810D038
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	b _080B2832
_080B27F0: .4byte 0x00004193
_080B27F4: .4byte 0x083BD844
_080B27F8: .4byte 0x0300034C
_080B27FC:
	cmp r0, #0x02
	bne _080B2832
	ldr r7, _080B293C @ =0x00004194
	ldr r2, _080B2940 @ =0x083BE67C
	movs r0, #0x7F
	ands r0, r4
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r0, _080B2944 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810D038
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
_080B2832:
	cmp r7, #0x00
	beq _080B2898
	adds r1, r7, #0x0
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xC3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	adds r0, r6, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2894
	cmp r1, #0x04
	bne _080B2898
_080B2894:
	ldr r0, _080B2948 @ =0x080B302D
	str r0, [r3, #0x4C]
_080B2898:
	mov r0, r8
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B28A8
	b _080B2BA0
_080B28A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r2, _080B294C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B2950
	mov r1, r8
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	adds r4, #0xCC
	movs r0, #0xCA
	adds r0, r0, r5
	mov r9, r0
	movs r2, #0x76
	add r2, r8
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x76
	mov r0, r8
	adds r0, #0x84
	str r0, [sp, #0x014]
	mov r2, r8
	cmp r2, #0x00
	beq _080B28F4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B28E8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B28E8
_080B28F4:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B290A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B28FE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B28FE
_080B290A:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B2920
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2914:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2914
_080B2920:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B29CA
	movs r2, #0x10
_080B292A:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B2934
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B2934:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B292A
	b _080B29CA
_080B293C: .4byte 0x00004194
_080B2940: .4byte 0x083BE67C
_080B2944: .4byte 0x0300034C
_080B2948: .4byte sub_80B302C
_080B294C: .4byte 0x03000FD8
_080B2950:
	mov r1, r8
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	adds r4, #0xCC
	movs r0, #0xCA
	adds r0, r0, r5
	mov r9, r0
	movs r2, #0x76
	add r2, r8
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x76
	mov r0, r8
	adds r0, #0x84
	str r0, [sp, #0x014]
	mov r2, r8
	cmp r2, #0x00
	beq _080B2984
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B2978:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B2978
_080B2984:
	adds r1, r5, #0x0
	cmp r5, #0x00
	beq _080B299A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B298E:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B298E
_080B299A:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080B29B0
	movs r2, #0x80
	lsls r2, r2, #0x01
_080B29A4:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080B29A4
_080B29B0:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080B29CA
	movs r2, #0x10
_080B29BA:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080B29C4
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080B29C4:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080B29BA
_080B29CA:
	adds r0, r5, #0x0
	bl sub_807EA24
	bl sub_807F448
	ldr r0, [r6, #0x28]
	ldr r3, _080B2AA8 @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _080B2AAC @ =0x040308A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B2A28
	ldr r3, _080B2AA8 @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B2A74
_080B2A28:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B2A30
	adds r1, #0xFF
_080B2A30:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B2A46
	adds r0, #0xFF
_080B2A46:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B2A5C
	adds r3, #0xFF
_080B2A5C:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B2AB0 @ =0x00002E47
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B2A74:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2A84
	cmp r1, #0x04
	bne _080B2AD2
_080B2A84:
	mov r2, r8
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2AB4
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2AC0
	.byte 0x00, 0x00
_080B2AA8: .4byte 0x00000111
_080B2AAC: .4byte 0x040308A8
_080B2AB0: .4byte 0x00002E47
_080B2AB4:
	ldr r2, _080B2B00 @ =0x0000204D
	mov r0, r8
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B2AC0:
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2AD2:
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2AE0
	cmp r1, #0x04
	bne _080B2B20
_080B2AE0:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2B04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2B10
_080B2B00: .4byte 0x0000204D
_080B2B04:
	ldr r2, _080B2BB0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B2B10:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2B20:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2B38
	cmp r1, #0x04
	bne _080B2B92
_080B2B38:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B2B40
	adds r0, #0xFF
_080B2B40:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B2B5A
	adds r2, #0xFF
_080B2B5A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B2B7E
	adds r0, #0xFF
_080B2B7E:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B2B92:
	mov r3, r8
	ldr r0, [r3, #0x10]
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r0, _080B2BB4 @ =0x080B2BB9
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x4C]
_080B2BA0:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B2BB0: .4byte 0x0000204D
_080B2BB4: .4byte sub_80B2BB8
	thumb_func_start sub_80B2BB8
sub_80B2BB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B2C84 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B2BFE
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r7, #0x08]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B2BFE
	strh r1, [r2, #0x06]
_080B2BFE:
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B2C88 @ =0x03001038
	ldr r2, _080B2C8C @ =0x0819832C
	ldr r3, _080B2C90 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B2C4C
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B2C4E
_080B2C4C:
	movs r1, #0x00
_080B2C4E:
	cmp r1, #0x00
	beq _080B2D04
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2C64
	cmp r1, #0x04
	bne _080B2CB0
_080B2C64:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2C94
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2CA0
_080B2C84: .4byte 0x03000FD8
_080B2C88: .4byte 0x03001038
_080B2C8C: .4byte 0x0819832C
_080B2C90: .4byte 0x08198220
_080B2C94:
	ldr r2, _080B2CE4 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2CA0:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2CB0:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2CC2
	cmp r1, #0x04
	bne _080B2D04
_080B2CC2:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2CE8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2CF4
	.byte 0x00, 0x00
_080B2CE4: .4byte 0x0000204D
_080B2CE8:
	ldr r2, _080B2DA4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B2CF4:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2D04:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B2D14
	b _080B2E1E
_080B2D14:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r7, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B2D30
	adds r1, #0xFF
_080B2D30:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B2D3A
	adds r2, #0xFF
_080B2D3A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B2D44
	adds r3, #0xFF
_080B2D44:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B2D56
	adds r1, #0xFF
_080B2D56:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B2D60
	adds r2, #0xFF
_080B2D60:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B2D6A
	adds r3, #0xFF
_080B2D6A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2D86
	cmp r1, #0x04
	bne _080B2DC4
_080B2D86:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080B2DA8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2DB4
	.byte 0x00, 0x00
_080B2DA4: .4byte 0x0000204D
_080B2DA8:
	ldr r2, _080B2DF8 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2DB4:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2DC4:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2DD6
	cmp r1, #0x04
	bne _080B2E18
_080B2DD6:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2DFC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2E08
	.byte 0x00, 0x00
_080B2DF8: .4byte 0x0000204D
_080B2DFC:
	ldr r2, _080B2E2C @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080B2E08:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B2E18:
	ldr r0, _080B2E30 @ =0x080B2E35
	mov r3, r8
	str r0, [r3, #0x4C]
_080B2E1E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B2E2C: .4byte 0x0000204D
_080B2E30: .4byte sub_80B2E34
	thumb_func_start sub_80B2E34
sub_80B2E34:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080B2EE4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B2E56
	b _080B3020
_080B2E56:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2E74
	cmp r1, #0x04
	bne _080B2EB2
_080B2E74:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2E82
	adds r0, #0xFF
_080B2E82:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2E90
	adds r0, #0xFF
_080B2E90:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2E9E
	adds r0, #0xFF
_080B2E9E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080B2EB2:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B2EC6
	cmp r2, #0x04
	bne _080B2F28
_080B2EC6:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2EEC
	ldr r2, _080B2EE8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2EF8
_080B2EE4: .4byte 0x03000FD8
_080B2EE8: .4byte 0x00002002
_080B2EEC:
	ldr r2, _080B2FC4 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B2EF8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B2F0E
	movs r2, #0x01
_080B2F0E:
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
_080B2F28:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B2F36
	cmp r2, #0x04
	bne _080B2F40
_080B2F36:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080B2F40:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B2F54
	cmp r2, #0x04
	bne _080B2F96
_080B2F54:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2F62
	adds r0, #0xFF
_080B2F62:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2F70
	adds r0, #0xFF
_080B2F70:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B2F7E
	adds r0, #0xFF
_080B2F7E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B2F96:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B2FA4
	cmp r1, #0x04
	bne _080B3008
_080B2FA4:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B2FCC
	ldr r2, _080B2FC8 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B2FD8
	.byte 0x00, 0x00
_080B2FC4: .4byte 0x0000204F
_080B2FC8: .4byte 0x00002002
_080B2FCC:
	ldr r2, _080B3028 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B2FD8:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B2FEE
	movs r2, #0x01
_080B2FEE:
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
_080B3008:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B3016
	cmp r2, #0x04
	bne _080B3020
_080B3016:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B3020:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B3028: .4byte 0x0000204F
	thumb_func_start sub_80B302C
sub_80B302C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3042
	cmp r1, #0x04
	bne _080B309C
_080B3042:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080B304A
	adds r0, #0xFF
_080B304A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080B3064
	adds r2, #0xFF
_080B3064:
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
	bge _080B3088
	adds r0, #0xFF
_080B3088:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B309C:
	ldr r0, _080B30A8 @ =0x080B30AD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080B30A8: .4byte sub_80B30AC
	thumb_func_start sub_80B30AC
sub_80B30AC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B30CC
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _080B30D4 @ =0x080B325D
	str r0, [r4, #0x4C]
_080B30CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B30D4: .4byte sub_80B325C
	thumb_func_start sub_80B30D8
sub_80B30D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r3, _080B3128 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3100
	cmp r1, #0x04
	bne _080B311C
_080B3100:
	ldr r2, _080B312C @ =0x00002032
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
_080B311C:
	ldr r0, _080B3130 @ =0x080B328D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B3128: .4byte 0x03000FD8
_080B312C: .4byte 0x00002032
_080B3130: .4byte sub_80B328C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00, 0xFD, 0x09, 0x0B, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0xB5, 0x05, 0x0B, 0x08, 0x06, 0x49, 0x09, 0x68, 0x49, 0x6F, 0x0B, 0x1C
	.byte 0xB6, 0x33, 0x80, 0x22, 0xD2, 0x00, 0x1A, 0x80, 0xBA, 0x31, 0x0A, 0x80, 0x02, 0x49, 0xC1, 0x64
	.byte 0x70, 0x47, 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0x45, 0xD4, 0x0A, 0x08
	thumb_func_start sub_80B3170
sub_80B3170:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080B31E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r6, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B31DA
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B319C
	adds r1, #0xFF
_080B319C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B31A6
	adds r2, #0xFF
_080B31A6:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B31B0
	adds r3, #0xFF
_080B31B0:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080B31E8 @ =0x00002FF9
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r0, [r5, #0x10]
	movs r1, #0x90
	lsls r1, r1, #0x09
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, _080B31EC @ =0x080AD189
	str r0, [r6, #0x4C]
_080B31DA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B31E4: .4byte 0x03000FD8
_080B31E8: .4byte 0x00002FF9
_080B31EC: .4byte sub_80AD188
	thumb_func_start sub_80B31F0
sub_80B31F0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B3254 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B324E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3224
	cmp r1, #0x04
	bne _080B324A
_080B3224:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B324A:
	ldr r0, _080B3258 @ =0x080AC951
	str r0, [r6, #0x4C]
_080B324E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B3254: .4byte 0x03000FD8
_080B3258: .4byte sub_80AC950
	thumb_func_start sub_80B325C
sub_80B325C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080B3288 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x54]
	cmp r0, #0x00
	bne _080B3282
	ldr r0, [r2, #0x4C]
	cmp r0, #0x00
	bne _080B3282
	bl sub_810D00C
	adds r0, r4, #0x0
	bl sub_807C298
_080B3282:
	pop {r4}
	pop {r0}
	bx r0
_080B3288: .4byte 0x03000FD8
	thumb_func_start sub_80B328C
sub_80B328C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B32F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	bl sub_8087CE4
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B32EA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B32CA
	cmp r1, #0x04
	bne _080B32E6
_080B32CA:
	ldr r2, _080B32F4 @ =0x00002032
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
_080B32E6:
	ldr r0, _080B32F8 @ =0x080B1509
	str r0, [r6, #0x4C]
_080B32EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B32F0: .4byte 0x03000FD8
_080B32F4: .4byte 0x00002032
_080B32F8: .4byte sub_80B1508
	thumb_func_start sub_80B32FC
sub_80B32FC:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _080B3384 @ =0x03000FF4
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
	ldr r0, _080B3388 @ =0x03000FD8
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
	ldr r1, _080B338C @ =0x080B3391
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
_080B3384: .4byte 0x03000FF4
_080B3388: .4byte 0x03000FD8
_080B338C: .4byte sub_80B3390
	thumb_func_start sub_80B3390
sub_80B3390:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r4, _080B347C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x0E]
	ldr r6, [r4, #0x00]
	ldr r0, _080B3480 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x44]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1A
	movs r5, #0x01
	adds r2, r5, #0x0
	ands r2, r0
	adds r0, r1, #0x0
	adds r0, #0x47
	ldrb r3, [r0, #0x00]
	lsrs r3, r3, #0x06
	adds r1, #0x48
	ldrb r0, [r1, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r3
	ands r0, r5
	lsls r0, r0, #0x01
	adds r2, r2, r0
	lsls r2, r2, #0x06
	ldrb r1, [r6, #0x0A]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	strb r0, [r6, #0x0A]
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3404
	cmp r1, #0x04
	bne _080B344A
_080B3404:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3412
	adds r0, #0xFF
_080B3412:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3424
	adds r0, #0xFF
_080B3424:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3436
	adds r0, #0xFF
_080B3436:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B344A:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B345E
	cmp r2, #0x04
	bne _080B34C4
_080B345E:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B3488
	ldr r2, _080B3484 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B3494
_080B347C: .4byte 0x03000FD8
_080B3480: .4byte 0x03000FF4
_080B3484: .4byte 0x00002002
_080B3488:
	ldr r2, _080B3568 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B3494:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B34AA
	movs r2, #0x01
_080B34AA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B34C4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B34D2
	cmp r2, #0x04
	bne _080B34DC
_080B34D2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B34DC:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B34F0
	cmp r2, #0x04
	bne _080B353A
_080B34F0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B34FE
	adds r0, #0xFF
_080B34FE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3510
	adds r0, #0xFF
_080B3510:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B3522
	adds r0, #0xFF
_080B3522:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B353A:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B3548
	cmp r2, #0x04
	bne _080B35AC
_080B3548:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B3570
	ldr r2, _080B356C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B357C
	.byte 0x00, 0x00
_080B3568: .4byte 0x0000204F
_080B356C: .4byte 0x00002002
_080B3570:
	ldr r2, _080B35C0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B357C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B3592
	movs r2, #0x01
_080B3592:
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
_080B35AC:
	ldr r0, _080B35C4 @ =0x080B956D
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B35C0: .4byte 0x0000204F
_080B35C4: .4byte sub_80B956C
