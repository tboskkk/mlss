	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A158C
sub_80A158C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A160C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _080A15C6
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _080A15C6
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A15C2
	cmp r1, #0x04
	bne _080A15C6
_080A15C2:
	ldr r0, _080A1610 @ =0x080A1AB9
	str r0, [r4, #0x4C]
_080A15C6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
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
	ldr r0, _080A1614 @ =0x040A1100
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080A1618
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A161C
	.byte 0x00, 0x00
_080A160C: .4byte 0x03000FD8
_080A1610: .4byte sub_80A1AB8
_080A1614: .4byte 0x040A1100
_080A1618:
	ldr r0, _080A1624 @ =0x080A1629
	str r0, [r6, #0x4C]
_080A161C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A1624: .4byte sub_80A1628
	thumb_func_start sub_80A1628
sub_80A1628:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A168C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A1684
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1650
	cmp r1, #0x04
	bne _080A1680
_080A1650:
	ldr r2, _080A1690 @ =0x03001038
	ldr r0, _080A1694 @ =0x0819832C
	ldr r1, _080A1698 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x06
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
_080A1680:
	ldr r0, _080A169C @ =0x080A16A1
	str r0, [r5, #0x4C]
_080A1684:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A168C: .4byte 0x03000FD8
_080A1690: .4byte 0x03001038
_080A1694: .4byte 0x0819832C
_080A1698: .4byte 0x08198220
_080A169C: .4byte sub_80A16A0
	thumb_func_start sub_80A16A0
sub_80A16A0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A1740 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A1738
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A16D6
	cmp r1, #0x04
	bne _080A1728
_080A16D6:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A16E4
	adds r0, #0xFF
_080A16E4:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A16F2
	adds r0, #0xFF
_080A16F2:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1700
	adds r0, #0xFF
_080A1700:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A1716
	adds r0, #0xFF
_080A1716:
	asrs r0, r0, #0x08
	adds r0, #0x16
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080A1744 @ =0x00000833
	adds r0, r4, #0x0
	bl sub_8088164
_080A1728:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A1748 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A174C @ =0x080A1751
	str r0, [r6, #0x4C]
_080A1738:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A1740: .4byte 0x03000FD8
_080A1744: .4byte 0x00000833
_080A1748: .4byte 0x00000FFF
_080A174C: .4byte sub_80A1750
	thumb_func_start sub_80A1750
sub_80A1750:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080A17E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A17E8 @ =0x03001038
	ldr r2, _080A17EC @ =0x0819832C
	ldr r3, _080A17F0 @ =0x08198220
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
	bgt _080A17A8
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r1, #0x01
	cmp r0, r2
	bge _080A17AA
_080A17A8:
	movs r1, #0x00
_080A17AA:
	cmp r1, #0x00
	bne _080A17B0
	b _080A18F0
_080A17B0:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A17C2
	cmp r1, #0x04
	bne _080A1810
_080A17C2:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A17F4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1800
	.byte 0x00, 0x00
_080A17E4: .4byte 0x03000FD8
_080A17E8: .4byte 0x03001038
_080A17EC: .4byte 0x0819832C
_080A17F0: .4byte 0x08198220
_080A17F4:
	ldr r2, _080A1894 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080A1800:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A1810:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A1824
	cmp r2, #0x04
	bne _080A1866
_080A1824:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1832
	adds r0, #0xFF
_080A1832:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1840
	adds r0, #0xFF
_080A1840:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A184E
	adds r0, #0xFF
_080A184E:
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
_080A1866:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1874
	cmp r1, #0x04
	bne _080A18D8
_080A1874:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A189C
	ldr r2, _080A1898 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A18A8
	.byte 0x00, 0x00
_080A1894: .4byte 0x0000204D
_080A1898: .4byte 0x00002002
_080A189C:
	ldr r2, _080A1930 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A18A8:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080A18BE
	movs r2, #0x01
_080A18BE:
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
_080A18D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A18E6
	cmp r2, #0x04
	bne _080A18F0
_080A18E6:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080A18F0:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A197C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1910
	cmp r1, #0x04
	bne _080A1950
_080A1910:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A1934
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1940
_080A1930: .4byte 0x0000204F
_080A1934:
	ldr r2, _080A1988 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080A1940:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A1950:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080A1958
	adds r1, #0xFF
_080A1958:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080A1962
	adds r2, #0xFF
_080A1962:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080A196C
	adds r3, #0xFF
_080A196C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r0, _080A198C @ =0x080A1991
	mov r5, r8
	str r0, [r5, #0x4C]
_080A197C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A1988: .4byte 0x0000204D
_080A198C: .4byte sub_80A1990
	thumb_func_start sub_80A1990
sub_80A1990:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A19F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A19EC
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A19BC
	cmp r1, #0x04
	bne _080A19E2
_080A19BC:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A19E2:
	movs r1, #0x00
	str r1, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A19EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A19F4: .4byte 0x03000FD8
	thumb_func_start sub_80A19F8
sub_80A19F8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	adds r0, #0x26
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080A1A2C
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r1, [r3, #0x40]
	ldr r0, [r3, #0x18]
	cmp r1, r0
	bne _080A1A84
	movs r4, #0x00
	ldsh r0, [r2, r4]
	adds r0, r1, r0
	str r0, [r3, #0x18]
	b _080A1A84
_080A1A2C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1A3E
	cmp r1, #0x04
	bne _080A1A80
_080A1A3E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1A4C
	adds r0, #0xFF
_080A1A4C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1A5A
	adds r0, #0xFF
_080A1A5A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1A68
	adds r0, #0xFF
_080A1A68:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	bl sub_80880C4
_080A1A80:
	ldr r0, _080A1A8C @ =0x080A1A91
	str r0, [r4, #0x4C]
_080A1A84:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080A1A8C: .4byte sub_80A1A90
	thumb_func_start sub_80A1A90
sub_80A1A90:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A1AB0
	movs r1, #0x00
	str r1, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A1AB0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
