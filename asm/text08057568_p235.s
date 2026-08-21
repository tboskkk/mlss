	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806D9F8
sub_806D9F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DADC
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x2C]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DA64
	ldr r2, _0806DA5C @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0806DA60 @ =0x00004113
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806DA94
	.byte 0x00, 0x00
_0806DA5C: .4byte 0x00004112
_0806DA60: .4byte 0x00004113
_0806DA64:
	ldr r2, _0806DAE4 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0806DAE8 @ =0x00004115
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806DA94:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806DAEC @ =0x0806E779
	str r0, [r4, #0x4C]
_0806DADC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DAE4: .4byte 0x00004114
_0806DAE8: .4byte 0x00004115
_0806DAEC: .4byte sub_806E778
	thumb_func_start sub_806DAF0
sub_806DAF0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DB78
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DB52
	adds r1, #0xFF
_0806DB52:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DB5C
	adds r2, #0xFF
_0806DB5C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DB66
	adds r3, #0xFF
_0806DB66:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806DB74 @ =0x00001F8D
	bl sub_80DF024
	b _0806DBB6
	.byte 0x00, 0x00
_0806DB74: .4byte 0x00001F8D
_0806DB78:
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DB98
	adds r1, #0xFF
_0806DB98:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DBA2
	adds r2, #0xFF
_0806DBA2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DBAC
	adds r3, #0xFF
_0806DBAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806DBCC @ =0x00001F95
	bl sub_80DF024
_0806DBB6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0806DBD0 @ =0x0806E6BD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806DBCC: .4byte 0x00001F95
_0806DBD0: .4byte sub_806E6BC
	thumb_func_start sub_806DBD4
sub_806DBD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DC9C
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC20
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC18
	ldr r2, _0806DC14 @ =0x00004126
	b _0806DC36
	.byte 0x00, 0x00
_0806DC14: .4byte 0x00004126
_0806DC18:
	ldr r2, _0806DC1C @ =0x00004128
	b _0806DC36
_0806DC1C: .4byte 0x00004128
_0806DC20:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC34
	ldr r2, _0806DC30 @ =0x00004127
	b _0806DC36
	.byte 0x00, 0x00
_0806DC30: .4byte 0x00004127
_0806DC34:
	ldr r2, _0806DCA4 @ =0x00004129
_0806DC36:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x26
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x05
	adds r1, #0x22
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806DCA8 @ =0x0806E691
	str r0, [r4, #0x58]
	ldr r0, _0806DCAC @ =0x0806E665
	str r0, [r4, #0x60]
	ldr r0, _0806DCB0 @ =0x0806DCB5
	str r0, [r4, #0x4C]
_0806DC9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DCA4: .4byte 0x00004129
_0806DCA8: .4byte sub_806E690
_0806DCAC: .4byte sub_806E664
_0806DCB0: .4byte sub_806DCB4
	thumb_func_start sub_806DCB4
sub_806DCB4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, _0806DD3C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x33
	str r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r5, #0x18]
	movs r6, #0xC0
	lsls r6, r6, #0x06
	cmp r0, r6
	bgt _0806DD34
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x6C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0806DD08
	adds r1, #0xFF
_0806DD08:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0806DD12
	adds r2, #0xFF
_0806DD12:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0806DD1C
	adds r3, #0xFF
_0806DD1C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806DD40 @ =0x00001FC7
	bl sub_80DF024
	str r6, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806DD44 @ =0x0806DD49
	str r0, [r5, #0x4C]
_0806DD34:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806DD3C: .4byte 0xFFFFFD00
_0806DD40: .4byte 0x00001FC7
_0806DD44: .4byte sub_806DD48
	thumb_func_start sub_806DD48
sub_806DD48:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806DD8A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DD66
	adds r1, #0xFF
_0806DD66:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DD70
	adds r2, #0xFF
_0806DD70:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DD7A
	adds r3, #0xFF
_0806DD7A:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE14 @ =0x00001FDC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806DD8A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x4C]
	ldr r0, _0806DE1C @ =0x0806E791
	cmp r1, r0
	bne _0806DDC0
	ldr r0, [r2, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0806DDC0:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806DDC8
	adds r1, #0xFF
_0806DDC8:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806DE0A
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	ldr r3, [r0, #0x30]
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _0806DDEE
	adds r2, #0xFF
_0806DDEE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _0806DDF8
	adds r3, #0xFF
_0806DDF8:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE20 @ =0x00001FCF
	movs r1, #0x00
	bl sub_80DF024
	ldr r0, _0806DE24 @ =0x0806DE29
	str r0, [r4, #0x4C]
_0806DE0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DE14: .4byte 0x00001FDC
_0806DE18: .4byte 0xFFFFFD00
_0806DE1C: .4byte nullsub_15
_0806DE20: .4byte 0x00001FCF
_0806DE24: .4byte sub_806DE28
	thumb_func_start sub_806DE28
sub_806DE28:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAE
	ldrb r1, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0806DE8A
	adds r0, #0xFF
_0806DE8A:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _0806DE98
	adds r0, #0xFF
_0806DE98:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bge _0806DEAA
	adds r0, #0xFF
_0806DEAA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	ldr r2, _0806DF24 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806DEFA
	movs r0, #0x02
_0806DEFA:
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806DF28 @ =0x0806DF2D
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806DF24: .4byte 0x03001038
_0806DF28: .4byte sub_806DF2C
	thumb_func_start sub_806DF2C
sub_806DF2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	mov r8, r0
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r0, [r6, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r1, #0x00
	ldsh r2, [r4, r1]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806DFCC
	b _0806E0F4
_0806DFCC:
	ldr r1, [r7, #0x2C]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	ble _0806DFD6
	b _0806E0F4
_0806DFD6:
	ldr r0, [r1, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	subs r4, #0x20
	ldr r0, [r4, #0x00]
	str r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r7, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0806E028
	ldr r2, _0806E024 @ =0x00004112
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E04C
_0806E024: .4byte 0x00004112
_0806E028:
	ldr r2, _0806E100 @ =0x00004114
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E04C:
	ldr r0, [r7, #0x08]
	movs r3, #0x00
	strh r3, [r0, #0x0C]
	movs r2, #0x96
	lsls r2, r2, #0x09
	str r2, [r7, #0x10]
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r7, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r2, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r2, [r7, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _0806E104 @ =0x0806E755
	str r0, [r7, #0x4C]
_0806E0F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E100: .4byte 0x00004114
_0806E104: .4byte sub_806E754
	thumb_func_start sub_806E108
sub_806E108:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r4, r0
	str r4, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806E1AE
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0806E1AE
	ldr r0, _0806E1B4 @ =0x0808750D
	str r0, [r7, #0x4C]
_0806E1AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806E1B4: .4byte sub_808750C
	thumb_func_start sub_806E1B8
sub_806E1B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806E1CC
	adds r1, #0xFF
_0806E1CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806E1D6
	adds r2, #0xFF
_0806E1D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806E1E0
	adds r3, #0xFF
_0806E1E0:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806E234 @ =0x00001FCF
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	mov r9, r0
	cmp r1, #0x00
	bne _0806E23C
	ldr r2, _0806E238 @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E260
	.byte 0x00, 0x00
_0806E234: .4byte 0x00001FCF
_0806E238: .4byte 0x00004112
_0806E23C:
	ldr r2, _0806E378 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E260:
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x18]
	ldr r1, _0806E37C @ =0xFFFFD000
	adds r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2AC
	mov r0, r8
	str r0, [r4, #0x18]
_0806E2AC:
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806E2DA
	adds r0, #0xFF
_0806E2DA:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806E2EA
	adds r0, #0xFF
_0806E2EA:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2FA
	adds r0, #0xFF
_0806E2FA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806E380 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806E34A
	movs r0, #0x02
_0806E34A:
	negs r0, r0
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, _0806E384 @ =0x0806E109
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E378: .4byte 0x00004114
_0806E37C: .4byte 0xFFFFD000
_0806E380: .4byte 0x03001038
_0806E384: .4byte sub_806E108
	thumb_func_start sub_806E388
sub_806E388:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x05
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806E40C @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x99
	bl play_sfx_80195B4
	ldr r0, _0806E410 @ =0x0806E625
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E40C: .4byte 0x00000199
_0806E410: .4byte sub_806E624
	thumb_func_start sub_806E414
sub_806E414:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806E428
	b _0806E5AE
_0806E428:
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r7, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806E43C
	b _0806E5AE
_0806E43C:
	adds r0, r6, #0x0
	bl sub_807F47C
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E44E
	bl _call_via_r1
_0806E44E:
	ldr r1, [r6, #0x2C]
	ldr r0, _0806E5B8 @ =0x0806E791
	str r0, [r1, #0x4C]
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E470
	adds r0, #0xFF
_0806E470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E47E
	adds r0, #0xFF
_0806E47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E48C
	adds r0, #0xFF
_0806E48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF6
	lsls r0, r0, #0x05
	bl sub_80DF024
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4AA
	adds r0, #0xFF
_0806E4AA:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4B8
	adds r0, #0xFF
_0806E4B8:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4C6
	adds r0, #0xFF
_0806E4C6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _0806E5BC @ =0x00004111
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806E5C0 @ =0x0806E5D9
	str r0, [r5, #0x4C]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0806E5C4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	ldr r1, _0806E5C8 @ =0x0000173E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806E5CC @ =0x03000E3C
	str r0, [r1, #0x00]
	str r7, [r5, #0x60]
	adds r2, r6, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806E5D0 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x98
	bl play_sfx_80195B4
	ldr r0, _0806E5D4 @ =0x0806E5F5
	str r0, [r6, #0x4C]
_0806E5AE:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E5B8: .4byte nullsub_15
_0806E5BC: .4byte 0x00004111
_0806E5C0: .4byte sub_806E5D8
_0806E5C4: .4byte sub_8087540
_0806E5C8: .4byte 0x0000173E
_0806E5CC: .4byte 0x03000E3C
_0806E5D0: .4byte 0x00000199
_0806E5D4: .4byte sub_806E5F4
	thumb_func_start sub_806E5D8
sub_806E5D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E5EE
	adds r0, r2, #0x0
	bl sub_807C298
_0806E5EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806E5F4
sub_806E5F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E61A
	ldr r0, [r4, #0x2C]
	movs r1, #0x00
	str r1, [r0, #0x4C]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806E620 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806E61A:
	pop {r4}
	pop {r0}
	bx r0
_0806E620: .4byte sub_808750C
	thumb_func_start sub_806E624
sub_806E624:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E658
	movs r0, #0x99
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806E660 @ =0x0806E8E9
	str r0, [r4, #0x4C]
_0806E658:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E660: .4byte sub_806E8E8
	thumb_func_start sub_806E664
sub_806E664:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806E686
	ldr r0, _0806E68C @ =0x0806E1B9
	str r0, [r4, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	movs r0, #0x00
_0806E686:
	pop {r4}
	pop {r1}
	bx r1
_0806E68C: .4byte sub_806E1B8
