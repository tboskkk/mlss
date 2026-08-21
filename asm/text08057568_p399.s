	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806E98C
sub_806E98C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E9C0
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0806E9C8 @ =0x0806D6A9
	str r0, [r4, #0x4C]
_0806E9C0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E9C8: .4byte sub_806D6A8
	thumb_func_start sub_806E9CC
sub_806E9CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, _0806EA0C @ =0x00004115
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	adds r0, #0x75
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806EA0C: .4byte 0x00004115
	thumb_func_start sub_806EA10
sub_806EA10:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, _0806EA50 @ =0x00004113
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	adds r0, #0x75
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806EA50: .4byte 0x00004113
	thumb_func_start sub_806EA54
sub_806EA54:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806EA98
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806EA76
	adds r1, #0xFF
_0806EA76:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806EA80
	adds r2, #0xFF
_0806EA80:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806EA8A
	adds r3, #0xFF
_0806EA8A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806EAA0 @ =0x00001E8A
	bl sub_80DF024
	ldr r0, _0806EAA4 @ =0x0806EAA9
	str r0, [r4, #0x4C]
_0806EA98:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806EAA0: .4byte 0x00001E8A
_0806EAA4: .4byte sub_806EAA8
	thumb_func_start sub_806EAA8
sub_806EAA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806EAD0
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	ldr r0, _0806EAD8 @ =0x0806EADD
	str r0, [r4, #0x4C]
_0806EAD0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806EAD8: .4byte sub_806EADC
	thumb_func_start sub_806EADC
sub_806EADC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806EB0C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806EB0C
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806EB14 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806EB0C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806EB14: .4byte sub_808750C
	thumb_func_start sub_806EB18
sub_806EB18:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806EB30
	b _0806EC7E
_0806EB30:
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0806EB44
	adds r1, #0xFF
_0806EB44:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _0806EB4E
	adds r2, #0xFF
_0806EB4E:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _0806EB58
	adds r3, #0xFF
_0806EB58:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0806EC8C @ =0x00002041
	bl sub_80DF024
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0806EB6C
	adds r0, #0xFF
_0806EB6C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r7, #0x3C]
	cmp r3, #0x00
	bge _0806EB7A
	adds r3, #0xFF
_0806EB7A:
	asrs r3, r3, #0x08
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0806EB84
	adds r0, #0xFF
_0806EB84:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806EC90 @ =0x000040E3
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r7, #0x30]
	adds r0, r7, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	movs r2, #0x00
	mov r8, r2
	strb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x78
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x05
	adds r3, r6, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806EC94 @ =0x0806ECA5
	str r0, [r6, #0x4C]
	adds r5, r6, #0x0
	adds r5, #0x84
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x88
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x8C
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _0806EC02
	adds r0, #0xFF
_0806EC02:
	asrs r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x14]
	cmp r0, #0x00
	bge _0806EC12
	adds r0, #0xFF
_0806EC12:
	asrs r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0806EC22
	adds r0, #0xFF
_0806EC22:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r5, [r5, #0x00]
	subs r5, r5, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r4, [r4, #0x00]
	subs r4, r4, r0
	ldr r2, _0806EC98 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0x2C
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x21
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA0
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r0, _0806EC9C @ =0x0000013B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806ECA0 @ =0x08070A9D
	str r0, [r7, #0x4C]
_0806EC7E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806EC8C: .4byte 0x00002041
_0806EC90: .4byte 0x000040E3
_0806EC94: .4byte sub_806ECA4
_0806EC98: .4byte 0x03001038
_0806EC9C: .4byte 0x0000013B
_0806ECA0: .4byte sub_8070A9C
	thumb_func_start sub_806ECA4
sub_806ECA4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r6, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r6, r6, r0
	str r6, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r7, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
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
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r6, r0
	bgt _0806ED2C
	str r0, [r7, #0x10]
_0806ED2C:
	adds r1, r7, #0x0
	adds r1, #0x88
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	cmp r1, r0
	ble _0806ED44
	ldr r0, [r7, #0x14]
	cmp r0, r1
	blt _0806ED4C
	b _0806ED4A
_0806ED44:
	ldr r0, [r7, #0x14]
	cmp r0, r1
	bgt _0806ED4C
_0806ED4A:
	str r1, [r7, #0x14]
_0806ED4C:
	adds r4, r7, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806EDAC
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0806EDAC
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0806ED78
	adds r1, #0xFF
_0806ED78:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _0806ED82
	adds r2, #0xFF
_0806ED82:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _0806ED8C
	adds r3, #0xFF
_0806ED8C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0806EDB4 @ =0x00002049
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	movs r0, #0x00
	str r0, [r7, #0x18]
	movs r0, #0x20
	strh r0, [r4, #0x00]
	ldr r0, _0806EDB8 @ =0x08070A7D
	str r0, [r7, #0x4C]
_0806EDAC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806EDB4: .4byte 0x00002049
_0806EDB8: .4byte sub_8070A7C
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
	thumb_func_start sub_806EF38
sub_806EF38:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r3, _0806EFF8 @ =0x083B873C
	ldr r2, _0806EFFC @ =0x03000E7D
	ldr r0, _0806F000 @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	ldr r0, _0806F004 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r1, #0x06
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x28]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806EF76
	adds r0, #0xFF
_0806EF76:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806EF84
	adds r0, #0xFF
_0806EF84:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806EF94
	adds r0, #0xFF
_0806EF94:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _0806F008 @ =0x000040E8
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x79
	adds r0, r0, r3
	mov r12, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	str r2, [r3, #0x4C]
	ldr r0, [r6, #0x28]
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, _0806F00C @ =0x000067FF
	cmp r1, r0
	bgt _0806F010
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	b _0806F01C
	.byte 0x00, 0x00
_0806EFF8: .4byte 0x083B873C
_0806EFFC: .4byte 0x03000E7D
_0806F000: .4byte 0x03000E7C
_0806F004: .4byte 0x03000FD8
_0806F008: .4byte 0x000040E8
_0806F00C: .4byte 0x000067FF
_0806F010:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806F01C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x12
	strh r1, [r0, #0x00]
	ldr r0, _0806F030 @ =0x080709E5
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806F030: .4byte sub_80709E4
	thumb_func_start sub_806F034
sub_806F034:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0xA4
	ldr r1, [r4, #0x00]
	adds r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, _0806F088 @ =0x08070919
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806F06A
	b _0806F272
_0806F06A:
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bne _0806F08C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806F082
	cmp r0, #0x02
	bne _0806F09E
_0806F082:
	movs r1, #0x02
	str r1, [sp, #0x00C]
	b _0806F0A6
_0806F088: .4byte sub_8070918
_0806F08C:
	cmp r1, #0x02
	bne _0806F09E
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _0806F09E
	movs r5, #0x01
	str r5, [sp, #0x00C]
_0806F09E:
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bne _0806F0A6
	b _0806F272
_0806F0A6:
	ldr r0, _0806F158 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806F0C0
	adds r0, #0xFF
_0806F0C0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0806F0CE
	adds r3, #0xFF
_0806F0CE:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806F0D8
	adds r0, #0xFF
_0806F0D8:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806F15C @ =0x000040E5
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x78
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x05
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806F160 @ =0x0806F2D9
	str r0, [r4, #0x4C]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x01
	bne _0806F164
	adds r3, #0x0C
	ldr r7, [r7, #0x28]
	mov r12, r7
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r0, r0, r5
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	b _0806F184
_0806F158: .4byte 0x03000FD8
_0806F15C: .4byte 0x000040E5
_0806F160: .4byte sub_806F2D8
_0806F164:
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r5, [r5, #0x28]
	mov r12, r5
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r0, r0, r5
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
_0806F184:
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	mov r9, r3
	mov r10, r1
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806F19E
	adds r0, #0xFF
_0806F19E:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806F1AE
	adds r0, #0xFF
_0806F1AE:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806F1BE
	adds r0, #0xFF
_0806F1BE:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	mov r5, r9
	ldr r1, [r5, #0x00]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x00]
	subs r7, r1, r0
	ldr r2, _0806F290 @ =0x03001038
	mov r5, r8
	mov r0, r8
	muls r0, r5
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x01
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
	bne _0806F214
	movs r0, #0x02
_0806F214:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	movs r5, #0x00
	strh r5, [r0, #0x00]
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r5, [sp, #0x00C]
	mov r0, r9
	str r5, [r0, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806F24A
	adds r1, #0xFF
_0806F24A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806F254
	adds r2, #0xFF
_0806F254:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806F25E
	adds r3, #0xFF
_0806F25E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806F294 @ =0x00002061
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_0806F272:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _0806F298
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x09
	ble _0806F2C2
	str r2, [r1, #0x00]
	adds r1, #0x04
	b _0806F2B4
_0806F290: .4byte 0x03001038
_0806F294: .4byte 0x00002061
_0806F298:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0806F2AA
	movs r0, #0x09
	str r0, [r1, #0x00]
_0806F2AA:
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0806F2C2
	adds r1, r6, #0x0
	adds r1, #0xA8
_0806F2B4:
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x01
	ble _0806F2C2
	ldr r0, _0806F2D4 @ =0x080708F9
	str r0, [r6, #0x4C]
_0806F2C2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806F2D4: .4byte sub_80708F8
	thumb_func_start sub_806F2D8
sub_806F2D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r2, [r5, #0x08]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	movs r7, #0x00
	strh r0, [r2, #0x0C]
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r3, #0x00
	ldsh r2, [r6, r3]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806F3DA
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0806F3DA
	str r7, [r5, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0806F3A0
	adds r1, #0xFF
_0806F3A0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0806F3AA
	adds r2, #0xFF
_0806F3AA:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0806F3B4
	adds r3, #0xFF
_0806F3B4:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806F3E8 @ =0x00002069
	bl sub_80DF024
	mov r1, r8
	strh r7, [r1, #0x00]
	ldr r0, [r5, #0x08]
	strh r7, [r0, #0x0C]
	ldr r2, _0806F3EC @ =0x000040E6
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x0E
	strh r0, [r6, #0x00]
	ldr r0, _0806F3F0 @ =0x0806F3F5
	str r0, [r5, #0x4C]
_0806F3DA:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806F3E8: .4byte 0x00002069
_0806F3EC: .4byte 0x000040E6
_0806F3F0: .4byte sub_806F3F4
	thumb_func_start sub_806F3F4
sub_806F3F4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0806F474 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	adds r0, #0x05
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bne _0806F430
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _0806F430
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_0806F430:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806F46C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806F448
	adds r1, #0xFF
_0806F448:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806F452
	adds r2, #0xFF
_0806F452:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806F45C
	adds r3, #0xFF
_0806F45C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806F478 @ =0x00002071
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
_0806F46C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806F474: .4byte 0x03000FD8
_0806F478: .4byte 0x00002071
	thumb_func_start sub_806F47C
sub_806F47C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0806F488
	adds r0, #0xFF
_0806F488:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _0806F498
	adds r0, #0xFF
_0806F498:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xB0
	strh r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xA4
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r6, #0x00
	ldsh r1, [r1, r6]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806F4FC @ =0x08070891
	str r0, [r5, #0x58]
	ldr r0, _0806F500 @ =0x08070819
	str r0, [r5, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806F504 @ =0x0806F509
	str r0, [r5, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806F4FC: .4byte sub_8070890
_0806F500: .4byte sub_8070818
_0806F504: .4byte sub_806F508
	thumb_func_start sub_806F508
sub_806F508:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r3, _0806F560 @ =0x08198504
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F51A
	adds r0, #0xFF
_0806F51A:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F530
	adds r0, #0x3F
_0806F530:
	asrs r1, r0, #0x06
	lsls r1, r1, #0x01
	movs r0, #0xE0
	lsls r0, r0, #0x04
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F544
	adds r0, #0xFF
_0806F544:
	asrs r0, r0, #0x08
	movs r1, #0x7F
	ands r0, r1
	cmp r0, #0x3F
	bhi _0806F568
	ldr r0, [r4, #0x10]
	ldr r1, _0806F564 @ =0xFFFFFE67
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	b _0806F576
	.byte 0x00, 0x00
_0806F560: .4byte 0x08198504
_0806F564: .4byte 0xFFFFFE67
_0806F568:
	ldr r0, [r4, #0x10]
	ldr r1, _0806F5E8 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
_0806F576:
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA8
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x08]
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	strh r0, [r1, #0x0C]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806F5BA
	adds r1, #0xFF
_0806F5BA:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0806F5E2
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0806F5EC @ =0x0806F5F1
	str r0, [r4, #0x4C]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
_0806F5E2:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806F5E8: .4byte 0xFFFFFECD
_0806F5EC: .4byte sub_806F5F0
	thumb_func_start sub_806F5F0
sub_806F5F0:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r4, _0806F648 @ =0x08198504
	adds r3, r2, #0x0
	adds r3, #0x8C
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0806F602
	adds r0, #0xFF
_0806F602:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F618
	adds r0, #0x3F
_0806F618:
	asrs r1, r0, #0x06
	lsls r1, r1, #0x01
	movs r0, #0xE0
	lsls r0, r0, #0x04
	subs r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0806F62C
	adds r0, #0xFF
_0806F62C:
	asrs r0, r0, #0x08
	movs r1, #0x7F
	ands r0, r1
	cmp r0, #0x3F
	bhi _0806F650
	ldr r0, [r2, #0x10]
	ldr r1, _0806F64C @ =0xFFFFFE67
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	b _0806F65E
	.byte 0x00, 0x00
_0806F648: .4byte 0x08198504
_0806F64C: .4byte 0xFFFFFE67
_0806F650:
	ldr r0, [r2, #0x10]
	ldr r1, _0806F684 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
_0806F65E:
	adds r0, r0, r1
	str r0, [r3, #0x00]
	ldr r1, [r2, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	ldr r0, [r2, #0x28]
	adds r0, #0xD8
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0806F67E
	str r0, [r2, #0x10]
	ldr r0, _0806F688 @ =0x0806F68D
	str r0, [r2, #0x4C]
_0806F67E:
	pop {r4}
	pop {r0}
	bx r0
_0806F684: .4byte 0xFFFFFECD
_0806F688: .4byte sub_806F68C
	thumb_func_start sub_806F68C
sub_806F68C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	movs r7, #0xFF
	lsls r7, r7, #0x08
	adds r3, r0, #0x0
	ands r3, r7
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	movs r5, #0x00
	strh r0, [r1, #0x0C]
	ldr r6, _0806F700 @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F6B6
	adds r0, #0xFF
_0806F6B6:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F6CC
	adds r0, #0x3F
_0806F6CC:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r1, #0xE0
	lsls r1, r1, #0x04
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r2, #0x00]
	ands r0, r7
	cmp r0, r3
	bgt _0806F6FA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	str r5, [r4, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
_0806F6FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806F700: .4byte 0x08198504
	thumb_func_start sub_806F704
sub_806F704:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _0806F75C @ =0x08198504
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F716
	adds r0, #0xFF
_0806F716:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F72C
	adds r0, #0x3F
_0806F72C:
	asrs r1, r0, #0x06
	lsls r1, r1, #0x01
	movs r0, #0xE0
	lsls r0, r0, #0x04
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F740
	adds r0, #0xFF
_0806F740:
	asrs r0, r0, #0x08
	movs r1, #0x7F
	ands r0, r1
	cmp r0, #0x3F
	bhi _0806F764
	ldr r0, [r4, #0x10]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	ldr r1, _0806F760 @ =0xFFFFF400
	b _0806F772
	.byte 0x00, 0x00
_0806F75C: .4byte 0x08198504
_0806F760: .4byte 0xFFFFF400
_0806F764:
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r2, #0x00]
	ldr r1, _0806F7D0 @ =0xFFFFF700
_0806F772:
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA8
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _0806F7CA
	str r0, [r4, #0x10]
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0806F7D4 @ =0x0806F7D9
	str r0, [r4, #0x4C]
_0806F7CA:
	pop {r4}
	pop {r0}
	bx r0
_0806F7D0: .4byte 0xFFFFF700
_0806F7D4: .4byte sub_806F7D8
	thumb_func_start sub_806F7D8
sub_806F7D8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r0, [r2, #0x00]
	movs r7, #0xFF
	lsls r7, r7, #0x08
	adds r3, r0, #0x0
	ands r3, r7
	ldr r1, _0806F844 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	movs r5, #0x00
	strh r0, [r1, #0x0C]
	ldr r6, _0806F848 @ =0x08198504
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0806F800
	adds r0, #0xFF
_0806F800:
	asrs r0, r0, #0x08
	subs r0, #0x40
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806F816
	adds r0, #0x3F
_0806F816:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r1, #0xE0
	lsls r1, r1, #0x04
	subs r1, r1, r0
	str r1, [r4, #0x18]
	ldr r0, [r2, #0x00]
	ands r0, r7
	cmp r0, r3
	blt _0806F83E
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	str r5, [r4, #0x4C]
_0806F83E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806F844: .4byte 0xFFFFF400
_0806F848: .4byte 0x08198504
	thumb_func_start sub_806F84C
sub_806F84C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806F902
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r2, _0806F8A4 @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806F8A8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	bl sub_8199F30
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0806F8AC
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r6, #0x28]
	b _0806F8B2
	.byte 0x00, 0x00
_0806F8A4: .4byte 0x000040E7
_0806F8A8: .4byte 0x03000FD8
_0806F8AC:
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r5, #0x28]
_0806F8B2:
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xA0
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
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _0806F908 @ =0x080707B9
	str r0, [r4, #0x4C]
_0806F902:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806F908: .4byte sub_80707B8
	thumb_func_start sub_806F90C
sub_806F90C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806F96E
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806F96E
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0806F94E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806F95A
_0806F94E:
	adds r0, r4, #0x0
	movs r1, #0x21
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806F95A:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x3C
	strh r0, [r5, #0x00]
	ldr r0, _0806F974 @ =0x0806F979
	str r0, [r4, #0x4C]
_0806F96E:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806F974: .4byte sub_806F978
	thumb_func_start sub_806F978
sub_806F978:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806F9EC
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x38]
	ldr r1, [r2, #0x10]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	ldr r0, [r2, #0x14]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806F9F4 @ =0x08070671
	str r0, [r4, #0x58]
	ldr r0, _0806F9F8 @ =0x08070605
	str r0, [r4, #0x60]
	ldr r0, _0806F9FC @ =0x08070711
	str r0, [r4, #0x4C]
_0806F9EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806F9F4: .4byte sub_8070670
_0806F9F8: .4byte sub_8070604
_0806F9FC: .4byte sub_8070710
	thumb_func_start sub_806FA00
sub_806FA00:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	movs r1, #0x19
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x88
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r6, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806FA3A
	adds r0, #0xFF
_0806FA3A:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806FA4A
	adds r0, #0xFF
_0806FA4A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806FA5A
	adds r0, #0xFF
_0806FA5A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r6, r1, r0
	ldr r2, _0806FAD4 @ =0x03001038
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
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806FAAA
	movs r0, #0x02
_0806FAAA:
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
	ldr r0, _0806FAD8 @ =0x0806FADD
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806FAD4: .4byte 0x03001038
_0806FAD8: .4byte sub_806FADC
	thumb_func_start sub_806FADC
sub_806FADC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806FBBE
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _0806FBBE
	movs r0, #0x00
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x1A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806FB94
	adds r1, #0xFF
_0806FB94:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806FB9E
	adds r2, #0xFF
_0806FB9E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806FBA8
	adds r3, #0xFF
_0806FBA8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806FBC8 @ =0x00002001
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x00]
	ldr r0, _0806FBCC @ =0x080705B5
	str r0, [r6, #0x4C]
_0806FBBE:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806FBC8: .4byte 0x00002001
_0806FBCC: .4byte sub_80705B4
	thumb_func_start sub_806FBD0
sub_806FBD0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806FC46
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806FC46
	adds r0, r4, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806FC10
	adds r1, #0xFF
_0806FC10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806FC1A
	adds r2, #0xFF
_0806FC1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806FC24
	adds r3, #0xFF
_0806FC24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806FC50 @ =0x0000200A
	bl sub_80DF024
	ldr r1, _0806FC54 @ =0x000017D2
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806FC58 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806FC5C @ =0x08070495
	str r0, [r4, #0x58]
	ldr r0, _0806FC60 @ =0x08070425
	str r0, [r4, #0x60]
	ldr r0, _0806FC64 @ =0x0806FC69
	str r0, [r4, #0x4C]
_0806FC46:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806FC50: .4byte 0x0000200A
_0806FC54: .4byte 0x000017D2
_0806FC58: .4byte 0x03000E3C
_0806FC5C: .4byte sub_8070494
_0806FC60: .4byte sub_8070424
_0806FC64: .4byte sub_806FC68
	thumb_func_start sub_806FC68
sub_806FC68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806FCE6
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806FC9C
	adds r0, r4, #0x0
	movs r1, #0x20
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806FC98 @ =0x0808750D
	b _0806FCE4
	.byte 0x00, 0x00
_0806FC98: .4byte sub_808750C
_0806FC9C:
	adds r0, r4, #0x0
	movs r1, #0x1F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
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
	ldr r0, _0806FCEC @ =0x08070511
_0806FCE4:
	str r0, [r4, #0x4C]
_0806FCE6:
	pop {r4}
	pop {r0}
	bx r0
_0806FCEC: .4byte sub_8070510
	thumb_func_start sub_806FCF0
sub_806FCF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806FD0C
	b _080700A6
_0806FD0C:
	mov r0, r9
	movs r1, #0x26
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x00
	str r1, [sp, #0x00C]
	cmp r0, #0x09
	bls _0806FD5E
	movs r2, #0x01
	str r2, [sp, #0x00C]
	cmp r0, #0x45
	bls _0806FD5E
	movs r3, #0x02
	str r3, [sp, #0x00C]
	cmp r0, #0x4A
	bls _0806FD5E
	movs r4, #0x03
	str r4, [sp, #0x00C]
	cmp r0, #0x54
	bls _0806FD5E
	movs r1, #0x05
	str r1, [sp, #0x00C]
	cmp r0, #0x59
	bhi _0806FD5E
	movs r2, #0x04
	str r2, [sp, #0x00C]
_0806FD5E:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x05
	bls _0806FD66
	b _0806FE9A
_0806FD66:
	lsls r0, r3, #0x02
	ldr r1, _0806FD70 @ =0x0806FD74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0806FD70: .4byte 0x0806FD74
	.byte 0x8C, 0xFD, 0x06, 0x08, 0xD0, 0xFD, 0x06, 0x08, 0x14, 0xFE, 0x06, 0x08, 0x58, 0xFE, 0x06, 0x08
	.byte 0x14, 0xFE, 0x06, 0x08, 0x58, 0xFE, 0x06, 0x08, 0x4C, 0x46, 0xA1, 0x6A, 0xA2, 0x6B, 0x00, 0x2A
	.byte 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x48, 0x46, 0xC3, 0x6B, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33
	.byte 0x1B, 0x12, 0x4C, 0x46, 0x20, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90
	.byte 0x4C, 0x46, 0xA0, 0x68, 0x40, 0x7C, 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x20, 0x02, 0x90
	.byte 0x08, 0x1C, 0x01, 0x49, 0x64, 0xE0, 0x00, 0x00, 0x88, 0x41, 0x00, 0x00, 0x48, 0x46, 0x81, 0x6A
	.byte 0x82, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x4C, 0x46, 0xE3, 0x6B, 0x00, 0x2B
	.byte 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x4C, 0x46, 0x20, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x00, 0x12, 0x00, 0x90, 0x4C, 0x46, 0xA0, 0x68, 0x40, 0x7C, 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90
	.byte 0x01, 0x20, 0x02, 0x90, 0x08, 0x1C, 0x01, 0x49, 0x42, 0xE0, 0x00, 0x00, 0x89, 0x20, 0x00, 0x00
	.byte 0x48, 0x46, 0x81, 0x6A, 0x82, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x4C, 0x46
	.byte 0xE3, 0x6B, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x4C, 0x46, 0x20, 0x6C, 0x00, 0x28
	.byte 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90, 0x4C, 0x46, 0xA0, 0x68, 0x40, 0x7C, 0x40, 0x06
	.byte 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x20, 0x02, 0x90, 0x08, 0x1C, 0x01, 0x49, 0x20, 0xE0, 0x00, 0x00
	.byte 0xB1, 0x40, 0x00, 0x00, 0x48, 0x46, 0x81, 0x6A, 0x82, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32
	.byte 0x12, 0x12, 0x4C, 0x46, 0xE3, 0x6B, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x4C, 0x46
	.byte 0x20, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90, 0x4C, 0x46, 0xA0, 0x68
	.byte 0x40, 0x7C, 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x20, 0x02, 0x90, 0x08, 0x1C, 0x10, 0x49
	.byte 0x0C, 0xF0, 0x4E, 0xF8, 0x05, 0x1C
_0806FE9A:
	mov r0, r9
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	cmp r0, #0x03
	bhi _0806FED8
	bl sub_8199F30
	adds r4, r0, #0x0
	movs r0, #0x01
	ands r4, r0
	b _0806FEE4
	.byte 0xB2, 0x40, 0x00, 0x00
_0806FED8:
	bl sub_8199F30
	movs r1, #0x01
	ands r1, r0
	adds r1, #0x02
	adds r4, r1, #0x0
_0806FEE4:
	movs r1, #0x06
	ldr r0, _0806FF94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	orrs r1, r4
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	str r3, [sp, #0x010]
	str r2, [sp, #0x014]
	cmp r0, #0x00
	bge _0806FF18
	adds r0, #0xFF
_0806FF18:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806FF28
	adds r0, #0xFF
_0806FF28:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806FF38
	adds r0, #0xFF
_0806FF38:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x010]
	ldr r1, [r3, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x014]
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _0806FF98 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r8, r0
	cmp r4, #0x01
	beq _0806FF9C
	cmp r4, #0x01
	bgt _0806FFB6
	cmp r4, #0x00
	bne _0806FFB6
	mov r3, r8
	lsls r0, r3, #0x01
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	lsls r0, r6, #0x01
	b _0806FFCC
	.byte 0x00, 0x00
_0806FF94: .4byte 0x03000FD8
_0806FF98: .4byte 0x03001038
_0806FF9C:
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	lsls r0, r6, #0x01
	b _0806FFCC
_0806FFB6:
	mov r0, r8
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	adds r0, r7, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	adds r0, r6, #0x0
_0806FFCC:
	movs r1, #0x03
	bl __divsi3
	adds r6, r0, #0x0
	ldr r1, _0806FFF4 @ =0x00000233
	mov r0, r8
	bl __divsi3
	mov r10, r0
	lsrs r0, r0, #0x1F
	add r0, r10
	asrs r0, r0, #0x01
	cmp r4, #0x01
	beq _08070008
	cmp r4, #0x01
	bgt _0806FFF8
	cmp r4, #0x00
	beq _0806FFFE
	b _08070030
	.byte 0x00, 0x00
_0806FFF4: .4byte 0x00000233
_0806FFF8:
	cmp r4, #0x02
	beq _0807001C
	b _08070030
_0806FFFE:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x07
	b _08070038
_08070008:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	bl __divsi3
	ldr r3, [sp, #0x014]
	str r4, [r3, #0x00]
	b _08070042
_0807001C:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	bl __divsi3
	ldr r1, [sp, #0x014]
	str r4, [r1, #0x00]
	b _08070042
_08070030:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
_08070038:
	adds r0, r4, #0x0
	bl __divsi3
	ldr r2, [sp, #0x014]
	str r4, [r2, #0x00]
_08070042:
	cmp r0, #0x01
	bne _08070048
	movs r0, #0x02
_08070048:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r3, r10
	str r3, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r4, r8
	ldr r0, [sp, #0x010]
	str r4, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x00]
	ldr r0, _080700B8 @ =0x08070169
	str r0, [r5, #0x4C]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, _080700BC @ =0x08087541
	str r0, [r5, #0x68]
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080700C0 @ =0x08070249
	str r0, [r5, #0x58]
	str r0, [r5, #0x5C]
	ldr r0, _080700C4 @ =0x080703F1
	mov r3, r9
	str r0, [r3, #0x4C]
_080700A6:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080700B8: .4byte sub_8070168
_080700BC: .4byte sub_8087540
_080700C0: .4byte sub_8070248
_080700C4: .4byte sub_80703F0
	thumb_func_start sub_80700C8
sub_80700C8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807015C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807015C
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0807014C
	adds r0, r4, #0x0
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070148 @ =0x080703B1
	b _0807015A
_08070148: .4byte sub_80703B0
_0807014C:
	adds r0, r4, #0x0
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070164 @ =0x0806FCF1
_0807015A:
	str r0, [r4, #0x4C]
_0807015C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070164: .4byte sub_806FCF0
	thumb_func_start sub_8070168
sub_8070168:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r0, #0xA4
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r4, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xAE
	adds r3, r3, r4
	mov r8, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r3, #0x00
	ldsh r1, [r5, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r2, [r5, r3]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	movs r3, #0x00
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080701F8
	adds r1, #0xFF
_080701F8:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0807020A
	adds r0, r4, #0x0
	bl sub_807C298
	b _0807023E
_0807020A:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	ldr r1, [r6, #0x00]
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	cmp r0, r1
	blt _0807023E
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0807023E
	str r3, [r4, #0x18]
	strh r3, [r5, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807022C
	adds r0, #0xFF
_0807022C:
	asrs r0, r0, #0x08
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807023A
	adds r0, #0xFF
_0807023A:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
_0807023E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8070248
sub_8070248:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	cmp r1, #0x01
	beq _080702E4
	cmp r1, #0x01
	bgt _08070262
	cmp r1, #0x00
	beq _08070268
	b _08070364
_08070262:
	cmp r1, #0x02
	beq _08070324
	b _08070364
_08070268:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x08
	bl sub_8117C50
	adds r5, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r5, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807029A
	adds r1, #0xFF
_0807029A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080702A4
	adds r2, #0xFF
_080702A4:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r6, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r5, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080702C0
	adds r1, #0xFF
_080702C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080702CA
	adds r2, #0xFF
_080702CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080702D4
	adds r3, #0xFF
_080702D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080702E0 @ =0x00000F93
	bl sub_80DF024
	b _0807039A
_080702E0: .4byte 0x00000F93
_080702E4:
	ldr r0, _0807031C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	strh r1, [r0, #0x18]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080702F2
	adds r1, #0xFF
_080702F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080702FC
	adds r2, #0xFF
_080702FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070306
	adds r3, #0xFF
_08070306:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070320 @ =0x00002375
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2C
	bl play_sfx_80195B4
	b _0807039A
_0807031C: .4byte 0x03000FD8
_08070320: .4byte 0x00002375
_08070324:
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_8107F84
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070334
	adds r1, #0xFF
_08070334:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807033E
	adds r2, #0xFF
_0807033E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070348
	adds r3, #0xFF
_08070348:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070360 @ =0x00002396
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA0
	bl play_sfx_80195B4
	b _0807039A
	.byte 0x00, 0x00
_08070360: .4byte 0x00002396
_08070364:
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070376
	adds r1, #0xFF
_08070376:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070380
	adds r2, #0xFF
_08070380:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807038A
	adds r3, #0xFF
_0807038A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080703AC @ =0x00002381
	bl sub_80DF024
	adds r0, r7, #0x0
	bl sub_807F47C
_0807039A:
	adds r0, r7, #0x0
	bl sub_807C298
	movs r0, #0x01
	negs r0, r0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080703AC: .4byte 0x00002381
	thumb_func_start sub_80703B0
sub_80703B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080703E4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080703D4
	adds r0, r4, #0x0
	movs r1, #0x29
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080703E0
_080703D4:
	adds r0, r4, #0x0
	movs r1, #0x2A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080703E0:
	ldr r0, _080703EC @ =0x08070B71
	str r0, [r4, #0x4C]
_080703E4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080703EC: .4byte sub_8070B70
	thumb_func_start sub_80703F0
sub_80703F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070418
	adds r0, r4, #0x0
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08070420 @ =0x080700C9
	str r0, [r4, #0x4C]
_08070418:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070420: .4byte sub_80700C8
	thumb_func_start sub_8070424
sub_8070424:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807048C
	adds r0, r4, #0x0
	movs r1, #0x20
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070488 @ =0x080704F1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0807048E
_08070488: .4byte sub_80704F0
_0807048C:
	adds r0, r5, #0x0
_0807048E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8070494
sub_8070494:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _080704E4 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080704B8
	adds r1, #0xFF
_080704B8:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080704C2
	adds r2, #0xFF
_080704C2:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080704CC
	adds r3, #0xFF
_080704CC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080704E8 @ =0x00002012
	bl sub_80DF024
	ldr r0, _080704EC @ =0x0806FC69
	str r0, [r5, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080704E4: .4byte 0x0000012B
_080704E8: .4byte 0x00002012
_080704EC: .4byte sub_806FC68
	thumb_func_start sub_80704F0
sub_80704F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0807050A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0807050A:
	pop {r4, r5}
	pop {r0}
	bx r0
