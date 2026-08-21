	.syntax unified
	.text

	thumb_func_start sub_806EDBC
sub_806EDBC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0806EDDA
	ldr r0, [r2, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0806EDDA:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0806EE12
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806EDF0
	adds r1, #0xFF
_0806EDF0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806EDFA
	adds r2, #0xFF
_0806EDFA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806EE04
	adds r3, #0xFF
_0806EE04:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806EF2C @ =0x0000202E
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_0806EE12:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806EE20
	b _0806EF22
_0806EE20:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806EF22
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806EE4E
	adds r1, #0xFF
_0806EE4E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806EE58
	adds r2, #0xFF
_0806EE58:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806EE62
	adds r3, #0xFF
_0806EE62:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806EF30 @ =0x00002059
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	ldr r0, [r4, #0x6C]
	ldrh r3, [r0, #0x0C]
	ldr r6, [r4, #0x28]
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r2, [r0, #0x00]
	ldr r1, [r1, #0x28]
	movs r5, #0x82
	lsls r5, r5, #0x01
	adds r0, r1, r5
	movs r7, #0x00
	ldsh r5, [r0, r7]
	movs r7, #0x86
	lsls r7, r7, #0x01
	adds r0, r1, r7
	ldrh r7, [r0, #0x00]
	movs r0, #0x66
	muls r3, r0
	adds r0, r3, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _0806EE9E
	adds r0, #0xFF
_0806EE9E:
	asrs r3, r0, #0x08
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r1, r0, #0x04
	adds r0, r0, r1
	muls r0, r7
	cmp r0, #0x00
	bge _0806EEB0
	adds r0, #0xFF
_0806EEB0:
	asrs r0, r0, #0x08
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0806EEBC
	adds r0, #0xFF
_0806EEBC:
	asrs r3, r0, #0x08
	cmp r3, #0x00
	bgt _0806EEC4
	movs r3, #0x01
_0806EEC4:
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r6, #0x0
	adds r1, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
	bl sub_8117C50
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r3, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	subs r5, r6, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806EF02
	adds r1, #0xFF
_0806EF02:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806EF0C
	adds r2, #0xFF
_0806EF0C:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r6, [r0, #0x00]
	ldr r0, _0806EF34 @ =0x08070A51
	str r0, [r4, #0x4C]
_0806EF22:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806EF2C: .4byte 0x0000202E
_0806EF30: .4byte 0x00002059
_0806EF34: .4byte sub_8070A50
