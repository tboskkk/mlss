	.syntax unified
	.text

	thumb_func_start sub_80CA5D8
sub_80CA5D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r5, _080CA6A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087EFC
	ldr r0, [r6, #0x10]
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r3, #0x20
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080CA642
	ldr r0, [r6, #0x38]
	ldr r1, [r6, #0x10]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB6
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	ldr r1, [r6, #0x14]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB8
	strh r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080CA642
	b _080CAA82
_080CA642:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CA64A
	adds r1, #0xFF
_080CA64A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CA654
	adds r2, #0xFF
_080CA654:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CA65E
	adds r3, #0xFF
_080CA65E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080CA6A4 @ =0x00002FF9
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r2, _080CA6A8 @ =0x000002BF
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	bne _080CA6B8
	ldr r5, _080CA6AC @ =0x03001038
	ldr r4, _080CA6B0 @ =0x0819832C
	ldr r0, _080CA6B4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x03
	movs r1, #0x03
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x08
	b _080CA704
_080CA6A0: .4byte 0x03000FD8
_080CA6A4: .4byte 0x00002FF9
_080CA6A8: .4byte 0x000002BF
_080CA6AC: .4byte 0x03001038
_080CA6B0: .4byte 0x0819832C
_080CA6B4: .4byte 0x08198220
_080CA6B8:
	cmp r1, #0x40
	bne _080CA6E8
	ldr r5, _080CA6DC @ =0x03001038
	ldr r4, _080CA6E0 @ =0x0819832C
	ldr r0, _080CA6E4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x0A
	movs r1, #0x03
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x16
	b _080CA704
	.byte 0x00, 0x00
_080CA6DC: .4byte 0x03001038
_080CA6E0: .4byte 0x0819832C
_080CA6E4: .4byte 0x08198220
_080CA6E8:
	ldr r5, _080CA870 @ =0x03001038
	ldr r4, _080CA874 @ =0x0819832C
	ldr r0, _080CA878 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x0D
	movs r1, #0x03
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r0, #0x1C
_080CA704:
	movs r1, #0x03
	bl _call_via_r2
	adds r2, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, r2
	bne _080CA750
	subs r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA728
	cmp r1, #0x04
	bne _080CA740
_080CA728:
	ldr r2, _080CA87C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CA740:
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	mov r0, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CA750:
	mov r1, r10
	ldr r0, [r1, #0x00]
	cmp r0, r8
	bne _080CA792
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA76A
	cmp r1, #0x04
	bne _080CA782
_080CA76A:
	ldr r2, _080CA87C @ =0x00002035
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
_080CA782:
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	mov r0, r9
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CA792:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r3, #0x00
	adds r4, r6, #0x0
	adds r4, #0xCC
	movs r2, #0xCA
	adds r2, r2, r6
	mov r8, r2
	ldr r5, _080CA880 @ =0x03000FD8
_080CA7AA:
	ldr r0, [r5, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	cmp r2, r7
	beq _080CA7DA
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CA7DA
	ldr r0, [r2, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CA7EE
_080CA7DA:
	adds r3, #0x01
	cmp r3, #0x05
	ble _080CA7AA
	ldr r0, [r7, #0x28]
	ldr r1, _080CA884 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_080CA7EE:
	mov r2, r10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _080CA804
	ldr r0, [r7, #0x28]
	ldr r1, _080CA884 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_080CA804:
	movs r3, #0x30
	negs r3, r3
	movs r0, #0x02
	mov r1, r9
	movs r2, #0x00
	bl sub_807EAE4
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r0, _080CA888 @ =0x040301AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CA858
	ldr r2, _080CA884 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CA858
	b _080CA990
_080CA858:
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _080CA8C8
	cmp r0, #0x01
	bgt _080CA88C
	cmp r0, #0x00
	beq _080CA892
	b _080CA938
	.byte 0x00, 0x00
_080CA870: .4byte 0x03001038
_080CA874: .4byte 0x0819832C
_080CA878: .4byte 0x08198220
_080CA87C: .4byte 0x00002035
_080CA880: .4byte 0x03000FD8
_080CA884: .4byte 0x00000111
_080CA888: .4byte 0x040301AB
_080CA88C:
	cmp r0, #0x02
	beq _080CA8FC
	b _080CA938
_080CA892:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA89A
	adds r1, #0xFF
_080CA89A:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA8B0
	adds r2, #0xFF
_080CA8B0:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CA8C4 @ =0x00002E65
	b _080CA92A
	.byte 0x00, 0x00
_080CA8C4: .4byte 0x00002E65
_080CA8C8:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA8D0
	adds r1, #0xFF
_080CA8D0:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA8E6
	adds r2, #0xFF
_080CA8E6:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CA8F8 @ =0x00002E7A
	b _080CA92A
_080CA8F8: .4byte 0x00002E7A
_080CA8FC:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA904
	adds r1, #0xFF
_080CA904:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA91A
	adds r2, #0xFF
_080CA91A:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CA934 @ =0x00002E93
_080CA92A:
	str r7, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
	b _080CA96E
_080CA934: .4byte 0x00002E93
_080CA938:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CA940
	adds r1, #0xFF
_080CA940:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CA956
	adds r2, #0xFF
_080CA956:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080CA96E:
	ldr r2, [r7, #0x28]
	ldr r1, _080CAA48 @ =0x00000111
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CA990
	adds r0, r2, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CA990
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x00]
_080CA990:
	mov r2, r10
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _080CAA5C
	movs r7, #0x00
	str r7, [r2, #0x00]
	ldr r1, _080CAA4C @ =0x03001038
	adds r5, r6, #0x0
	adds r5, #0xAE
	movs r0, #0x00
	ldsh r2, [r5, r0]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080CA9AE
	adds r0, #0x3F
_080CA9AE:
	asrs r0, r0, #0x06
	adds r3, r0, #0x0
	muls r3, r2
	adds r4, r6, #0x0
	adds r4, #0xB0
	movs r0, #0x00
	ldsh r2, [r4, r0]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080CA9C4
	adds r0, #0x3F
_080CA9C4:
	asrs r0, r0, #0x06
	muls r0, r2
	adds r0, r3, r0
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	negs r0, r0
	lsls r0, r0, #0x03
	strh r0, [r5, #0x00]
	strh r7, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA9EA
	cmp r1, #0x04
	bne _080CAA02
_080CA9EA:
	ldr r2, _080CAA50 @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAA02:
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAA14
	cmp r1, #0x04
	bne _080CAA2E
_080CAA14:
	ldr r2, _080CAA54 @ =0x00002064
	mov r0, r9
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r9
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAA2E:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAA40
	cmp r1, #0x04
	bne _080CAA82
_080CAA40:
	ldr r0, _080CAA58 @ =0x080CAB8D
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
	b _080CAA82
_080CAA48: .4byte 0x00000111
_080CAA4C: .4byte 0x03001038
_080CAA50: .4byte 0x00002035
_080CAA54: .4byte 0x00002064
_080CAA58: .4byte sub_80CAB8C
_080CAA5C:
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x28
	str r0, [r1, #0x00]
	mov r0, r9
	bl sub_80CBAE4
	adds r1, r6, #0x0
	adds r1, #0xA0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080CAA7C
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CAA7C:
	ldr r0, _080CAA94 @ =0x080CAA99
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080CAA82:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CAA94: .4byte sub_80CAA98
