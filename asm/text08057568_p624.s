	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810857C
sub_810857C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _08108638
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081085A8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810861A
_081085A4:
	movs r0, #0x00
	b _081086A4
_081085A8:
	ldr r2, _0810862C @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _081085A4
	cmp r0, #0x00
	beq _081085EA
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _081085E6
	movs r1, #0x00
_081085E6:
	cmp r1, #0x00
	beq _081085A4
_081085EA:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108612
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108612:
	ldr r0, _08108630 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_0810861A:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _08108634 @ =0x0000FFF3
	ands r1, r0
	movs r0, #0x08
	b _08108682
	.byte 0x00, 0x00
_0810862C: .4byte 0x08201127
_08108630: .4byte 0x00000129
_08108634: .4byte 0x0000FFF3
_08108638:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _08108674
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810866C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_0810866C:
	ldr r0, _081086AC @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_08108674:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _081086B0 @ =0x0000FFF3
	ands r1, r0
	movs r0, #0x04
_08108682:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strh r7, [r0, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_081086A4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081086AC: .4byte 0x00000129
_081086B0: .4byte 0x0000FFF3
	thumb_func_start sub_81086B4
sub_81086B4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _08108770
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081086E0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _08108752
_081086DC:
	movs r0, #0x00
	b _081087DC
_081086E0:
	ldr r2, _08108764 @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _081086DC
	cmp r0, #0x00
	beq _08108722
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _0810871E
	movs r1, #0x00
_0810871E:
	cmp r1, #0x00
	beq _081086DC
_08108722:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810874A
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r3, #0x8C
	lsls r3, r3, #0x01
	adds r1, r5, r3
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_0810874A:
	ldr r0, _08108768 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_08108752:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _0810876C @ =0x0000FFCF
	ands r1, r0
	movs r0, #0x20
	b _081087BA
	.byte 0x00, 0x00
_08108764: .4byte 0x08201127
_08108768: .4byte 0x00000129
_0810876C: .4byte 0x0000FFCF
_08108770:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _081087AC
	movs r3, #0x91
	lsls r3, r3, #0x01
	adds r4, r5, r3
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _081087A4
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_081087A4:
	ldr r3, _081087E4 @ =0x00000129
	adds r1, r5, r3
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_081087AC:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r0, [r2, #0x00]
	ldr r1, _081087E8 @ =0x0000FFCF
	ands r1, r0
	movs r0, #0x10
_081087BA:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	movs r3, #0x90
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _081087EC @ =0xFFFFFE3F
	ands r0, r1
	adds r3, #0x20
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
_081087DC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081087E4: .4byte 0x00000129
_081087E8: .4byte 0x0000FFCF
_081087EC: .4byte 0xFFFFFE3F
	thumb_func_start sub_81087F0
sub_81087F0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _081088AC
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810881C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810888E
_08108818:
	movs r0, #0x00
	b _08108916
_0810881C:
	ldr r2, _081088A0 @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _08108818
	cmp r0, #0x00
	beq _0810885E
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _0810885A
	movs r1, #0x00
_0810885A:
	cmp r1, #0x00
	beq _08108818
_0810885E:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108886
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108886:
	ldr r0, _081088A4 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_0810888E:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _081088A8 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x80
	b _081088F6
	.byte 0x00, 0x00
_081088A0: .4byte 0x08201127
_081088A4: .4byte 0x00000129
_081088A8: .4byte 0x0000FF3F
_081088AC:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _081088E8
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _081088E0
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_081088E0:
	ldr r0, _0810891C @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_081088E8:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _08108920 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x40
_081088F6:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r2, #0x8E
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strh r7, [r0, #0x00]
	ldr r0, _08108924 @ =0x00000121
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x0A
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08108916:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0810891C: .4byte 0x00000129
_08108920: .4byte 0x0000FF3F
_08108924: .4byte 0x00000121
	thumb_func_start sub_8108928
sub_8108928:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	subs r0, #0x1E
	ands r0, r1
	cmp r0, #0x00
	beq _0810899C
	ldr r0, _08108980 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08108984 @ =0x00000121
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810898C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810899C
	ldr r0, _08108988 @ =0x08108A9D
	bl sub_807FFB8
	str r5, [r0, #0x08]
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _0810899C
	.byte 0x00, 0x00
_08108980: .4byte 0x0000FEFF
_08108984: .4byte 0x00000121
_08108988: .4byte sub_8108A9C
_0810898C:
	adds r0, r5, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_0810899C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81089A4
sub_81089A4:
	push {lr}
	adds r3, r0, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x0A
	ands r0, r1
	cmp r0, #0x00
	beq _08108A3A
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _081089F0 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08108A2C
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	ldrh r1, [r2, #0x00]
	cmp r0, #0x13
	beq _081089F4
	adds r2, r1, #0x0
	cmp r0, #0x14
	bne _081089FA
	movs r0, #0x80
	lsls r0, r0, #0x03
	orrs r2, r0
	b _081089FA
_081089F0: .4byte 0x0000F3FF
_081089F4:
	movs r2, #0x80
	lsls r2, r2, #0x04
	orrs r2, r1
_081089FA:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	strh r2, [r0, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r3, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, #0x27
	adds r2, r3, r0
	movs r1, #0x01
	movs r0, #0x01
	strh r0, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08108A2C:
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r2, _08108A40 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_08108A3A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08108A40: .4byte 0xFFFC7FFF
	thumb_func_start sub_8108A44
sub_8108A44:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x08]
	adds r2, r5, #0x0
	adds r2, #0x08
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08108A94
	movs r4, #0x01
	negs r4, r4
	adds r0, r2, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x04]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0xF5
	cmp r0, r4
	bne _08108A8E
	adds r1, #0x52
_08108A8E:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
_08108A94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8108A9C
sub_8108A9C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08108AF4
	adds r1, r2, #0x0
	adds r1, #0x08
	adds r6, r2, #0x0
	adds r6, #0xEC
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r5, #0x01
	negs r5, r5
	ldr r2, _08108AEC @ =0x00002057
	cmp r0, r5
	bne _08108AC8
	subs r2, #0x2F
_08108AC8:
	adds r0, r1, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08108AF0 @ =0x08108A45
	str r0, [r4, #0x04]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0xF5
	cmp r0, r5
	bne _08108AE2
	adds r1, #0x52
_08108AE2:
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _08108B08
_08108AEC: .4byte 0x00002057
_08108AF0: .4byte sub_8108A44
_08108AF4:
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x04]
_08108B08:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
