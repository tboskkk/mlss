	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806E794
sub_806E794:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E7C2
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806E7C8 @ =0x0806E98D
	str r0, [r4, #0x4C]
_0806E7C2:
	pop {r4}
	pop {r0}
	bx r0
_0806E7C8: .4byte sub_806E98C
	thumb_func_start sub_806E7CC
sub_806E7CC:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E7E4
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0806E7E8 @ =0x0806D61D
	str r0, [r2, #0x4C]
_0806E7E4:
	pop {r0}
	bx r0
_0806E7E8: .4byte sub_806D61C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x85, 0xE8, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x89, 0xE3, 0x06, 0x08
	thumb_func_start sub_806E804
sub_806E804:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0806E822
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _0806E828
_0806E822:
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x01
_0806E828:
	str r0, [r1, #0x00]
	ldr r0, _0806E834 @ =0x0806DAF1
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_0806E834: .4byte sub_806DAF0
	.byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0xA0, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C
	.byte 0xA0, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0x95, 0xD5, 0x06, 0x08, 0x01, 0x49, 0x41, 0x65, 0x70, 0x47, 0x00, 0x00, 0xCD, 0xE9, 0x06, 0x08
	.byte 0x01, 0x49, 0x41, 0x65, 0x70, 0x47, 0x00, 0x00, 0x11, 0xEA, 0x06, 0x08
	thumb_func_start sub_806E884
sub_806E884:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
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
	ldr r0, _0806E8E4 @ =0x0806EA55
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806E8E4: .4byte sub_806EA54
	thumb_func_start sub_806E8E8
sub_806E8E8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E910
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0A
	strh r1, [r0, #0x00]
	ldr r0, _0806E918 @ =0x0806E415
	str r0, [r4, #0x4C]
_0806E910:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E918: .4byte sub_806E414
	thumb_func_start sub_806E91C
sub_806E91C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E97C
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806E95A
	adds r1, #0xFF
_0806E95A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806E964
	adds r2, #0xFF
_0806E964:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806E96E
	adds r3, #0xFF
_0806E96E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806E984 @ =0x00001FA6
	bl sub_80DF024
	ldr r0, _0806E988 @ =0x0806DBD5
	str r0, [r4, #0x4C]
_0806E97C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806E984: .4byte 0x00001FA6
_0806E988: .4byte sub_806DBD4
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
	thumb_func_start sub_8070510
sub_8070510:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807052A
	adds r0, r2, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _08070530 @ =0x08070535
	str r0, [r2, #0x4C]
_0807052A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070530: .4byte sub_8070534
	thumb_func_start sub_8070534
sub_8070534:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080705AC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	ands r0, r1
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
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
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080705B0 @ =0x08070C2D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080705AC: .4byte 0x03000FD8
_080705B0: .4byte sub_8070C2C
	thumb_func_start sub_80705B4
sub_80705B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080705F2
	adds r0, r4, #0x0
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0xA8
	movs r1, #0x01
	ands r1, r0
	str r1, [r2, #0x00]
	ldr r1, _080705F8 @ =0x03000E3C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080705FC @ =0x08070425
	str r0, [r4, #0x60]
	ldr r0, _08070600 @ =0x08070535
	str r0, [r4, #0x4C]
_080705F2:
	pop {r4}
	pop {r0}
	bx r0
_080705F8: .4byte 0x03000E3C
_080705FC: .4byte sub_8070424
_08070600: .4byte sub_8070534
	thumb_func_start sub_8070604
sub_8070604:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _08070668
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
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
	movs r0, #0xA0
	lsls r0, r0, #0x02
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
	ldr r0, _08070664 @ =0x080706E9
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0807066A
_08070664: .4byte sub_80706E8
_08070668:
	adds r0, r5, #0x0
_0807066A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8070670
sub_8070670:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, _080706AC @ =0x080706B1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080706AC: .4byte sub_80706B0
	thumb_func_start sub_80706B0
sub_80706B0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080706E0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080706E0
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080706E0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80706E8
sub_80706E8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070704
	adds r0, r4, #0x0
	movs r1, #0x18
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807070C @ =0x08070C5D
	str r0, [r4, #0x4C]
_08070704:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807070C: .4byte sub_8070C5C
	thumb_func_start sub_8070710
sub_8070710:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0xA4
	ldr r0, [r2, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r4, [r1, #0x00]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	adds r5, r6, #0x0
	adds r5, #0xA0
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	muls r0, r1
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r1, r0
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _08070750
	adds r4, #0xFF
_08070750:
	asrs r1, r4, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08070774
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x14]
	ldr r0, _0807077C @ =0x08070C85
	str r0, [r6, #0x4C]
_08070774:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807077C: .4byte sub_8070C84
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xC9, 0x0B, 0x07, 0x08, 0x00, 0xB5, 0x02, 0x1C
	.byte 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20, 0x08, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x01, 0xFA, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x8D, 0x0C, 0x07, 0x08
	thumb_func_start sub_80707B8
sub_80707B8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0807080C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0xC0
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070814 @ =0x08070CF1
	str r0, [r4, #0x4C]
_0807080C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070814: .4byte sub_8070CF0
	thumb_func_start sub_8070818
sub_8070818:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08070884
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08070832
	adds r0, #0xFF
_08070832:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08070842
	adds r0, #0xFF
_08070842:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xB0
	strh r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xA4
	ldr r2, [r5, #0x28]
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
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r0, _0807088C @ =0x0806F705
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08070884:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807088C: .4byte sub_806F704
	thumb_func_start sub_8070890
sub_8070890:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _080708A8 @ =0x0806F509
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_080708A8: .4byte sub_806F508
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x61, 0x0D, 0x07, 0x08, 0x00, 0xB5, 0x02, 0x1C
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0x9C, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x10, 0x1C, 0x8C, 0x30, 0xC0, 0x21, 0x89, 0x00, 0x01, 0x60, 0x02, 0x48, 0xD0, 0x64
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x89, 0x0D, 0x07, 0x08
	thumb_func_start sub_80708F8
sub_80708F8:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070910
	ldr r0, _08070914 @ =0x08070939
	str r0, [r2, #0x4C]
_08070910:
	pop {r0}
	bx r0
_08070914: .4byte sub_8070938
	thumb_func_start sub_8070918
sub_8070918:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070930
	ldr r0, _08070934 @ =0x0806F035
	str r0, [r2, #0x4C]
_08070930:
	pop {r0}
	bx r0
_08070934: .4byte sub_806F034
	thumb_func_start sub_8070938
sub_8070938:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _08070974 @ =0x03000E7D
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _08070964
	ldr r2, _08070978 @ =0x083B873C
	ldr r0, _0807097C @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08070980
_08070964:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	b _08070982
_08070974: .4byte 0x03000E7D
_08070978: .4byte 0x083B873C
_0807097C: .4byte 0x03000E7C
_08070980:
	ldr r0, _0807098C @ =0x08070991
_08070982:
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807098C: .4byte sub_8070990
	thumb_func_start sub_8070990
sub_8070990:
	push {r4, lr}
	mov r12, r0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	mov r4, r12
	adds r4, #0x9C
	ldr r3, _080709D4 @ =0x083B873C
	ldr r2, _080709D8 @ =0x03000E7D
	ldr r0, _080709DC @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, _080709E0 @ =0x0806F035
	mov r1, r12
	str r0, [r1, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080709D4: .4byte 0x083B873C
_080709D8: .4byte 0x03000E7D
_080709DC: .4byte 0x03000E7C
_080709E0: .4byte sub_806F034
	thumb_func_start sub_80709E4
sub_80709E4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070A44
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r3, _08070A30 @ =0x03000E7D
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	bhi _08070A26
	ldr r2, _08070A34 @ =0x083B873C
	ldr r0, _08070A38 @ =0x03000E7C
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldrb r1, [r3, #0x00]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08070A40
_08070A26:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	ldr r0, _08070A3C @ =0x08070991
	b _08070A42
	.byte 0x00, 0x00
_08070A30: .4byte 0x03000E7D
_08070A34: .4byte 0x083B873C
_08070A38: .4byte 0x03000E7C
_08070A3C: .4byte sub_8070990
_08070A40:
	ldr r0, _08070A4C @ =0x0806EF39
_08070A42:
	str r0, [r4, #0x4C]
_08070A44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070A4C: .4byte sub_806EF38
	thumb_func_start sub_8070A50
sub_8070A50:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070A70
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070A78 @ =0x08070DCD
	str r0, [r4, #0x4C]
_08070A70:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070A78: .4byte sub_8070DCC
	thumb_func_start sub_8070A7C
sub_8070A7C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08070A96
	adds r0, r2, #0x0
	bl sub_807C298
_08070A96:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8070A9C
sub_8070A9C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070ABC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070ABC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x05, 0x4A, 0x01, 0x1C, 0x9C, 0x31, 0x09, 0x68, 0x11, 0x70, 0x04, 0x4A, 0x00, 0x21
	.byte 0x11, 0x70, 0x03, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x7C, 0x0E, 0x00, 0x03, 0x7D, 0x0E
	.byte 0x00, 0x03, 0x39, 0xEF, 0x06, 0x08
	thumb_func_start sub_8070AE8
sub_8070AE8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08070B06
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _08070B0C
_08070B06:
	adds r1, r2, #0x0
	adds r1, #0xA0
	movs r0, #0x01
_08070B0C:
	str r0, [r1, #0x00]
	ldr r0, _08070B18 @ =0x08070E4D
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08070B18: .4byte sub_8070E4C
	.byte 0xF0, 0xB5, 0x05, 0x1C, 0x2E, 0x1C, 0x9C, 0x36, 0x30, 0x68, 0x00, 0x28, 0x11, 0xD1, 0x2F, 0x1C
	.byte 0xA0, 0x37, 0x38, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x29, 0xF1, 0xFC, 0xF9, 0x03, 0x24, 0x20, 0x40
	.byte 0x00, 0x01, 0x60, 0x30, 0x30, 0x60, 0x29, 0xF1, 0xF5, 0xF9, 0x20, 0x40, 0x00, 0x01, 0x60, 0x30
	.byte 0x38, 0x60, 0x29, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x02, 0x08, 0x60, 0x04, 0x31, 0x08, 0x68
	.byte 0x00, 0x02, 0x08, 0x60, 0x02, 0x48, 0xE8, 0x64, 0x01, 0x20, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xC1, 0x0E, 0x07, 0x08
	thumb_func_start sub_8070B70
sub_8070B70:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070BB8
	adds r0, r4, #0x0
	movs r1, #0x2B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070B96
	adds r1, #0xFF
_08070B96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070BA0
	adds r2, #0xFF
_08070BA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070BAA
	adds r3, #0xFF
_08070BAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070BC0 @ =0x0000201C
	bl sub_80DF024
	ldr r0, _08070BC4 @ =0x08070EDD
	str r0, [r4, #0x4C]
_08070BB8:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08070BC0: .4byte 0x0000201C
_08070BC4: .4byte sub_8070EDC
	thumb_func_start sub_8070BC8
sub_8070BC8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x23
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x8C
	lsls r0, r0, #0x09
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	ldr r0, _08070C24 @ =0x00000199
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
	ldr r0, _08070C28 @ =0x08070F05
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C24: .4byte 0x00000199
_08070C28: .4byte sub_8070F04
	thumb_func_start sub_8070C2C
sub_8070C2C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070C50
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x1C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070C58 @ =0x08070F65
	str r0, [r4, #0x4C]
_08070C50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C58: .4byte sub_8070F64
	thumb_func_start sub_8070C5C
sub_8070C5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070C7C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070C7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8070C84
sub_8070C84:
	movs r1, #0x00
	str r1, [r0, #0x4C]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_8070C8C
sub_8070C8C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
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
	ldr r0, _08070CEC @ =0x08070F99
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070CEC: .4byte sub_8070F98
	thumb_func_start sub_8070CF0
sub_8070CF0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08070D48
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08070D50 @ =0x08071019
	str r0, [r4, #0x58]
	ldr r0, _08070D54 @ =0x08070FD1
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _08070D58 @ =0xFFFFE000
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xA0
	lsls r0, r0, #0x02
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
	ldr r0, _08070D5C @ =0x08071055
	str r0, [r4, #0x4C]
_08070D48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070D50: .4byte sub_8071018
_08070D54: .4byte sub_8070FD0
_08070D58: .4byte 0xFFFFE000
_08070D5C: .4byte sub_8071054
	thumb_func_start sub_8070D60
sub_8070D60:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
	ldr r0, _08070D84 @ =0x08071081
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070D84: .4byte sub_8071080
	thumb_func_start sub_8070D88
sub_8070D88:
	push {lr}
	adds r2, r0, #0x0
	adds r3, r2, #0x0
	adds r3, #0x8C
	ldr r0, [r2, #0x18]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x00]
	subs r0, #0x80
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bgt _08070DC2
	movs r0, #0x00
	str r0, [r2, #0x18]
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08070DBE
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r3, #0x00]
	b _08070DC2
_08070DBE:
	ldr r0, _08070DC8 @ =0x0806F47D
	str r0, [r2, #0x4C]
_08070DC2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070DC8: .4byte sub_806F47C
	thumb_func_start sub_8070DCC
sub_8070DCC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070E36
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070DFC
	adds r1, #0xFF
_08070DFC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070E06
	adds r2, #0xFF
_08070E06:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070E10
	adds r3, #0xFF
_08070E10:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070E40 @ =0x00002061
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x2C]
	ldr r0, _08070E44 @ =0x0808750D
	str r0, [r1, #0x4C]
	ldr r0, _08070E48 @ =0x080710E1
	str r0, [r4, #0x4C]
_08070E36:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070E40: .4byte 0x00002061
_08070E44: .4byte sub_808750C
_08070E48: .4byte sub_80710E0
	thumb_func_start sub_8070E4C
sub_8070E4C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
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
	ldr r0, _08070EB8 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08070EBC @ =0x08071111
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070EB8: .4byte 0x0000011B
_08070EBC: .4byte sub_8071110
	thumb_func_start sub_8070EC0
sub_8070EC0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070ED8 @ =0x0806EB19
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08070ED8: .4byte sub_806EB18
	thumb_func_start sub_8070EDC
sub_8070EDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070EFC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08070EFC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8070F04
sub_8070F04:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08070F56
	adds r0, r4, #0x0
	movs r1, #0x24
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xA8
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _08070F5C @ =0x00000199
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
	ldr r0, _08070F60 @ =0x0807116D
	str r0, [r4, #0x4C]
_08070F56:
	pop {r4, r5}
	pop {r0}
	bx r0
_08070F5C: .4byte 0x00000199
_08070F60: .4byte sub_807116C
	thumb_func_start sub_8070F64
sub_8070F64:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070F8C
	adds r0, r4, #0x0
	movs r1, #0x1D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x05
	strh r1, [r0, #0x00]
	ldr r0, _08070F94 @ =0x0806FBD1
	str r0, [r4, #0x4C]
_08070F8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070F94: .4byte sub_806FBD0
	thumb_func_start sub_8070F98
sub_8070F98:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070FC4
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08070FCC @ =0x0806F90D
	str r0, [r4, #0x4C]
_08070FC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070FCC: .4byte sub_806F90C
	thumb_func_start sub_8070FD0
sub_8070FD0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_80871A8
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08071010
	movs r0, #0xA7
	bl stop_sfx_80195A8
	ldr r2, _08071008 @ =0x000040E7
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	ldr r0, _0807100C @ =0x080711A5
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r0, #0x00
	b _08071012
_08071008: .4byte 0x000040E7
_0807100C: .4byte sub_80711A4
_08071010:
	adds r0, r4, #0x0
_08071012:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8071018
sub_8071018:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xA7
	bl stop_sfx_80195A8
	ldr r2, _0807104C @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08071050 @ =0x080711A5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0807104C: .4byte 0x000040E7
_08071050: .4byte sub_80711A4
	thumb_func_start sub_8071054
sub_8071054:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071078
	movs r0, #0xA7
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_08071078:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8071080
sub_8071080:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807108E
	adds r1, #0xFF
_0807108E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071098
	adds r2, #0xFF
_08071098:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080710A2
	adds r3, #0xFF
_080710A2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080710D4 @ =0x0000209E
	bl sub_80DF024
	ldr r2, _080710D8 @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _080710DC @ =0x0806F84D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080710D4: .4byte 0x0000209E
_080710D8: .4byte 0x000040E7
_080710DC: .4byte sub_806F84C
	thumb_func_start sub_80710E0
sub_80710E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071106
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807110C @ =0x0808750D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x2C]
	movs r0, #0x00
	str r0, [r1, #0x4C]
_08071106:
	pop {r4}
	pop {r0}
	bx r0
_0807110C: .4byte sub_808750C
	thumb_func_start sub_8071110
sub_8071110:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071156
	ldr r0, _0807115C @ =0x0000011B
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0A
	strh r1, [r0, #0x00]
	subs r0, #0x10
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071160 @ =0x08071245
	str r0, [r4, #0x58]
	ldr r0, _08071164 @ =0x08071205
	str r0, [r4, #0x60]
	ldr r0, _08071168 @ =0x0806EDBD
	str r0, [r4, #0x4C]
_08071156:
	pop {r4}
	pop {r0}
	bx r0
_0807115C: .4byte 0x0000011B
_08071160: .4byte sub_8071244
_08071164: .4byte sub_8071204
_08071168: .4byte sub_806EDBC
	thumb_func_start sub_807116C
sub_807116C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08071198
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080711A0 @ =0x0806FCF1
	str r0, [r4, #0x4C]
_08071198:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080711A0: .4byte sub_806FCF0
	thumb_func_start sub_80711A4
sub_80711A4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080711F2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080711BE
	adds r1, #0xFF
_080711BE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080711C8
	adds r2, #0xFF
_080711C8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080711D2
	adds r3, #0xFF
_080711D2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080711FC @ =0x0000207A
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x05
	strh r0, [r1, #0x00]
	ldr r0, _08071200 @ =0x080712B1
	str r0, [r4, #0x4C]
_080711F2:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080711FC: .4byte 0x0000207A
_08071200: .4byte sub_80712B0
	thumb_func_start sub_8071204
sub_8071204:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08071236
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807123C @ =0x0807127D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x2C]
	ldr r0, _08071240 @ =0x0808750D
	str r0, [r1, #0x4C]
	movs r0, #0x00
_08071236:
	pop {r4}
	pop {r1}
	bx r1
_0807123C: .4byte sub_807127C
_08071240: .4byte sub_808750C
	thumb_func_start sub_8071244
sub_8071244:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xD2
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0807125A
	bl _call_via_r1
_0807125A:
	ldr r1, [r4, #0x2C]
	ldr r0, _08071274 @ =0x080712AD
	str r0, [r1, #0x4C]
	ldr r0, [r1, #0x08]
	bl sub_807FB64
	ldr r0, _08071278 @ =0x0806EDBD
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08071274: .4byte 0x080712AD
_08071278: .4byte sub_806EDBC
	thumb_func_start sub_807127C
sub_807127C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080712A0
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080712A8 @ =0x0808750D
	str r0, [r4, #0x4C]
_080712A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080712A8: .4byte sub_808750C
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_80712B0
sub_80712B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080712D0
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_080712D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80712D8
sub_80712D8:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071378
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080712F4
	adds r2, #0xFF
_080712F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _080712FE
	adds r3, #0xFF
_080712FE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08071308
	adds r0, #0xFF
_08071308:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071380 @ =0x000040B5
	bl sub_807BF34
	mov r12, r0
	str r0, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r12
	adds r1, #0x75
	strb r0, [r1, #0x00]
	mov r3, r12
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r0, r12
	str r2, [r0, #0x4C]
	ldr r2, _08071384 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08071388 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	ldr r0, [r0, #0x10]
	bl sub_807FB64
	ldr r0, _0807138C @ =0x08071391
	str r0, [r4, #0x4C]
_08071378:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08071380: .4byte 0x000040B5
_08071384: .4byte 0x000040B4
_08071388: .4byte 0x03000FD8
_0807138C: .4byte sub_8071390
	thumb_func_start sub_8071390
sub_8071390:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08071416
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r2, _0807141C @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x08
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
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
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08071420 @ =0x08071425
	str r0, [r4, #0x4C]
_08071416:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807141C: .4byte 0x000040B4
_08071420: .4byte sub_8071424
	thumb_func_start sub_8071424
sub_8071424:
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
	bgt _08071464
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071442
	adds r1, #0xFF
_08071442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807144C
	adds r2, #0xFF
_0807144C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071456
	adds r3, #0xFF
_08071456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071484 @ =0x000021A6
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08071464:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807147C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _08071488 @ =0x0807249D
	str r0, [r4, #0x4C]
_0807147C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08071484: .4byte 0x000021A6
_08071488: .4byte sub_807249C
	thumb_func_start sub_807148C
sub_807148C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	mov r9, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080714A8
	b _080715E8
_080714A8:
	ldr r2, _080715F8 @ =0x000040B4
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080714CE
	adds r1, #0xFF
_080714CE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080714D8
	adds r2, #0xFF
_080714D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080714E2
	adds r3, #0xFF
_080714E2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080715FC @ =0x000021C6
	bl sub_80DF024
	ldr r0, _08071600 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x58]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	bl sub_807BC90
	ldr r2, _08071604 @ =0x000040AE
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x10]
	ldr r1, _08071608 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r6, #0x18]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r0, r0, r4
	str r0, [r5, #0x18]
	ldr r0, _0807160C @ =0x080716C5
	str r0, [r5, #0x4C]
	adds r2, r7, #0x0
	adds r2, #0x7F
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08071610 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08071614 @ =0x08071859
	str r0, [r5, #0x58]
	ldr r0, _08071618 @ =0x08072401
	str r0, [r5, #0x60]
	adds r0, r7, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	adds r0, #0x14
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _0807161C @ =0x08071621
	str r0, [r6, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0807157C
	adds r0, #0xFF
_0807157C:
	asrs r0, r0, #0x08
	adds r3, r7, #0x0
	adds r3, #0xB6
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0807158C
	adds r0, #0xFF
_0807158C:
	asrs r0, r0, #0x08
	adds r2, r7, #0x0
	adds r2, #0xBA
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r5, r0, r1
	movs r1, #0xB3
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl __divsi3
	cmp r0, #0x01
	bne _080715C2
	movs r0, #0x02
_080715C2:
	adds r1, r7, #0x0
	adds r1, #0xB0
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	subs r1, #0x04
	negs r0, r5
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB4
	mov r1, r8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_080715E8:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080715F8: .4byte 0x000040B4
_080715FC: .4byte 0x000021C6
_08071600: .4byte 0x03000FD8
_08071604: .4byte 0x000040AE
_08071608: .4byte 0xFFFFE000
_0807160C: .4byte sub_80716C4
_08071610: .4byte sub_8087540
_08071614: .4byte sub_8071858
_08071618: .4byte sub_8072400
_0807161C: .4byte sub_8071620
	thumb_func_start sub_8071620
sub_8071620:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08071654 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080716B6
	cmp r0, #0x01
	bne _08071660
	ldr r2, _08071658 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807165C @ =0x08072429
	b _080716B4
	.byte 0x00, 0x00
_08071654: .4byte 0x03000FD8
_08071658: .4byte 0x000040B4
_0807165C: .4byte sub_8072428
_08071660:
	ldr r2, _080716BC @ =0x000040B3
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
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
	ldr r0, _080716C0 @ =0x0808750D
_080716B4:
	str r0, [r4, #0x4C]
_080716B6:
	pop {r4}
	pop {r0}
	bx r0
_080716BC: .4byte 0x000040B3
_080716C0: .4byte sub_808750C
	thumb_func_start sub_80716C4
sub_80716C4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
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
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	blt _08071750
	adds r2, #0xAA
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08071758 @ =0x0808750D
	str r0, [r6, #0x4C]
_08071750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071758: .4byte sub_808750C
	thumb_func_start sub_807175C
sub_807175C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _080717E2
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldr r2, _080717E8 @ =0x000040AE
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
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
	movs r0, #0x80
	lsls r0, r0, #0x02
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
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080717EC @ =0x080717F1
	str r0, [r5, #0x4C]
_080717E2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080717E8: .4byte 0x000040AE
_080717EC: .4byte sub_80717F0
	thumb_func_start sub_80717F0
sub_80717F0:
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
	bgt _08071830
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807180E
	adds r1, #0xFF
_0807180E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071818
	adds r2, #0xFF
_08071818:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071822
	adds r3, #0xFF
_08071822:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071850 @ =0x000021E9
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08071830:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08071848
	ldr r2, _08071854 @ =0x000040AA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08071848:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08071850: .4byte 0x000021E9
_08071854: .4byte 0x000040AA
	thumb_func_start sub_8071858
sub_8071858:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_807F47C
	ldr r1, [r4, #0x2C]
	ldr r2, [r1, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, _080718F4 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080718B2
	adds r1, #0xFF
_080718B2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080718BC
	adds r2, #0xFF
_080718BC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080718C6
	adds r3, #0xFF
_080718C6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080718F8 @ =0x000021E1
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _080718FC @ =0x0807175D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_080718F4: .4byte 0x000040AE
_080718F8: .4byte 0x000021E1
_080718FC: .4byte sub_807175C
	thumb_func_start sub_8071900
sub_8071900:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldr r2, _08071974 @ =0x000040AE
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x02
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
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08071978 @ =0x080717F1
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071974: .4byte 0x000040AE
_08071978: .4byte sub_80717F0
	thumb_func_start sub_807197C
sub_807197C:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071A48
	ldr r0, _08071A50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	ldr r0, [r0, #0x10]
	bl sub_807FB64
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080719A4
	adds r2, #0xFF
_080719A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _080719AE
	adds r3, #0xFF
_080719AE:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080719B8
	adds r0, #0xFF
_080719B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071A54 @ =0x000040B8
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	str r5, [r3, #0x4C]
	ldr r2, _08071A58 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071A20
	adds r1, #0xFF
_08071A20:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071A2A
	adds r2, #0xFF
_08071A2A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071A34
	adds r3, #0xFF
_08071A34:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071A5C @ =0x000021F2
	bl sub_80DF024
	ldr r0, _08071A60 @ =0x08072391
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_08071A48:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08071A50: .4byte 0x03000FD8
_08071A54: .4byte 0x000040B8
_08071A58: .4byte 0x000040B7
_08071A5C: .4byte 0x000021F2
_08071A60: .4byte sub_8072390
	thumb_func_start sub_8071A64
sub_8071A64:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071AFE
	ldr r2, _08071B08 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071A96
	adds r1, #0xFF
_08071A96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071AA0
	adds r2, #0xFF
_08071AA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071AAA
	adds r3, #0xFF
_08071AAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071B0C @ =0x000021FB
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r2, #0xA0
	lsls r2, r2, #0x08
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	subs r1, #0x0C
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x03
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
	movs r0, #0x69
	bl play_sfx_80195B4
	ldr r0, _08071B10 @ =0x08072371
	str r0, [r4, #0x4C]
_08071AFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071B08: .4byte 0x000040B7
_08071B0C: .4byte 0x000021FB
_08071B10: .4byte sub_8072370
	thumb_func_start sub_8071B14
sub_8071B14:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08071BBE
	ldr r2, _08071BC8 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x66
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _08071B5A
	adds r2, #0xFF
_08071B5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _08071B64
	adds r3, #0xFF
_08071B64:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08071B6E
	adds r0, #0xFF
_08071B6E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071BCC @ =0x000040BB
	bl sub_807BF34
	adds r2, r0, #0x0
	ldr r0, [r4, #0x30]
	str r2, [r0, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x0A
	adds r1, r2, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x00
	str r0, [r2, #0x4C]
	ldr r0, _08071BD0 @ =0x08071BD5
	str r0, [r4, #0x4C]
_08071BBE:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071BC8: .4byte 0x000040B7
_08071BCC: .4byte 0x000040BB
_08071BD0: .4byte sub_8071BD4
	thumb_func_start sub_8071BD4
sub_8071BD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x30]
	ldr r0, [r5, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x18]
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	ble _08071C10
	b _08071E70
_08071C10:
	movs r0, #0x00
	str r0, [r5, #0x18]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r2, _08071E80 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08071C46
	adds r1, #0xFF
_08071C46:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _08071C50
	adds r2, #0xFF
_08071C50:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08071C5A
	adds r3, #0xFF
_08071C5A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08071E84 @ =0x00002204
	bl sub_80DF024
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08071C6C
	adds r1, #0xFF
_08071C6C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _08071C76
	adds r2, #0xFF
_08071C76:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08071C80
	adds r3, #0xFF
_08071C80:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08071E88 @ =0x0000220C
	bl sub_80DF024
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071C9C
	adds r2, #0xFF
_08071C9C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071CA6
	adds r3, #0xFF
_08071CA6:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071CB0
	adds r0, #0xFF
_08071CB0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r4, [r0, #0x30]
	movs r1, #0x74
	adds r1, r1, r5
	mov r9, r1
	ldrb r1, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r7, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r2, #0x7F
	strb r2, [r0, #0x00]
	adds r0, #0x27
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08071E90 @ =0x08087541
	str r2, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071E94 @ =0x080722E1
	str r0, [r4, #0x58]
	str r7, [r4, #0x5C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	ldr r2, _08071E98 @ =0x08072351
	mov r10, r2
	str r2, [r4, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071D38
	adds r2, #0xFF
_08071D38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071D42
	adds r3, #0xFF
_08071D42:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071D4C
	adds r0, #0xFF
_08071D4C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r6, r0, #0x0
	str r6, [r4, #0x30]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x0C
	movs r1, #0x3C
	strh r1, [r0, #0x00]
	mov r2, r10
	str r2, [r6, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071D8E
	adds r2, #0xFF
_08071D8E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071D98
	adds r3, #0xFF
_08071D98:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071DA2
	adds r0, #0xFF
_08071DA2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	str r7, [r0, #0x00]
	adds r0, #0x04
	movs r2, #0x33
	mov r10, r2
	str r2, [r0, #0x00]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r6, _08071E9C @ =0x0807223D
	str r6, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08071E90 @ =0x08087541
	str r2, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08071EA0 @ =0x08072295
	str r0, [r4, #0x58]
	str r7, [r4, #0x5C]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08071E1E
	adds r2, #0xFF
_08071E1E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x14]
	cmp r3, #0x00
	bge _08071E28
	adds r3, #0xFF
_08071E28:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08071E32
	adds r0, #0xFF
_08071E32:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071E8C @ =0x000040BA
	bl sub_807BF34
	adds r2, r0, #0x0
	str r2, [r4, #0x30]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x01
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	adds r0, #0x27
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	str r1, [r0, #0x00]
	str r6, [r2, #0x4C]
	ldr r0, [r2, #0x08]
	movs r2, #0x80
	strh r2, [r0, #0x04]
	ldr r0, _08071EA4 @ =0x08071EA9
	str r0, [r5, #0x4C]
_08071E70:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08071E80: .4byte 0x000040B7
_08071E84: .4byte 0x00002204
_08071E88: .4byte 0x0000220C
_08071E8C: .4byte 0x000040BA
_08071E90: .4byte sub_8087540
_08071E94: .4byte sub_80722E0
_08071E98: .4byte sub_8072350
_08071E9C: .4byte sub_807223C
_08071EA0: .4byte sub_8072294
_08071EA4: .4byte sub_8071EA8
	thumb_func_start sub_8071EA8
sub_8071EA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08071EC2
	b _08072080
_08071EC2:
	movs r0, #0xAC
	adds r0, r0, r5
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08071ED8
	b _08072080
_08071ED8:
	ldr r0, _08072090 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x58]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x18]
	ldr r2, _08072094 @ =0x000040AA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072098 @ =0x080720A9
	str r0, [r4, #0x4C]
	movs r2, #0x8C
	adds r2, r2, r6
	mov r8, r2
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x90
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r7, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08071F26
	adds r0, #0xFF
_08071F26:
	asrs r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0xB6
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08071F36
	adds r0, #0xFF
_08071F36:
	asrs r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0xB8
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08071F46
	adds r0, #0xFF
_08071F46:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xBA
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r1, [r3, #0x00]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r3, _0807209C @ =0x03001038
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r1, #0x66
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	mov r10, r0
	bl __divsi3
	cmp r0, #0x01
	bne _08071F9C
	movs r0, #0x02
_08071F9C:
	adds r1, r6, #0x0
	adds r1, #0xA4
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	movs r2, #0x00
	strh r2, [r0, #0x00]
	ldr r2, _080720A0 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08071FF2
	adds r0, #0xFF
_08071FF2:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08072002
	adds r0, #0xFF
_08072002:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08072012
	adds r0, #0xFF
_08072012:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r6, r1, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r2, _0807209C @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x01
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	mov r0, r10
	bl __divsi3
	cmp r0, #0x01
	bne _08072060
	movs r0, #0x02
_08072060:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	movs r0, #0x00
	mov r3, r9
	strh r0, [r3, #0x00]
	ldr r0, _080720A4 @ =0x08072151
	str r0, [r5, #0x4C]
_08072080:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072090: .4byte 0x03000FD8
_08072094: .4byte 0x000040AA
_08072098: .4byte sub_80720A8
_0807209C: .4byte 0x03001038
_080720A0: .4byte 0x000040B7
_080720A4: .4byte sub_8072150
	thumb_func_start sub_80720A8
sub_80720A8:
	push {r4, r5, r6, lr}
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
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
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
	blt _08072148
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _08072148
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	movs r0, #0x00
	str r0, [r6, #0x4C]
_08072148:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8072150
sub_8072150:
	push {r4, r5, r6, lr}
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
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
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
	blt _08072228
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _08072228
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080721F6
	adds r1, #0xFF
_080721F6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _08072200
	adds r2, #0xFF
_08072200:
	asrs r2, r2, #0x08
	cmp r0, #0x00
	bge _08072208
	adds r0, #0xFF
_08072208:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08072230 @ =0x00002214
	bl sub_80DF024
	ldr r2, _08072234 @ =0x000040B3
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	bl sub_807C298
	ldr r0, _08072238 @ =0x0808750D
	str r0, [r6, #0x4C]
_08072228:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08072230: .4byte 0x00002214
_08072234: .4byte 0x000040B3
_08072238: .4byte sub_808750C
	thumb_func_start sub_807223C
sub_807223C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08072274
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072262
	adds r0, #0xFF
_08072262:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0807228C
	adds r0, r4, #0x0
	bl sub_807F47C
	b _08072286
_08072274:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072280
	adds r0, #0xFF
_08072280:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _0807228C
_08072286:
	adds r0, r4, #0x0
	bl sub_807C298
_0807228C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8072294
sub_8072294:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	adds r1, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x32
	bhi _080722D0
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xF6
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	beq _080722D0
	adds r0, r2, #0x0
	movs r1, #0xC8
	bl sub_810835C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080722D0:
	ldr r1, _080722DC @ =0x0807223D
	str r1, [r5, #0x4C]
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080722DC: .4byte sub_807223C
	thumb_func_start sub_80722E0
sub_80722E0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, _080722F4 @ =0x080722F9
	str r1, [r4, #0x4C]
	pop {r4}
	pop {r1}
	bx r1
_080722F4: .4byte sub_80722F8
	thumb_func_start sub_80722F8
sub_80722F8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807232A
	ldr r0, [r4, #0x10]
	subs r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807231E
	adds r0, #0xFF
_0807231E:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08072348
	b _0807233C
_0807232A:
	ldr r0, [r4, #0x10]
	adds r0, r0, r2
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08072336
	adds r0, #0xFF
_08072336:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _08072348
_0807233C:
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	bl sub_807C298
_08072348:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8072350
sub_8072350:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08072368
	ldr r0, _0807236C @ =0x080722F9
	str r0, [r2, #0x4C]
_08072368:
	pop {r0}
	bx r0
_0807236C: .4byte sub_80722F8
	thumb_func_start sub_8072370
sub_8072370:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08072388
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0807238C @ =0x08071B15
	str r0, [r2, #0x4C]
_08072388:
	pop {r0}
	bx r0
_0807238C: .4byte sub_8071B14
	thumb_func_start sub_8072390
sub_8072390:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x46
	bne _080723B0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
_080723B0:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x14
	bne _080723C2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
_080723C2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080723F0
	ldr r2, _080723F8 @ =0x000040B7
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080723FC @ =0x08071A65
	str r0, [r5, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
_080723F0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080723F8: .4byte 0x000040B7
_080723FC: .4byte sub_8071A64
	thumb_func_start sub_8072400
sub_8072400:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _0807241C
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08072424 @ =0x08071901
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0807241C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08072424: .4byte sub_8071900
	thumb_func_start sub_8072428
sub_8072428:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807248E
	ldr r2, _08072494 @ =0x000040B3
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
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
	ldr r0, _08072498 @ =0x0808750D
	str r0, [r4, #0x4C]
_0807248E:
	pop {r4}
	pop {r0}
	bx r0
_08072494: .4byte 0x000040B3
_08072498: .4byte sub_808750C
	thumb_func_start sub_807249C
sub_807249C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080724D8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080724D8
	ldr r2, _080724E0 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080724E4 @ =0x0807148D
	str r0, [r4, #0x4C]
_080724D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080724E0: .4byte 0x000040B4
_080724E4: .4byte sub_807148C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x01, 0x25, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x29, 0x25, 0x07, 0x08
	thumb_func_start sub_8072500
sub_8072500:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08072520 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0x08
	movs r1, #0x2F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072524 @ =0x08072551
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08072520: .4byte 0x03000FD8
_08072524: .4byte sub_8072550
	thumb_func_start sub_8072528
sub_8072528:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08072548 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0x08
	movs r1, #0x2F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807254C @ =0x080725D1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08072548: .4byte 0x03000FD8
_0807254C: .4byte sub_80725D0
	thumb_func_start sub_8072550
sub_8072550:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080725C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080725C2
	adds r0, r5, #0x0
	movs r1, #0x30
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
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
	ldr r0, _080725CC @ =0x08072651
	str r0, [r4, #0x4C]
_080725C2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080725C8: .4byte 0x03000FD8
_080725CC: .4byte sub_8072650
	thumb_func_start sub_80725D0
sub_80725D0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08072648 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072642
	adds r0, r5, #0x0
	movs r1, #0x30
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
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
	ldr r0, _0807264C @ =0x08072679
	str r0, [r4, #0x4C]
_08072642:
	pop {r4, r5}
	pop {r0}
	bx r0
_08072648: .4byte 0x03000FD8
_0807264C: .4byte sub_8072678
	thumb_func_start sub_8072650
sub_8072650:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807266C
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072674 @ =0x0807197D
	str r0, [r4, #0x4C]
_0807266C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072674: .4byte sub_807197C
	thumb_func_start sub_8072678
sub_8072678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080726C2
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807269A
	adds r1, #0xFF
_0807269A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080726A4
	adds r2, #0xFF
_080726A4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080726AE
	adds r3, #0xFF
_080726AE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080726CC @ =0x00002222
	bl sub_80DF024
	ldr r0, _080726D0 @ =0x080726D5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
_080726C2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080726CC: .4byte 0x00002222
_080726D0: .4byte sub_80726D4
	thumb_func_start sub_80726D4
sub_80726D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x37
	bne _080726F4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
_080726F4:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072724
	ldr r0, _0807272C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x58]
	adds r4, #0x08
	adds r0, r5, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08072730 @ =0x000040AE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072734 @ =0x08072739
	str r0, [r5, #0x4C]
_08072724:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807272C: .4byte 0x03000FD8
_08072730: .4byte 0x000040AE
_08072734: .4byte sub_8072738
	thumb_func_start sub_8072738
sub_8072738:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072758
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08072760 @ =0x080712D9
	str r0, [r4, #0x4C]
_08072758:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072760: .4byte sub_80712D8
	thumb_func_start sub_8072764
sub_8072764:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08072778
	b _080728A6
_08072778:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807278C
	adds r1, #0xFF
_0807278C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08072796
	adds r2, #0xFF
_08072796:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080727A0
	adds r3, #0xFF
_080727A0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080728B0 @ =0x00002266
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080727B4
	adds r2, #0xFF
_080727B4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080727BE
	adds r3, #0xFF
_080727BE:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080727C8
	adds r0, #0xFF
_080727C8:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080728B4 @ =0x00004144
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
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
	ldr r0, _080728B8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080728BC @ =0x08074325
	str r0, [r5, #0x58]
	ldr r0, _080728C0 @ =0x080742FD
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _080728C4 @ =0x080743C5
	str r0, [r5, #0x4C]
	ldr r0, _080728C8 @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080728CC @ =0x0807442D
	str r0, [r6, #0x4C]
_080728A6:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080728B0: .4byte 0x00002266
_080728B4: .4byte 0x00004144
_080728B8: .4byte sub_8087540
_080728BC: .4byte sub_8074324
_080728C0: .4byte sub_80742FC
_080728C4: .4byte sub_80743C4
_080728C8: .4byte 0x0000010B
_080728CC: .4byte sub_807442C
	thumb_func_start sub_80728D0
sub_80728D0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807293A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08072940 @ =0x080743AD
	str r0, [r4, #0x4C]
_0807293A:
	pop {r4}
	pop {r0}
	bx r0
_08072940: .4byte sub_80743AC
	thumb_func_start sub_8072944
sub_8072944:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072980
	adds r0, #0xFF
_08072980:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072990
	adds r0, #0xFF
_08072990:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080729A0
	adds r0, #0xFF
_080729A0:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r5, r1, r0
	ldr r2, _08072A18 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080729D6
	ldr r1, _08072A1C @ =0x000003FF
	adds r0, r0, r1
_080729D6:
	asrs r7, r0, #0x0A
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _080729F0
	movs r0, #0x02
_080729F0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08072A20 @ =0x08072A25
	str r0, [r4, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072A18: .4byte 0x03001038
_08072A1C: .4byte 0x000003FF
_08072A20: .4byte sub_8072A24
	thumb_func_start sub_8072A24
sub_8072A24:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
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
	movs r7, #0x00
	ldsh r1, [r1, r7]
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
	movs r7, #0x00
	ldsh r1, [r1, r7]
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
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r7, #0xC0
	lsls r7, r7, #0x06
	adds r0, r0, r7
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08072B5A
	movs r5, #0x01
	negs r5, r5
	movs r0, #0xCC
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AD8
	adds r0, #0xFF
_08072AD8:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AE6
	adds r0, #0xFF
_08072AE6:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AF4
	adds r0, #0xFF
_08072AF4:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08072B2C @ =0x0000226E
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08072B0E
	adds r2, #0xFF
_08072B0E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08072B18
	adds r3, #0xFF
_08072B18:
	asrs r3, r3, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r5
	beq _08072B30
	movs r0, #0x13
	b _08072B32
	.byte 0x00, 0x00
_08072B2C: .4byte 0x0000226E
_08072B30:
	movs r0, #0x12
_08072B32:
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x1E
	str r0, [r1, #0x00]
	ldr r0, _08072B64 @ =0x0807438D
	str r0, [r6, #0x4C]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
_08072B5A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072B64: .4byte sub_807438C
	thumb_func_start sub_8072B68
sub_8072B68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08072BDE
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08072BDE
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD3
	bl play_sfx_80195B4
	ldr r0, _08072BE4 @ =0x080742D5
	str r0, [r4, #0x4C]
_08072BDE:
	pop {r4}
	pop {r0}
	bx r0
_08072BE4: .4byte sub_80742D4
	thumb_func_start sub_8072BE8
sub_8072BE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r9, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08072C12
	adds r0, #0xFF
_08072C12:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08072C22
	adds r0, #0xFF
_08072C22:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08072C32
	adds r0, #0xFF
_08072C32:
	asrs r0, r0, #0x08
	movs r1, #0xB2
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	movs r6, #0x00
	ldsh r0, [r5, r6]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	adds r2, #0xDC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _08072CDC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	mov r2, r8
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	muls r1, r5
	bl __divsi3
	cmp r0, #0x01
	bne _08072C8C
	movs r0, #0x02
_08072C8C:
	mov r2, r9
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
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x41
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08072CE0 @ =0x08074261
	str r0, [r4, #0x60]
	ldr r0, _08072CE4 @ =0x08072CE9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x05
	str r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072CDC: .4byte 0x03001038
_08072CE0: .4byte sub_8074260
_08072CE4: .4byte sub_8072CE8
	thumb_func_start sub_8072CE8
sub_8072CE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08072D26
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08072D04
	adds r1, #0xFF
_08072D04:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08072D0E
	adds r2, #0xFF
_08072D0E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08072D18
	adds r3, #0xFF
_08072D18:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08072DC4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r4, #0x00]
_08072D26:
	ldr r4, [r5, #0x08]
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x0E
	negs r0, r0
	adds r7, r5, #0x0
	adds r7, #0xA0
	ldr r1, [r7, #0x00]
	bl __divsi3
	strh r0, [r4, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r1, [r7, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	muls r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r7, #0x00]
	cmp r1, r0
	ble _08072DBC
	movs r0, #0xC0
	lsls r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r0, _08072DC8 @ =0x08072DCD
	str r0, [r5, #0x4C]
_08072DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072DC4: .4byte 0x00002276
_08072DC8: .4byte sub_8072DCC
	thumb_func_start sub_8072DCC
sub_8072DCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08072E0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08072DEC
	adds r1, #0xFF
_08072DEC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08072DF6
	adds r2, #0xFF
_08072DF6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08072E00
	adds r3, #0xFF
_08072E00:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08072EE4 @ =0x00002276
	bl sub_80DF024
	movs r0, #0x05
	str r0, [r5, #0x00]
_08072E0E:
	adds r3, r4, #0x0
	adds r3, #0xAC
	ldr r0, _08072EE8 @ =0xFFFFFE80
	adds r1, r0, #0x0
	ldrh r2, [r3, #0x00]
	adds r1, r1, r2
	movs r5, #0x00
	mov r8, r5
	movs r7, #0x01
	negs r7, r7
	strh r1, [r3, #0x00]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r5, [r0, #0x00]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x07
	adds r6, r0, r2
	str r1, [r4, #0x14]
	ldr r1, _08072EEC @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	bge _08072E4E
	adds r0, #0xFF
_08072E4E:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E62
	adds r0, #0x3F
_08072E62:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x04
	adds r0, r5, r0
	str r0, [r4, #0x10]
	ldr r1, _08072EF0 @ =0x08198504
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bge _08072E7A
	adds r0, #0xFF
_08072E7A:
	asrs r0, r0, #0x08
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08072E8C
	adds r0, #0x3F
_08072E8C:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x03
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, r6, r1
	str r1, [r4, #0x18]
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r2, r0
	bls _08072EAA
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
_08072EAA:
	ldr r0, _08072EF4 @ =0x00003FFF
	cmp r2, r0
	bhi _08072F34
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08072F34
	ldr r0, [r4, #0x2C]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08072EF8
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r2, r8
	strh r2, [r0, #0x0C]
	b _08072F30
_08072EE4: .4byte 0x00002276
_08072EE8: .4byte 0xFFFFFE80
_08072EEC: .4byte 0x08198584
_08072EF0: .4byte 0x08198504
_08072EF4: .4byte 0x00003FFF
_08072EF8:
	mov r5, r8
	str r5, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08072F16
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	b _08072F34
_08072F16:
	movs r0, #0xD3
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	mov r1, r8
	strh r1, [r0, #0x0C]
_08072F30:
	ldr r0, _08072F40 @ =0x0808750D
	str r0, [r4, #0x4C]
_08072F34:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08072F40: .4byte sub_808750C
	thumb_func_start sub_8072F44
sub_8072F44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08072FD2
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x08
	strh r0, [r1, #0x0C]
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
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	ldr r0, _08072FD8 @ =0x080741ED
	str r0, [r4, #0x4C]
_08072FD2:
	pop {r4, r5}
	pop {r0}
	bx r0
_08072FD8: .4byte sub_80741EC
	thumb_func_start sub_8072FDC
sub_8072FDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080730B8
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_0807303C:
	ldr r0, _080730A0 @ =0x03000E80
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080730A4
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _080730AE
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _080730AE
_080730A0: .4byte 0x03000E80
_080730A4:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_080730AE:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _0807303C
_080730B8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80730C8
sub_80730C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r5, r6, #0x0
	adds r5, #0x0C
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r6, #0x0
	adds r4, #0x84
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r3, r6, #0x0
	adds r3, #0x88
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r0, #0x08
	lsls r0, r0, #0x08
	adds r2, r6, #0x0
	adds r2, #0x8C
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	movs r7, #0x80
	lsls r7, r7, #0x01
	movs r0, #0x00
	mov r8, r0
	cmp r5, #0x00
	beq _080731A4
	str r4, [sp, #0x00C]
	mov r10, r3
	mov r9, r2
_08073128:
	ldr r0, _0807318C @ =0x03000E98
	mov r2, r8
	lsls r1, r2, #0x01
	adds r4, r1, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08073190
	ldr r1, [sp, #0x000]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x04]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x004]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x08]
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x008]
	muls r0, r1
	adds r1, r7, #0x0
	bl __divsi3
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x0C]
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	movs r1, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xFF
	bls _0807319A
	strh r1, [r4, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	b _0807319A
_0807318C: .4byte 0x03000E98
_08073190:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x04]
	str r0, [r5, #0x08]
	str r0, [r5, #0x0C]
_0807319A:
	ldr r5, [r5, #0x00]
	movs r0, #0x01
	add r8, r0
	cmp r5, #0x00
	bne _08073128
_080731A4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80731B4
sub_80731B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080731D0
	b _08073788
_080731D0:
	mov r0, r9
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073588 @ =0x08073799
	mov r1, r9
	str r0, [r1, #0x4C]
	ldr r3, [r1, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731F0
	adds r0, #0xFF
_080731F0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731FE
	adds r0, #0xFF
_080731FE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807320C
	adds r0, #0xFF
_0807320C:
	asrs r3, r0, #0x08
	mov r4, r9
	str r4, [sp, #0x000]
	ldr r0, _0807358C @ =0x000022D4
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r5, _08073590 @ =0x0000414D
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08073224
	adds r0, #0xFF
_08073224:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r6, r9
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _08073234
	adds r3, #0xFF
_08073234:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08073240
	adds r0, #0xFF
_08073240:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	movs r6, #0x00
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	mov r8, r3
	mov r3, r8
	orrs r0, r3
	strb r0, [r1, #0x00]
	str r6, [r4, #0x4C]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	str r2, [sp, #0x01C]
	cmp r0, #0x00
	bge _0807328E
	adds r0, #0xFF
_0807328E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r0, r9
	ldr r3, [r0, #0x14]
	cmp r3, #0x00
	bge _0807329E
	adds r3, #0xFF
_0807329E:
	asrs r3, r3, #0x08
	mov r10, r3
	mov r3, r9
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _080732AC
	adds r0, #0xFF
_080732AC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r3, r9
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	mov r3, r10
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	ldr r4, [sp, #0x01C]
	ldrb r1, [r4, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	str r6, [r5, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _080732F0
	adds r0, #0xFF
_080732F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r9
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _08073300
	adds r3, #0xFF
_08073300:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807330C
	adds r0, #0xFF
_0807330C:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	ldr r6, [sp, #0x01C]
	ldrb r1, [r6, #0x00]
	subs r0, #0x3E
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	str r0, [r4, #0x2C]
	adds r5, r4, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	movs r2, #0xAC
	add r2, r9
	mov r8, r2
	mov r3, r9
	adds r3, #0x9C
	str r3, [sp, #0x024]
	mov r6, r9
	adds r6, #0x84
	str r6, [sp, #0x020]
	ldr r6, _08073598 @ =0x03000E80
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	movs r7, #0x07
_080733E2:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x02]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x04]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x06]
	adds r6, #0x08
	subs r7, #0x04
	cmp r7, #0x00
	bge _080733E2
	movs r5, #0x00
	str r5, [r0, #0x00]
	str r5, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08073450
	adds r0, #0xFF
_08073450:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08073460
	adds r0, #0xFF
_08073460:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	mov r6, r9
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08073470
	adds r0, #0xFF
_08073470:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r7, #0x2C]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x9C
	str r1, [sp, #0x00C]
	adds r2, r4, #0x0
	adds r2, #0xA0
	str r2, [sp, #0x010]
	adds r3, r4, #0x0
	adds r3, #0xA4
	str r3, [sp, #0x014]
	adds r4, #0xA8
	str r4, [sp, #0x018]
	ldr r4, _0807359C @ =0x03000E98
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	movs r6, #0x07
_0807354C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x02]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	b _080735A0
	.byte 0x00, 0x00
_08073588: .4byte sub_8073798
_0807358C: .4byte 0x000022D4
_08073590: .4byte 0x0000414D
_08073594: .4byte 0x0000414B
_08073598: .4byte 0x03000E80
_0807359C: .4byte 0x03000E98
_080735A0:
	strh r3, [r4, #0x04]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x06]
	adds r4, #0x08
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807354C
	str r3, [r0, #0x00]
	str r3, [r7, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xAC
	strh r3, [r0, #0x00]
	mov r4, r8
	strh r3, [r4, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x28]
	movs r6, #0x80
	lsls r6, r6, #0x01
	str r6, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	mov r10, r0
	str r0, [r7, #0x30]
	mov r2, r10
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r5, #0x1F
	adds r0, r5, #0x0
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	mov r0, r10
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	mov r2, r10
	str r0, [r2, #0x2C]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r4, #0x61
	adds r0, r4, #0x0
	ands r0, r1
	movs r3, #0x21
	negs r3, r3
	ands r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _080736A8 @ =0x08087541
	mov r8, r0
	mov r1, r10
	str r0, [r1, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r2, #0x28]
	str r6, [sp, #0x000]
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	mov r6, r10
	str r3, [r6, #0x30]
	adds r1, r3, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	strb r5, [r1, #0x00]
	ldr r2, [sp, #0x01C]
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x2C]
	str r0, [r3, #0x2C]
	adds r1, r3, #0x0
	adds r1, #0x77
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x21
	negs r0, r0
	ands r4, r0
	strb r4, [r1, #0x00]
	mov r1, r8
	str r1, [r3, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r3, #0x6C]
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _080736E8
	cmp r0, #0x01
	bgt _080736AC
	cmp r0, #0x00
	beq _080736B2
	b _0807374A
	.byte 0x00, 0x00
_080736A4: .4byte 0x0000414C
_080736A8: .4byte sub_8087540
_080736AC:
	cmp r0, #0x02
	beq _0807371A
	b _0807374A
_080736B2:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0xB6
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x7C
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x84
	str r0, [r1, #0x00]
	movs r0, #0xA0
	ldr r6, [sp, #0x014]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0xCC
	str r0, [r1, #0x00]
	movs r0, #0x1E
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	b _08073778
_080736E8:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xA0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x00C]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x014]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x018]
	str r0, [r6, #0x00]
	b _08073778
_0807371A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA0
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x018]
	str r0, [r4, #0x00]
	b _08073778
_0807374A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x00C]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x014]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
_08073778:
	movs r0, #0x1E
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5E
	bl play_sfx_80195B4
_08073788:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8073798
sub_8073798:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x30]
	ldr r5, [r0, #0x30]
	ldr r7, [r5, #0x30]
	ldr r0, [r7, #0x30]
	mov r9, r0
	ldr r1, [r0, #0x30]
	mov r10, r1
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r4, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _080737C8
	adds r0, #0xFF
_080737C8:
	asrs r0, r0, #0x08
	movs r2, #0xFF
	mov r12, r2
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F4 @ =0x08198584
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080737E0
	adds r0, #0x3F
_080737E0:
	asrs r2, r0, #0x06
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x004]
	cmp r0, #0x00
	bge _080737F2
	adds r0, #0xFF
_080737F2:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	ldr r2, [r3, #0x00]
	str r1, [sp, #0x018]
	str r0, [sp, #0x010]
	cmp r2, #0x00
	bge _0807380E
	adds r2, #0xFF
_0807380E:
	asrs r0, r2, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F8 @ =0x08198504
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073824
	adds r0, #0x3F
_08073824:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08073832
	adds r0, #0xFF
_08073832:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	ldr r4, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	str r2, [sp, #0x01C]
	str r1, [sp, #0x00C]
	adds r6, r0, #0x0
	cmp r3, #0x00
	bge _08073854
	adds r3, #0xFF
_08073854:
	asrs r0, r3, #0x08
	mov r1, r12
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _080738F4 @ =0x08198584
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807386A
	adds r0, #0x3F
_0807386A:
	asrs r2, r0, #0x06
	adds r1, r7, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	muls r0, r2
	str r1, [sp, #0x008]
	cmp r0, #0x00
	bge _0807387C
	adds r0, #0xFF
_0807387C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r3, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r4, r1, #0x0
	str r0, [sp, #0x014]
	cmp r2, #0x00
	bge _08073898
	adds r2, #0xFF
_08073898:
	asrs r0, r2, #0x08
	mov r2, r12
	ands r0, r2
	lsls r0, r0, #0x01
	ldr r1, _080738F8 @ =0x08198504
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080738AE
	adds r0, #0x3F
_080738AE:
	asrs r1, r0, #0x06
	ldr r2, [sp, #0x008]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080738BC
	adds r0, #0xFF
_080738BC:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	adds r1, r7, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r2, r8
	adds r2, #0x9C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _0807393E
	mov r0, r8
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bgt _0807391E
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _0807390E
	cmp r0, #0x01
	bgt _080738FC
	cmp r0, #0x00
	beq _08073906
	b _0807391E
	.byte 0x00, 0x00
_080738F4: .4byte 0x08198584
_080738F8: .4byte 0x08198504
_080738FC:
	cmp r0, #0x02
	beq _08073916
	cmp r0, #0x03
	beq _08073916
	b _0807391E
_08073906:
	ldr r0, [r6, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	b _0807391A
_0807390E:
	ldr r0, [r6, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	b _0807391A
_08073916:
	ldr r0, [r6, #0x00]
	ldr r2, _08073968 @ =0xFFFFFF00
_0807391A:
	adds r0, r0, r2
	str r0, [r6, #0x00]
_0807391E:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	mov r2, r10
	str r0, [r2, #0x10]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r10
	str r0, [r1, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
_0807393E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08073A18
	mov r0, r8
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bgt _080739A2
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _08073984
	cmp r0, #0x01
	bgt _0807396C
	cmp r0, #0x00
	beq _08073976
	b _080739A2
_08073968: .4byte 0xFFFFFF00
_0807396C:
	cmp r0, #0x02
	beq _08073994
	cmp r0, #0x03
	beq _08073994
	b _080739A2
_08073976:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073980 @ =0xFFFFFF00
	b _0807399E
_08073980: .4byte 0xFFFFFF00
_08073984:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08073990 @ =0xFFFFFE80
	b _0807399E
	.byte 0x00, 0x00
_08073990: .4byte 0xFFFFFE80
_08073994:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
_0807399E:
	adds r0, r0, r2
	str r0, [r1, #0x00]
_080739A2:
	ldr r1, [sp, #0x018]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r1, r9
	str r0, [r1, #0x10]
	ldr r2, [sp, #0x01C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	mov r2, r9
	str r0, [r2, #0x14]
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r2, #0x18]
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08073A18
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x08
	bne _080739EE
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080739EE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08073A18
	mov r0, r9
	bl sub_807F4FC
	mov r0, r10
	bl sub_807F4FC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073A18:
	mov r0, r8
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r1, #0x01
	strh r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _08073AC8
	movs r2, #0x00
	ldr r0, _08073AEC @ =0x03000E80
	ldrh r1, [r0, #0x00]
	adds r4, r0, #0x0
	ldr r3, _08073AF0 @ =0x03000E98
	cmp r1, #0x00
	beq _08073A70
	adds r1, r4, #0x0
_08073A3A:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073A70
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073A70
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073A70
	cmp r2, #0x0B
	ble _08073A3A
_08073A70:
	cmp r2, #0x0B
	bgt _08073A7C
	lsls r0, r2, #0x01
	adds r0, r0, r4
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073A7C:
	movs r2, #0x00
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, r3, #0x0
_08073A86:
	adds r2, #0x01
	ldrh r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x06]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x08]
	cmp r0, #0x00
	beq _08073ABC
	adds r2, #0x01
	ldrh r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _08073ABC
	adds r1, #0x0C
	adds r2, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08073ABC
	cmp r2, #0x0B
	ble _08073A86
_08073ABC:
	cmp r2, #0x0B
	bgt _08073AC8
	lsls r0, r2, #0x01
	adds r0, r0, r3
	movs r1, #0x01
	strh r1, [r0, #0x00]
_08073AC8:
	adds r0, r5, #0x0
	bl sub_8072FDC
	adds r0, r7, #0x0
	bl sub_80730C8
	mov r0, r8
	ldr r2, [r0, #0x30]
	ldr r4, [r2, #0x30]
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08073B0C
	cmp r0, #0x01
	bgt _08073AF4
	cmp r0, #0x00
	beq _08073AFE
	b _08073B88
_08073AEC: .4byte 0x03000E80
_08073AF0: .4byte 0x03000E98
_08073AF4:
	cmp r0, #0x02
	beq _08073B3C
	cmp r0, #0x03
	beq _08073B6C
	b _08073B88
_08073AFE:
	ldr r1, [r6, #0x00]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08073B0A
	b _08073C06
_08073B0A:
	b _08073B44
_08073B0C:
	ldr r1, [r6, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08073C06
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B38 @ =0x08074165
	mov r1, r8
	str r0, [r1, #0x4C]
	b _08073C06
	.byte 0x00, 0x00
_08073B38: .4byte sub_8074164
_08073B3C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B64 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
_08073B44:
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	mov r0, r8
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073B68 @ =0x08074165
	mov r2, r8
	str r0, [r2, #0x4C]
	b _08073C06
_08073B64: .4byte 0x00004FFF
_08073B68: .4byte sub_8074164
_08073B6C:
	ldr r1, [r6, #0x00]
	ldr r0, _08073B84 @ =0x00004FFF
	cmp r1, r0
	bgt _08073C06
	movs r0, #0x04
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r1, r8
	adds r1, #0xAE
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	b _08073C06
_08073B84: .4byte 0x00004FFF
_08073B88:
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073BEA
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xB4
	lsls r0, r0, #0x07
	str r0, [r6, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x84
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r0, #0x3C
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x00]
	movs r1, #0x61
	ldr r2, [sp, #0x00C]
	str r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r1, [r0, #0x00]
	movs r0, #0x81
	ldr r1, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	b _08073C06
_08073BEA:
	cmp r0, #0x08
	bne _08073C06
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08073C06:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8073C18
sub_8073C18:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08073C34
	b _08073E1E
_08073C34:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0xD5
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C64
	adds r0, #0xFF
_08073C64:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C72
	adds r0, #0xFF
_08073C72:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08073C80
	adds r0, #0xFF
_08073C80:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08073E30 @ =0x000022E8
	bl sub_80DF024
	movs r0, #0x9C
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073C9A
	adds r2, #0xFF
_08073C9A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073CA4
	adds r0, #0xFF
_08073CA4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073CB2
	adds r0, #0xFF
_08073CB2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x74
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r3, r5, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r2, [r0, #0x00]
	adds r0, #0x08
	str r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r2, _08073E44 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	movs r7, #0x01
	mov r3, r8
	ldr r0, [r3, #0x00]
	mov r9, r4
	movs r1, #0xA0
	adds r1, r1, r6
	mov r10, r1
	adds r2, r6, #0x0
	adds r2, #0xA8
	str r2, [sp, #0x00C]
	cmp r7, r0
	bge _08073E0C
_08073D50:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08073D5A
	adds r2, #0xFF
_08073D5A:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08073D64
	adds r0, #0xFF
_08073D64:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x0A
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08073D72
	adds r0, #0xFF
_08073D72:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073E34 @ =0x0000414E
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	adds r3, #0x20
	adds r0, r3, #0x0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r0, _08073E38 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r7, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA4
	lsls r0, r7, #0x08
	mov r2, r8
	ldr r1, [r2, #0x00]
	bl __divsi3
	lsls r0, r0, #0x08
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08073E3C @ =0x08073EAD
	str r0, [r5, #0x4C]
	ldr r0, _08073E40 @ =0x080740D5
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	ldr r3, _08073E44 @ =0xFFFFF600
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r7, #0x01
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r7, r0
	blt _08073D50
_08073E0C:
	movs r0, #0x00
	str r0, [r5, #0x30]
	mov r2, r10
	str r0, [r2, #0x00]
	movs r0, #0x30
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	ldr r0, _08073E48 @ =0x0807413D
	str r0, [r6, #0x4C]
_08073E1E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073E30: .4byte 0x000022E8
_08073E34: .4byte 0x0000414E
_08073E38: .4byte sub_8087540
_08073E3C: .4byte sub_8073EAC
_08073E40: .4byte sub_80740D4
_08073E44: .4byte 0xFFFFF600
_08073E48: .4byte sub_807413C
	thumb_func_start sub_8073E4C
sub_8073E4C:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, _08073EA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	ldr r2, [r1, #0x74]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08073E7C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08073E7C
	adds r1, r3, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08073E7C:
	adds r2, r3, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08073E9C
	adds r1, r3, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x3C
	strh r0, [r2, #0x00]
	ldr r0, _08073EA8 @ =0x0807411D
	str r0, [r3, #0x4C]
_08073E9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08073EA4: .4byte 0x03000FD8
_08073EA8: .4byte sub_807411C
	thumb_func_start sub_8073EAC
sub_8073EAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	adds r0, #0xB0
	ldr r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08073F38 @ =0x08198584
	adds r6, r5, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073ECE
	adds r0, #0xFF
_08073ECE:
	asrs r0, r0, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073EE2
	adds r0, #0x3F
_08073EE2:
	asrs r0, r0, #0x06
	adds r1, r0, #0x0
	muls r1, r3
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r1, _08073F3C @ =0x08198504
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073EFC
	adds r0, #0xFF
_08073EFC:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073F0E
	adds r0, #0x3F
_08073F0E:
	asrs r4, r0, #0x06
	adds r0, r3, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08073F40
	ldr r0, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _08073F44
	.byte 0x00, 0x00
_08073F38: .4byte 0x08198584
_08073F3C: .4byte 0x08198504
_08073F40:
	ldr r0, [r6, #0x00]
	adds r0, #0xE0
_08073F44:
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08073F62
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073F6C @ =0x08073F71
	str r0, [r5, #0x4C]
_08073F62:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073F6C: .4byte sub_8073F70
	thumb_func_start sub_8073F70
sub_8073F70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	adds r0, #0xB0
	ldr r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08073FFC @ =0x08198584
	adds r6, r5, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073F92
	adds r0, #0xFF
_08073F92:
	asrs r0, r0, #0x08
	movs r4, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073FA6
	adds r0, #0x3F
_08073FA6:
	asrs r0, r0, #0x06
	adds r1, r0, #0x0
	muls r1, r3
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r1, _08074000 @ =0x08198504
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08073FC0
	adds r0, #0xFF
_08073FC0:
	asrs r0, r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08073FD2
	adds r0, #0x3F
_08073FD2:
	asrs r4, r0, #0x06
	adds r0, r3, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08074004
	ldr r0, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _08074008
	.byte 0x00, 0x00
_08073FFC: .4byte 0x08198584
_08074000: .4byte 0x08198504
_08074004:
	ldr r0, [r6, #0x00]
	adds r0, #0xE0
_08074008:
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074024
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08074030 @ =0x08074035
	str r0, [r5, #0x4C]
_08074024:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074030: .4byte sub_8074034
	thumb_func_start sub_8074034
sub_8074034:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r4, r2, #0x0
	adds r4, #0x84
	ldr r1, _080740AC @ =0x08198584
	adds r3, r2, #0x0
	adds r3, #0xA4
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0807404A
	adds r0, #0xFF
_0807404A:
	asrs r0, r0, #0x08
	movs r5, #0xFF
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807405E
	adds r0, #0x3F
_0807405E:
	asrs r1, r0, #0x06
	movs r0, #0x90
	muls r1, r0
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	adds r4, #0x88
	ldr r1, _080740B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _08074078
	adds r0, #0xFF
_08074078:
	asrs r0, r0, #0x08
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807408A
	adds r0, #0x3F
_0807408A:
	asrs r1, r0, #0x06
	movs r0, #0x30
	muls r1, r0
	ldr r0, [r4, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x14]
	ldr r0, [r2, #0x28]
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080740B4
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	b _080740B8
	.byte 0x00, 0x00
_080740AC: .4byte 0x08198584
_080740B0: .4byte 0x08198504
_080740B4:
	ldr r0, [r3, #0x00]
	adds r0, #0xE0
_080740B8:
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080740CC
	adds r0, r2, #0x0
	bl sub_807C298
_080740CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80740D4
sub_80740D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074110
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080740EA
	adds r1, #0xFF
_080740EA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080740F4
	adds r2, #0xFF
_080740F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080740FE
	adds r3, #0xFF
_080740FE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074118 @ =0x000022F0
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08074110:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074118: .4byte 0x000022F0
	thumb_func_start sub_807411C
sub_807411C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074134
	ldr r0, _08074138 @ =0x080744B5
	str r0, [r2, #0x4C]
_08074134:
	pop {r0}
	bx r0
_08074138: .4byte sub_80744B4
	thumb_func_start sub_807413C
sub_807413C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x71
	ble _0807415C
	movs r0, #0x72
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, #0xBA
	strh r0, [r1, #0x00]
	ldr r0, _08074160 @ =0x08074509
	str r0, [r2, #0x4C]
_0807415C:
	pop {r0}
	bx r0
_08074160: .4byte sub_8074508
	thumb_func_start sub_8074164
sub_8074164:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r4, [r0, #0x30]
	bl sub_8072FDC
	adds r0, r4, #0x0
	bl sub_80730C8
	movs r1, #0x00
	movs r4, #0x00
	ldr r3, _080741E0 @ =0x03000E80
	ldr r2, _080741E4 @ =0x03000E98
_0807417E:
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0807418A
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0807418A:
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08074196
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08074196:
	ldrh r0, [r3, #0x02]
	cmp r0, #0x00
	beq _080741A2
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741A2:
	ldrh r0, [r2, #0x02]
	cmp r0, #0x00
	beq _080741AE
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741AE:
	ldrh r0, [r3, #0x04]
	cmp r0, #0x00
	beq _080741BA
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741BA:
	ldrh r0, [r2, #0x04]
	cmp r0, #0x00
	beq _080741C6
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080741C6:
	adds r3, #0x06
	adds r2, #0x06
	adds r4, #0x03
	cmp r4, #0x0B
	ble _0807417E
	cmp r1, #0x00
	bne _080741D8
	ldr r0, _080741E8 @ =0x080745A9
	str r0, [r5, #0x4C]
_080741D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080741E0: .4byte 0x03000E80
_080741E4: .4byte 0x03000E98
_080741E8: .4byte sub_80745A8
	thumb_func_start sub_80741EC
sub_80741EC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08074254
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08074208
	adds r2, #0xFF
_08074208:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08074212
	adds r3, #0xFF
_08074212:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08074228
	movs r0, #0x13
	b _0807422A
_08074228:
	movs r0, #0x12
_0807422A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _0807425C @ =0x0807462D
	str r0, [r4, #0x4C]
_08074254:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807425C: .4byte sub_807462C
	thumb_func_start sub_8074260
sub_8074260:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080742CC
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _080742C8 @ =0x08072F45
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _080742CE
	.byte 0x00, 0x00
_080742C8: .4byte sub_8072F44
_080742CC:
	adds r0, r5, #0x0
_080742CE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80742D4
sub_80742D4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080742F0
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080742F8 @ =0x08072BE9
	str r0, [r4, #0x4C]
_080742F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080742F8: .4byte sub_8072BE8
	thumb_func_start sub_80742FC
sub_80742FC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074318
	ldr r0, _08074320 @ =0x08072945
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	movs r0, #0x00
_08074318:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08074320: .4byte sub_8072944
	thumb_func_start sub_8074324
sub_8074324:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074344
	adds r0, #0xFF
_08074344:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074352
	adds r0, #0xFF
_08074352:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08074360
	adds r0, #0xFF
_08074360:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074388 @ =0x0000226E
	bl sub_80DF024
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08074388: .4byte 0x0000226E
	thumb_func_start sub_807438C
sub_807438C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080743A8
	movs r0, #0x00
	str r0, [r2, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
_080743A8:
	pop {r0}
	bx r0
	thumb_func_start sub_80743AC
sub_80743AC:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080743BE
	adds r0, r1, #0x0
	bl sub_807C298
_080743BE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80743C4
sub_80743C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074420
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
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
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074428 @ =0x08074689
	str r0, [r4, #0x4C]
_08074420:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074428: .4byte sub_8074688
	thumb_func_start sub_807442C
sub_807442C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807444C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0807444C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x51, 0x45, 0x07, 0x08, 0x30, 0xB5
	.byte 0x05, 0x1C, 0x2C, 0x1C, 0x9C, 0x34, 0x20, 0x68, 0x00, 0x28, 0x04, 0xD1, 0x25, 0xF1, 0x5F, 0xFD
	.byte 0x03, 0x21, 0x01, 0x40, 0x21, 0x60, 0x02, 0x48, 0xE8, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0xE5, 0x45, 0x07, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68
	.byte 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x49, 0x46, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x46
	.byte 0x07, 0x08
	thumb_func_start sub_80744B4
sub_80744B4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080744CC
	adds r1, #0xFF
_080744CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080744D6
	adds r2, #0xFF
_080744D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080744E0
	adds r3, #0xFF
_080744E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074500 @ =0x000022E2
	bl sub_80DF024
	movs r0, #0x8B
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08074504 @ =0x080746C5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074500: .4byte 0x000022E2
_08074504: .4byte sub_80746C4
	thumb_func_start sub_8074508
sub_8074508:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _08074520
	movs r0, #0xD5
	bl stop_sfx_80195A8
	ldr r0, _0807451C @ =0x080744B5
	b _08074544
_0807451C: .4byte sub_80744B4
_08074520:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074546
	movs r0, #0x01
	bl sub_810CA8C
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xB4
	strh r0, [r4, #0x00]
	ldr r0, _0807454C @ =0x080746ED
_08074544:
	str r0, [r5, #0x4C]
_08074546:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807454C: .4byte sub_80746EC
	thumb_func_start sub_8074550
sub_8074550:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807456E
	adds r0, #0xFF
_0807456E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807457C
	adds r0, #0xFF
_0807457C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807458A
	adds r0, #0xFF
_0807458A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080745A0 @ =0x000022DC
	bl sub_80DF024
	ldr r0, _080745A4 @ =0x08073C19
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080745A0: .4byte 0x000022DC
_080745A4: .4byte sub_8073C18
	thumb_func_start sub_80745A8
sub_80745A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	ldr r6, [r0, #0x30]
	ldr r5, [r6, #0x30]
	ldr r4, [r5, #0x30]
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	adds r0, r5, #0x0
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
	movs r0, #0x5E
	bl stop_sfx_80195A8
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80745E4
sub_80745E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080745FC
	adds r1, #0xFF
_080745FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074606
	adds r2, #0xFF
_08074606:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074610
	adds r3, #0xFF
_08074610:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x8B
	lsls r0, r0, #0x06
	bl sub_80DF024
	ldr r0, _08074628 @ =0x080731B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08074628: .4byte sub_80731B4
	thumb_func_start sub_807462C
sub_807462C:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074644
	movs r0, #0x00
	str r0, [r2, #0x4C]
_08074644:
	pop {r0}
	bx r0
	thumb_func_start sub_8074648
sub_8074648:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08074664
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08074668
_08074664:
	adds r0, r4, #0x0
	movs r1, #0x0D
_08074668:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08074684 @ =0x08072B69
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074684: .4byte sub_8072B68
	thumb_func_start sub_8074688
sub_8074688:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080746A0
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080746A4 @ =0x080728D1
	str r0, [r2, #0x4C]
_080746A0:
	pop {r0}
	bx r0
_080746A4: .4byte sub_80728D0
	thumb_func_start sub_80746A8
sub_80746A8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080746C0 @ =0x08072765
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080746C0: .4byte sub_8072764
	thumb_func_start sub_80746C4
sub_80746C4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080746E4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080746E4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80746EC
sub_80746EC:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08074704
	ldr r0, _08074708 @ =0x0807470D
	str r0, [r2, #0x4C]
_08074704:
	pop {r0}
	bx r0
_08074708: .4byte sub_807470C
	thumb_func_start sub_807470C
sub_807470C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x30]
	cmp r0, #0x00
	bne _08074720
	ldr r0, _0807471C @ =0x080744B5
	b _0807473A
	.byte 0x00, 0x00
_0807471C: .4byte sub_80744B4
_08074720:
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x8F
	ble _0807473C
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x96
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08074740 @ =0x08073E4D
_0807473A:
	str r0, [r2, #0x4C]
_0807473C:
	pop {r0}
	bx r0
_08074740: .4byte sub_8073E4C
	thumb_func_start sub_8074744
sub_8074744:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080747CC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _0807476C
	cmp r1, #0x02
	bne _08074792
_0807476C:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074774
	adds r1, #0xFF
_08074774:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807477E
	adds r2, #0xFF
_0807477E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074788
	adds r3, #0xFF
_08074788:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074804 @ =0x0000242B
	bl sub_80DF024
_08074792:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _080747C4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080747A6
	adds r1, #0xFF
_080747A6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080747B0
	adds r2, #0xFF
_080747B0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080747BA
	adds r3, #0xFF
_080747BA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074808 @ =0x00002434
	bl sub_80DF024
_080747C4:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_080747CC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08074822
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08074822
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0807480C
	cmp r0, #0x01
	beq _08074812
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08074816
	.byte 0x00, 0x00
_08074804: .4byte 0x0000242B
_08074808: .4byte 0x00002434
_0807480C:
	adds r0, r4, #0x0
	movs r1, #0x04
	b _08074816
_08074812:
	adds r0, r4, #0x0
	movs r1, #0x08
_08074816:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807482C @ =0x08074831
	str r0, [r4, #0x4C]
_08074822:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807482C: .4byte sub_8074830
	thumb_func_start sub_8074830
sub_8074830:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0807484C
	b _08074BE8
_0807484C:
	adds r0, r6, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r0
	cmp r1, #0x00
	beq _08074864
	cmp r1, #0x01
	beq _0807486A
	adds r0, r6, #0x0
	movs r1, #0x0D
	b _0807486E
_08074864:
	adds r0, r6, #0x0
	movs r1, #0x05
	b _0807486E
_0807486A:
	adds r0, r6, #0x0
	movs r1, #0x09
_0807486E:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08074898 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0A
	bl __umodsi3
	cmp r0, #0x03
	bhi _0807489C
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r0, #0x01
	b _080748A2
	.byte 0x00, 0x00
_08074898: .4byte 0x00000119
_0807489C:
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r0, #0x00
_080748A2:
	strh r0, [r1, #0x00]
	adds r7, r1, #0x0
	ldr r0, _08074940 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r10, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x00C]
	mov r3, r9
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	beq _080748C6
	cmp r0, #0x02
	beq _080748C6
	b _08074A42
_080748C6:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080748CE
	adds r1, #0xFF
_080748CE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080748D8
	adds r2, #0xFF
_080748D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080748E2
	adds r3, #0xFF
_080748E2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08074944 @ =0x000023A9
	bl sub_80DF024
	movs r2, #0x00
	mov r8, r2
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, #0x00
	beq _0807494C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08074902
	adds r0, #0xFF
_08074902:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1D
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074910
	adds r0, #0xFF
_08074910:
	asrs r0, r0, #0x08
	subs r3, r0, #0x6
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0807491C
	adds r0, #0xFF
_0807491C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08074948 @ =0x00004053
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	b _08074998
	.byte 0x00, 0x00
_08074940: .4byte 0x03000FD8
_08074944: .4byte 0x000023A9
_08074948: .4byte 0x00004053
_0807494C:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08074956
	adds r0, #0xFF
_08074956:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1D
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074964
	adds r0, #0xFF
_08074964:
	asrs r0, r0, #0x08
	subs r3, r0, #0x6
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08074970
	adds r0, #0xFF
_08074970:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08074AC8 @ =0x00004051
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x04
	mov r8, r2
_08074998:
	ldr r0, _08074ACC @ =0x08074C11
	str r0, [r5, #0x4C]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	movs r3, #0x77
	adds r3, r3, r6
	mov r12, r3
	ldrb r0, [r3, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08074AD0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08074AD4 @ =0x08075EFD
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0xA0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r3, _08074AD8 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r3, r10
	ldr r0, [r3, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	add r0, r8
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_08074A42:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08074A52
	b _08074BDA
_08074A52:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08074A5A
	adds r1, #0xFF
_08074A5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08074A64
	adds r2, #0xFF
_08074A64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08074A6E
	adds r3, #0xFF
_08074A6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08074ADC @ =0x000023B6
	bl sub_80DF024
	movs r2, #0x00
	mov r8, r2
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, #0x00
	beq _08074AE4
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08074A8E
	adds r2, #0xFF
_08074A8E:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074A98
	adds r0, #0xFF
_08074A98:
	asrs r0, r0, #0x08
	adds r3, r0, #0x3
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08074AA4
	adds r0, #0xFF
_08074AA4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08074AE0 @ =0x00004054
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	b _08074B2C
	.byte 0x00, 0x00
_08074AC8: .4byte 0x00004051
_08074ACC: .4byte sub_8074C10
_08074AD0: .4byte sub_8087540
_08074AD4: .4byte sub_8075EFC
_08074AD8: .4byte 0xFFFFE000
_08074ADC: .4byte 0x000023B6
_08074AE0: .4byte 0x00004054
_08074AE4:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08074AEE
	adds r2, #0xFF
_08074AEE:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074AF8
	adds r0, #0xFF
_08074AF8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x3
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08074B04
	adds r0, #0xFF
_08074B04:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08074BF8 @ =0x00004052
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x04
	mov r8, r2
_08074B2C:
	ldr r0, _08074BFC @ =0x08074DE1
	str r0, [r5, #0x4C]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	movs r3, #0x77
	adds r3, r3, r6
	mov r12, r3
	ldrb r0, [r3, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08074C00 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08074C04 @ =0x08075EFD
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0xA0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r3, _08074C08 @ =0xFFFFD000
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r3, [sp, #0x00C]
	ldr r0, [r3, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	add r0, r8
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_08074BDA:
	ldr r0, _08074C0C @ =0x08075F4D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_08074BE8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08074BF8: .4byte 0x00004052
_08074BFC: .4byte sub_8074DE0
_08074C00: .4byte sub_8087540
_08074C04: .4byte sub_8075EFC
_08074C08: .4byte 0xFFFFD000
_08074C0C: .4byte sub_8075F4C
	thumb_func_start sub_8074C10
sub_8074C10:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074C2E
	ldr r1, [r4, #0x08]
	movs r3, #0xC0
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
_08074C2E:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074C9E
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074C74
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074C4E
	adds r1, #0xFF
_08074C4E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074C58
	adds r2, #0xFF
_08074C58:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074C62
	adds r3, #0xFF
_08074C62:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074C70 @ =0x000023C3
	bl sub_80DF024
	b _08074C9A
_08074C70: .4byte 0x000023C3
_08074C74:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074C7C
	adds r1, #0xFF
_08074C7C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074C86
	adds r2, #0xFF
_08074C86:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074C90
	adds r3, #0xFF
_08074C90:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074CB4 @ =0x000023CC
	bl sub_80DF024
_08074C9A:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074C9E:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074D0A
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074CBC
	ldr r0, _08074CB8 @ =0x08074D1D
	b _08074D08
_08074CB4: .4byte 0x000023CC
_08074CB8: .4byte sub_8074D1C
_08074CBC:
	ldr r0, _08074D14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x30]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074D18 @ =0x08075E9D
_08074D08:
	str r0, [r4, #0x4C]
_08074D0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074D14: .4byte 0x03000FD8
_08074D18: .4byte sub_8075E9C
	thumb_func_start sub_8074D1C
sub_8074D1C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074D3A
	ldr r1, [r4, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_08074D3A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074DAA
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074D80
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074D5A
	adds r1, #0xFF
_08074D5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074D64
	adds r2, #0xFF
_08074D64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074D6E
	adds r3, #0xFF
_08074D6E:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074D7C @ =0x000023C3
	bl sub_80DF024
	b _08074DA6
_08074D7C: .4byte 0x000023C3
_08074D80:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074D88
	adds r1, #0xFF
_08074D88:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074D92
	adds r2, #0xFF
_08074D92:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074D9C
	adds r3, #0xFF
_08074D9C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074DDC @ =0x000023CC
	bl sub_80DF024
_08074DA6:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074DAA:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08074DBC
	adds r1, #0xFF
_08074DBC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08074DD2
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_08074DD2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074DDC: .4byte 0x000023CC
	thumb_func_start sub_8074DE0
sub_8074DE0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074DFE
	ldr r1, [r4, #0x08]
	movs r3, #0xC0
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
_08074DFE:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074E6E
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074E44
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074E1E
	adds r1, #0xFF
_08074E1E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074E28
	adds r2, #0xFF
_08074E28:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074E32
	adds r3, #0xFF
_08074E32:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074E40 @ =0x000023C3
	bl sub_80DF024
	b _08074E6A
_08074E40: .4byte 0x000023C3
_08074E44:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074E4C
	adds r1, #0xFF
_08074E4C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074E56
	adds r2, #0xFF
_08074E56:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074E60
	adds r3, #0xFF
_08074E60:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074E84 @ =0x000023CC
	bl sub_80DF024
_08074E6A:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074E6E:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074EDA
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074E8C
	ldr r0, _08074E88 @ =0x08074EED
	b _08074ED8
_08074E84: .4byte 0x000023CC
_08074E88: .4byte sub_8074EEC
_08074E8C:
	ldr r0, _08074EE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x30]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074EE8 @ =0x08075E3D
_08074ED8:
	str r0, [r4, #0x4C]
_08074EDA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074EE4: .4byte 0x03000FD8
_08074EE8: .4byte sub_8075E3C
	thumb_func_start sub_8074EEC
sub_8074EEC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074F0A
	ldr r1, [r4, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_08074F0A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074F7A
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074F50
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074F2A
	adds r1, #0xFF
_08074F2A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074F34
	adds r2, #0xFF
_08074F34:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074F3E
	adds r3, #0xFF
_08074F3E:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074F4C @ =0x000023C3
	bl sub_80DF024
	b _08074F76
_08074F4C: .4byte 0x000023C3
_08074F50:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074F58
	adds r1, #0xFF
_08074F58:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074F62
	adds r2, #0xFF
_08074F62:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074F6C
	adds r3, #0xFF
_08074F6C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074FAC @ =0x000023CC
	bl sub_80DF024
_08074F76:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074F7A:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08074F8C
	adds r1, #0xFF
_08074F8C:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08074FA2
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x8C
	bl stop_sfx_80195A8
_08074FA2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074FAC: .4byte 0x000023CC
	thumb_func_start sub_8074FB0
sub_8074FB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0x00
	cmp r0, #0x09
	bhi _08074FD6
	movs r6, #0x01
	b _08074FDC
_08074FD6:
	cmp r0, #0x45
	bhi _08074FDC
	movs r6, #0x02
_08074FDC:
	ldr r0, [r5, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	ldr r2, _08075014 @ =0xFFFFD000
	adds r7, r1, r2
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r0
	mov r8, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	adds r0, r1, #0x0
	ldr r4, _08075018 @ =0xFFFFC000
	cmp r1, #0x00
	blt _0807502A
	cmp r1, #0x01
	bgt _0807501C
	movs r1, #0xD8
	lsls r1, r1, #0x06
	movs r0, #0xB8
	lsls r0, r0, #0x07
	b _08075032
_08075014: .4byte 0xFFFFD000
_08075018: .4byte 0xFFFFC000
_0807501C:
	cmp r0, #0x03
	bgt _0807502A
	movs r1, #0xA0
	lsls r1, r1, #0x06
	movs r0, #0xF8
	lsls r0, r0, #0x07
	b _08075032
_0807502A:
	movs r1, #0xC0
	lsls r1, r1, #0x06
	movs r0, #0xD8
	lsls r0, r0, #0x07
_08075032:
	subs r1, r7, r1
	mov r9, r1
	mov r2, r8
	subs r2, r2, r0
	mov r10, r2
	subs r0, r7, r4
	mov r1, r10
	muls r1, r0
	adds r0, r1, #0x0
	mov r1, r9
	bl __divsi3
	mov r2, r8
	adds r3, r2, r0
	cmp r6, #0x00
	beq _08075062
	cmp r6, #0x01
	beq _0807508C
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _080750B4
	adds r2, #0xFF
	b _080750B4
_08075062:
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r4, #0x00
	bge _0807506C
	adds r2, #0xFF
_0807506C:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08075076
	adds r0, #0xFF
_08075076:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08075088 @ =0x00004188
	b _080750CC
	.byte 0x00, 0x00
_08075088: .4byte 0x00004188
_0807508C:
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _08075096
	adds r2, #0xFF
_08075096:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080750A0
	adds r0, #0xFF
_080750A0:
	asrs r3, r0, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080750B0 @ =0x000040B1
	b _080750CC
_080750B0: .4byte 0x000040B1
_080750B4:
	asrs r2, r2, #0x08
	cmp r3, #0x00
	bge _080750BC
	adds r3, #0xFF
_080750BC:
	asrs r3, r3, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08075198 @ =0x00004055
_080750CC:
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	movs r0, #0x77
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0807519C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080751A0 @ =0x080753F5
	str r0, [r4, #0x58]
	ldr r0, _080751A4 @ =0x080751A9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	mov r2, r9
	str r2, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	str r1, [r0, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08075146
	adds r0, #0xFF
_08075146:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r3, #0x00
	strh r0, [r2, #0x00]
	mov r0, r8
	cmp r0, #0x00
	bge _08075158
	adds r0, #0xFF
_08075158:
	asrs r1, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	ldr r1, [r4, #0x08]
	adds r0, #0x04
	str r3, [r0, #0x00]
	strh r3, [r1, #0x0C]
	ldr r2, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	strh r0, [r2, #0x06]
	strh r0, [r2, #0x04]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08075198: .4byte 0x00004055
_0807519C: .4byte sub_8087540
_080751A0: .4byte sub_80753F4
_080751A4: .4byte sub_80751A8
	thumb_func_start sub_80751A8
sub_80751A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	movs r0, #0x9C
	adds r0, r0, r7
	mov r10, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _080751D0
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r2, _08075238 @ =0xFFFFFA00
	adds r1, r1, r2
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x08]
	strh r1, [r0, #0x0C]
_080751D0:
	ldr r1, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x02
	mov r9, r3
	add r1, r9
	str r1, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r4, [r0, r2]
	lsls r4, r4, #0x08
	movs r3, #0xAE
	adds r3, r3, r7
	mov r8, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	subs r0, r0, r1
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r1, [r6, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0x84
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r2, r7, #0x0
	adds r2, #0x8C
	ldr r0, [r7, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	mov r3, r8
	cmp r0, #0x02
	bne _08075240
	ldr r1, [r7, #0x18]
	ldr r0, _0807523C @ =0x000007FF
	cmp r1, r0
	bgt _0807524E
	mov r0, r9
	str r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _0807524C
_08075238: .4byte 0xFFFFFA00
_0807523C: .4byte 0x000007FF
_08075240:
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0807524E
	mov r1, r9
	str r1, [r2, #0x00]
	movs r0, #0x00
_0807524C:
	str r0, [r7, #0x18]
_0807524E:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, r0
	ble _080752A8
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _080752B8 @ =0x08075DF5
	str r0, [r7, #0x4C]
_080752A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080752B8: .4byte sub_8075DF4
	thumb_func_start sub_80752BC
sub_80752BC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _0807535C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	ldr r1, [r1, #0x74]
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080752F4
	adds r0, r1, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080752F4
	adds r4, r5, #0x0
	adds r4, #0x8C
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _080752F4
	adds r0, r5, #0x0
	bl sub_8074FB0
	movs r0, #0x3C
	str r0, [r4, #0x00]
_080752F4:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807532E
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807530C
	adds r1, #0xFF
_0807530C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08075316
	adds r2, #0xFF
_08075316:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08075320
	adds r3, #0xFF
_08075320:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08075360 @ =0x000023D5
	bl sub_80DF024
	movs r0, #0x10
	strh r0, [r4, #0x00]
_0807532E:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075352
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08075352
	ldr r0, _08075364 @ =0x00000157
	bl stop_sfx_80195A8
	ldr r0, _08075368 @ =0x08075D99
	str r0, [r5, #0x4C]
_08075352:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807535C: .4byte 0x03000FD8
_08075360: .4byte 0x000023D5
_08075364: .4byte 0x00000157
_08075368: .4byte sub_8075D98
	thumb_func_start sub_807536C
sub_807536C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080753E6
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x0A
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
	bge _080753B0
	adds r1, #0xFF
_080753B0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080753BA
	adds r2, #0xFF
_080753BA:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r6, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080753F0 @ =0x08075D51
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x20
	strh r0, [r1, #0x00]
_080753E6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080753F0: .4byte sub_8075D50
	thumb_func_start sub_80753F4
sub_80753F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807541A
	cmp r0, #0x01
	beq _08075494
	adds r0, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	bl sub_807F47C
	movs r0, #0x00
	b _080754CA
_0807541A:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x05
	bl sub_8117C50
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r7, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r6, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807544C
	adds r1, #0xFF
_0807544C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075456
	adds r2, #0xFF
_08075456:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r6, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075472
	adds r1, #0xFF
_08075472:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807547C
	adds r2, #0xFF
_0807547C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075486
	adds r3, #0xFF
_08075486:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075490 @ =0x00000F93
	b _080754BE
	.byte 0x00, 0x00
_08075490: .4byte 0x00000F93
_08075494:
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_8107F84
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080754A4
	adds r1, #0xFF
_080754A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080754AE
	adds r2, #0xFF
_080754AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080754B8
	adds r3, #0xFF
_080754B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080754D4 @ =0x00002396
_080754BE:
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x01
_080754CA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080754D4: .4byte 0x00002396
	thumb_func_start sub_80754D8
sub_80754D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08075558
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
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
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	ldr r0, _08075560 @ =0x08075565
	str r0, [r4, #0x4C]
_08075558:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075560: .4byte sub_8075564
	thumb_func_start sub_8075564
sub_8075564:
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
	bgt _080755A4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075582
	adds r1, #0xFF
_08075582:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807558C
	adds r2, #0xFF
_0807558C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075596
	adds r3, #0xFF
_08075596:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080755FC @ =0x0000244B
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_080755A4:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080755F4
	movs r0, #0x58
	bl stop_sfx_80195A8
	ldr r0, _08075600 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080755D2
	adds r1, #0xFF
_080755D2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080755DC
	adds r2, #0xFF
_080755DC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080755E6
	adds r3, #0xFF
_080755E6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075604 @ =0x00002454
	bl sub_80DF024
	ldr r0, _08075608 @ =0x08075CF5
	str r0, [r4, #0x4C]
_080755F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080755FC: .4byte 0x0000244B
_08075600: .4byte 0x0000012B
_08075604: .4byte 0x00002454
_08075608: .4byte sub_8075CF4
	thumb_func_start sub_807560C
sub_807560C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075682
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075682
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807564C
	adds r1, #0xFF
_0807564C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075656
	adds r2, #0xFF
_08075656:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075660
	adds r3, #0xFF
_08075660:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807568C @ =0x00002470
	bl sub_80DF024
	ldr r1, _08075690 @ =0x0000183E
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08075694 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _08075698 @ =0x08075C49
	str r0, [r4, #0x58]
	ldr r0, _0807569C @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _080756A0 @ =0x08075C8D
	str r0, [r4, #0x4C]
_08075682:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807568C: .4byte 0x00002470
_08075690: .4byte 0x0000183E
_08075694: .4byte 0x03000E3C
_08075698: .4byte sub_8075C48
_0807569C: .4byte sub_8075C10
_080756A0: .4byte sub_8075C8C
	thumb_func_start sub_80756A4
sub_80756A4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08075712
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	strh r5, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08075718 @ =0x0807571D
	str r0, [r4, #0x4C]
_08075712:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075718: .4byte sub_807571C
	thumb_func_start sub_807571C
sub_807571C:
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
	bgt _0807575C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807573A
	adds r1, #0xFF
_0807573A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075744
	adds r2, #0xFF
_08075744:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807574E
	adds r3, #0xFF
_0807574E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080757B0 @ =0x00002487
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_0807575C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080757A6
	ldr r0, _080757B4 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075784
	adds r1, #0xFF
_08075784:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807578E
	adds r2, #0xFF
_0807578E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075798
	adds r3, #0xFF
_08075798:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080757B8 @ =0x00002462
	bl sub_80DF024
	ldr r0, _080757BC @ =0x08075C65
	str r0, [r4, #0x4C]
_080757A6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080757B0: .4byte 0x00002487
_080757B4: .4byte 0x0000012B
_080757B8: .4byte 0x00002462
_080757BC: .4byte sub_8075C64
	thumb_func_start sub_80757C0
sub_80757C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080758A4
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080757F4
	ldr r0, _080757F0 @ =0x08075C8D
	b _080758A2
_080757F0: .4byte sub_8075C8C
_080757F4:
	str r2, [sp, #0x008]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r5
	mov r9, r1
	movs r2, #0x8C
	adds r2, r2, r5
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x79
	adds r6, r5, #0x0
	adds r6, #0x7C
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x7A
	str r0, [sp, #0x000]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, _080758B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x58
	movs r3, #0x01
_08075826:
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	ands r0, r3
	str r0, [r1, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r6, #0x01
	cmp r0, #0x00
	beq _0807584A
	movs r6, #0x00
_0807584A:
	cmp r6, #0x00
	bne _08075826
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r0, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x00]
	ldr r0, [sp, #0x000]
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	ldr r0, _080758B8 @ =0x08075565
_080758A2:
	str r0, [r5, #0x4C]
_080758A4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080758B4: .4byte 0x03000FD8
_080758B8: .4byte sub_8075564
	thumb_func_start sub_80758BC
sub_80758BC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075956
	ldr r0, [r5, #0x18]
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r0, r4
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
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
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0807595C @ =0x08075BB9
	str r0, [r5, #0x58]
	ldr r0, _08075960 @ =0x08075B75
	str r0, [r5, #0x5C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _08075964 @ =0x08075969
	str r0, [r5, #0x4C]
_08075956:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807595C: .4byte sub_8075BB8
_08075960: .4byte sub_8075B74
_08075964: .4byte sub_8075968
	thumb_func_start sub_8075968
sub_8075968:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080759BC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075998
	adds r1, #0xFF
_08075998:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080759A2
	adds r2, #0xFF
_080759A2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080759AC
	adds r3, #0xFF
_080759AC:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _080759E0 @ =0x00002490
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_080759BC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080759D8
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080759E4 @ =0x080759E9
	str r0, [r4, #0x4C]
_080759D8:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080759E0: .4byte 0x00002490
_080759E4: .4byte sub_80759E8
	thumb_func_start sub_80759E8
sub_80759E8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075A4E
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
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _08075A54 @ =0x08075A59
	str r0, [r4, #0x4C]
_08075A4E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075A54: .4byte sub_8075A58
	thumb_func_start sub_8075A58
sub_8075A58:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08075AD4 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075AAA
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075A86
	adds r1, #0xFF
_08075A86:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075A90
	adds r2, #0xFF
_08075A90:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075A9A
	adds r3, #0xFF
_08075A9A:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08075AD8 @ =0x00002499
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075AAA:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08075ACA
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075ADC @ =0x08075BE9
	str r0, [r4, #0x4C]
_08075ACA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075AD4: .4byte 0xFFFFF000
_08075AD8: .4byte 0x00002499
_08075ADC: .4byte sub_8075BE8
	thumb_func_start sub_8075AE0
sub_8075AE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075B48
	adds r0, r4, #0x0
	movs r1, #0x0D
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
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08075B50 @ =0x08075B55
	str r0, [r4, #0x4C]
_08075B48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075B50: .4byte sub_8075B54
	thumb_func_start sub_8075B54
sub_8075B54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08075B6E
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08075B6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8075B74
sub_8075B74:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08075BB0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x0C]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08075BAC @ =0x08075AE1
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _08075BB2
	.byte 0x00, 0x00
_08075BAC: .4byte sub_8075AE0
_08075BB0:
	adds r0, r4, #0x0
_08075BB2:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8075BB8
sub_8075BB8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08075BE4 @ =0x080759E9
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075BE4: .4byte sub_80759E8
	thumb_func_start sub_8075BE8
sub_8075BE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075C08
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075C08:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8075C10
sub_8075C10:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08075C3C
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08075C44 @ =0x080757C1
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08075C3C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C44: .4byte sub_80757C0
	thumb_func_start sub_8075C48
sub_8075C48:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08075C60 @ =0x08075C8D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C60: .4byte sub_8075C8C
	thumb_func_start sub_8075C64
sub_8075C64:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075C84
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075C84:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8075C8C
sub_8075C8C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075CDE
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075CE8 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075CBC
	adds r1, #0xFF
_08075CBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075CC6
	adds r2, #0xFF
_08075CC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075CD0
	adds r3, #0xFF
_08075CD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075CEC @ =0x00002479
	bl sub_80DF024
	ldr r0, _08075CF0 @ =0x080756A5
	str r0, [r4, #0x4C]
_08075CDE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075CE8: .4byte 0x0000012B
_08075CEC: .4byte 0x00002479
_08075CF0: .4byte sub_80756A4
	thumb_func_start sub_8075CF4
sub_8075CF4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075D3C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x45
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08075D44 @ =0x08087541
	str r0, [r4, #0x68]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08075D48 @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _08075D4C @ =0x0807560D
	str r0, [r4, #0x4C]
_08075D3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075D44: .4byte sub_8087540
_08075D48: .4byte sub_8075C10
_08075D4C: .4byte sub_807560C
	thumb_func_start sub_8075D50
sub_8075D50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, _08075D94 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075D8E
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082D24
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075D8E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075D94: .4byte 0x03000FD8
	thumb_func_start sub_8075D98
sub_8075D98:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08075DE4
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075DEC @ =0x0807536D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075DBC
	adds r1, #0xFF
_08075DBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075DC6
	adds r2, #0xFF
_08075DC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075DD0
	adds r3, #0xFF
_08075DD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075DF0 @ =0x000023DE
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
_08075DE4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08075DEC: .4byte sub_807536C
_08075DF0: .4byte 0x000023DE
	thumb_func_start sub_8075DF4
sub_8075DF4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08075E10
	adds r0, r2, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r3, _08075E38 @ =0xFFFFFA00
	adds r1, r1, r3
	str r1, [r0, #0x00]
	ldr r0, [r2, #0x08]
	strh r1, [r0, #0x0C]
_08075E10:
	adds r1, r2, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08075E24
	subs r0, #0x08
	str r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
_08075E24:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E34
	adds r0, r2, #0x0
	bl sub_807C298
_08075E34:
	pop {r0}
	bx r0
_08075E38: .4byte 0xFFFFFA00
	thumb_func_start sub_8075E3C
sub_8075E3C:
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
	bgt _08075E7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075E5A
	adds r1, #0xFF
_08075E5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075E64
	adds r2, #0xFF
_08075E64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075E6E
	adds r3, #0xFF
_08075E6E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075E94 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075E7C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E8A
	ldr r0, _08075E98 @ =0x08074EED
	str r0, [r4, #0x4C]
_08075E8A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075E94: .4byte 0x000023CC
_08075E98: .4byte sub_8074EEC
	thumb_func_start sub_8075E9C
sub_8075E9C:
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
	bgt _08075EDC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075EBA
	adds r1, #0xFF
_08075EBA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075EC4
	adds r2, #0xFF
_08075EC4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075ECE
	adds r3, #0xFF
_08075ECE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075EF4 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075EDC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075EEA
	ldr r0, _08075EF8 @ =0x08074D1D
	str r0, [r4, #0x4C]
_08075EEA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075EF4: .4byte 0x000023CC
_08075EF8: .4byte sub_8074D1C
	thumb_func_start sub_8075EFC
sub_8075EFC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08075F3E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075F12
	adds r1, #0xFF
_08075F12:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075F1C
	adds r2, #0xFF
_08075F1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075F26
	adds r3, #0xFF
_08075F26:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075F48 @ =0x00002423
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x8C
	bl stop_sfx_80195A8
	movs r0, #0x00
_08075F3E:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075F48: .4byte 0x00002423
	thumb_func_start sub_8075F4C
sub_8075F4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075F6C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075F6C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0x60, 0x07, 0x08, 0x00, 0xB5
	.byte 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x03, 0x20, 0x08, 0x60
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x11, 0x1C, 0xA8, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x35, 0x60
	.byte 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x8D, 0x60, 0x07, 0x08, 0x02, 0x1C
	.byte 0xAE, 0x32, 0x02, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x60
	.byte 0x07, 0x08, 0x02, 0x1C, 0xAE, 0x32, 0x01, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0xA9, 0x60, 0x07, 0x08, 0x02, 0x1C, 0xAE, 0x32, 0x00, 0x21, 0x11, 0x80, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x60, 0x07, 0x08
	thumb_func_start sub_807600C
sub_807600C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076030 @ =0x080758BD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076030: .4byte sub_80758BC
	thumb_func_start sub_8076034
sub_8076034:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076080 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076056
	adds r1, #0xFF
_08076056:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076060
	adds r2, #0xFF
_08076060:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807606A
	adds r3, #0xFF
_0807606A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076084 @ =0x0000243D
	bl sub_80DF024
	ldr r0, _08076088 @ =0x080754D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08076080: .4byte 0x0000012B
_08076084: .4byte 0x0000243D
_08076088: .4byte sub_80754D8
	thumb_func_start sub_807608C
sub_807608C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760A4 @ =0x080760F5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080760A4: .4byte sub_80760F4
	thumb_func_start sub_80760A8
sub_80760A8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080760BC
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
_080760BC:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080760D2
	cmp r0, #0x01
	beq _080760D8
	adds r0, r4, #0x0
	movs r1, #0x0A
	b _080760DC
_080760D2:
	adds r0, r4, #0x0
	movs r1, #0x02
	b _080760DC
_080760D8:
	adds r0, r4, #0x0
	movs r1, #0x06
_080760DC:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760F0 @ =0x08076149
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080760F0: .4byte sub_8076148
	thumb_func_start sub_80760F4
sub_80760F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807613A
	ldr r0, _08076140 @ =0x00000157
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x28
	movs r0, #0x32
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	ldr r0, _08076144 @ =0x080761AD
	str r0, [r4, #0x4C]
	adds r1, #0x2A
	movs r0, #0x20
	strh r0, [r1, #0x00]
_0807613A:
	pop {r4}
	pop {r0}
	bx r0
_08076140: .4byte 0x00000157
_08076144: .4byte sub_80761AC
	thumb_func_start sub_8076148
sub_8076148:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080761A0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08076178
	cmp r0, #0x01
	beq _0807617E
	adds r0, r4, #0x0
	movs r1, #0x0B
	b _08076182
_08076178:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _08076182
_0807617E:
	adds r0, r4, #0x0
	movs r1, #0x07
_08076182:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x28
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080761A8 @ =0x08074745
	str r0, [r4, #0x4C]
_080761A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080761A8: .4byte sub_8074744
	thumb_func_start sub_80761AC
sub_80761AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080761E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080761DA
	ldr r0, _080761E4 @ =0x080752BD
	str r0, [r4, #0x4C]
_080761DA:
	pop {r4}
	pop {r0}
	bx r0
_080761E0: .4byte 0x03000FD8
_080761E4: .4byte sub_80752BC
	thumb_func_start sub_80761E8
sub_80761E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076202
	b _0807630E
_08076202:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r6, #0x00
	ldr r0, _0807631C @ =0x00004047
	mov r9, r0
	mov r8, r6
	adds r7, r5, #0x0
	adds r7, #0x9C
_0807621A:
	ldr r0, _08076320 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r4, [r5, #0x28]
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076238
	adds r0, #0xFF
_08076238:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076246
	adds r0, #0xFF
_08076246:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076254
	adds r0, #0xFF
_08076254:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_807BF34
	lsls r4, r6, #0x02
	add r4, sp
	adds r4, #0x0C
	str r0, [r4, #0x00]
	ldr r1, [r7, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r2, [r4, #0x00]
	str r2, [r5, #0x30]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	adds r3, #0x20
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, _08076324 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r1, #0x2C]
	ldr r0, [r4, #0x00]
	bl sub_807F4FC
	ldr r1, [r4, #0x00]
	ldr r0, _08076328 @ =0x08077201
	str r0, [r1, #0x58]
	ldr r0, [r7, #0x00]
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r4, [r4, #0x00]
	mov r0, r8
	str r0, [r4, #0x4C]
	ldr r0, _0807632C @ =0x000024C2
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080762DE
	adds r1, #0xFF
_080762DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080762E8
	adds r2, #0xFF
_080762E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080762F2
	adds r3, #0xFF
_080762F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	bl sub_80DF024
	adds r6, #0x01
	cmp r6, #0x01
	ble _0807621A
	ldr r0, _08076330 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08076334 @ =0x080773ED
	str r0, [r5, #0x4C]
_0807630E:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807631C: .4byte 0x00004047
_08076320: .4byte 0x03000FD8
_08076324: .4byte sub_8087540
_08076328: .4byte sub_8077200
_0807632C: .4byte 0x000024C2
_08076330: .4byte 0x00000119
_08076334: .4byte sub_80773EC
	thumb_func_start sub_8076338
sub_8076338:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080763FC
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076364
	adds r0, #0xFF
_08076364:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076372
	adds r0, #0xFF
_08076372:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076380
	adds r0, #0xFF
_08076380:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076404 @ =0x00008031
	bl sub_807BF34
	adds r6, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	str r0, [r6, #0x30]
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076408 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807640C @ =0x08077291
	str r0, [r6, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xA4
	str r5, [r0, #0x00]
	ldr r0, _08076410 @ =0x08077391
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xA8
	movs r0, #0x0A
	str r0, [r1, #0x00]
_080763FC:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076404: .4byte 0x00008031
_08076408: .4byte sub_8087540
_0807640C: .4byte sub_8077290
_08076410: .4byte sub_8077390
	thumb_func_start sub_8076414
sub_8076414:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080764C2
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807643A
	adds r1, #0xFF
_0807643A:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08076444
	adds r0, #0xFF
_08076444:
	asrs r0, r0, #0x08
	adds r2, r0, #0x5
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076450
	adds r3, #0xFF
_08076450:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080764CC @ =0x00002503
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076468
	adds r0, #0xFF
_08076468:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x48
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807647A
	adds r0, #0xFF
_0807647A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807648A
	adds r0, #0xFF
_0807648A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080764D0 @ =0x00004046
	bl sub_807BF34
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x30]
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r0, _080764D4 @ =0x08077351
	str r0, [r4, #0x4C]
_080764C2:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080764CC: .4byte 0x00002503
_080764D0: .4byte 0x00004046
_080764D4: .4byte sub_8077350
	thumb_func_start sub_80764D8
sub_80764D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076510
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076510
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076510
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076510:
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076544
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076544
	adds r5, r4, #0x0
	adds r5, #0xB0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076544
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076544:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076564
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076570 @ =0x080772F1
	str r0, [r4, #0x4C]
_08076564:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807656C: .4byte 0x03000FD8
_08076570: .4byte sub_80772F0
	thumb_func_start sub_8076574
sub_8076574:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076588
	b _08076738
_08076588:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807659C
	adds r1, #0xFF
_0807659C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080765A6
	adds r2, #0xFF
_080765A6:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080765B0
	adds r3, #0xFF
_080765B0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076678 @ =0x00002539
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765C8
	adds r0, #0xFF
_080765C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765DA
	adds r0, #0xFF
_080765DA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765EC
	adds r0, #0xFF
_080765EC:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0807667C @ =0x00004048
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076680 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08076684 @ =0x08076751
	str r0, [r5, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	subs r1, r3, #0x3
	adds r7, r0, #0x0
	cmp r1, #0x01
	bhi _08076688
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	b _080766A6
_08076678: .4byte 0x00002539
_0807667C: .4byte 0x00004048
_08076680: .4byte sub_8087540
_08076684: .4byte sub_8076750
_08076688:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08076740 @ =0x083B876C
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, _08076744 @ =0x083B878C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
_080766A6:
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r5, #0xA0
	str r4, [r5, #0x00]
	ldr r1, _08076740 @ =0x083B876C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x10
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080766FC
	adds r0, #0xFF
_080766FC:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807670C
	adds r0, #0xFF
_0807670C:
	asrs r0, r0, #0x08
	movs r1, #0x08
	negs r1, r1
	subs r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r1, _08076748 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0807674C @ =0x080771D9
	str r0, [r6, #0x4C]
_08076738:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076740: .4byte 0x083B876C
_08076744: .4byte 0x083B878C
_08076748: .4byte 0xFFFFC000
_0807674C: .4byte sub_80771D8
	thumb_func_start sub_8076750
sub_8076750:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080767F4
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	ble _080767B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807677E
	adds r1, #0xFF
_0807677E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076788
	adds r2, #0xFF
_08076788:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076792
	adds r3, #0xFF
_08076792:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767B0 @ =0x0000254E
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	b _080767F4
	.byte 0x00, 0x00
_080767B0: .4byte 0x0000254E
_080767B4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080767BC
	adds r1, #0xFF
_080767BC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080767C6
	adds r2, #0xFF
_080767C6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080767D0
	adds r3, #0xFF
_080767D0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767FC @ =0x00002541
	bl sub_80DF024
	str r5, [r4, #0x4C]
	str r5, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_080767F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080767FC: .4byte 0x00002541
	thumb_func_start sub_8076800
sub_8076800:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x22
	bhi _08076820
	movs r6, #0x00
	b _08076838
_08076820:
	cmp r0, #0x45
	bhi _08076828
	movs r6, #0x01
	b _08076838
_08076828:
	bl sub_8199F30
	movs r1, #0x06
	bl __umodsi3
	adds r0, #0x02
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08076838:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	bne _0807684A
	cmp r6, #0x01
	bhi _0807684A
	adds r0, r6, #0x2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0807684A:
	cmp r6, #0x00
	beq _08076864
	cmp r6, #0x01
	beq _080768B0
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x00
	bge _080768FC
	adds r0, #0xFF
	b _080768FC
_08076864:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076872
	adds r0, #0xFF
_08076872:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076884
	adds r0, #0xFF
_08076884:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076892
	adds r0, #0xFF
_08076892:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768AC @ =0x0000404A
	b _08076934
_080768AC: .4byte 0x0000404A
_080768B0:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768BE
	adds r0, #0xFF
_080768BE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768D0
	adds r0, #0xFF
_080768D0:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768DE
	adds r0, #0xFF
_080768DE:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768F8 @ =0x0000404B
	b _08076934
	.byte 0x00, 0x00
_080768F8: .4byte 0x0000404B
_080768FC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807690E
	adds r0, #0xFF
_0807690E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807691C
	adds r0, #0xFF
_0807691C:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080769EC @ =0x0000404C
_08076934:
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, _080769F0 @ =0x083B87AC
	lsls r1, r6, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _080769F4 @ =0x083B87CC
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xB3
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
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080769F8 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080769FC @ =0x08077141
	str r0, [r4, #0x58]
	ldr r0, _08076A00 @ =0x08076A09
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769C2
	adds r0, #0xFF
_080769C2:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769D6
	adds r0, #0xFF
_080769D6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _08076A04 @ =0x08077189
	str r0, [r4, #0x4C]
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080769EC: .4byte 0x0000404C
_080769F0: .4byte 0x083B87AC
_080769F4: .4byte 0x083B87CC
_080769F8: .4byte sub_8087540
_080769FC: .4byte sub_8077140
_08076A00: .4byte sub_8076A08
_08076A04: .4byte sub_8077188
	thumb_func_start sub_8076A08
sub_8076A08:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	mov r8, r0
	cmp r0, #0x00
	bne _08076B0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076A24
	adds r1, #0xFF
_08076A24:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076A2E
	adds r2, #0xFF
_08076A2E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076A38
	adds r3, #0xFF
_08076A38:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076B1C @ =0x000025D5
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r6, #0x00
	ldsh r0, [r3, r6]
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08076A78
	adds r0, #0xFF
_08076A78:
	asrs r0, r0, #0x08
	mov r2, r12
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08076A86
	adds r0, #0xFF
_08076A86:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08076A92
	adds r0, #0xFF
_08076A92:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	mov r6, r12
	movs r2, #0x00
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r5, r1, r0
	ldr r2, _08076B20 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08076ACA
	ldr r2, _08076B24 @ =0x000003FF
	adds r0, r0, r2
_08076ACA:
	asrs r7, r0, #0x0A
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xE0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08076AE4
	movs r0, #0x02
_08076AE4:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	strh r3, [r0, #0x00]
	ldr r0, _08076B28 @ =0x08076B2D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x8C
	mov r6, r8
	str r6, [r0, #0x00]
	movs r0, #0x00
_08076B0E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08076B1C: .4byte 0x000025D5
_08076B20: .4byte 0x03001038
_08076B24: .4byte 0x000003FF
_08076B28: .4byte sub_8076B2C
	thumb_func_start sub_8076B2C
sub_8076B2C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	ldr r2, _08076C0C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
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
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	blt _08076C04
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08076BD0
	adds r1, #0xFF
_08076BD0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08076BDA
	adds r2, #0xFF
_08076BDA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08076BE4
	adds r3, #0xFF
_08076BE4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076C10 @ =0x000025C7
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
	ldr r0, [r6, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0xCC
	bl play_sfx_80195B4
_08076C04:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076C0C: .4byte 0xFFFFF800
_08076C10: .4byte 0x000025C7
	thumb_func_start sub_8076C14
sub_8076C14:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076C7C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076C2C
	adds r2, #0xFF
_08076C2C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076C36
	adds r3, #0xFF
_08076C36:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076C4C
	movs r0, #0x13
	b _08076C4E
_08076C4C:
	movs r0, #0x12
_08076C4E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076C78 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x10
	str r0, [r1, #0x00]
	b _08076CF4
_08076C78: .4byte sub_80770BC
_08076C7C:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CBC
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r0, r4, #0x0
	bl sub_8076800
	strh r0, [r6, #0x00]
	movs r0, #0x32
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076CB2
	ldr r0, _08076CFC @ =0x08076D05
	str r0, [r4, #0x4C]
_08076CB2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_08076CBC:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CF4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076CD2
	adds r1, #0xFF
_08076CD2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076CDC
	adds r2, #0xFF
_08076CDC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076CE6
	adds r3, #0xFF
_08076CE6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076D00 @ =0x000025A3
	bl sub_80DF024
	movs r0, #0x14
	str r0, [r5, #0x00]
_08076CF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076CFC: .4byte sub_8076D04
_08076D00: .4byte 0x000025A3
	thumb_func_start sub_8076D04
sub_8076D04:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076D6C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076D1C
	adds r2, #0xFF
_08076D1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076D26
	adds r3, #0xFF
_08076D26:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076D3C
	movs r0, #0x13
	b _08076D3E
_08076D3C:
	movs r0, #0x12
_08076D3E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076D68 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x11
	str r0, [r1, #0x00]
	b _08076D82
_08076D68: .4byte sub_80770BC
_08076D6C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08076D82
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076D8C @ =0x08077119
	str r0, [r4, #0x4C]
_08076D82:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076D8C: .4byte sub_8077118
	thumb_func_start sub_8076D90
sub_8076D90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076DAC
	b _08076F7C
_08076DAC:
	mov r0, r9
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DBC
	adds r0, #0xFF
_08076DBC:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DCA
	adds r0, #0xFF
_08076DCA:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DD8
	adds r0, #0xFF
_08076DD8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076E98 @ =0x00004049
	bl sub_807BF34
	adds r5, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x30]
	str r0, [r5, #0x30]
	str r5, [r1, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076E9C @ =0x08087541
	str r0, [r5, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r2, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r3, [r5, #0x10]
	mov r10, r3
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x00C]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x84
	subs r7, r1, r3
	str r7, [r4, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [sp, #0x00C]
	subs r2, r0, r2
	mov r8, r2
	str r2, [r6, #0x00]
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08076EA4
	mov r0, r9
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08076EA0 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r4, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	str r0, [r4, #0x00]
	adds r2, r4, #0x0
	b _08076EF8
_08076E98: .4byte 0x00004049
_08076E9C: .4byte sub_8087540
_08076EA0: .4byte 0x03001038
_08076EA4:
	mov r0, r9
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r4, #0x00]
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r6, #0x00]
	ldr r7, [r4, #0x00]
	mov r8, r0
	ldr r2, _08076F8C @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r6, #0x00
	bge _08076EEC
	ldr r1, _08076F90 @ =0x000001FF
	adds r0, r6, r1
_08076EEC:
	asrs r0, r0, #0x09
	str r0, [r2, #0x00]
	cmp r0, #0x2F
	bgt _08076EF8
	movs r0, #0x30
	str r0, [r2, #0x00]
_08076EF8:
	mov r0, r10
	cmp r0, #0x00
	bge _08076F00
	adds r0, #0xFF
_08076F00:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r3, #0x00
	mov r10, r3
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _08076F14
	adds r1, #0xFF
_08076F14:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r1, _08076F94 @ =0x000001B3
	adds r0, r6, #0x0
	str r2, [sp, #0x010]
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r1, r4, #0x1F
	adds r1, r4, r1
	asrs r1, r1, #0x01
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08076F4A
	movs r0, #0x02
_08076F4A:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	str r3, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r0, _08076F98 @ =0x08076FA1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _08076F9C @ =0x08077095
	mov r2, r9
	str r0, [r2, #0x4C]
_08076F7C:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076F8C: .4byte 0x03001038
_08076F90: .4byte 0x000001FF
_08076F94: .4byte 0x000001B3
_08076F98: .4byte sub_8076FA0
_08076F9C: .4byte sub_8077094
	thumb_func_start sub_8076FA0
sub_8076FA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08076FAC
	adds r1, #0xFF
_08076FAC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08076FBE
	adds r0, r5, #0x0
	bl sub_807C298
	b _0807708C
_08076FBE:
	ldr r1, [r5, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r5, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r2, [r6, r0]
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
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
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
	ble _0807708C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08077064
	adds r0, #0xFF
_08077064:
	asrs r0, r0, #0x08
	cmp r0, #0x07
	bgt _0807708C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08077078
	adds r0, #0xFF
_08077078:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077084
	adds r0, #0xFF
_08077084:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	movs r0, #0x00
	strh r0, [r6, #0x00]
_0807708C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077094
sub_8077094:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080770B4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080770B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80770BC
sub_80770BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807710C
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080770E4
	adds r0, r4, #0x0
	bl sub_8086700
	b _0807710C
_080770E4:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r2, r0, #0x0
	cmp r1, #0x10
	bne _08077104
	ldr r0, _08077100 @ =0x08076C15
	b _08077106
_08077100: .4byte sub_8076C14
_08077104:
	ldr r0, _08077114 @ =0x08076D05
_08077106:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0807710C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077114: .4byte sub_8076D04
	thumb_func_start sub_8077118
sub_8077118:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077138
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077138:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077140
sub_8077140:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077154
	adds r1, #0xFF
_08077154:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807715E
	adds r2, #0xFF
_0807715E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077168
	adds r3, #0xFF
_08077168:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077184 @ =0x000025B9
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08077184: .4byte 0x000025B9
	thumb_func_start sub_8077188
sub_8077188:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080771CC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807719E
	adds r1, #0xFF
_0807719E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080771A8
	adds r2, #0xFF
_080771A8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080771B2
	adds r3, #0xFF
_080771B2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080771D4 @ =0x000025AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x76
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080771CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080771D4: .4byte 0x000025AB
	thumb_func_start sub_80771D8
sub_80771D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080771F8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080771F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077200
sub_8077200:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0807724C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08077248 @ =0x08077571
	str r0, [r5, #0x4C]
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _08077282
_08077248: .4byte sub_8077570
_0807724C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807725E
	adds r1, #0xFF
_0807725E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08077268
	adds r2, #0xFF
_08077268:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08077272
	adds r3, #0xFF
_08077272:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0807728C @ =0x000024CB
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
_08077282:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807728C: .4byte 0x000024CB
	thumb_func_start sub_8077290
sub_8077290:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080772EA
	movs r0, #0x3C
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	cmp r1, #0x00
	bne _080772E0
	ldr r0, [r5, #0x28]
	adds r0, #0xAC
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080772EA
_080772E0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA8
	bl play_sfx_80195B4
_080772EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80772F0
sub_80772F0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077340
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807731E
	adds r1, #0xFF
_0807731E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077328
	adds r2, #0xFF
_08077328:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077332
	adds r3, #0xFF
_08077332:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077348 @ =0x00002515
	bl sub_80DF024
	ldr r0, _0807734C @ =0x080775A5
	str r0, [r4, #0x4C]
_08077340:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077348: .4byte 0x00002515
_0807734C: .4byte sub_80775A4
	thumb_func_start sub_8077350
sub_8077350:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077386
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	ldr r0, _0807738C @ =0x080764D9
	str r0, [r4, #0x4C]
_08077386:
	pop {r4}
	pop {r0}
	bx r0
_0807738C: .4byte sub_80764D8
	thumb_func_start sub_8077390
sub_8077390:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080773CE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080773AC
	adds r1, #0xFF
_080773AC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080773B6
	adds r2, #0xFF
_080773B6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080773C0
	adds r3, #0xFF
_080773C0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080773E4 @ =0x000024E9
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_080773CE:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080773DC
	ldr r0, _080773E8 @ =0x08077611
	str r0, [r4, #0x4C]
_080773DC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080773E4: .4byte 0x000024E9
_080773E8: .4byte sub_8077610
	thumb_func_start sub_80773EC
sub_80773EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077434
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077412
	adds r1, #0xFF
_08077412:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807741C
	adds r2, #0xFF
_0807741C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077426
	adds r3, #0xFF
_08077426:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807743C @ =0x000025F5
	bl sub_80DF024
	ldr r0, _08077440 @ =0x08076339
	str r0, [r4, #0x4C]
_08077434:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807743C: .4byte 0x000025F5
_08077440: .4byte sub_8076338
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xE5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x55, 0x75, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x39, 0x75, 0x07, 0x08
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x0A, 0x1C, 0x9C, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20
	.byte 0x10, 0x60, 0x0A, 0x1C, 0xA0, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x04, 0x20, 0x10, 0x60
	.byte 0x02, 0x48, 0xC8, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x69, 0x76, 0x07, 0x08
	thumb_func_start sub_80774A4
sub_80774A4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0x9C
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080774C8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080774D4
_080774C8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080774D4:
	ldr r0, _080774E0 @ =0x08076D91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080774E0: .4byte sub_8076D90
	thumb_func_start sub_80774E4
sub_80774E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080774FC
	adds r1, #0xFF
_080774FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077506
	adds r2, #0xFF
_08077506:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077510
	adds r3, #0xFF
_08077510:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077530 @ =0x00002563
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	ldr r0, _08077534 @ =0x080776B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077530: .4byte 0x00002563
_08077534: .4byte sub_80776B4
	thumb_func_start sub_8077538
sub_8077538:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077550 @ =0x08076575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08077550: .4byte sub_8076574
	thumb_func_start sub_8077554
sub_8077554:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08077560
_0807755A:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_08077560:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807755A
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8077570
sub_8077570:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x8C
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _0807758E
	adds r0, #0xFF
_0807758E:
	asrs r0, r0, #0x08
	cmp r0, #0x28
	bgt _0807759E
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r3, #0x18]
	movs r0, #0x00
	str r0, [r3, #0x4C]
_0807759E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80775A4
sub_80775A4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077602
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080775FE
	ldr r5, _0807760C @ =0x000024E0
_080775CA:
	ldr r3, [r4, #0x30]
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080775D4
	adds r1, #0xFF
_080775D4:
	asrs r1, r1, #0x08
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _080775DE
	adds r2, #0xFF
_080775DE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080775E8
	adds r3, #0xFF
_080775E8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080775CA
_080775FE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077602:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807760C: .4byte 0x000024E0
	thumb_func_start sub_8077610
sub_8077610:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077658
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077636
	adds r1, #0xFF
_08077636:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077640
	adds r2, #0xFF
_08077640:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807764A
	adds r3, #0xFF
_0807764A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077660 @ =0x000024FB
	bl sub_80DF024
	ldr r0, _08077664 @ =0x08076415
	str r0, [r4, #0x4C]
_08077658:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077660: .4byte 0x000024FB
_08077664: .4byte sub_8076414
	thumb_func_start sub_8077668
sub_8077668:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077680
	adds r1, #0xFF
_08077680:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807768A
	adds r2, #0xFF
_0807768A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077694
	adds r3, #0xFF
_08077694:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080776AC @ =0x000024BA
	bl sub_80DF024
	ldr r0, _080776B0 @ =0x080761E9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080776AC: .4byte 0x000024BA
_080776B0: .4byte sub_80761E8
	thumb_func_start sub_80776B4
sub_80776B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080776FA
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x32
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r3, [r0, #0x00]
	adds r1, #0x12
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08077700 @ =0x08076C15
	str r0, [r4, #0x4C]
_080776FA:
	pop {r4}
	pop {r0}
	bx r0
_08077700: .4byte sub_8076C14
	thumb_func_start sub_8077704
sub_8077704:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807776A
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807776A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077744
	adds r1, #0xFF
_08077744:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807774E
	adds r2, #0xFF
_0807774E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077758
	adds r3, #0xFF
_08077758:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077774 @ =0x00002983
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x00]
	ldr r0, _08077778 @ =0x0807777D
	str r0, [r4, #0x4C]
_0807776A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077774: .4byte 0x00002983
_08077778: .4byte sub_807777C
	thumb_func_start sub_807777C
sub_807777C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807779E
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807779E:
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r12, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778A4
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r3, [r0, #0x74]
	adds r6, r3, #0x0
	adds r6, #0x08
	adds r2, #0x7E
	ldrb r4, [r2, #0x00]
	movs r1, #0x7F
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, #0x7E
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	ldr r1, _080778B4 @ =0x03000ED4
	ldr r0, [r5, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, _080778B8 @ =0x03000ED8
	ldr r0, [r6, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, [r6, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, _080778BC @ =0x08079789
	str r1, [r5, #0x4C]
	str r1, [r6, #0x4C]
	ldr r3, _080778C0 @ =0x03000F5C
	mov r0, r12
	strb r0, [r3, #0x00]
	ldr r0, _080778C4 @ =0x03000F5D
	mov r2, r12
	strb r2, [r0, #0x00]
	ldr r2, [r5, #0x30]
	movs r5, #0xAE
	adds r5, r5, r7
	mov r8, r5
	cmp r2, #0x00
	beq _08077842
	movs r0, #0x10
	mov r12, r0
	ldr r5, _080778C8 @ =0x03000EDC
	mov r9, r5
	adds r4, r1, #0x0
_08077820:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	mov r5, r12
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r9
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077820
_08077842:
	ldr r2, [r6, #0x30]
	cmp r2, #0x00
	beq _08077870
	movs r6, #0x10
	ldr r5, _080778CC @ =0x03000F1C
	ldr r3, _080778C4 @ =0x03000F5D
	ldr r4, _080778BC @ =0x08079789
_08077850:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r6
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077850
_08077870:
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_80193B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	movs r1, #0x01
	strb r1, [r0, #0x00]
	movs r0, #0x0A
	mov r5, r8
	strh r0, [r5, #0x00]
	ldr r0, _080778D0 @ =0x080778D5
	str r0, [r7, #0x4C]
_080778A4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080778B0: .4byte 0x03000FD8
_080778B4: .4byte 0x03000ED4
_080778B8: .4byte 0x03000ED8
_080778BC: .4byte 0x08079789
_080778C0: .4byte 0x03000F5C
_080778C4: .4byte 0x03000F5D
_080778C8: .4byte 0x03000EDC
_080778CC: .4byte 0x03000F1C
_080778D0: .4byte sub_80778D4
	thumb_func_start sub_80778D4
sub_80778D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778F6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_080778F6:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807791A
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x64
	strh r0, [r4, #0x00]
	ldr r0, _08077920 @ =0x08077925
	str r0, [r5, #0x4C]
_0807791A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08077920: .4byte sub_8077924
	thumb_func_start sub_8077924
sub_8077924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	mov r4, r9
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077950
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077950:
	mov r1, r9
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r8, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08077966
	b _08077E96
_08077966:
	mov r0, r9
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077AEC @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	mov r3, r9
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _08077986
	adds r1, #0xFF
_08077986:
	asrs r1, r1, #0x08
	mov r4, r9
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077992
	adds r2, #0xFF
_08077992:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0807799E
	adds r3, #0xFF
_0807799E:
	asrs r3, r3, #0x08
	mov r7, r9
	str r7, [sp, #0x000]
	ldr r0, _08077AF0 @ =0x000029CA
	bl sub_80DF024
	ldr r1, [r7, #0x28]
	ldr r6, _08077AF4 @ =0x00004026
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _080779B6
	adds r0, #0xFF
_080779B6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _080779C6
	adds r0, #0xFF
_080779C6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080779D4
	adds r0, #0xFF
_080779D4:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	mov r7, r9
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _08077A00
	adds r0, #0xFF
_08077A00:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077A10
	adds r0, #0xFF
_08077A10:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077A1E
	adds r0, #0xFF
_08077A1E:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r7, r9
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	str r0, [sp, #0x00C]
	str r4, [r7, #0x30]
	ldr r0, [sp, #0x00C]
	str r0, [r4, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r2, [sp, #0x00C]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	adds r0, #0x74
	mov r3, r8
	strb r3, [r0, #0x00]
	ldr r0, _08077AF8 @ =0x08079775
	str r0, [r4, #0x4C]
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x4C]
	ldr r0, _08077AFC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [r7, #0x10]
	ldr r7, _08077B00 @ =0xFFFFE600
	adds r5, r5, r7
	mov r0, r9
	ldr r4, [r0, #0x14]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r4, r4, r1
	ldr r2, [sp, #0x010]
	ldr r2, [r2, #0x28]
	mov r8, r2
	mov r3, r8
	adds r3, #0xDC
	str r3, [sp, #0x01C]
	ldr r0, [r3, #0x00]
	subs r0, r0, r4
	ldr r7, _08077B04 @ =0xFFFFF000
	subs r6, r7, r5
	muls r0, r6
	mov r1, r8
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	mov r10, r1
	subs r1, r1, r5
	bl __divsi3
	adds r0, r0, r4
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x014]
	ldr r7, [r0, #0x28]
	adds r1, r7, #0x0
	adds r1, #0xDC
	str r1, [sp, #0x020]
	ldr r0, [r1, #0x00]
	subs r0, r0, r4
	muls r0, r6
	adds r6, r7, #0x0
	adds r6, #0xD8
	ldr r1, [r6, #0x00]
	subs r1, r1, r5
	bl __divsi3
	adds r4, r0, r4
	mov r0, r9
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x024]
	cmp r1, #0x01
	beq _08077B48
	cmp r1, #0x01
	bgt _08077B08
	cmp r1, #0x00
	beq _08077B0E
	b _08077BB0
_08077AEC: .4byte 0x0000010B
_08077AF0: .4byte 0x000029CA
_08077AF4: .4byte 0x00004026
_08077AF8: .4byte sub_8079774
_08077AFC: .4byte 0x03000FD8
_08077B00: .4byte 0xFFFFE600
_08077B04: .4byte 0xFFFFF000
_08077B08:
	cmp r1, #0x02
	beq _08077B7C
	b _08077BB0
_08077B0E:
	ldr r1, _08077B38 @ =0x03000EB0
	ldr r2, _08077B3C @ =0xFFFFF000
	str r2, [r1, #0x00]
	ldr r2, _08077B40 @ =0x03000EB8
	ldr r3, [sp, #0x018]
	str r3, [r2, #0x00]
	ldr r3, _08077B44 @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x04]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x00]
	str r0, [r2, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077B38: .4byte 0x03000EB0
_08077B3C: .4byte 0xFFFFF000
_08077B40: .4byte 0x03000EB8
_08077B44: .4byte 0x03000EC0
_08077B48:
	ldr r3, _08077B6C @ =0x03000EB0
	mov r5, r10
	str r5, [r3, #0x00]
	ldr r2, _08077B70 @ =0x03000EB8
	ldr r7, [sp, #0x01C]
	ldr r0, [r7, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077B74 @ =0x03000EC0
	mov r0, r8
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077B78 @ =0xFFFFF000
	str r0, [r3, #0x04]
	str r4, [r2, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _08077BEC
_08077B6C: .4byte 0x03000EB0
_08077B70: .4byte 0x03000EB8
_08077B74: .4byte 0x03000EC0
_08077B78: .4byte 0xFFFFF000
_08077B7C:
	ldr r3, _08077BA0 @ =0x03000EB0
	ldr r1, _08077BA4 @ =0xFFFFF000
	str r1, [r3, #0x00]
	ldr r1, _08077BA8 @ =0x03000EB8
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x00]
	ldr r2, _08077BAC @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r5, _08077BA4 @ =0xFFFFF000
	str r5, [r3, #0x04]
	str r4, [r1, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r2, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077BA0: .4byte 0x03000EB0
_08077BA4: .4byte 0xFFFFF000
_08077BA8: .4byte 0x03000EB8
_08077BAC: .4byte 0x03000EC0
_08077BB0:
	ldr r3, _08077EA8 @ =0x03000EB0
	ldr r7, [sp, #0x010]
	ldr r4, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	ldr r2, _08077EAC @ =0x03000EB8
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077EB0 @ =0x03000EC0
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x014]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
_08077BEC:
	str r0, [r1, #0x04]
_08077BEE:
	mov r2, r9
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08077BFA
	adds r0, #0xFF
_08077BFA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077C0A
	adds r0, #0xFF
_08077C0A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08077C18
	adds r0, #0xFF
_08077C18:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	mov r8, r0
	ldr r7, [sp, #0x00C]
	str r0, [r7, #0x30]
	mov r1, r8
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	adds r1, #0x84
	mov r3, r8
	ldr r0, [r3, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x40]
	str r0, [r1, #0x00]
	mov r0, r8
	adds r0, #0x74
	strb r2, [r0, #0x00]
	mov r2, r8
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	mov r4, r8
	adds r4, #0x0C
	bl sub_807FA50
	mov r5, r8
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077CE4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, r8
	ldr r2, [r3, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077CE4
	movs r4, #0x00
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x9C
	str r4, [r0, #0x00]
	mov r1, r8
	adds r1, #0xA0
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08077D4C
	adds r0, #0xFF
_08077D4C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r5, r9
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077D5C
	adds r0, #0xFF
_08077D5C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x6
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077D6A
	adds r0, #0xFF
_08077D6A:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	str r7, [r0, #0x30]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	strh r4, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r7, #0x2C]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077E2E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077E2E
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r3, [sp, #0x024]
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	ldr r0, _08077EC0 @ =0x03000EC8
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC4 @ =0x03000ECC
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC8 @ =0x0807972D
	mov r4, r9
	str r0, [r4, #0x4C]
_08077E96:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077EA8: .4byte 0x03000EB0
_08077EAC: .4byte 0x03000EB8
_08077EB0: .4byte 0x03000EC0
_08077EB4: .4byte 0x00004025
_08077EB8: .4byte 0x03000FD8
_08077EBC: .4byte sub_8078000
_08077EC0: .4byte 0x03000EC8
_08077EC4: .4byte 0x03000ECC
_08077EC8: .4byte sub_807972C
	thumb_func_start sub_8077ECC
sub_8077ECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077EF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077EF4:
	ldr r0, [r7, #0x30]
	cmp r0, #0x00
	bne _08077FD4
	movs r0, #0x01
	movs r1, #0xFF
	movs r2, #0x00
	bl sub_80193B4
	ldr r1, _08077FE0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r3, #0x4C]
	ldr r4, _08077FE4 @ =0x08079789
	cmp r0, r4
	bne _08077F40
	ldr r0, _08077FE8 @ =0x03000ED4
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F40:
	ldr r0, [r5, #0x4C]
	cmp r0, r4
	bne _08077F58
	ldr r0, _08077FEC @ =0x03000ED8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F58:
	ldr r1, _08077FF0 @ =0x03000F5C
	strb r6, [r1, #0x00]
	ldr r0, _08077FF4 @ =0x03000F5D
	strb r6, [r0, #0x00]
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	beq _08077F98
	mov r12, r4
	movs r0, #0x11
	negs r0, r0
	mov r8, r0
	ldr r6, _08077FF8 @ =0x03000EDC
	adds r4, r1, #0x0
_08077F72:
	ldr r0, [r3, #0x4C]
	cmp r0, r12
	bne _08077F92
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077F92:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077F72
_08077F98:
	ldr r3, [r5, #0x30]
	cmp r3, #0x00
	beq _08077FD0
	ldr r6, _08077FE4 @ =0x08079789
	movs r2, #0x11
	negs r2, r2
	mov r8, r2
	ldr r5, _08077FFC @ =0x03000F1C
	ldr r4, _08077FF4 @ =0x03000F5D
_08077FAA:
	ldr r0, [r3, #0x4C]
	cmp r0, r6
	bne _08077FCA
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077FCA:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077FAA
_08077FD0:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08077FD4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077FE0: .4byte 0x03000FD8
_08077FE4: .4byte 0x08079789
_08077FE8: .4byte 0x03000ED4
_08077FEC: .4byte 0x03000ED8
_08077FF0: .4byte 0x03000F5C
_08077FF4: .4byte 0x03000F5D
_08077FF8: .4byte 0x03000EDC
_08077FFC: .4byte 0x03000F1C
	thumb_func_start sub_8078000
sub_8078000:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_807830C
	ldr r5, [r6, #0x28]
	movs r0, #0x08
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08078124 @ =0x03000EB0
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	lsls r4, r0, #0x02
	adds r1, r4, r1
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bge _0807803C
	adds r1, #0xFF
_0807803C:
	asrs r2, r1, #0x08
	ldr r0, _08078128 @ =0x03000EB8
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807804A
	adds r0, #0xFF
_0807804A:
	asrs r3, r0, #0x08
	ldr r0, _0807812C @ =0x03000EC0
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078058
	adds r0, #0xFF
_08078058:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _08078130 @ =0x00004025
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	movs r2, #0x77
	adds r2, r2, r6
	mov r12, r2
	ldrb r0, [r2, #0x00]
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
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08078134 @ =0x08078235
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	subs r1, #0x10
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x28
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08078138
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08078142
	cmp r0, #0x02
	bne _08078148
	b _08078142
	.byte 0x00, 0x00
_08078124: .4byte 0x03000EB0
_08078128: .4byte 0x03000EB8
_0807812C: .4byte 0x03000EC0
_08078130: .4byte 0x00004025
_08078134: .4byte sub_8078234
_08078138:
	ldr r0, [r2, #0x00]
	cmp r0, #0x02
	bgt _08078148
	cmp r0, #0x01
	blt _08078148
_08078142:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x10]
_08078148:
	ldr r0, _08078158 @ =0x0807815D
	str r0, [r6, #0x4C]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078158: .4byte sub_807815C
	thumb_func_start sub_807815C
sub_807815C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	bl sub_807830C
	adds r7, r6, #0x0
	adds r7, #0xAC
	ldrh r0, [r7, #0x00]
	subs r0, #0x01
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _0807820A
	ldr r0, _08078218 @ =0x03001038
	mov r9, r0
	ldr r4, _0807821C @ =0x0819832C
	ldr r0, _08078220 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r1, _08078224 @ =0x03000EC8
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	mov r8, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, _08078228 @ =0x03000ECC
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	ldr r3, _0807822C @ =0x0300034C
	ldr r2, _08078230 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r6, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x01
	bne _0807820A
	adds r0, r6, #0x0
	bl sub_807C298
_0807820A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078218: .4byte 0x03001038
_0807821C: .4byte 0x0819832C
_08078220: .4byte 0x08198220
_08078224: .4byte 0x03000EC8
_08078228: .4byte 0x03000ECC
_0807822C: .4byte 0x0300034C
_08078230: .4byte 0x00000888
	thumb_func_start sub_8078234
sub_8078234:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08078280 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r3, r1, #0x0
	adds r3, #0x08
	ldr r5, [r0, #0x74]
	adds r2, r5, #0x0
	adds r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807829E
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08078260
	cmp r0, #0x02
	bne _08078284
_08078260:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
	.byte 0x00, 0x00
_08078280: .4byte 0x03000FD8
_08078284:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
_0807829E:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bgt _080782D0
	cmp r0, #0x01
	blt _080782D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r2, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
_080782C8:
	movs r2, #0xFF
	bl sub_810DD7C
	b _080782EE
_080782D0:
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_080782EE:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08078304
	adds r0, r4, #0x0
	bl sub_807C298
_08078304:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807830C
sub_807830C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r7, r0, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078324
	adds r0, #0xFF
_08078324:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x02C]
	cmp r1, #0x00
	bge _08078336
	adds r1, #0xFF
_08078336:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _08078348
	adds r1, #0xFF
_08078348:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r7, #0x30]
	ldr r0, _080784FC @ =0x03000EB0
	adds r2, r7, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r9, r2
	cmp r0, #0x00
	bge _08078364
	adds r0, #0xFF
_08078364:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078374
	adds r0, #0xFF
_08078374:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, _08078504 @ =0x03000EC0
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078384
	adds r0, #0xFF
_08078384:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _08078508 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _0807850C @ =0x0819832C
	ldr r0, _08078510 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _08078508 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r2, _08078514 @ =0x03000EC8
	mov r3, r9
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r4, [r1, #0x00]
	ldr r2, _08078518 @ =0x03000ECC
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r3, _0807851C @ =0x0300034C
	ldr r2, _08078520 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x02C]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, _080784FC @ =0x03000EB0
	mov r2, r9
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r2, [r0, #0x00]
	ldr r0, _08078504 @ =0x03000EC0
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r1, [sp, #0x01C]
	subs r3, r3, r1
	str r3, [sp, #0x028]
	ldr r3, [sp, #0x020]
	subs r3, r2, r3
	mov r10, r3
	ldr r1, [sp, #0x024]
	subs r1, r0, r1
	mov r9, r1
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _080784E8
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0807847C:
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080784C0
	adds r1, #0xFF
_080784C0:
	asrs r1, r1, #0x08
	movs r0, #0x08
	negs r0, r0
	cmp r1, r0
	bge _080784D0
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x04]
_080784D0:
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0807847C
_080784E8:
	ldr r0, [sp, #0x018]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080784FC: .4byte 0x03000EB0
_08078500: .4byte 0x03000EB8
_08078504: .4byte 0x03000EC0
_08078508: .4byte 0x03001038
_0807850C: .4byte 0x0819832C
_08078510: .4byte 0x08198220
_08078514: .4byte 0x03000EC8
_08078518: .4byte 0x03000ECC
_0807851C: .4byte 0x0300034C
_08078520: .4byte 0x00000888
	thumb_func_start sub_8078524
sub_8078524:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078538
	b _08078652
_08078538:
	adds r0, r6, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807854C
	adds r1, #0xFF
_0807854C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078556
	adds r2, #0xFF
_08078556:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078560
	adds r3, #0xFF
_08078560:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0807865C @ =0x000029DB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078574
	adds r0, #0xFF
_08078574:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078582
	adds r0, #0xFF
_08078582:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0807858E
	adds r0, #0xFF
_0807858E:
	asrs r0, r0, #0x08
	adds r0, #0x50
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078660 @ =0x0000402B
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078664 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08078668 @ =0x080796B1
	str r0, [r5, #0x58]
	ldr r0, _0807866C @ =0x08078769
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078670 @ =0x080796C5
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _08078674 @ =0x08079705
	str r0, [r6, #0x4C]
_08078652:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807865C: .4byte 0x000029DB
_08078660: .4byte 0x0000402B
_08078664: .4byte sub_8087540
_08078668: .4byte 0x080796B1
_0807866C: .4byte sub_8078768
_08078670: .4byte sub_80796C4
_08078674: .4byte sub_8079704
	thumb_func_start sub_8078678
sub_8078678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080786AE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078694
	adds r1, #0xFF
_08078694:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807869E
	adds r2, #0xFF
_0807869E:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080786FC @ =0x000029E8
	movs r3, #0x00
	bl sub_80DF024
	movs r0, #0x10
	str r0, [r5, #0x00]
_080786AE:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x4C
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	cmp r0, r2
	ble _080786C2
	str r2, [r1, #0x00]
_080786C2:
	ldr r0, [r4, #0x18]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _08078758
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r1, r2
	bgt _08078700
	ldr r0, [r4, #0x28]
	subs r1, r2, r1
	adds r2, #0x24
	adds r0, r0, r2
	b _0807870A
	.byte 0x00, 0x00
_080786FC: .4byte 0x000029E8
_08078700:
	ldr r0, [r4, #0x28]
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
_0807870A:
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078736
	adds r1, #0xFF
_08078736:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078740
	adds r2, #0xFF
_08078740:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807874A
	adds r3, #0xFF
_0807874A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078760 @ =0x00002A0C
	bl sub_80DF024
	ldr r0, _08078764 @ =0x080796B9
	str r0, [r4, #0x4C]
_08078758:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08078760: .4byte 0x00002A0C
_08078764: .4byte sub_80796B8
	thumb_func_start sub_8078768
sub_8078768:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	beq _08078778
	b _0807887E
_08078778:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078848
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x06
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _080787BC
	cmp r1, #0x01
	bgt _080787AC
	cmp r1, #0x00
	beq _080787B2
	b _08078800
_080787AC:
	cmp r1, #0x02
	beq _080787C4
	b _08078800
_080787B2:
	ldr r2, _080787B8 @ =0x0000402C
	b _080787C6
	.byte 0x00, 0x00
_080787B8: .4byte 0x0000402C
_080787BC:
	ldr r2, _080787C0 @ =0x0000402D
	b _080787C6
_080787C0: .4byte 0x0000402D
_080787C4:
	ldr r2, _080787F8 @ =0x0000402E
_080787C6:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080787D8
	adds r1, #0xFF
_080787D8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080787E2
	adds r2, #0xFF
_080787E2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080787EC
	adds r3, #0xFF
_080787EC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080787FC @ =0x000029F1
	bl sub_80DF024
	b _08078840
_080787F8: .4byte 0x0000402E
_080787FC: .4byte 0x000029F1
_08078800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078808
	adds r1, #0xFF
_08078808:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078812
	adds r2, #0xFF
_08078812:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807881C
	adds r3, #0xFF
_0807881C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807883C @ =0x00002A32
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	movs r0, #0x00
	b _0807887E
	.byte 0x00, 0x00
_0807883C: .4byte 0x00002A32
_08078840:
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	b _0807886E
_08078848:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078850
	adds r1, #0xFF
_08078850:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807885A
	adds r2, #0xFF
_0807885A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078864
	adds r3, #0xFF
_08078864:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078888 @ =0x000029F1
	bl sub_80DF024
_0807886E:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, _0807888C @ =0xFFFFF900
	str r1, [r0, #0x00]
	ldr r0, _08078890 @ =0x08078679
	str r0, [r4, #0x4C]
	movs r0, #0x01
	negs r0, r0
_0807887E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078888: .4byte 0x000029F1
_0807888C: .4byte 0xFFFFF900
_08078890: .4byte sub_8078678
	thumb_func_start sub_8078894
sub_8078894:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080788AA
	b _080789A8
_080788AA:
	movs r0, #0x50
	str r0, [r1, #0x00]
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _08078998
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080788CE
	adds r1, #0xFF
_080788CE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080788D8
	adds r2, #0xFF
_080788D8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080788E2
	adds r3, #0xFF
_080788E2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078984 @ =0x00002A61
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080788F6
	adds r0, #0xFF
_080788F6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078904
	adds r0, #0xFF
_08078904:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078910
	adds r0, #0xFF
_08078910:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078988 @ =0x0000402F
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r4, #0x30]
	str r0, [r3, #0x30]
	str r3, [r4, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0807898C @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078990 @ =0x08079655
	str r0, [r3, #0x4C]
	adds r1, r3, #0x0
	adds r1, #0xB2
	ldr r0, _08078994 @ =0x00001111
	strh r0, [r1, #0x00]
	subs r1, #0x06
	movs r0, #0x03
	strh r0, [r1, #0x00]
	b _080789A8
	.byte 0x00, 0x00
_08078984: .4byte 0x00002A61
_08078988: .4byte 0x0000402F
_0807898C: .4byte sub_8087540
_08078990: .4byte sub_8079654
_08078994: .4byte 0x00001111
_08078998:
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789B0 @ =0x08079689
	str r0, [r4, #0x4C]
_080789A8:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
_080789B0: .4byte sub_8079688
	thumb_func_start sub_80789B4
sub_80789B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08078A4A
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _080789E8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789E4 @ =0x080795D5
	b _08078A3E
_080789E4: .4byte sub_80795D4
_080789E8:
	movs r5, #0x00
	bl sub_8199F30
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r2, r0
	adds r3, r4, #0x0
	adds r3, #0xA8
	b _080789FE
_080789FA:
	cmp r5, #0x02
	bhi _08078A2C
_080789FE:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0x01
	ands r2, r0
	ldr r0, _08078A50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x30]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080789FA
	cmp r5, #0x02
	bls _08078A2E
_08078A2C:
	movs r2, #0x00
_08078A2E:
	str r2, [r3, #0x00]
	adds r1, r2, #0x3
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08078A54 @ =0x08079569
_08078A3E:
	str r0, [r4, #0x4C]
	ldr r0, _08078A58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08078A4A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08078A50: .4byte 0x03000FD8
_08078A54: .4byte sub_8079568
_08078A58: .4byte 0x00000119
	thumb_func_start sub_8078A5C
sub_8078A5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	mov r1, r8
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078B6C
	mov r0, r8
	bl sub_807F4FC
	ldr r0, _08078B78 @ =0x08079485
	mov r1, r8
	str r0, [r1, #0x58]
	ldr r0, _08078B7C @ =0x08078B95
	str r0, [r1, #0x60]
	ldr r1, [r1, #0x28]
	mov r3, r8
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	bge _08078A92
	adds r2, #0xFF
_08078A92:
	asrs r2, r2, #0x08
	mov r4, r8
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078A9E
	adds r0, #0xFF
_08078A9E:
	asrs r0, r0, #0x08
	subs r3, r0, #0x2
	mov r4, r8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078AAC
	adds r0, #0xFF
_08078AAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078B80 @ =0x00004030
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	str r0, [r7, #0x30]
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078B84 @ =0x080794FD
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldr r0, _08078B88 @ =0x00002222
	strh r0, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	ldr r1, _08078B8C @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	str r4, [r0, #0x00]
	ldr r0, _08078B90 @ =0x0807953D
	mov r1, r8
	str r0, [r1, #0x4C]
_08078B6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078B78: .4byte sub_8079484
_08078B7C: .4byte sub_8078B94
_08078B80: .4byte 0x00004030
_08078B84: .4byte sub_80794FC
_08078B88: .4byte 0x00002222
_08078B8C: .4byte 0x03000FD8
_08078B90: .4byte sub_807953C
	thumb_func_start sub_8078B94
sub_8078B94:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08078BB0
	b _08078CFE
_08078BB0:
	ldr r0, _08078BCC @ =0x03000F64
	str r4, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08078BD4
	ldr r0, _08078BD0 @ =0x03000F68
	strb r2, [r0, #0x00]
	b _08078BDA
	.byte 0x00, 0x00
_08078BCC: .4byte 0x03000F64
_08078BD0: .4byte 0x03000F68
_08078BD4:
	ldr r1, _08078D10 @ =0x03000F68
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08078BDA:
	ldr r0, [r5, #0x28]
	ldr r4, [r0, #0x38]
	movs r7, #0x84
	adds r7, r7, r5
	mov r9, r7
	movs r0, #0x88
	adds r0, r0, r5
	mov r10, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	str r1, [sp, #0x00C]
	movs r2, #0x79
	adds r2, r2, r5
	mov r8, r2
	adds r3, r5, #0x0
	adds r3, #0x7C
	str r3, [sp, #0x008]
	adds r7, r5, #0x0
	adds r7, #0x7A
	str r7, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x010]
	cmp r4, #0x00
	beq _08078C26
	ldr r7, _08078D14 @ =0x00002222
_08078C0E:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _08078C20
	adds r0, r4, #0x0
	bl sub_807C298
_08078C20:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _08078C0E
_08078C26:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08078C2E
	adds r1, #0xFF
_08078C2E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08078C38
	adds r2, #0xFF
_08078C38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08078C42
	adds r3, #0xFF
_08078C42:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08078D18 @ =0x00002A6E
	bl sub_80DF024
	bl sub_8199F30
	movs r2, #0x03
	ands r2, r0
	ldr r1, _08078D1C @ =0x03000F60
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r4, [r0, r7]
	mov r12, r4
	movs r0, #0x00
	adds r2, #0x01
	cmp r0, r2
	bge _08078C90
	adds r4, #0x01
_08078C70:
	adds r1, r0, #0x1
_08078C72:
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r6, [r0, r7]
	adds r0, #0x0A
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	beq _08078C72
	cmp r6, r4
	beq _08078C72
	adds r0, r1, #0x0
	cmp r0, r2
	blt _08078C70
_08078C90:
	ldr r1, _08078D1C @ =0x03000F60
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r1, #0x00]
	mov r0, r12
	subs r2, r6, r0
	lsls r2, r2, #0x18
	ldr r4, [r5, #0x28]
	adds r3, r4, #0x0
	adds r3, #0xD8
	ldr r0, _08078D20 @ =0x083B87EC
	lsrs r2, r2, #0x16
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r3, r10
	str r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xE0
	ldr r0, _08078D24 @ =0x083B87FC
	adds r2, r2, r0
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x008]
	strh r0, [r2, #0x00]
	ldr r3, [sp, #0x004]
	strh r1, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r4, [sp, #0x010]
	strh r0, [r4, #0x00]
	ldr r0, _08078D28 @ =0x08078D2D
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08078CFE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078D10: .4byte 0x03000F68
_08078D14: .4byte 0x00002222
_08078D18: .4byte 0x00002A6E
_08078D1C: .4byte 0x03000F60
_08078D20: .4byte 0x083B87EC
_08078D24: .4byte 0x083B87FC
_08078D28: .4byte sub_8078D2C
	thumb_func_start sub_8078D2C
sub_8078D2C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078D6C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078D4A
	adds r1, #0xFF
_08078D4A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078D54
	adds r2, #0xFF
_08078D54:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078D5E
	adds r3, #0xFF
_08078D5E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078DCC @ =0x00002A86
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08078D6C:
	ldr r1, [r4, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078E1C
	ldr r0, _08078DD0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _08078DD4 @ =0x03000F68
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, _08078DD8 @ =0x03000F60
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08078DE8
	adds r5, r1, #0x0
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08078DAC
	adds r2, #0xFF
_08078DAC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08078DB6
	adds r3, #0xFF
_08078DB6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08078DDC
	movs r0, #0x13
	b _08078DDE
_08078DCC: .4byte 0x00002A86
_08078DD0: .4byte 0x03000FD8
_08078DD4: .4byte 0x03000F68
_08078DD8: .4byte 0x03000F60
_08078DDC:
	movs r0, #0x12
_08078DDE:
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_810D738
_08078DE8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078DFA
	adds r1, #0xFF
_08078DFA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078E04
	adds r2, #0xFF
_08078E04:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078E0E
	adds r3, #0xFF
_08078E0E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078E24 @ =0x00002A76
	bl sub_80DF024
	ldr r0, _08078E28 @ =0x08079479
	str r0, [r4, #0x4C]
_08078E1C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078E24: .4byte 0x00002A76
_08078E28: .4byte sub_8079478
	thumb_func_start sub_8078E2C
sub_8078E2C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078E40
	b _08078F76
_08078E40:
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08078E60
	adds r1, #0xFF
_08078E60:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078E6A
	adds r2, #0xFF
_08078E6A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078E74
	adds r3, #0xFF
_08078E74:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08078F20 @ =0x00002A94
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078E88
	adds r0, #0xFF
_08078E88:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078E96
	adds r0, #0xFF
_08078E96:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08078EA2
	adds r0, #0xFF
_08078EA2:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078F24 @ =0x00004028
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078F28 @ =0x08078F85
	str r0, [r5, #0x4C]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078F2C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	bl sub_8199F30
	ands r0, r4
	ldr r1, _08078F30 @ =0x03000F6C
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08078F34
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _08078F44
_08078F20: .4byte 0x00002A94
_08078F24: .4byte 0x00004028
_08078F28: .4byte sub_8078F84
_08078F2C: .4byte sub_8087540
_08078F30: .4byte 0x03000F6C
_08078F34:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_08078F44:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08078F80 @ =0x08079451
	str r0, [r6, #0x4C]
_08078F76:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078F80: .4byte sub_8079450
	thumb_func_start sub_8078F84
sub_8078F84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078FFE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078F9A
	adds r1, #0xFF
_08078F9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078FA4
	adds r2, #0xFF
_08078FA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078FAE
	adds r3, #0xFF
_08078FAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079008 @ =0x00002A9D
	bl sub_80DF024
	ldr r2, _0807900C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08079010 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079014 @ =0x03000ED0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_08078FFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079008: .4byte 0x00002A9D
_0807900C: .4byte 0x00004029
_08079010: .4byte 0x03000F6C
_08079014: .4byte 0x03000ED0
	thumb_func_start sub_8079018
sub_8079018:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080790C4
	ldr r2, _08079068 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080790C0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	ands r1, r2
	str r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0807906C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0807907C
	.byte 0x00, 0x00
_08079068: .4byte 0x00004029
_0807906C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_0807907C:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080790BC @ =0x080793F5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD7
	bl play_sfx_80195B4
	b _080790C4
	.byte 0x00, 0x00
_080790BC: .4byte sub_80793F4
_080790C0:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080790C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80790CC
sub_80790CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	ldr r0, _080791BC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080790E2
	movs r0, #0x05
	subs r2, r0, r2
_080790E2:
	ldr r0, _080791C0 @ =0xFFFFFB34
	ldr r1, _080791C4 @ =0x00000B33
	muls r0, r2
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r6, r0, r3
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r7, r0, r1
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08079102
	adds r0, #0xFF
_08079102:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08079110
	adds r0, #0xFF
_08079110:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0807911C
	adds r0, #0xFF
_0807911C:
	asrs r0, r0, #0x08
	adds r0, #0x38
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080791C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080791CC @ =0x080793C5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080791D0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080791BC: .4byte 0x03000F6C
_080791C0: .4byte 0xFFFFFB34
_080791C4: .4byte 0x00000B33
_080791C8: .4byte 0x00004059
_080791CC: .4byte sub_80793C4
_080791D0: .4byte sub_8087540
	thumb_func_start sub_80791D4
sub_80791D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079278
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079208 @ =0x08079395
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r6, #0x00
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0807920C
	str r0, [r5, #0x4C]
	b _08079278
	.byte 0x00, 0x00
_08079208: .4byte sub_8079394
_0807920C:
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r6, [r0, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807926C
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	b _08079274
_0807926C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
_08079274:
	ldr r0, _08079280 @ =0x08079349
	str r0, [r4, #0x4C]
_08079278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079280: .4byte sub_8079348
	thumb_func_start sub_8079284
sub_8079284:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079316
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079316
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080792D0 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080792D4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _080792E4
_080792D0: .4byte 0x03000F6C
_080792D4:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_080792E4:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0807931C @ =0x08079321
	str r0, [r4, #0x4C]
_08079316:
	pop {r4}
	pop {r0}
	bx r0
_0807931C: .4byte sub_8079320
	thumb_func_start sub_8079320
sub_8079320:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807933E
	str r0, [r1, #0x4C]
	ldr r2, [r1, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xA4
	movs r1, #0x02
	str r1, [r0, #0x00]
	ldr r3, _08079344 @ =0x00000113
	adds r0, r2, r3
	strb r1, [r0, #0x00]
_0807933E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079344: .4byte 0x00000113
	thumb_func_start sub_8079348
sub_8079348:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079380
	ldr r2, _08079388 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xE6
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _0807938C @ =0x08079285
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08079390 @ =0x080797E1
	str r0, [r4, #0x60]
_08079380:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079388: .4byte 0x00004029
_0807938C: .4byte sub_8079284
_08079390: .4byte sub_80797E0
	thumb_func_start sub_8079394
sub_8079394:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080793BC
	cmp r0, #0x01
	bne _080793B0
	ldr r1, _080793AC @ =0x03000ED0
	movs r0, #0x00
	b _080793B6
	.byte 0x00, 0x00
_080793AC: .4byte 0x03000ED0
_080793B0:
	ldr r1, _080793C0 @ =0x03000ED0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
_080793B6:
	strb r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r2, #0x4C]
_080793BC:
	pop {r0}
	bx r0
_080793C0: .4byte 0x03000ED0
	thumb_func_start sub_80793C4
sub_80793C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080793EA
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080793F0 @ =0x080798A9
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
_080793EA:
	pop {r4}
	pop {r0}
	bx r0
_080793F0: .4byte sub_80798A8
	thumb_func_start sub_80793F4
sub_80793F4:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079404
	ldr r0, _08079408 @ =0x0807940D
	str r0, [r1, #0x4C]
_08079404:
	pop {r0}
	bx r0
_08079408: .4byte sub_807940C
	thumb_func_start sub_807940C
sub_807940C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08079428 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079430
	ldr r2, _0807942C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	b _0807943C
	.byte 0x00, 0x00
_08079428: .4byte 0x03000F6C
_0807942C: .4byte 0x00004029
_08079430:
	ldr r2, _08079448 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
_0807943C:
	ldr r0, _0807944C @ =0x080798C5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079448: .4byte 0x00004029
_0807944C: .4byte sub_80798C4
	thumb_func_start sub_8079450
sub_8079450:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079470
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08079470:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8079478
sub_8079478:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8079484
sub_8079484:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079494
	adds r1, #0xFF
_08079494:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807949E
	adds r2, #0xFF
_0807949E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080794A8
	adds r3, #0xFF
_080794A8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080794F4 @ =0x00002A7E
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r0, [r4, #0x28]
	ldr r4, [r0, #0x38]
	cmp r4, #0x00
	beq _080794EA
	ldr r5, _080794F8 @ =0x00002222
_080794D2:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r5
	bne _080794E4
	adds r0, r4, #0x0
	bl sub_807C298
_080794E4:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _080794D2
_080794EA:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080794F4: .4byte 0x00002A7E
_080794F8: .4byte 0x00002222
	thumb_func_start sub_80794FC
sub_80794FC:
	push {lr}
	adds r3, r0, #0x0
	ldr r2, [r3, #0x10]
	ldr r1, _08079538 @ =0xFFFFFD80
	adds r0, r2, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x0C]
	cmp r1, #0x00
	beq _0807951A
_0807950E:
	ldr r0, [r1, #0x04]
	str r2, [r1, #0x04]
	adds r2, r0, #0x0
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _0807950E
_0807951A:
	ldr r1, [r3, #0x10]
	cmp r1, #0x00
	bge _08079522
	adds r1, #0xFF
_08079522:
	asrs r1, r1, #0x08
	movs r0, #0x28
	negs r0, r0
	cmp r1, r0
	bgt _08079532
	adds r0, r3, #0x0
	bl sub_807C298
_08079532:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079538: .4byte 0xFFFFFD80
	thumb_func_start sub_807953C
sub_807953C:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08079564 @ =0xFFFFFD80
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08079550
	adds r3, #0xFF
	adds r0, r1, r3
_08079550:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08079560
	adds r0, r2, #0x0
	bl sub_807C298
_08079560:
	pop {r0}
	bx r0
_08079564: .4byte 0xFFFFFD80
	thumb_func_start sub_8079568
sub_8079568:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080795C4
	ldr r0, _080795CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x10]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r0, [r4, #0x14]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080795D0 @ =0x080799B5
	str r0, [r4, #0x4C]
_080795C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080795CC: .4byte 0x03000FD8
_080795D0: .4byte sub_80799B4
	thumb_func_start sub_80795D4
sub_80795D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079640
	movs r7, #0x01
	movs r0, #0x07
	mov r8, r0
_080795EE:
	bl sub_8199F30
	movs r1, #0x07
	bl __umodsi3
	adds r0, #0x01
	lsls r5, r0, #0x0D
	bl sub_8199F30
	mov r1, r8
	ands r0, r1
	adds r0, #0x04
	lsls r4, r0, #0x0C
	bl sub_8199F30
	movs r1, #0x03
	ands r1, r0
	adds r1, #0x02
	lsls r1, r1, #0x0C
	movs r0, #0xB0
	lsls r0, r0, #0x07
	cmp r5, r0
	bgt _0807962A
	ldr r2, _0807964C @ =0xFFFFD000
	adds r0, r4, r2
	cmp r1, r0
	ble _08079626
	movs r7, #0x00
_08079626:
	cmp r7, #0x00
	bne _080795EE
_0807962A:
	str r5, [r6, #0x10]
	str r4, [r6, #0x14]
	str r1, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079650 @ =0x08079655
	str r0, [r6, #0x4C]
_08079640:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807964C: .4byte 0xFFFFD000
_08079650: .4byte sub_8079654
	thumb_func_start sub_8079654
sub_8079654:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807967C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x04
	str r1, [r0, #0x00]
	ldr r0, _08079684 @ =0x080789B5
	str r0, [r4, #0x4C]
_0807967C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079684: .4byte sub_80789B4
	thumb_func_start sub_8079688
sub_8079688:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080796A8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080796A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x20
	non_word_aligned_thumb_func_start sub_80796B2
sub_80796B2:
	negs r0, r0
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_80796B8
sub_80796B8:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80796C4
sub_80796C4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _080796FA
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x10
	str r0, [r1, #0x00]
	adds r1, #0x20
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
	ldr r0, _08079700 @ =0x08078679
	str r0, [r2, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
_080796FA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079700: .4byte sub_8078678
	thumb_func_start sub_8079704
sub_8079704:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079724
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08079724:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807972C
sub_807972C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807974E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_0807974E:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807976A
	adds r0, r5, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079770 @ =0x08079A91
	str r0, [r5, #0x4C]
_0807976A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08079770: .4byte sub_8079A90
	thumb_func_start sub_8079774
sub_8079774:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	bne _08079784
	adds r0, r1, #0x0
	bl sub_807C298
_08079784:
	pop {r0}
	bx r0
	.byte 0x70, 0x47, 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xED, 0x99, 0x07, 0x08
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x39, 0x9A, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xD5, 0x91, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x51, 0x98, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x1D, 0x99, 0x07, 0x08
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x5D, 0x99, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xD9, 0x9A, 0x07, 0x08
	thumb_func_start sub_80797E0
sub_80797E0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0807983E
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r5, #0x01
	negs r5, r5
	movs r0, #0xE3
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079808
	adds r1, #0xFF
_08079808:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08079812
	adds r2, #0xFF
_08079812:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807981C
	adds r3, #0xFF
_0807981C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079848 @ =0x00002AA6
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xA4
	movs r1, #0x01
	str r1, [r0, #0x00]
	ldr r3, _0807984C @ =0x00000113
	adds r0, r2, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
_0807983E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08079848: .4byte 0x00002AA6
_0807984C: .4byte 0x00000113
	thumb_func_start sub_8079850
sub_8079850:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _08079860
	adds r1, #0xFF
_08079860:
	asrs r1, r1, #0x08
	ldr r2, [r0, #0x3C]
	cmp r2, #0x00
	bge _0807986A
	adds r2, #0xFF
_0807986A:
	asrs r2, r2, #0x08
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _08079874
	adds r3, #0xFF
_08079874:
	asrs r3, r3, #0x08
	str r0, [sp, #0x000]
	ldr r0, _080798A0 @ =0x00002AA6
	bl sub_80DF024
	ldr r0, [r5, #0x30]
	bl sub_807C298
	movs r4, #0x00
	str r4, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, _080798A4 @ =0x03000ED0
	strb r4, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080798A0: .4byte 0x00002AA6
_080798A4: .4byte 0x03000ED0
	thumb_func_start sub_80798A8
sub_80798A8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080798BE
	adds r0, r2, #0x0
	bl sub_807C298
_080798BE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80798C4
sub_80798C4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807990C
	ldr r0, _080798EC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080798F4
	ldr r2, _080798F0 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	b _08079900
	.byte 0x00, 0x00
_080798EC: .4byte 0x03000F6C
_080798F0: .4byte 0x00004029
_080798F4:
	ldr r2, _08079914 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_08079900:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x06
	strh r1, [r0, #0x00]
	ldr r0, _08079918 @ =0x08079B49
	str r0, [r4, #0x4C]
_0807990C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079914: .4byte 0x00004029
_08079918: .4byte sub_8079B48
	thumb_func_start sub_807991C
sub_807991C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807992A
	str r0, [r4, #0x4C]
	b _0807994C
_0807992A:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079954 @ =0x08079BA9
	str r0, [r4, #0x4C]
	ldr r2, [r4, #0x30]
	adds r1, r2, #0x0
	adds r1, #0xA0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08079958 @ =0x0807940D
	str r0, [r2, #0x4C]
_0807994C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079954: .4byte sub_8079BA8
_08079958: .4byte sub_807940C
	thumb_func_start sub_807995C
sub_807995C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079974
	adds r1, #0xFF
_08079974:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807997E
	adds r2, #0xFF
_0807997E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08079988
	adds r3, #0xFF
_08079988:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080799A8 @ =0x00002A8B
	bl sub_80DF024
	ldr r0, _080799AC @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080799B0 @ =0x08078E2D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080799A8: .4byte 0x00002A8B
_080799AC: .4byte 0x00000119
_080799B0: .4byte sub_8078E2C
	thumb_func_start sub_80799B4
sub_80799B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080799E2
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r1, #0x05
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _080799E8 @ =0x08078A5D
	str r0, [r4, #0x4C]
_080799E2:
	pop {r4}
	pop {r0}
	bx r0
_080799E8: .4byte sub_8078A5C
	thumb_func_start sub_80799EC
sub_80799EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079A04
	adds r1, #0xFF
_08079A04:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08079A0E
	adds r2, #0xFF
_08079A0E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08079A18
	adds r3, #0xFF
_08079A18:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079A30 @ =0x00002A58
	bl sub_80DF024
	ldr r0, _08079A34 @ =0x08079BD1
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079A30: .4byte 0x00002A58
_08079A34: .4byte sub_8079BD0
	thumb_func_start sub_8079A38
sub_8079A38:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08079A50
	adds r1, #0xFF
_08079A50:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08079A5A
	adds r2, #0xFF
_08079A5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08079A64
	adds r3, #0xFF
_08079A64:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079A88 @ =0x000029D2
	bl sub_80DF024
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08079A8C @ =0x08078525
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079A88: .4byte 0x000029D2
_08079A8C: .4byte sub_8078524
	thumb_func_start sub_8079A90
sub_8079A90:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079AB2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08079AB2:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079ACE
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079AD4 @ =0x08077ECD
	str r0, [r5, #0x4C]
_08079ACE:
	pop {r4, r5}
	pop {r0}
	bx r0
_08079AD4: .4byte sub_8077ECC
	thumb_func_start sub_8079AD8
sub_8079AD8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x03
	ands r2, r0
	str r2, [r1, #0x00]
	cmp r2, #0x01
	beq _08079B06
	cmp r2, #0x01
	bgt _08079AFA
	cmp r2, #0x00
	beq _08079B00
	b _08079B1A
_08079AFA:
	cmp r2, #0x02
	beq _08079B0C
	b _08079B1A
_08079B00:
	adds r0, r4, #0x0
	movs r1, #0x07
	b _08079B10
_08079B06:
	adds r0, r4, #0x0
	movs r1, #0x08
	b _08079B10
_08079B0C:
	adds r0, r4, #0x0
	movs r1, #0x09
_08079B10:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08079B26
_08079B1A:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08079B26:
	ldr r0, _08079B44 @ =0x08077705
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x42
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079B44: .4byte sub_8077704
	thumb_func_start sub_8079B48
sub_8079B48:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079B98
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079B98
	ldr r0, _08079B80 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079B88
	ldr r2, _08079B84 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _08079B94
	.byte 0x00, 0x00
_08079B80: .4byte 0x03000F6C
_08079B84: .4byte 0x00004029
_08079B88:
	ldr r2, _08079BA0 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
_08079B94:
	ldr r0, _08079BA4 @ =0x08079C0D
	str r0, [r4, #0x4C]
_08079B98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079BA0: .4byte 0x00004029
_08079BA4: .4byte sub_8079C0C
	thumb_func_start sub_8079BA8
sub_8079BA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _08079BC4
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079BCC @ =0x08079C3D
	str r0, [r4, #0x4C]
_08079BC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079BCC: .4byte sub_8079C3C
	thumb_func_start sub_8079BD0
sub_8079BD0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079C00
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x06
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r2, [r0, #0x00]
	ldr r0, _08079C08 @ =0x08078895
	str r0, [r4, #0x4C]
_08079C00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079C08: .4byte sub_8078894
	thumb_func_start sub_8079C0C
sub_8079C0C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079C2C
	ldr r2, _08079C34 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079C38 @ =0x08079C71
	str r0, [r4, #0x4C]
_08079C2C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079C34: .4byte 0x00004029
_08079C38: .4byte sub_8079C70
	thumb_func_start sub_8079C3C
sub_8079C3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079C64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079C6C @ =0x03000ED0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
_08079C64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079C6C: .4byte 0x03000ED0
	thumb_func_start sub_8079C70
sub_8079C70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _08079C94 @ =0x00004029
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079C98 @ =0x08079C9D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r4, #0xA8
	str r1, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08079C94: .4byte 0x00004029
_08079C98: .4byte sub_8079C9C
	thumb_func_start sub_8079C9C
sub_8079C9C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _08079D0C
	adds r0, r5, #0x0
	bl sub_80790CC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	movs r0, #0x06
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x05
	ble _08079D0C
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079D0C
	ldr r0, _08079CF4 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08079CFC
	ldr r2, _08079CF8 @ =0x00004029
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _08079D08
	.byte 0x00, 0x00
_08079CF4: .4byte 0x03000F6C
_08079CF8: .4byte 0x00004029
_08079CFC:
	ldr r2, _08079D14 @ =0x00004029
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
_08079D08:
	ldr r0, _08079D18 @ =0x08079019
	str r0, [r5, #0x4C]
_08079D0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079D14: .4byte 0x00004029
_08079D18: .4byte sub_8079018
	thumb_func_start sub_8079D1C
sub_8079D1C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	ldr r4, [sp, #0x01C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0x0
	bl process_add
	ldr r0, _08079D60 @ =0x08CDC2D8
	str r0, [r6, #0x18]
	adds r0, r4, #0x0
	ldr r1, [sp, #0x020]
	bl sub_80E53E8
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08079D64
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x1C]
	cmp r6, #0x00
	bne _08079D54
	b _08079F06
_08079D54:
	adds r0, r6, #0x0
	movs r1, #0x03
	bl sub_807A658
	b _08079F06
	.byte 0x00, 0x00
_08079D60: .4byte 0x08CDC2D8
_08079D64:
	movs r0, #0x00
	str r0, [r6, #0x1C]
	adds r0, r6, #0x0
	adds r0, #0x33
	strb r7, [r0, #0x00]
	adds r0, #0x0F
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x024]
	str r0, [r6, #0x20]
	ldr r0, [sp, #0x018]
	str r0, [r6, #0x24]
	cmp r7, #0x11
	bls _08079D80
	b _08079F06
_08079D80:
	lsls r0, r7, #0x02
	ldr r1, _08079D8C @ =0x08079D90
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08079D8C: .4byte 0x08079D90
	.byte 0xD8, 0x9D, 0x07, 0x08, 0xD8, 0x9D, 0x07, 0x08, 0xEC, 0x9D, 0x07, 0x08, 0xEC, 0x9D, 0x07, 0x08
	.byte 0x30, 0x9E, 0x07, 0x08, 0x30, 0x9E, 0x07, 0x08, 0x7C, 0x9E, 0x07, 0x08, 0x7C, 0x9E, 0x07, 0x08
	.byte 0xB4, 0x9E, 0x07, 0x08, 0xB4, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08
	.byte 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08, 0xC8, 0x9E, 0x07, 0x08
	.byte 0xDC, 0x9E, 0x07, 0x08, 0xDC, 0x9E, 0x07, 0x08, 0x31, 0x1C, 0x32, 0x31, 0x0A, 0x20, 0x08, 0x70
	.byte 0x01, 0x4A, 0x01, 0x20, 0x50, 0x21, 0x6C, 0xE0, 0x24, 0x00, 0x20, 0x08, 0x31, 0x1C, 0x32, 0x31
	.byte 0x00, 0x24, 0x08, 0x20, 0x08, 0x70, 0x0D, 0x4A, 0x01, 0x20, 0x40, 0x21, 0x9E, 0xF7, 0x76, 0xFF
	.byte 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0xF0, 0x69, 0xF0, 0x23, 0xDB, 0x01, 0x83, 0x60
	.byte 0xC4, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x81, 0x61, 0xA0, 0x22, 0xD2, 0x01, 0xC2, 0x61, 0x83, 0x62
	.byte 0xA0, 0x21, 0x09, 0x02, 0xC1, 0x62, 0x84, 0x63, 0xC2, 0x63, 0x50, 0xE0, 0x24, 0x00, 0x20, 0x08
	.byte 0x31, 0x1C, 0x32, 0x31, 0x00, 0x24, 0x08, 0x20, 0x08, 0x70, 0x0F, 0x4A, 0x01, 0x20, 0x40, 0x21
	.byte 0x9E, 0xF7, 0x54, 0xFF, 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0xF0, 0x69, 0x04, 0x60
	.byte 0x44, 0x60, 0xF0, 0x23, 0xDB, 0x01, 0x83, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x01, 0x61, 0x44, 0x61
	.byte 0xA0, 0x22, 0xD2, 0x01, 0xC2, 0x61, 0x01, 0x62, 0xA0, 0x21, 0x09, 0x02, 0x41, 0x62, 0x83, 0x62
	.byte 0x04, 0x63, 0x41, 0x63, 0xC2, 0x63, 0x2A, 0xE0, 0x24, 0x00, 0x20, 0x08, 0x31, 0x1C, 0x32, 0x31
	.byte 0x00, 0x24, 0x04, 0x20, 0x08, 0x70, 0x0A, 0x4A, 0x01, 0x20, 0x20, 0x21, 0x9E, 0xF7, 0x2E, 0xFF
	.byte 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0xF1, 0x69, 0x0C, 0x60, 0x4C, 0x60, 0xF0, 0x20
	.byte 0x00, 0x02, 0x08, 0x61, 0xA0, 0x20, 0x00, 0x02, 0x48, 0x61, 0x8C, 0x61, 0xC8, 0x61, 0x0E, 0xE0
	.byte 0x24, 0x00, 0x20, 0x08, 0x31, 0x1C, 0x32, 0x31, 0x04, 0x20, 0x08, 0x70, 0x06, 0x4A, 0x01, 0x20
	.byte 0x20, 0x21, 0x9E, 0xF7, 0x13, 0xFF, 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80, 0x30, 0x1C
	.byte 0x00, 0xF0, 0x20, 0xF8, 0x17, 0xE0, 0x00, 0x00, 0x24, 0x00, 0x20, 0x08, 0x01, 0x20, 0x40, 0x42
	.byte 0x71, 0x6A, 0x60, 0xF1, 0xC3, 0xFD, 0x31, 0x1C, 0x32, 0x31, 0x08, 0x70, 0x09, 0x78, 0xC9, 0x00
	.byte 0x07, 0x4A, 0x01, 0x20, 0x9E, 0xF7, 0xFA, 0xFE, 0xF0, 0x61, 0x30, 0x1C, 0x40, 0x30, 0x05, 0x80
	.byte 0x30, 0x1C, 0x00, 0xF0, 0x07, 0xF8
_08079F06:
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x24, 0x00, 0x20, 0x08
	thumb_func_start wipe_update
wipe_update: @ 08079F14
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	adds r0, #0x40
	ldrh r1, [r0, #0x00]
	subs r1, #0x01
	strh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08079F78
	mov r0, r8
	cmp r0, #0x00
	bne _08079F3E
	b _0807A648
_08079F3E:
	ldr r0, _08079F74 @ =0x08CDC2D8
	mov r2, r8
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	cmp r0, r1
	beq _08079F68
	bl sub_80E4FC8
	mov r3, r8
	ldr r0, [r3, #0x1C]
	cmp r0, #0x00
	beq _08079F5A
	bl free_heap_memory_8018C68
_08079F5A:
	mov r4, r8
	ldr r1, [r4, #0x20]
	cmp r1, #0x00
	beq _08079F68
	ldr r0, [r4, #0x24]
	bl _call_via_r1
_08079F68:
	mov r0, r8
	movs r1, #0x03
	bl process_remove
	b _0807A648
	.byte 0x00, 0x00
_08079F74: .4byte 0x08CDC2D8
_08079F78:
	mov r0, r8
	adds r0, #0x33
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x11
	bls _08079F86
	b _0807A648
_08079F86:
	lsls r0, r1, #0x02
	ldr r1, _08079F90 @ =0x08079F94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08079F90: .4byte 0x08079F94
	.byte 0xDC, 0x9F, 0x07, 0x08, 0xDC, 0x9F, 0x07, 0x08, 0xE8, 0xA0, 0x07, 0x08, 0xE8, 0xA0, 0x07, 0x08
	.byte 0x6C, 0xA1, 0x07, 0x08, 0x6C, 0xA1, 0x07, 0x08, 0xF4, 0xA1, 0x07, 0x08, 0xF4, 0xA1, 0x07, 0x08
	.byte 0x94, 0xA2, 0x07, 0x08, 0x94, 0xA2, 0x07, 0x08, 0x9C, 0xA4, 0x07, 0x08, 0x9C, 0xA4, 0x07, 0x08
	.byte 0x00, 0xA5, 0x07, 0x08, 0x00, 0xA5, 0x07, 0x08, 0x58, 0xA5, 0x07, 0x08, 0x58, 0xA5, 0x07, 0x08
	.byte 0xE0, 0xA5, 0x07, 0x08, 0xE0, 0xA5, 0x07, 0x08, 0x30, 0x78, 0x01, 0x28, 0x06, 0xD1, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x25, 0x44, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32
	.byte 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x0C, 0x1A, 0x17, 0x1C, 0x33, 0x4A
	.byte 0x33, 0x48, 0x34, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18, 0xA0, 0x01, 0x39, 0x88, 0x60, 0xF1
	.byte 0x2D, 0xFD, 0x00, 0x90, 0x30, 0x78, 0x00, 0x28, 0x00, 0xD1, 0x64, 0x42, 0x00, 0x25, 0xAC, 0x46
	.byte 0x40, 0x46, 0x32, 0x30, 0x46, 0x46, 0xF6, 0x69, 0xB2, 0x46, 0x02, 0x90, 0x00, 0x78, 0x84, 0x45
	.byte 0x48, 0xDA, 0x29, 0x49, 0x88, 0x46, 0x60, 0x00, 0x00, 0x19, 0x00, 0x06, 0x00, 0x0E, 0x81, 0x46
	.byte 0x42, 0x46, 0x00, 0x23, 0xD1, 0x5E, 0x0B, 0x1C, 0x02, 0x24, 0x12, 0x5F, 0x4D, 0x46, 0x00, 0x2D
	.byte 0x22, 0xD0, 0x6C, 0x00, 0x21, 0x4E, 0xA0, 0x19, 0x00, 0x25, 0x47, 0x5F, 0x38, 0x1C, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x86, 0x11, 0x73, 0x43, 0x1D, 0x4D, 0x60, 0x19, 0x00, 0x24, 0x05, 0x5F
	.byte 0x28, 0x1C, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x84, 0x11, 0x10, 0x1C, 0x60, 0x43, 0x18, 0x1A
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x03, 0x12, 0x72, 0x43, 0x08, 0x1C, 0x60, 0x43, 0x10, 0x18
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x02, 0x12, 0x00, 0x9D, 0x6B, 0x43, 0x6A, 0x43, 0xF0, 0x26
	.byte 0xF6, 0x01, 0x9B, 0x19, 0xA0, 0x20, 0xC0, 0x01, 0x12, 0x18, 0x61, 0x46, 0xC8, 0x00, 0x50, 0x44
	.byte 0x03, 0x60, 0x42, 0x60, 0x04, 0x22, 0x90, 0x44, 0x01, 0x23, 0x9C, 0x44, 0x02, 0x9C, 0x24, 0x78
	.byte 0xA4, 0x45, 0xBD, 0xDB, 0x02, 0x9D, 0x29, 0x78, 0xD5, 0xE1, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x0C, 0x88, 0x3B, 0x08, 0x84, 0x85, 0x19, 0x08
	.byte 0x04, 0x85, 0x19, 0x08, 0x30, 0x78, 0x02, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x26
	.byte 0x83, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x0B, 0x1A, 0x17, 0x1C, 0x14, 0x4E, 0x14, 0x4C, 0x15, 0x48
	.byte 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0x18, 0x01, 0xC0, 0x1A, 0xC0, 0x02, 0x39, 0x88, 0x03, 0x93
	.byte 0x60, 0xF1, 0xA4, 0xFC, 0x05, 0x1C, 0x32, 0x68, 0x12, 0x19, 0x03, 0x9B, 0x98, 0x00, 0xC0, 0x18
	.byte 0x00, 0x03, 0x39, 0x88, 0x60, 0xF1, 0x9A, 0xFC, 0x02, 0x1C, 0x44, 0x46, 0xE0, 0x69, 0x05, 0x60
	.byte 0x42, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x49, 0x1B, 0x01, 0x61, 0x42, 0x61, 0x01, 0x62, 0xA0, 0x21
	.byte 0x09, 0x02, 0x89, 0x1A, 0x41, 0x62, 0x05, 0x63, 0x41, 0x63, 0x3C, 0xE0, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x30, 0x78, 0x04, 0x28, 0x06, 0xD1, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x25, 0x43, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32
	.byte 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x26, 0x80, 0x5F, 0x0B, 0x1A, 0x17, 0x1C, 0x15, 0x4D
	.byte 0x15, 0x4C, 0x16, 0x48, 0x24, 0x1A, 0x2A, 0x68, 0x12, 0x19, 0x18, 0x01, 0xC0, 0x1A, 0xC0, 0x02
	.byte 0x39, 0x88, 0x03, 0x93, 0x60, 0xF1, 0x62, 0xFC, 0x06, 0x1C, 0x2A, 0x68, 0x12, 0x19, 0x03, 0x9B
	.byte 0x98, 0x00, 0xC0, 0x18, 0x00, 0x03, 0x39, 0x88, 0x60, 0xF1, 0x58, 0xFC, 0x02, 0x1C, 0x41, 0x46
	.byte 0xC8, 0x69, 0xC2, 0x60, 0xF0, 0x21, 0x09, 0x02, 0x89, 0x1B, 0x81, 0x61, 0xA0, 0x21, 0x09, 0x02
	.byte 0x89, 0x1A, 0xC1, 0x62, 0x86, 0x63, 0x41, 0x46, 0x32, 0x31, 0x09, 0x78, 0x6A, 0xF0, 0x9A, 0xFF
	.byte 0x30, 0xE2, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08
	.byte 0x30, 0x78, 0x06, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x22, 0x83, 0x5E, 0x47, 0x46
	.byte 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23
	.byte 0xC0, 0x5E, 0x0B, 0x1A, 0x17, 0x1C, 0x19, 0x4A, 0x19, 0x48, 0x1A, 0x49, 0x40, 0x1A, 0x12, 0x68
	.byte 0x12, 0x18, 0x98, 0x01, 0x39, 0x88, 0x60, 0xF1, 0x21, 0xFC, 0x44, 0x46, 0xE3, 0x69, 0x16, 0x4A
	.byte 0xFF, 0x21, 0x01, 0x40, 0x4C, 0x00, 0xA2, 0x18, 0x00, 0x25, 0x50, 0x5F, 0x00, 0x28, 0x00, 0xDA
	.byte 0x3F, 0x30, 0x80, 0x11, 0xC1, 0x00, 0x09, 0x18, 0x09, 0x01, 0x09, 0x18, 0x49, 0x00, 0x99, 0x60
	.byte 0x0E, 0x48, 0x20, 0x18, 0x00, 0x26, 0x80, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x81, 0x11
	.byte 0xC8, 0x00, 0x40, 0x18, 0x00, 0x01, 0x40, 0x18, 0x40, 0x00, 0xD8, 0x60, 0x40, 0x46, 0x32, 0x30
	.byte 0x01, 0x78, 0x18, 0x1C, 0x6A, 0xF0, 0x4E, 0xFF, 0xE4, 0xE1, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	.byte 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x84, 0x85, 0x19, 0x08, 0x04, 0x85, 0x19, 0x08
	.byte 0x30, 0x78, 0x09, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x21, 0x43, 0x5E, 0x47, 0x46
	.byte 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23
	.byte 0xC0, 0x5E, 0x0B, 0x1A, 0x17, 0x1C, 0x72, 0x4A, 0x72, 0x48, 0x73, 0x49, 0x40, 0x1A, 0x12, 0x68
	.byte 0x12, 0x18, 0x98, 0x02, 0x39, 0x88, 0x60, 0xF1, 0xD1, 0xFB, 0x03, 0x1C, 0x18, 0x01, 0xC0, 0x1A
	.byte 0xC0, 0x00, 0x40, 0x42, 0x00, 0x28, 0x01, 0xDA, 0x6C, 0x4C, 0x00, 0x19, 0x82, 0x12, 0x98, 0x00
	.byte 0xC0, 0x18, 0x00, 0x01, 0x40, 0x42, 0x00, 0x28, 0x01, 0xDA, 0x68, 0x4D, 0x40, 0x19, 0x84, 0x12
	.byte 0x30, 0x78, 0x08, 0x28, 0x00, 0xD1, 0x5B, 0x42, 0x18, 0x1C, 0x46, 0x46, 0xF6, 0x69, 0xB2, 0x46
	.byte 0x00, 0x2B, 0x00, 0xDA, 0xD8, 0x1D, 0xC0, 0x10, 0x01, 0x90, 0xFF, 0x20, 0x01, 0x99, 0x08, 0x40
	.byte 0x41, 0x00, 0x5F, 0x4D, 0x4F, 0x19, 0x00, 0x26, 0xB8, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30
	.byte 0x80, 0x11, 0x15, 0x1C, 0x45, 0x43, 0x5B, 0x48, 0x0E, 0x18, 0x00, 0x21, 0x70, 0x5E, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x60, 0x43, 0x28, 0x1A, 0xF0, 0x25, 0xED, 0x01, 0xA9, 0x46
	.byte 0x48, 0x44, 0x51, 0x46, 0x08, 0x60, 0x00, 0x25, 0x78, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30
	.byte 0x80, 0x11, 0x21, 0x1C, 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30
	.byte 0x80, 0x11, 0x50, 0x43, 0x08, 0x18, 0xA0, 0x21, 0xC9, 0x01, 0x8C, 0x46, 0x60, 0x44, 0x55, 0x46
	.byte 0x68, 0x60, 0x52, 0x42, 0x00, 0x21, 0x78, 0x5E, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x11, 0x1C, 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x60, 0x43, 0x08, 0x1A, 0x48, 0x44, 0x51, 0x46, 0x88, 0x60, 0x00, 0x25, 0x78, 0x5F, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x21, 0x1C, 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x50, 0x43, 0x08, 0x18, 0x60, 0x44, 0x51, 0x46, 0xC8, 0x60
	.byte 0x64, 0x42, 0x00, 0x25, 0x78, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x11, 0x1C
	.byte 0x41, 0x43, 0x00, 0x25, 0x70, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x60, 0x43
	.byte 0x08, 0x1A, 0x48, 0x44, 0x56, 0x46, 0x30, 0x61, 0xFF, 0x20, 0x01, 0x99, 0x08, 0x40, 0x41, 0x00
	.byte 0x27, 0x4E, 0x8D, 0x19, 0x00, 0x26, 0xA8, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x26, 0x1C, 0x46, 0x43, 0x23, 0x48, 0x0F, 0x18, 0x00, 0x21, 0x78, 0x5E, 0x00, 0x28, 0x00, 0xDA
	.byte 0x3F, 0x30, 0x80, 0x11, 0x50, 0x43, 0x30, 0x18, 0x60, 0x44, 0x56, 0x46, 0x70, 0x61, 0x52, 0x42
	.byte 0x50, 0x46, 0x04, 0x90, 0x00, 0x21, 0x68, 0x5E, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x11, 0x1C, 0x41, 0x43, 0x00, 0x26, 0xB8, 0x5F, 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11
	.byte 0x60, 0x43, 0x08, 0x1A, 0x48, 0x44, 0x04, 0x99, 0x88, 0x61, 0x00, 0x26, 0xA8, 0x5F, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x21, 0x1C, 0x41, 0x43, 0x00, 0x23, 0xF8, 0x5E, 0x00, 0x28
	.byte 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x50, 0x43, 0x08, 0x18, 0x60, 0x44, 0x54, 0x46, 0xE0, 0x61
	.byte 0x40, 0x46, 0x32, 0x30, 0x01, 0x78, 0x50, 0x46, 0x6A, 0xF0, 0x4C, 0xFE, 0xE2, 0xE0, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x03, 0x00, 0x00
	.byte 0x84, 0x85, 0x19, 0x08, 0x04, 0x85, 0x19, 0x08, 0x30, 0x78, 0x0B, 0x28, 0x06, 0xD1, 0x40, 0x46
	.byte 0x40, 0x30, 0x00, 0x25, 0x41, 0x5F, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32
	.byte 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x26, 0x80, 0x5F, 0x09, 0x1A, 0x17, 0x1C, 0x0C, 0x4E
	.byte 0x0C, 0x4C, 0x0D, 0x48, 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0x96, 0x20, 0x05, 0x1C, 0x4D, 0x43
	.byte 0x39, 0x88, 0x28, 0x1C, 0x60, 0xF1, 0xCA, 0xFA, 0x80, 0x46, 0x32, 0x68, 0x12, 0x19, 0x39, 0x88
	.byte 0x28, 0x1C, 0x60, 0xF1, 0xC3, 0xFA, 0x03, 0x1C, 0x78, 0x20, 0x50, 0x21, 0x6B, 0xE0, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x30, 0x78, 0x0D, 0x28
	.byte 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x21, 0x43, 0x5E, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0
	.byte 0x42, 0x46, 0x42, 0x32, 0x11, 0x88, 0x40, 0x46, 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x0B, 0x1A
	.byte 0x17, 0x1C, 0x09, 0x4A, 0x09, 0x48, 0x0A, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18, 0x96, 0x20
	.byte 0x58, 0x43, 0x39, 0x88, 0x60, 0xF1, 0x9A, 0xFA, 0x03, 0x1C, 0x78, 0x20, 0x50, 0x21, 0x96, 0x22
	.byte 0x6A, 0xF0, 0xA8, 0xFE, 0x7E, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0x78, 0x24, 0xA2, 0x46, 0x50, 0x25, 0xA9, 0x46, 0x96, 0x25, 0x41, 0x46
	.byte 0x48, 0x6A, 0x00, 0x28, 0x07, 0xD0, 0x00, 0x23, 0xC2, 0x5E, 0x92, 0x46, 0x02, 0x25, 0x44, 0x5F
	.byte 0xA1, 0x46, 0x04, 0x21, 0x45, 0x5E, 0x30, 0x78, 0x0F, 0x28, 0x06, 0xD1, 0x40, 0x46, 0x40, 0x30
	.byte 0x00, 0x22, 0x81, 0x5E, 0x47, 0x46, 0x42, 0x37, 0x08, 0xE0, 0x42, 0x46, 0x42, 0x32, 0x11, 0x88
	.byte 0x40, 0x46, 0x40, 0x30, 0x00, 0x23, 0xC0, 0x5E, 0x09, 0x1A, 0x17, 0x1C, 0x0C, 0x4E, 0x0D, 0x4C
	.byte 0x0D, 0x48, 0x24, 0x1A, 0x32, 0x68, 0x12, 0x19, 0x4D, 0x43, 0x39, 0x88, 0x28, 0x1C, 0x60, 0xF1
	.byte 0x5D, 0xFA, 0x80, 0x46, 0x32, 0x68, 0x12, 0x19, 0x39, 0x88, 0x28, 0x1C, 0x60, 0xF1, 0x56, 0xFA
	.byte 0x03, 0x1C, 0x50, 0x46, 0x49, 0x46, 0x42, 0x46, 0x6A, 0xF0, 0x64, 0xFE, 0x3A, 0xE0, 0x00, 0x00
	.byte 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x30, 0x78, 0x10, 0x28
	.byte 0x04, 0xD1, 0x40, 0x46, 0x40, 0x30, 0x00, 0x24, 0x00, 0x5F, 0x07, 0xE0, 0x40, 0x46, 0x42, 0x30
	.byte 0x00, 0x88, 0x41, 0x46, 0x40, 0x31, 0x00, 0x25, 0x49, 0x5F, 0x40, 0x1A, 0x46, 0x46, 0x71, 0x6A
	.byte 0x60, 0xF1, 0x32, 0xFA, 0x02, 0x1C, 0x00, 0x20, 0x84, 0x46, 0x43, 0x46, 0x32, 0x33, 0x02, 0x93
	.byte 0x19, 0x78, 0x8C, 0x45, 0x10, 0xDA, 0xF1, 0x69, 0x02, 0x32, 0x00, 0x24, 0x10, 0x5F, 0x00, 0x02
	.byte 0x08, 0x60, 0x02, 0x32, 0x00, 0x25, 0x50, 0x5F, 0x00, 0x02, 0x48, 0x60, 0x08, 0x31, 0x01, 0x26
	.byte 0xB4, 0x44, 0x18, 0x78, 0x84, 0x45, 0xEF, 0xDB, 0x41, 0x46, 0xC8, 0x69, 0x02, 0x9A, 0x11, 0x78
	.byte 0x6A, 0xF0, 0x68, 0xFD
_0807A648:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807A658
sub_807A658:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0807A694 @ =0x08CDC2D8
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807A686
	bl sub_80E4FC8
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0807A67A
	bl free_heap_memory_8018C68
_0807A67A:
	ldr r1, [r4, #0x20]
	cmp r1, #0x00
	beq _0807A686
	ldr r0, [r4, #0x24]
	bl _call_via_r1
_0807A686:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0807A694: .4byte 0x08CDC2D8
	thumb_func_start sub_807A698
sub_807A698:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r3, _0807A6F4 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	bics r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0A]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0A]
	movs r6, #0x00
	mov r12, r3
	movs r4, #0x00
_0807A6CE:
	movs r3, #0x01
	lsls r3, r6
	mov r0, r12
	ldr r2, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r0, r4, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807A6F8
	ldrh r0, [r2, #0x14]
	bics r0, r3
	strh r0, [r2, #0x14]
	b _0807A6FE
_0807A6F4: .4byte 0x03000FD8
_0807A6F8:
	ldrh r0, [r2, #0x14]
	orrs r3, r0
	strh r3, [r2, #0x14]
_0807A6FE:
	adds r1, r4, #0x0
	adds r1, #0x1C
	adds r0, r6, #0x1
	movs r3, #0x01
	lsls r3, r0
	mov r5, r12
	ldr r2, [r5, #0x00]
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r1, r0
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807A72A
	ldrh r0, [r2, #0x14]
	bics r0, r3
	strh r0, [r2, #0x14]
	b _0807A730
_0807A72A:
	ldrh r0, [r2, #0x14]
	orrs r3, r0
	strh r3, [r2, #0x14]
_0807A730:
	adds r4, #0x38
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A6CE
	movs r6, #0x00
_0807A73A:
	ldr r0, _0807A8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807A762
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807A762
	adds r0, r2, #0x0
	bl sub_807BDDC
_0807A762:
	adds r1, r6, #0x1
	ldr r0, _0807A8F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r0, r5
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807A78C
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807A78C
	adds r0, r2, #0x0
	bl sub_807BDDC
_0807A78C:
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A73A
	movs r6, #0x00
	ldr r7, _0807A8F0 @ =0x03000FD8
	mov r12, r7
_0807A798:
	mov r1, r12
	ldr r0, [r1, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0807A7EC
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807A7EC
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807A7EC
	ldr r1, [r3, #0x18]
	ldr r0, [r3, #0x40]
	subs r5, r1, r0
	ldr r1, [r3, #0x1C]
	ldr r0, [r3, #0x44]
	subs r4, r1, r0
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x48]
	subs r1, r1, r0
	cmp r2, r3
	beq _0807A7EC
_0807A7D4:
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	adds r0, r0, r4
	str r0, [r2, #0x1C]
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r2, [r2, #0x00]
	cmp r2, r3
	bne _0807A7D4
_0807A7EC:
	adds r1, r6, #0x1
	mov r2, r12
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0807A842
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807A842
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807A842
	ldr r1, [r3, #0x18]
	ldr r0, [r3, #0x40]
	subs r5, r1, r0
	ldr r1, [r3, #0x1C]
	ldr r0, [r3, #0x44]
	subs r4, r1, r0
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x48]
	subs r1, r1, r0
	cmp r2, r3
	beq _0807A842
_0807A82A:
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	adds r0, r0, r4
	str r0, [r2, #0x1C]
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
	ldr r2, [r2, #0x00]
	cmp r2, r3
	bne _0807A82A
_0807A842:
	adds r6, #0x02
	cmp r6, #0x07
	ble _0807A798
	movs r6, #0x00
_0807A84A:
	mov r5, r12
	ldr r0, [r5, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r2, [r1, #0x18]
	ldr r0, [r1, #0x40]
	subs r7, r2, r0
	ldr r2, [r1, #0x1C]
	ldr r0, [r1, #0x44]
	subs r4, r2, r0
	ldr r2, [r1, #0x20]
	ldr r0, [r1, #0x48]
	subs r2, r2, r0
	ldr r3, [r1, #0x38]
	adds r5, r6, #0x1
	cmp r3, #0x00
	beq _0807A898
	movs r6, #0x08
_0807A872:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807A892
	ldr r0, [r3, #0x10]
	adds r0, r0, r7
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x14]
	adds r0, r0, r4
	str r0, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r0, r0, r2
	str r0, [r3, #0x18]
_0807A892:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _0807A872
_0807A898:
	adds r6, r5, #0x0
	cmp r6, #0x07
	ble _0807A84A
	mov r7, r12
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0807A8AE
	b _0807AB72
_0807A8AE:
	ldr r6, [r2, #0x70]
	adds r0, r6, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807A8BE
	b _0807A9CA
_0807A8BE:
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r2, [r2, #0x74]
	mov r8, r2
	mov r5, r8
	adds r5, #0x08
	ldr r2, [r5, #0x08]
	ldrh r3, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r4, r0, #0x1C
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A8F4 @ =0x0000206D
	cmp r0, r1
	bne _0807A8F8
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A8F0: .4byte 0x03000FD8
_0807A8F4: .4byte 0x0000206D
_0807A8F8:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A92C @ =0x0000206E
	cmp r0, r1
	bne _0807A93A
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0807A930
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bhi _0807A930
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807A92C: .4byte 0x0000206E
_0807A930:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807A93A:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A964 @ =0x00002075
	cmp r0, r1
	bne _0807A976
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807A968
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807A964: .4byte 0x00002075
_0807A968:
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A976:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r3, r0
	ldr r0, _0807A994 @ =0x0000206C
	cmp r3, r0
	beq _0807A998
	adds r0, r6, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r8
	adds r1, #0x7D
	b _0807AADA
_0807A994: .4byte 0x0000206C
_0807A998:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r1, #0x02
	bne _0807A9AA
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _0807A9C0
_0807A9AA:
	cmp r1, #0x03
	beq _0807A9C0
	cmp r1, #0x05
	beq _0807A9B4
	b _0807AACE
_0807A9B4:
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _0807A9C0
	b _0807AACE
_0807A9C0:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807A9CA:
	ldr r2, [r2, #0x74]
	mov r8, r2
	mov r7, r8
	adds r7, #0x08
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r2, [r5, #0x08]
	ldrh r3, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r4, r0, #0x1C
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807A9FC @ =0x0000203E
	cmp r0, r1
	bne _0807AA00
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807A9FC: .4byte 0x0000203E
_0807AA00:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807AA34 @ =0x0000203F
	cmp r0, r1
	bne _0807AA42
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0807AA38
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bhi _0807AA38
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807AA34: .4byte 0x0000203F
_0807AA38:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807AA42:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r0, r3
	ldr r1, _0807AA6C @ =0x00002046
	cmp r0, r1
	bne _0807AA7E
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807AA70
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
	.byte 0x00, 0x00
_0807AA6C: .4byte 0x00002046
_0807AA70:
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807AA7E:
	lsrs r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	orrs r3, r0
	ldr r0, _0807AA9C @ =0x0000203D
	cmp r3, r0
	beq _0807AAA0
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r6, #0x0
	adds r1, #0x7D
	b _0807AADA
_0807AA9C: .4byte 0x0000203D
_0807AAA0:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	cmp r1, #0x02
	bne _0807AAB2
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _0807AAC4
_0807AAB2:
	cmp r1, #0x03
	beq _0807AAC4
	cmp r1, #0x05
	bne _0807AACE
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0807AACE
_0807AAC4:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	b _0807AAD6
_0807AACE:
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
_0807AAD6:
	adds r1, r5, #0x0
	adds r1, #0x75
_0807AADA:
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x10]
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x06]
	strh r0, [r1, #0x06]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x08]
	strh r0, [r1, #0x08]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0A]
	strh r0, [r1, #0x0A]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0C]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x11]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x11]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x12]
	movs r1, #0x06
	ands r1, r0
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r3, [r5, #0x08]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x12]
	movs r1, #0x10
	ands r1, r0
	ldrb r2, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x12]
	ldr r1, [r5, #0x08]
	ldr r0, [r7, #0x08]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
_0807AB72:
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r5, [r0, #0x78]
	cmp r5, #0x00
	bne _0807AB7E
	b _0807AD20
_0807AB7E:
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r2, [r5, #0x08]
	cmp r2, #0x00
	bne _0807AB92
	b _0807AD18
_0807AB92:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807AB9E
	b _0807AD18
_0807AB9E:
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _0807ABB0
	movs r0, #0x78
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	b _0807AD18
_0807ABB0:
	ldr r1, [r5, #0x28]
	cmp r1, #0x00
	beq _0807ABBE
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _0807ABD8
_0807ABBE:
	ldr r0, _0807ABD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl sub_8082B6C
	b _0807AD18
	.byte 0x00, 0x00
_0807ABD4: .4byte 0x03000FD8
_0807ABD8:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807ABE6
	b _0807AD18
_0807ABE6:
	ldr r0, _0807AD08 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	bl sub_8082B6C
	ldr r6, [r5, #0x28]
	cmp r6, #0x00
	bne _0807AC00
	b _0807AD18
_0807AC00:
	adds r0, r6, #0x0
	adds r0, #0x08
	cmp r0, r5
	beq _0807AC0A
	b _0807AD18
_0807AC0A:
	adds r0, #0xE4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807AC16
	b _0807AD18
_0807AC16:
	movs r7, #0x8F
	lsls r7, r7, #0x01
	adds r0, r6, r7
	ldrh r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x00
	beq _0807AD10
	ldr r4, _0807AD0C @ =0x08392B58
	subs r7, #0x0C
	adds r2, r6, r7
	ldrb r1, [r2, #0x00]
	adds r0, r1, #0x1
	strb r0, [r2, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r4
	adds r3, r6, #0x0
	adds r3, #0xCF
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r7, #0x00
	mov r12, r7
_0807AC4E:
	movs r7, #0x04
	ldsh r0, [r4, r7]
	cmp r0, r1
	bge _0807AC66
	adds r4, #0x06
	movs r7, #0x04
	ldsh r0, [r4, r7]
	cmp r0, r9
	bne _0807AC4E
	mov r4, r8
	mov r0, r12
	strb r0, [r2, #0x00]
_0807AC66:
	ldrh r0, [r4, #0x00]
	strb r0, [r3, #0x00]
	ldr r1, [r6, #0x10]
	ldrh r0, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x10]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	beq _0807ACAE
	movs r3, #0x08
_0807AC86:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807ACA8
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x00]
	ldrh r7, [r1, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
_0807ACA8:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _0807AC86
_0807ACAE:
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0807AD18
	adds r3, r0, #0x0
	cmp r3, r6
	beq _0807AD18
_0807ACBA:
	ldr r1, [r3, #0x10]
	ldrh r0, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x10]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	beq _0807AD00
	movs r0, #0x08
	mov r8, r0
_0807ACD8:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0807ACFA
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x00]
	ldrh r7, [r1, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	ldrh r0, [r4, #0x02]
	ldrh r7, [r1, #0x02]
	adds r0, r0, r7
	strh r0, [r1, #0x02]
_0807ACFA:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _0807ACD8
_0807AD00:
	ldr r3, [r3, #0x00]
	cmp r3, r6
	bne _0807ACBA
	b _0807AD18
_0807AD08: .4byte 0x03000FD8
_0807AD0C: .4byte 0x08392B58
_0807AD10:
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strb r0, [r1, #0x00]
_0807AD18:
	ldr r5, [r5, #0x00]
	cmp r5, #0x00
	beq _0807AD20
	b _0807AB7E
_0807AD20:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807AD2C
sub_807AD2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0807AD7C @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, _0807AD80 @ =0x00000205
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807AD8C
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	movs r2, #0x81
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807AD88
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r2, _0807AD84 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r1, r0
	orrs r1, r0
	lsrs r5, r1, #0x1F
	b _0807AD8E
	.byte 0x00, 0x00
_0807AD7C: .4byte 0x03000FC0
_0807AD80: .4byte 0x00000205
_0807AD84: .4byte 0x00000203
_0807AD88:
	movs r5, #0x02
	b _0807AD94
_0807AD8C:
	movs r5, #0x03
_0807AD8E:
	cmp r5, #0x00
	bne _0807AD94
	b _0807AF52
_0807AD94:
	movs r4, #0x00
	ldr r0, _0807AE28 @ =0x03001034
	mov r9, r0
	ldr r1, _0807AE2C @ =0x08198154
	ldr r0, _0807AE30 @ =0x081980D8
	subs r7, r1, r0
	ldr r1, _0807AE34 @ =0x03000BD4
	mov r8, r1
	ldr r6, _0807AE38 @ =0x089F808C
_0807ADA6:
	ldr r0, _0807AE3C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	movs r2, #0x88
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r2, r0, r1
	ldr r3, [r2, #0x00]
	adds r4, #0x01
	mov r10, r4
	cmp r3, #0x00
	bne _0807ADC0
	b _0807AF4A
_0807ADC0:
	ldrb r0, [r3, #0x13]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0807ADCC
	b _0807AF4A
_0807ADCC:
	str r1, [r2, #0x00]
	movs r1, #0x00
	ldrh r2, [r3, #0x14]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _0807ADE8
	movs r4, #0x01
_0807ADDC:
	adds r1, #0x01
	adds r0, r2, #0x0
	asrs r0, r1
	ands r0, r4
	cmp r0, #0x00
	beq _0807ADDC
_0807ADE8:
	lsls r0, r1, #0x05
	ldr r1, _0807AE40 @ =0x02000280
	adds r4, r0, r1
	ldr r0, _0807AE3C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x70]
	ldr r0, [r1, #0x10]
	cmp r0, r3
	beq _0807AE70
	ldr r1, [r2, #0x74]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807AE48
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AE44 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x32
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x34
	b _0807AE98
	.byte 0x00, 0x00
_0807AE28: .4byte 0x03001034
_0807AE2C: .4byte 0x08198154
_0807AE30: .4byte 0x081980D8
_0807AE34: .4byte 0x03000BD4
_0807AE38: .4byte 0x089F808C
_0807AE3C: .4byte 0x03000FD8
_0807AE40: .4byte 0x02000280
_0807AE44: .4byte 0x084FB588
_0807AE48:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEE8
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AE6C @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2E
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x30
	b _0807AE98
	.byte 0x00, 0x00
_0807AE6C: .4byte 0x084FB588
_0807AE70:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEB4
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AEB0 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x2A
	cmp r0, #0x00
	beq _0807AE98
	movs r1, #0x2C
_0807AE98:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	adds r1, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
	b _0807AEE8
	.byte 0x00, 0x00
_0807AEB0: .4byte 0x084FB588
_0807AEB4:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807AEE8
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r7
	ldr r2, _0807AF00 @ =0x084FB588
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x26
	cmp r0, #0x00
	beq _0807AED4
	movs r1, #0x28
_0807AED4:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r6
	adds r1, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_0807AEE8:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0807AF24
	cmp r5, #0x01
	bne _0807AF08
	ldr r1, _0807AF04 @ =0x0000214A
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF00: .4byte 0x084FB588
_0807AF04: .4byte 0x0000214A
_0807AF08:
	cmp r5, #0x02
	bne _0807AF14
	ldr r2, _0807AF10 @ =0x000056F7
	b _0807AF46
_0807AF10: .4byte 0x000056F7
_0807AF14:
	cmp r5, #0x03
	bne _0807AF4A
	ldr r1, _0807AF20 @ =0x000033BF
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF20: .4byte 0x000033BF
_0807AF24:
	cmp r5, #0x01
	bne _0807AF30
	ldr r2, _0807AF2C @ =0x000014E6
	b _0807AF46
_0807AF2C: .4byte 0x000014E6
_0807AF30:
	cmp r5, #0x02
	bne _0807AF40
	ldr r1, _0807AF3C @ =0x00004A93
	adds r0, r1, #0x0
	b _0807AF48
	.byte 0x00, 0x00
_0807AF3C: .4byte 0x00004A93
_0807AF40:
	cmp r5, #0x03
	bne _0807AF4A
	ldr r2, _0807AF60 @ =0x0000275B
_0807AF46:
	adds r0, r2, #0x0
_0807AF48:
	strh r0, [r4, #0x02]
_0807AF4A:
	mov r4, r10
	cmp r4, #0x01
	bgt _0807AF52
	b _0807ADA6
_0807AF52:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807AF60: .4byte 0x0000275B
	thumb_func_start sub_807AF64
sub_807AF64:
	push {r4, lr}
	ldr r0, _0807AFB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x44]
	cmp r4, #0x00
	beq _0807AFCE
_0807AF70:
	ldr r1, [r4, #0x08]
	ldrh r0, [r4, #0x10]
	subs r0, #0x01
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	beq _0807AFB4
	ldrb r2, [r1, #0x12]
	cmp r0, #0x00
	bge _0807AF8E
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	bne _0807AFB4
_0807AF8E:
	movs r0, #0x78
	strh r0, [r1, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807AFC8
	adds r0, r1, #0x0
	bl sub_807BC90
	ldr r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
	b _0807AFC8
	.byte 0x00, 0x00
_0807AFB0: .4byte 0x03000FD8
_0807AFB4:
	adds r0, r1, #0x0
	bl sub_807FB34
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0807AFC4
	bl free_heap_memory_8018C68
_0807AFC4:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0807AFC8:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807AF70
_0807AFCE:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_807AFD4
sub_807AFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r4, [sp, #0x054]
	ldr r0, _0807B184 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldr r0, [r7, #0x04]
	str r0, [r1, #0x00]
	movs r0, #0xF6
	adds r0, r0, r7
	mov r10, r0
	ldrh r0, [r0, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFC
	ldrh r1, [r0, #0x00]
	adds r2, #0x06
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	adds r2, #0x26
	adds r2, r2, r3
	mov r8, r2
	adds r1, #0x5E
	ands r1, r0
	ldrh r2, [r2, #0x00]
	ldr r0, _0807B188 @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x88
	adds r0, r7, #0x0
	bl sub_8107E6C
	adds r0, r7, #0x0
	bl sub_807B7A8
	adds r0, r7, #0x0
	bl sub_807FE40
	ldr r0, _0807B18C @ =0x03001034
	movs r2, #0x98
	lsls r2, r2, #0x01
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	str r7, [r7, #0x30]
	ldr r2, _0807B184 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xF4
	mov r3, sp
	ldrb r3, [r3, #0x04]
	strb r3, [r0, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	movs r0, #0x01
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xEC
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r0, #0x00]
	subs r0, #0x14
	lsls r5, r5, #0x08
	str r5, [r7, #0x18]
	str r5, [r7, #0x40]
	str r5, [r0, #0x00]
	adds r0, #0x04
	lsls r6, r6, #0x08
	str r6, [r7, #0x1C]
	str r6, [r7, #0x44]
	str r6, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [sp, #0x050]
	lsls r1, r2, #0x08
	str r1, [r7, #0x20]
	str r1, [r7, #0x48]
	str r1, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x98
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	blt _0807B0CC
	b _0807B368
_0807B0CC:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	bne _0807B0E0
	ldr r0, _0807B190 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x3C
	mov r9, r0
	ldr r4, _0807B194 @ =0x084FCCE0
	str r4, [sp, #0x00C]
_0807B0E0:
	movs r4, #0x01
	negs r4, r4
	ldr r5, [sp, #0x008]
	cmp r5, r4
	bne _0807B0F4
	ldr r0, _0807B190 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r6, _0807B198 @ =0x084FCCD8
	str r6, [sp, #0x00C]
_0807B0F4:
	ldr r0, _0807B184 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r2, r9
	ldrh r3, [r2, #0x0E]
	cmp r3, #0x00
	beq _0807B19C
	ldr r0, [r1, #0x78]
	str r0, [r7, #0x08]
	adds r0, r7, #0x0
	adds r0, #0x08
	str r0, [r1, #0x78]
	adds r5, r7, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r6, #0x02
	orrs r0, r6
	strb r0, [r5, #0x00]
	ldr r3, [sp, #0x00C]
	ldrh r1, [r3, #0x00]
	mov r0, r8
	bl sub_807FB78
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r8
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r2, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r0, r8
	movs r3, #0x00
	bl sub_801E150
	mov r2, r8
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1F]
	str r5, [sp, #0x018]
	b _0807B1C2
_0807B184: .4byte 0x03000FD8
_0807B188: .4byte 0xFFFFFE7F
_0807B18C: .4byte 0x03001034
_0807B190: .4byte 0x03000FF4
_0807B194: .4byte 0x084FCCE0
_0807B198: .4byte 0x084FCCD8
_0807B19C:
	adds r2, r7, #0x0
	adds r2, #0x7E
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r4, r8
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	subs r1, #0x24
	ands r0, r1
	strb r0, [r4, #0x1F]
	strh r3, [r4, #0x0E]
	str r2, [sp, #0x018]
_0807B1C2:
	movs r5, #0x88
	lsls r5, r5, #0x01
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	mov r6, r8
	ldrb r2, [r6, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x11]
	movs r3, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x06]
	strh r0, [r6, #0x04]
	mov r0, r9
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	mov r1, r9
	ldrh r0, [r1, #0x0E]
	adds r1, r7, #0x0
	adds r1, #0xF6
	strh r0, [r1, #0x00]
	mov r2, r9
	ldrh r1, [r2, #0x12]
	adds r0, r7, #0x0
	adds r0, #0xF8
	strh r1, [r0, #0x00]
	ldrh r0, [r2, #0x20]
	movs r4, #0x83
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x1C]
	subs r5, #0x0E
	adds r1, r7, r5
	strh r0, [r1, #0x00]
	ldrh r1, [r2, #0x24]
	movs r6, #0x82
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x28]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r4, #0x18]
	adds r1, r7, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x80
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x64
	ldr r5, [sp, #0x00C]
	str r5, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xE8
	str r3, [r0, #0x00]
	mov r6, r8
	str r6, [r7, #0x10]
	mov r0, r9
	adds r0, #0x35
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _0807B2B4 @ =0x0000012B
	adds r1, r7, r3
	strb r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0x37
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _0807B2B8 @ =0x0000012D
	adds r1, r7, r5
	strb r0, [r1, #0x00]
	mov r10, r2
	cmp r7, #0x00
	beq _0807B330
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	bne _0807B330
	ldr r0, _0807B2BC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	beq _0807B2C0
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0807B2C2
_0807B2B4: .4byte 0x0000012B
_0807B2B8: .4byte 0x0000012D
_0807B2BC: .4byte 0x03000FF4
_0807B2C0:
	movs r1, #0x00
_0807B2C2:
	adds r2, r1, #0x0
	ldr r3, [r3, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B2DA
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_0807B2DA:
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B2EA
	movs r1, #0x4C
	muls r0, r1
	adds r2, r2, r0
_0807B2EA:
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r4, [r0, #0x28]
	adds r1, r3, #0x0
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B310
	movs r1, #0x66
	muls r0, r1
	adds r0, r2, r0
	b _0807B312
_0807B310:
	adds r0, r2, #0x0
_0807B312:
	cmp r0, #0x00
	bge _0807B318
	adds r0, #0xFF
_0807B318:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r2, r7, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0807B35C @ =0x000003E7
	cmp r0, r1
	ble _0807B330
	strh r1, [r2, #0x00]
_0807B330:
	ldr r2, _0807B360 @ =0x0000012D
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0xCB
	str r3, [sp, #0x01C]
	adds r4, r7, #0x0
	adds r4, #0xCC
	str r4, [sp, #0x020]
	adds r5, r7, #0x0
	adds r5, #0xCD
	str r5, [sp, #0x024]
	cmp r0, #0x1D
	beq _0807B34E
	b _0807B632
_0807B34E:
	ldr r0, _0807B364 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0D]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0D]
	b _0807B632
_0807B35C: .4byte 0x000003E7
_0807B360: .4byte 0x0000012D
_0807B364: .4byte 0x03000FD8
_0807B368:
	ldr r6, _0807B510 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r7, #0x08]
	adds r3, r7, #0x0
	adds r3, #0x08
	str r3, [r1, #0x78]
	movs r0, #0x2C
	ldr r1, [sp, #0x008]
	muls r0, r1
	ldr r4, _0807B514 @ =0x08500A98
	adds r0, r0, r4
	mov r9, r0
	ldr r2, [r0, #0x08]
	str r2, [sp, #0x010]
	adds r2, r7, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x010]
	ldrb r0, [r5, #0x0A]
	adds r1, r7, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	mov r6, r9
	ldrb r0, [r6, #0x04]
	adds r5, r7, #0x0
	adds r5, #0xF5
	strb r0, [r5, #0x00]
	ldrh r0, [r6, #0x06]
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x06]
	adds r1, r7, #0x0
	adds r1, #0xF8
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x1A]
	movs r6, #0x83
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r8, r6
	strh r0, [r6, #0x00]
	mov r6, r9
	ldrh r0, [r6, #0x06]
	mov r6, r10
	strh r0, [r6, #0x00]
	mov r6, r9
	ldrh r0, [r6, #0x06]
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x1A]
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrh r1, [r6, #0x18]
	movs r6, #0x82
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldrb r5, [r5, #0x00]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	mov r12, r5
	mov r6, r12
	subs r6, #0x01
	str r3, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r1, #0xE4
	adds r1, r1, r7
	mov r10, r1
	adds r2, #0x6A
	str r2, [sp, #0x028]
	adds r3, #0xE8
	str r3, [sp, #0x02C]
	adds r4, r7, #0x0
	adds r4, #0xCB
	str r4, [sp, #0x01C]
	adds r5, r7, #0x0
	adds r5, #0xCC
	str r5, [sp, #0x020]
	adds r0, r7, #0x0
	adds r0, #0xCD
	str r0, [sp, #0x024]
	cmp r6, #0x00
	blt _0807B4DE
	ldr r0, _0807B518 @ =0x083BAEAC
	lsls r1, r6, #0x01
	adds r1, r1, r6
	lsls r1, r1, #0x02
	movs r3, #0x95
	lsls r3, r3, #0x03
	adds r2, r1, r3
	adds r5, r2, r0
	adds r4, r1, r0
	movs r0, #0x03
	bics r0, r6
	cmp r6, #0x00
	blt _0807B46A
	cmp r0, #0x00
	beq _0807B488
	cmp r0, #0x03
	bge _0807B46A
	cmp r0, #0x02
	bge _0807B450
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r8, r1
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
_0807B450:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
_0807B46A:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
	cmp r6, #0x00
	blt _0807B4DE
_0807B488:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	adds r3, r5, #0x0
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x0C
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x18
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x24
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x30
	subs r4, #0x30
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807B488
_0807B4DE:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	ldr r5, [sp, #0x010]
	ldrb r1, [r5, #0x07]
	cmp r1, #0x00
	beq _0807B51C
	subs r1, #0x01
	adds r3, r7, #0x0
	adds r3, #0x80
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _0807B528
	.byte 0x00, 0x00
_0807B510: .4byte 0x03000FD8
_0807B514: .4byte 0x08500A98
_0807B518: .4byte 0x083BAEAC
_0807B51C:
	adds r2, r7, #0x0
	adds r2, #0x81
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807B528:
	ldr r6, [sp, #0x010]
	mov r0, r10
	str r6, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x20]
	ldr r2, [sp, #0x028]
	str r0, [r2, #0x00]
	movs r4, #0x2C
	ldr r3, [sp, #0x004]
	adds r1, r3, #0x0
	muls r1, r4
	ldr r3, _0807B614 @ =0x000033E0
	adds r0, r1, r3
	ldr r5, _0807B618 @ =0x03000FDC
	ldr r2, [r5, #0x00]
	adds r0, r2, r0
	ldr r6, [sp, #0x02C]
	str r0, [r6, #0x00]
	adds r1, r1, r2
	ldr r2, [sp, #0x008]
	adds r0, r2, #0x0
	muls r0, r4
	adds r1, r1, r3
	ldr r3, _0807B61C @ =0x08500A98
	adds r0, r0, r3
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r5, r10
	ldr r0, [r5, #0x00]
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807B5F8
	ldr r0, _0807B620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x8C
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	movs r6, #0x00
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r2, r0, #0x0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x1F]
	movs r6, #0x88
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x04]
	str r4, [r7, #0x10]
_0807B5F8:
	ldr r0, _0807B620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807B632
	mov r0, r9
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _0807B632
	adds r0, r7, #0x0
	b _0807B628
	.byte 0x00, 0x00
_0807B614: .4byte 0x000033E0
_0807B618: .4byte 0x03000FDC
_0807B61C: .4byte 0x08500A98
_0807B620: .4byte 0x03000FD8
_0807B624:
	ldr r1, [r7, #0x54]
	ldr r0, [sp, #0x014]
_0807B628:
	bl _call_via_r1
	ldr r0, [r7, #0x54]
	cmp r0, #0x00
	bne _0807B624
_0807B632:
	movs r1, #0x85
	lsls r1, r1, #0x01
	adds r0, r7, r1
	subs r1, #0x0A
	strh r1, [r0, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	mov r4, r10
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x04]
	ldr r5, [sp, #0x01C]
	strb r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x05]
	ldr r6, [sp, #0x020]
	strb r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x06]
	ldr r1, [sp, #0x024]
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x058]
	cmp r0, #0x01
	bne _0807B6CE
	ldr r4, _0807B6E8 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	adds r3, #0x62
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF6
	strh r0, [r1, #0x00]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r6, #0x88
	lsls r6, r6, #0x01
	adds r3, r7, r6
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, [r4, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	subs r5, #0x76
	adds r4, r7, r5
	movs r1, #0xC0
	lsls r1, r1, #0x01
	ands r1, r0
	ldrh r2, [r4, #0x00]
	ldr r0, _0807B6EC @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x88
	adds r1, r7, #0x0
	bl sub_8107E6C
_0807B6CE:
	ldr r6, [sp, #0x018]
	ldrb r0, [r6, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	bne _0807B6F0
	ldr r2, _0807B6E8 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x04]
	adds r0, #0x01
	strb r0, [r1, #0x04]
	b _0807B6FE
	.byte 0x00, 0x00
_0807B6E8: .4byte 0x03000FD8
_0807B6EC: .4byte 0xFFFFFE7F
_0807B6F0:
	ldr r2, _0807B72C @ =0x03000FD8
	cmp r1, #0x04
	bne _0807B6FE
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x05]
	adds r0, #0x01
	strb r0, [r1, #0x05]
_0807B6FE:
	ldr r1, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x05]
	bl sub_80F8DE0
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	bge _0807B792
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x14
	beq _0807B746
	cmp r0, #0x14
	bgt _0807B730
	cmp r0, #0x13
	beq _0807B736
	b _0807B792
	.byte 0x00, 0x00
_0807B72C: .4byte 0x03000FD8
_0807B730:
	cmp r0, #0x15
	beq _0807B756
	b _0807B792
_0807B736:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	movs r5, #0x90
	lsls r5, r5, #0x01
	adds r0, r7, r5
	b _0807B78A
_0807B746:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
	movs r6, #0x90
	lsls r6, r6, #0x01
	adds r0, r7, r6
	b _0807B78A
_0807B756:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	cmp r0, #0x00
	beq _0807B76C
	cmp r0, #0x01
	beq _0807B77C
	b _0807B792
_0807B76C:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	b _0807B78A
_0807B77C:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r0, r7, r2
_0807B78A:
	ldr r1, [r0, #0x00]
	ldr r2, _0807B7A4 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_0807B792:
	adds r0, r7, #0x0
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807B7A4: .4byte 0xFFFC7FFF
	thumb_func_start sub_807B7A8
sub_807B7A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0807B828
	adds r1, r5, #0x0
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	bne _0807B7D0
	ldr r0, _0807B7CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x04]
	subs r0, #0x01
	strb r0, [r1, #0x04]
	b _0807B7DE
_0807B7CC: .4byte 0x03000FD8
_0807B7D0:
	cmp r2, #0x04
	bne _0807B7DE
	ldr r0, _0807B830 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x05]
	subs r0, #0x01
	strb r0, [r1, #0x05]
_0807B7DE:
	adds r4, r5, #0x0
	adds r4, #0x08
	cmp r4, #0x00
	beq _0807B7F2
_0807B7E6:
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _0807B7E6
_0807B7F2:
	ldr r4, _0807B830 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x05]
	bl sub_80F8DE0
	ldrb r0, [r6, #0x00]
	movs r1, #0x06
	orrs r0, r1
	movs r1, #0x39
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	ldr r1, _0807B834 @ =0x0000012D
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1D
	bne _0807B828
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
_0807B828:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807B830: .4byte 0x03000FD8
_0807B834: .4byte 0x0000012D
	thumb_func_start sub_807B838
sub_807B838:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r2, _0807B858 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	lsls r1, r5, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807B85C
	movs r0, #0x00
	b _0807B8BC
_0807B858: .4byte 0x03000FD8
_0807B85C:
	cmp r6, #0x00
	blt _0807B880
	adds r1, r0, #0x0
	adds r1, #0xF0
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0807B880
	cmp r4, #0x00
	beq _0807B880
	ldrh r0, [r0, #0x24]
	ldrh r4, [r3, #0x16]
	adds r0, r0, r4
	strh r0, [r3, #0x16]
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r1, [r3, #0x18]
	adds r0, r0, r1
	strh r0, [r3, #0x18]
_0807B880:
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x1C]
	ldrb r0, [r0, #0x01]
	lsls r4, r0, #0x01
	adds r4, r4, r0
	lsls r4, r4, #0x03
	lsls r0, r5, #0x02
	ldr r1, _0807B8C4 @ =0x08502B14
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r4, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r0, [r4, #0x02]
	lsls r0, r0, #0x12
	asrs r0, r0, #0x16
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_807AFD4
_0807B8BC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807B8C4: .4byte 0x08502B14
	thumb_func_start sub_807B8C8
sub_807B8C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807B8EA
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x04]
	b _0807BA2A
_0807B8EA:
	ldrb r1, [r4, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807B8F6
	b _0807BA2A
_0807B8F6:
	ldr r0, _0807B914 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bhi _0807B906
	b _0807BA2A
_0807B906:
	ldrh r0, [r4, #0x14]
	cmp r0, #0x00
	bne _0807B91E
	mov r2, r8
	str r0, [r2, #0x04]
	b _0807BA2A
	.byte 0x00, 0x00
_0807B914: .4byte 0x03000FD8
_0807B918:
	mov r7, r8
	str r4, [r7, #0x04]
	b _0807BA2A
_0807B91E:
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r4, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r1, r1, r7
	ldrh r2, [r4, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r6, #0x00
	ldrh r4, [r4, #0x14]
	movs r1, #0x01
	adds r0, r4, #0x0
	b _0807B954
_0807B94E:
	adds r6, #0x01
	adds r0, r4, #0x0
	asrs r0, r6
_0807B954:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807B94E
	movs r5, #0x00
	ldr r0, _0807BA3C @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	str r1, [sp, #0x008]
	movs r3, #0x01
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r2, r2, r1
	mov r12, r2
	movs r2, #0x00
_0807B972:
	ldr r7, [sp, #0x008]
	ldrh r4, [r7, #0x14]
	asrs r4, r5
	eors r4, r3
	ands r4, r3
	cmp r4, #0x00
	bne _0807B99C
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807B99C
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807B918
_0807B99C:
	adds r1, r2, #0x0
	adds r1, #0x1C
	adds r0, r5, #0x1
	ldr r7, [sp, #0x008]
	ldrh r4, [r7, #0x14]
	asrs r4, r0
	eors r4, r3
	ands r4, r3
	cmp r4, #0x00
	bne _0807B9CC
	mov r7, r12
	ldr r0, [r7, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807B9CC
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807B918
_0807B9CC:
	adds r2, #0x38
	adds r5, #0x02
	cmp r5, #0x07
	ble _0807B972
	movs r4, #0x00
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrh r1, [r0, #0x14]
	movs r0, #0x01
	ands r0, r1
	mov r2, r10
	lsls r7, r2, #0x10
	adds r3, r6, #0x0
	adds r3, #0x10
	cmp r0, #0x00
	beq _0807B9FA
	movs r5, #0x01
_0807B9EE:
	adds r4, #0x01
	adds r0, r1, #0x0
	asrs r0, r4
	ands r0, r5
	cmp r0, #0x00
	bne _0807B9EE
_0807B9FA:
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r0, #0x01
	lsls r0, r4
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x14]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r7, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0807BA40 @ =0x0000FFFF
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	bl sub_8114C1C
	mov r2, r8
	str r5, [r2, #0x04]
_0807BA2A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807BA3C: .4byte 0x03000FD8
_0807BA40: .4byte 0x0000FFFF
	thumb_func_start sub_807BA44
sub_807BA44:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r3, [r0, #0x08]
	ldrb r1, [r3, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807BA66
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x04]
	b _0807BBC2
_0807BA66:
	ldrb r1, [r3, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BA72
	b _0807BBC2
_0807BA72:
	ldr r1, _0807BA90 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	bhi _0807BA82
	b _0807BBC2
_0807BA82:
	ldrh r0, [r3, #0x14]
	cmp r0, #0x00
	bne _0807BAD0
	mov r3, r8
	str r0, [r3, #0x04]
	b _0807BBC2
	.byte 0x00, 0x00
_0807BA90: .4byte 0x03000FD8
_0807BA94:
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8115048
	ldr r1, _0807BAC8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r3, r10
	lsrs r2, r3, #0x10
	ldr r1, [sp, #0x008]
	lsls r3, r1, #0x18
	lsrs r3, r3, #0x18
	ldr r1, _0807BACC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	bl sub_8114C1C
	mov r3, r8
	str r5, [r3, #0x04]
	b _0807BBC2
	.byte 0x00, 0x00
_0807BAC8: .4byte 0x03000FD8
_0807BACC: .4byte 0x0000FFFF
_0807BAD0:
	mov r4, r8
	ldr r2, [r4, #0x0C]
	movs r7, #0x00
	ldrh r3, [r3, #0x14]
	movs r1, #0x01
	adds r0, r3, #0x0
	b _0807BAE4
_0807BADE:
	adds r7, #0x01
	adds r0, r3, #0x0
	asrs r0, r7
_0807BAE4:
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807BADE
	movs r4, #0x00
	lsls r2, r2, #0x10
	mov r10, r2
	adds r0, r7, #0x0
	adds r0, #0x10
	str r0, [sp, #0x008]
	ldr r1, _0807BBD4 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	mov r12, r1
	movs r2, #0x01
	movs r6, #0x00
_0807BB02:
	mov r3, r12
	ldrh r5, [r3, #0x14]
	asrs r5, r4
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _0807BB32
	movs r0, #0x92
	lsls r0, r0, #0x02
	mov r9, r0
	add r0, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r6, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BB32
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BA94
_0807BB32:
	adds r1, r6, #0x0
	adds r1, #0x1C
	adds r4, #0x01
	mov r3, r12
	ldrh r5, [r3, #0x14]
	asrs r5, r4
	eors r5, r2
	ands r5, r2
	cmp r5, #0x00
	bne _0807BB68
	movs r0, #0x92
	lsls r0, r0, #0x02
	mov r9, r0
	add r0, r12
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BB68
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BA94
_0807BB68:
	adds r6, #0x38
	adds r4, #0x01
	cmp r4, #0x07
	ble _0807BB02
	movs r3, #0x00
	ldr r1, _0807BBD4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrh r1, [r0, #0x14]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807BB8E
	movs r4, #0x01
_0807BB82:
	adds r3, #0x01
	adds r0, r1, #0x0
	asrs r0, r3
	ands r0, r4
	cmp r0, #0x00
	bne _0807BB82
_0807BB8E:
	ldr r4, _0807BBD4 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	movs r5, #0x00
	strh r0, [r2, #0x14]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	mov r3, r10
	lsrs r2, r3, #0x10
	ldr r4, [sp, #0x008]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	ldr r4, _0807BBD8 @ =0x0000FFFF
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	bl sub_8114C1C
	mov r0, r8
	str r5, [r0, #0x04]
_0807BBC2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807BBD4: .4byte 0x03000FD8
_0807BBD8: .4byte 0x0000FFFF
	thumb_func_start sub_807BBDC
sub_807BBDC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r1
	ldrh r1, [r0, #0x14]
	movs r7, #0x00
	cmp r1, #0x00
	beq _0807BC80
_0807BBF0:
	movs r0, #0x01
	ands r0, r1
	lsrs r1, r1, #0x01
	mov r8, r1
	adds r1, r7, #0x1
	mov r9, r1
	cmp r0, #0x00
	beq _0807BC78
	movs r2, #0x00
	ldr r3, _0807BC34 @ =0x03000FD8
	mov r12, r3
	movs r5, #0x00
	mov r0, r10
	lsls r6, r0, #0x18
_0807BC0C:
	mov r1, r12
	ldr r0, [r1, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r5, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BC38
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BC38
	lsls r1, r2, #0x18
	b _0807BC64
_0807BC34: .4byte 0x03000FD8
_0807BC38:
	adds r1, r5, #0x0
	adds r1, #0x1C
	adds r4, r2, #0x1
	mov r3, r12
	ldr r0, [r3, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r1, r1, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r7
	bne _0807BC70
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BC70
	lsls r1, r4, #0x18
_0807BC64:
	lsrs r1, r1, #0x18
	adds r0, r3, #0x0
	lsrs r2, r6, #0x18
	bl sub_8115048
	b _0807BC78
_0807BC70:
	adds r5, #0x38
	adds r2, #0x02
	cmp r2, #0x07
	ble _0807BC0C
_0807BC78:
	mov r1, r8
	mov r7, r9
	cmp r1, #0x00
	bne _0807BBF0
_0807BC80:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807BC90
sub_807BC90:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0807BC9A
	b _0807BDD6
_0807BC9A:
	ldrb r1, [r4, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BCA6
	b _0807BDD6
_0807BCA6:
	adds r0, r4, #0x0
	bl sub_8084294
	ldr r0, [r4, #0x1C]
	ldr r1, _0807BD14 @ =0x00F0FFFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x0F
	cmp r0, r1
	beq _0807BDB0
	ldrh r6, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1E
	lsrs r5, r0, #0x1E
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	cmp r5, #0x00
	beq _0807BCD8
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #0x13]
_0807BCD8:
	ldrh r2, [r4, #0x14]
	ldr r3, _0807BD18 @ =0x03000FD8
	cmp r6, r2
	beq _0807BCE8
	ldr r1, [r3, #0x00]
	ldrh r0, [r1, #0x12]
	orrs r0, r2
	strh r0, [r1, #0x12]
_0807BCE8:
	ldrh r1, [r4, #0x1C]
	ldrb r0, [r4, #0x1E]
	lsls r2, r0, #0x1C
	lsrs r0, r2, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r0, r0, r5
	orrs r1, r0
	ldr r0, _0807BD1C @ =0xFFFFE000
	adds r1, r1, r0
	cmp r1, #0x01
	bhi _0807BD2E
	ldr r2, [r3, #0x00]
	movs r5, #0x88
	lsls r5, r5, #0x02
	adds r1, r2, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0807BD20
	str r4, [r1, #0x00]
	b _0807BDD6
	.byte 0x00, 0x00
_0807BD14: .4byte 0x00F0FFFF
_0807BD18: .4byte 0x03000FD8
_0807BD1C: .4byte 0xFFFFE000
_0807BD20:
	cmp r0, r4
	beq _0807BDD6
	movs r1, #0x89
	lsls r1, r1, #0x02
	adds r0, r2, r1
	str r4, [r0, #0x00]
	b _0807BDD6
_0807BD2E:
	ldr r0, [r3, #0x00]
	movs r5, #0x92
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	lsrs r1, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	ldrh r2, [r4, #0x16]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_81152FC
	lsls r0, r0, #0x10
	ldr r1, _0807BDA0 @ =0xFFFF0000
	cmp r0, r1
	beq _0807BDD6
	ldr r0, _0807BDA4 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _0807BD84
_0807BD5E:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BD7E
	cmp r2, r4
	beq _0807BD7E
	ldrh r0, [r2, #0x14]
	ldrh r5, [r4, #0x14]
	cmp r0, r5
	bne _0807BD7E
	ldrb r1, [r2, #0x13]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0807BDD6
_0807BD7E:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _0807BD5E
_0807BD84:
	ldr r3, _0807BDA8 @ =0x0807B8C9
	ldr r0, _0807BDAC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r4, [r1, #0x08]
	b _0807BDD6
_0807BDA0: .4byte 0xFFFF0000
_0807BDA4: .4byte 0x03000D74
_0807BDA8: .4byte sub_807B8C8
_0807BDAC: .4byte 0x03000FD8
_0807BDB0:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	beq _0807BDD6
	ldrb r1, [r4, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x12]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	strh r0, [r4, #0x14]
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
_0807BDD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_807BDDC
sub_807BDDC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807BDE6
	b _0807BF2E
_0807BDE6:
	ldrb r1, [r5, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807BDF2
	b _0807BF2E
_0807BDF2:
	ldrh r4, [r5, #0x14]
	cmp r4, #0x00
	bne _0807BDFA
	b _0807BF2E
_0807BDFA:
	movs r6, #0x00
	movs r1, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	adds r2, r5, #0x0
	adds r2, #0x29
	cmp r0, #0x00
	beq _0807BE1A
_0807BE0C:
	lsrs r4, r4, #0x01
	adds r6, #0x01
	adds r0, r4, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0807BE0C
_0807BE1A:
	ldrb r1, [r2, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0807BE8C
	ldr r0, _0807BE4C @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _0807BE56
	movs r7, #0x20
	movs r3, #0x01
_0807BE32:
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0807BE50
	cmp r2, r5
	beq _0807BE50
	ldrh r0, [r2, #0x14]
	asrs r0, r6
	ands r0, r3
	cmp r0, #0x00
	beq _0807BE50
_0807BE4A:
	b _0807BE4A
_0807BE4C: .4byte 0x03000D74
_0807BE50:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _0807BE32
_0807BE56:
	adds r3, r6, #0x0
	cmp r4, #0x00
	beq _0807BE88
	movs r2, #0x01
	ldr r0, _0807BEA4 @ =0x03000D74
	mov r12, r0
	ldr r1, _0807BEA8 @ =0x0000FFFF
	adds r7, r1, #0x0
_0807BE66:
	adds r0, r4, #0x0
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _0807BE80
	mov r1, r12
	ldr r0, [r1, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	orrs r1, r7
	strh r1, [r0, #0x00]
_0807BE80:
	lsrs r4, r4, #0x01
	adds r3, #0x01
	cmp r4, #0x00
	bne _0807BE66
_0807BE88:
	movs r0, #0x00
	strh r0, [r5, #0x14]
_0807BE8C:
	ldr r0, [r5, #0x1C]
	ldr r1, _0807BEAC @ =0x00F0FFFF
	ands r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x0F
	cmp r0, r1
	bne _0807BEB0
	ldrb r0, [r5, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x12]
	b _0807BF2E
_0807BEA4: .4byte 0x03000D74
_0807BEA8: .4byte 0x0000FFFF
_0807BEAC: .4byte 0x00F0FFFF
_0807BEB0:
	movs r3, #0x00
	ldr r4, _0807BEE4 @ =0x03000FD8
	movs r2, #0x00
_0807BEB6:
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x2C]
	adds r1, r2, r0
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	cmp r0, r6
	bne _0807BF20
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807BF20
	ldr r0, _0807BEE8 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x30]
	lsls r3, r3, #0x18
	b _0807BF08
	.byte 0x00, 0x00
_0807BEE4: .4byte 0x03000FD8
_0807BEE8: .4byte 0x03000D74
_0807BEEC:
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF06
	cmp r2, r5
	beq _0807BF06
	ldrh r0, [r2, #0x14]
	asrs r0, r6
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF28
_0807BF06:
	ldr r2, [r2, #0x68]
_0807BF08:
	cmp r2, #0x00
	bne _0807BEEC
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsrs r1, r3, #0x18
	movs r2, #0x00
	bl sub_8115048
	b _0807BF28
_0807BF20:
	adds r2, #0x1C
	adds r3, #0x01
	cmp r3, #0x07
	ble _0807BEB6
_0807BF28:
	adds r0, r5, #0x0
	bl sprite_hide_8021F20
_0807BF2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807BF34
sub_807BF34:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	mov r10, r2
	str r3, [sp, #0x010]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0807C0C0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0807C0C4 @ =0x00001076
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r3, _0807C0C8 @ =0x03001034
	cmp r0, #0x00
	beq _0807BF7A
	movs r2, #0x06
_0807BF68:
	movs r0, #0xD0
	add r8, r0
	mov r0, r8
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0807BF68
_0807BF7A:
	mov r1, r8
	ldr r7, [r1, #0x08]
	ldr r3, [r3, #0x00]
	movs r0, #0x00
	movs r2, #0xD0
	bl _call_via_r3
	mov r2, r8
	str r7, [r2, #0x08]
	mov r0, r9
	str r0, [r2, #0x28]
	ldr r0, _0807C0CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r2, #0x00]
	str r2, [r1, #0x78]
	cmp r5, #0x00
	beq _0807C03C
	adds r0, r7, #0x0
	bl sub_807BDDC
	ldrb r1, [r7, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r7, #0x13]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r7, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r6, #0x08
	orrs r0, r6
	strb r0, [r7, #0x13]
	movs r5, #0x00
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r7, #0x0
	bl sub_80842D8
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r7, #0x0
	bl sub_807BC90
	ldrb r1, [r7, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	orrs r0, r6
	subs r1, #0x24
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x1F]
	movs r0, #0x01
	ldr r1, [sp, #0x038]
	ands r1, r0
	lsls r2, r1, #0x06
	ldrb r1, [r7, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x11]
_0807C03C:
	mov r2, r8
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r10
	lsls r0, r2, #0x08
	mov r1, r8
	str r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r2, [sp, #0x010]
	lsls r0, r2, #0x08
	str r0, [r1, #0x14]
	str r0, [r1, #0x3C]
	ldr r0, [sp, #0x034]
	lsls r0, r0, #0x08
	str r0, [r1, #0x18]
	str r0, [r1, #0x40]
	adds r1, #0x90
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0xCC
	mov r0, r9
	cmp r0, #0x00
	beq _0807C0A6
	adds r0, #0xD0
	ldrh r1, [r0, #0x00]
	mov r0, r8
	adds r0, #0xC8
	strh r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0xD4
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r0, r9
	adds r0, #0xD2
	ldrh r0, [r0, #0x00]
	mov r1, r8
	adds r1, #0xCA
	strh r0, [r1, #0x00]
_0807C0A6:
	ldrb r1, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r3, #0x00]
	mov r0, r8
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807C0C0: .4byte 0x03000FDC
_0807C0C4: .4byte 0x00001076
_0807C0C8: .4byte 0x03001034
_0807C0CC: .4byte 0x03000FD8
	thumb_func_start sub_807C0D0
sub_807C0D0:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, #0x00
	bne _0807C0E2
	adds r0, r5, #0x0
_0807C0E2:
	ldr r6, [r5, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _0807C0EC
	adds r2, #0xFF
_0807C0EC:
	asrs r2, r2, #0x08
	ldr r3, [r0, #0x3C]
	cmp r3, #0x00
	bge _0807C0F6
	adds r3, #0xFF
_0807C0F6:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _0807C100
	adds r0, #0xFF
_0807C100:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r3, #0x30]
	str r3, [r5, #0x30]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x76
	adds r1, r1, r3
	mov r12, r1
	movs r1, #0x06
	ands r1, r0
	mov r0, r12
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	mov r0, r12
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	movs r0, #0x00
	str r0, [r3, #0x4C]
	str r0, [r3, #0x68]
	adds r0, r5, #0x0
	adds r0, #0x7C
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x9C
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_807C1C8
sub_807C1C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0x0
	mov r8, r1
	cmp r2, #0x07
	ble _0807C1FC
	cmp r2, #0x0F
	bgt _0807C1FC
	ldr r1, _0807C200 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	movs r2, #0x98
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldr r1, [r1, #0x00]
	adds r7, r1, r0
	ldr r0, _0807C204 @ =0xFFFFF980
	adds r6, r7, r0
	ldr r1, _0807C208 @ =0xFFFFF9F6
	adds r5, r7, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _0807C20C
_0807C1FC:
	movs r0, #0x00
	b _0807C27A
_0807C200: .4byte 0x03000FDC
_0807C204: .4byte 0xFFFFF980
_0807C208: .4byte 0xFFFFF9F6
_0807C20C:
	ldr r4, [r6, #0x08]
	ldr r0, _0807C284 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0xD0
	bl _call_via_r3
	str r4, [r6, #0x08]
	ldr r0, _0807C288 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r6, #0x00]
	str r6, [r1, #0x78]
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r2, _0807C28C @ =0xFFFFFA10
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x1F]
	subs r0, #0x14
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, _0807C290 @ =0xFFFFFF00
	cmp r8, r0
	beq _0807C278
	ldr r1, _0807C294 @ =0xFFFFFA45
	adds r0, r7, r1
	mov r2, r8
	strb r2, [r0, #0x00]
_0807C278:
	adds r0, r6, #0x0
_0807C27A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807C284: .4byte 0x03001034
_0807C288: .4byte 0x03000FD8
_0807C28C: .4byte 0xFFFFFA10
_0807C290: .4byte 0xFFFFFF00
_0807C294: .4byte 0xFFFFFA45
	thumb_func_start sub_807C298
sub_807C298:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807C2A2
	b _0807C3D4
_0807C2A2:
	adds r4, r5, #0x0
	adds r4, #0x76
	ldrb r1, [r4, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r1, [r5, #0x68]
	adds r6, r4, #0x0
	cmp r1, #0x00
	beq _0807C2CA
	ldr r0, _0807C2FC @ =0x0807C299
	cmp r1, r0
	beq _0807C2CA
	adds r0, r5, #0x0
	bl _call_via_r1
_0807C2CA:
	ldr r0, [r5, #0x28]
	cmp r0, #0x00
	beq _0807C31E
	adds r0, #0x08
	cmp r5, r0
	bne _0807C300
	ldr r2, [r5, #0x30]
	cmp r2, #0x00
	beq _0807C31E
_0807C2DC:
	ldr r4, [r2, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807C2F2
	adds r0, r2, #0x0
	bl sub_807C298
_0807C2F2:
	adds r2, r4, #0x0
	cmp r2, #0x00
	bne _0807C2DC
	b _0807C31E
	.byte 0x00, 0x00
_0807C2FC: .4byte sub_807C298
_0807C300:
	adds r1, r0, #0x0
	b _0807C30C
_0807C304:
	ldr r0, [r5, #0x00]
	str r0, [r2, #0x00]
	b _0807C3B6
_0807C30A:
	ldr r1, [r1, #0x30]
_0807C30C:
	ldr r0, [r1, #0x30]
	cmp r0, #0x00
	beq _0807C31E
	cmp r5, r0
	bne _0807C30A
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	movs r0, #0x00
	str r0, [r5, #0x30]
_0807C31E:
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	beq _0807C32C
_0807C324:
	bl sub_807FA94
	cmp r0, #0x00
	bne _0807C324
_0807C32C:
	ldr r1, [r5, #0x04]
	cmp r1, #0x00
	beq _0807C338
	movs r0, #0x00
	str r0, [r1, #0x04]
	str r0, [r5, #0x04]
_0807C338:
	ldr r4, [r5, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x20
	movs r3, #0x00
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r0, #0xF0
	strh r0, [r4, #0x04]
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x08]
	strh r0, [r4, #0x0A]
	strh r3, [r4, #0x0C]
	ldrb r1, [r4, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	ands r2, r0
	strb r2, [r4, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	adds r0, r4, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	movs r2, #0x00
	ldr r1, _0807C3A8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x78]
_0807C39A:
	cmp r0, #0x00
	beq _0807C3B6
	cmp r0, r5
	beq _0807C3AC
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	b _0807C39A
_0807C3A8: .4byte 0x03000FD8
_0807C3AC:
	cmp r2, #0x00
	bne _0807C304
	ldr r1, [r1, #0x00]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x78]
_0807C3B6:
	ldr r0, _0807C3DC @ =0xFFFFF000
	adds r1, r5, r0
	ldr r0, _0807C3E0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r0, _0807C3E4 @ =0x00000CFF
	cmp r1, r0
	bhi _0807C3D0
	ldrb r1, [r6, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_0807C3D0:
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807C3D4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C3DC: .4byte 0xFFFFF000
_0807C3E0: .4byte 0x03000FDC
_0807C3E4: .4byte 0x00000CFF
	thumb_func_start sub_807C3E8
sub_807C3E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x01C
	movs r0, #0x00
	mov r9, r0
	ldr r0, _0807C43C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x1B
	lsrs r6, r0, #0x1B
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	bne _0807C40E
	b _0807C538
_0807C40E:
	ldr r7, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807C440
	mov r9, r4
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	adds r5, r0, #0x0
	movs r3, #0x00
	mov r8, r3
	cmp r5, #0x00
	bne _0807C42E
	b _0807C530
_0807C42E:
	ldrb r2, [r4, #0x0C]
	movs r3, #0x1F
	movs r0, #0x1F
	ands r0, r2
	cmp r0, #0x00
	beq _0807C48E
	b _0807C470
_0807C43C: .4byte 0x03000FD8
_0807C440:
	mov r0, r9
	cmp r0, #0x00
	beq _0807C450
	str r7, [r0, #0x00]
	ldr r1, _0807C44C @ =0x03000FD8
	b _0807C45C
_0807C44C: .4byte 0x03000FD8
_0807C450:
	ldr r1, _0807C46C @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r7, [r0, #0x00]
_0807C45C:
	ldr r1, [r1, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	b _0807C530
_0807C46C: .4byte 0x03000FD8
_0807C470:
	adds r1, r6, #0x0
	ands r1, r3
	movs r3, #0x20
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0C]
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_807F920
	subs r6, #0x01
	b _0807C496
_0807C48E:
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	bl sub_807F9A8
_0807C496:
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	beq _0807C522
_0807C49C:
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0807C51C
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _0807C4B2
	adds r0, #0xFF
_0807C4B2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bge _0807C4BE
	adds r0, #0xFF
_0807C4BE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _0807C4CA
	adds r0, #0xFF
_0807C4CA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r1, [sp, #0x000]
	add r1, sp, #0x00C
	add r2, sp, #0x010
	add r3, sp, #0x014
	bl sub_8082C58
	ldrb r1, [r4, #0x1B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldrb r0, [r4, #0x1B]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x008]
	add r0, sp, #0x018
	adds r1, r5, #0x0
	bl sub_807C564
	mov r3, r8
	cmp r3, #0x00
	bne _0807C51C
	ldr r0, _0807C560 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r8, r0
_0807C51C:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807C49C
_0807C522:
	mov r2, r8
	cmp r2, #0x00
	beq _0807C530
	ldr r0, _0807C560 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0807C530:
	adds r4, r7, #0x0
	cmp r4, #0x00
	beq _0807C538
	b _0807C40E
_0807C538:
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r0, #0x1F
	ands r6, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x07]
	add sp, #0x01C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C55C: .4byte 0x03000FD8
_0807C560: .4byte 0x03000D74
	thumb_func_start sub_807C564
sub_807C564:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	mov r9, r3
	ldr r0, [sp, #0x028]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0x40
	negs r0, r0
	cmp r12, r0
	bge _0807C58A
	b _0807C6BE
_0807C58A:
	cmp r9, r0
	bge _0807C590
	b _0807C6BE
_0807C590:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _0807C59A
	b _0807C6BE
_0807C59A:
	cmp r3, #0xE0
	ble _0807C5A0
	b _0807C6BE
_0807C5A0:
	ldr r0, _0807C614 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807C618 @ =0x000037E8
	adds r3, r0, r1
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _0807C620
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BA
	b _0807C6BE
_0807C5BA:
	movs r4, #0xC0
	lsls r4, r4, #0x04
_0807C5BE:
	ldr r2, [r6, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r9
	movs r1, #0xFF
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	mov r7, r8
	orrs r0, r7
	strh r0, [r2, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	add r0, r12
	ldr r7, _0807C61C @ =0x000001FF
	adds r1, r7, #0x0
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x04]
	ldrh r0, [r3, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r1, [sp, #0x024]
	orrs r0, r1
	str r0, [r2, #0x08]
	movs r0, #0x00
	strh r0, [r2, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BE
	b _0807C6BE
_0807C614: .4byte 0x03000FDC
_0807C618: .4byte 0x000037E8
_0807C61C: .4byte 0x000001FF
_0807C620:
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C6BE
	ldr r2, _0807C668 @ =0x000001FF
	mov r10, r2
_0807C62E:
	ldr r7, [r6, #0x00]
	str r7, [sp, #0x000]
	ldrh r0, [r3, #0x00]
	mov r2, r9
	adds r1, r0, r2
	movs r0, #0xFF
	ands r1, r0
	adds r3, #0x02
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r2
	adds r4, r7, #0x0
	cmp r0, #0x00
	beq _0807C66C
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	b _0807C68C
	.byte 0x00, 0x00
_0807C668: .4byte 0x000001FF
_0807C66C:
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r2, r7, #0x0
	eors r1, r2
_0807C68C:
	orrs r0, r1
	strh r0, [r4, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x04]
	ldrh r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x04
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r2, [sp, #0x024]
	orrs r0, r2
	str r0, [r4, #0x08]
	movs r0, #0x00
	strh r0, [r4, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C62E
_0807C6BE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807C6D0
sub_807C6D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r7, r0, #0x0
	ldr r2, _0807C878 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0x03
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _0807C6F0
	b _0807CC14
_0807C6F0:
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	str r0, [sp, #0x01C]
	ldr r3, [r3, #0x78]
	str r3, [sp, #0x020]
	cmp r3, #0x00
	bne _0807C702
	b _0807CC00
_0807C702:
	ldr r1, [sp, #0x020]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	bne _0807C70C
	b _0807CBF2
_0807C70C:
	ldrb r1, [r0, #0x12]
	movs r3, #0x20
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807C71A
	b _0807CBF2
_0807C71A:
	ldr r2, [sp, #0x020]
	adds r2, #0x79
	mov r8, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C72C
	b _0807CBF2
_0807C72C:
	ldr r4, [sp, #0x020]
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	bne _0807C736
	b _0807C880
_0807C736:
	ldrb r1, [r2, #0x0C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807C742
	b _0807CBF2
_0807C742:
	ldr r6, [r2, #0x08]
	cmp r6, #0x00
	bne _0807C74A
	b _0807CBF2
_0807C74A:
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	bge _0807C752
	b _0807C86E
_0807C752:
	ldr r0, [r6, #0x04]
	cmp r0, #0x00
	bge _0807C75A
	adds r0, #0xFF
_0807C75A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r6, #0x08]
	cmp r0, #0x00
	bge _0807C766
	adds r0, #0xFF
_0807C766:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r4, _0807C878 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	add r1, sp, #0x004
	add r2, sp, #0x008
	add r3, sp, #0x00C
	bl sub_8082C58
	ldr r3, [sp, #0x004]
	movs r0, #0x40
	negs r0, r0
	cmp r3, r0
	blt _0807C86E
	ldr r2, [sp, #0x008]
	cmp r2, r0
	blt _0807C86E
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r3, r0
	bgt _0807C86E
	cmp r2, #0xE0
	bgt _0807C86E
	ldr r1, [r4, #0x00]
	ldr r0, [sp, #0x020]
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x01
	adds r1, r1, r4
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	ldrh r5, [r1, #0x00]
	movs r0, #0x02
	add r12, r0
	subs r5, #0x01
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807C86E
	mov r9, r2
	mov r8, r3
	movs r2, #0xFF
	mov r10, r2
	subs r0, r1, r5
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C812
	mov r4, r12
	ldrh r0, [r4, #0x00]
	add r0, r9
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r4, #0x04]
	add r0, r8
	ldr r2, _0807C87C @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	movs r4, #0x0A
	add r12, r4
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C86E
_0807C812:
	mov r1, r12
	ldrh r0, [r1, #0x00]
	add r0, r9
	mov r2, r10
	ands r0, r2
	ldrh r1, [r1, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	mov r4, r12
	ldrh r0, [r4, #0x04]
	add r0, r8
	ldr r1, _0807C87C @ =0x000001FF
	adds r3, r1, #0x0
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r7, #0x04]
	adds r2, r7, #0x0
	adds r2, #0x08
	adds r4, #0x0A
	mov r1, r12
	ldrh r0, [r1, #0x0A]
	add r0, r9
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldrh r0, [r4, #0x04]
	add r0, r8
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r2, #0x04]
	adds r7, #0x10
	movs r2, #0x14
	add r12, r2
	subs r5, #0x02
	movs r4, #0x01
	negs r4, r4
	cmp r5, r4
	bne _0807C812
_0807C86E:
	ldr r6, [r6, #0x00]
	cmp r6, #0x00
	beq _0807C876
	b _0807C74A
_0807C876:
	b _0807CBF2
_0807C878: .4byte 0x03000FD8
_0807C87C: .4byte 0x000001FF
_0807C880:
	ldr r1, [sp, #0x020]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bge _0807C88A
	b _0807CBF2
_0807C88A:
	ldr r1, [r1, #0x38]
	cmp r1, #0x00
	bge _0807C892
	adds r1, #0xFF
_0807C892:
	asrs r1, r1, #0x08
	ldr r0, [sp, #0x020]
	adds r0, #0xC7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	str r1, [sp, #0x010]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807C8AC
	adds r0, #0xFF
_0807C8AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r2, [sp, #0x000]
	add r1, sp, #0x010
	add r2, sp, #0x014
	add r3, sp, #0x018
	bl sub_8082C58
	ldr r6, [sp, #0x010]
	movs r0, #0x40
	negs r0, r0
	cmp r6, r0
	bge _0807C8D4
	b _0807CBF2
_0807C8D4:
	ldr r4, [sp, #0x014]
	cmp r4, r0
	bge _0807C8DC
	b _0807CBF2
_0807C8DC:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r6, r0
	ble _0807C8E6
	b _0807CBF2
_0807C8E6:
	cmp r4, #0xE0
	ble _0807C8EC
	b _0807CBF2
_0807C8EC:
	ldr r1, [r5, #0x00]
	ldr r0, [sp, #0x020]
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x02
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	mov r9, r0
	adds r5, #0x02
	ldr r1, [sp, #0x020]
	ldr r2, [r1, #0x40]
	cmp r2, #0x00
	beq _0807C920
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _0807C9D0
_0807C920:
	movs r1, #0x01
	negs r1, r1
	add r9, r1
	cmp r9, r1
	bne _0807C92C
	b _0807CBF2
_0807C92C:
	mov r8, r4
	movs r2, #0xFF
	mov r10, r2
	mov r4, r9
	subs r0, r1, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C970
	ldrh r0, [r5, #0x00]
	add r0, r8
	mov r2, r10
	ands r0, r2
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r6
	ldr r4, _0807C9CC @ =0x000001FF
	adds r1, r4, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r5, #0x0A
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	cmp r9, r0
	bne _0807C970
	b _0807CBF2
_0807C970:
	ldrh r0, [r5, #0x00]
	add r0, r8
	mov r1, r10
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r6
	ldr r2, _0807C9CC @ =0x000001FF
	adds r3, r2, #0x0
	ands r0, r3
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r2, r7, #0x0
	adds r2, #0x08
	adds r4, r5, #0x0
	adds r4, #0x0A
	ldrh r0, [r5, #0x0A]
	add r0, r8
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldrh r0, [r4, #0x04]
	adds r0, r0, r6
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r2, #0x04]
	adds r7, #0x10
	adds r5, #0x14
	movs r2, #0x02
	negs r2, r2
	add r9, r2
	movs r4, #0x01
	negs r4, r4
	cmp r9, r4
	bne _0807C970
	b _0807CBF2
_0807C9CC: .4byte 0x000001FF
_0807C9D0:
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807C9D8
	adds r0, #0x7F
_0807C9D8:
	asrs r0, r0, #0x07
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	str r0, [sp, #0x024]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x024]
	cmp r2, r0
	ble _0807C9F0
	str r0, [sp, #0x024]
_0807C9F0:
	ldr r2, _0807CA60 @ =0x0300034C
	ldr r4, _0807CA64 @ =0x00000888
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	mov r1, sp
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r3, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r3, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r2, sp
	ldrh r2, [r2, #0x24]
	strh r2, [r0, #0x1E]
	mov r4, r9
	cmp r4, #0x01
	bne _0807CA6C
	ldr r1, [sp, #0x014]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r1, [sp, #0x010]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r1
	ldr r2, _0807CA68 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x09
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	subs r4, #0x01
	str r4, [sp, #0x02C]
	b _0807CBEE
	.byte 0x00, 0x00
_0807CA60: .4byte 0x0300034C
_0807CA64: .4byte 0x00000888
_0807CA68: .4byte 0x000001FF
_0807CA6C:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	ldr r1, [sp, #0x01C]
	subs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r9, r0
	bne _0807CA7E
	b _0807CBEE
_0807CA7E:
	ldr r1, _0807CC28 @ =0x0819832C
	ldr r0, _0807CC2C @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x028]
	movs r2, #0x01
	negs r2, r2
	mov r4, r9
	subs r0, r2, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807CB04
	movs r2, #0x00
	ldsh r4, [r5, r2]
	movs r0, #0x04
	ldsh r6, [r5, r0]
	cmp r4, #0x00
	beq _0807CAB4
	ldr r1, _0807CC30 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r4, r0, #0x0
_0807CAB4:
	cmp r6, #0x00
	beq _0807CACA
	ldr r1, _0807CC30 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r6, r0, #0x0
_0807CACA:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r1, #0xFF
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r2, _0807CC34 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x09
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r5, #0x0A
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	cmp r9, r0
	beq _0807CBEE
_0807CB04:
	movs r1, #0x00
	ldsh r4, [r5, r1]
	movs r2, #0x04
	ldsh r6, [r5, r2]
	cmp r4, #0x00
	beq _0807CB22
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r4, r0, #0x0
_0807CB22:
	cmp r6, #0x00
	beq _0807CB38
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r6, r0, #0x0
_0807CB38:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r2, #0xFF
	ands r0, r2
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x01
	orrs r0, r4
	strh r0, [r7, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r1, _0807CC34 @ =0x000001FF
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r2, [sp, #0x01C]
	lsls r2, r2, #0x09
	mov r10, r2
	orrs r0, r2
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r3, r7, #0x0
	adds r3, #0x08
	movs r4, #0x0A
	adds r4, r4, r5
	mov r8, r4
	movs r0, #0x0A
	ldsh r4, [r5, r0]
	mov r1, r8
	movs r2, #0x04
	ldsh r6, [r1, r2]
	cmp r4, #0x00
	beq _0807CB94
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	str r3, [sp, #0x030]
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r3, [sp, #0x030]
_0807CB94:
	cmp r6, #0x00
	beq _0807CBAE
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	str r3, [sp, #0x030]
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r3, [sp, #0x030]
_0807CBAE:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r2, #0xFF
	ands r0, r2
	mov r4, r8
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r2, _0807CC34 @ =0x000001FF
	ands r0, r2
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	mov r4, r10
	orrs r0, r4
	strh r0, [r3, #0x02]
	mov r1, r8
	ldrh r0, [r1, #0x08]
	strh r0, [r3, #0x04]
	adds r7, #0x10
	adds r5, #0x14
	movs r2, #0x02
	negs r2, r2
	add r9, r2
	movs r4, #0x01
	negs r4, r4
	cmp r9, r4
	bne _0807CB04
_0807CBEE:
	ldr r0, [sp, #0x02C]
	str r0, [sp, #0x01C]
_0807CBF2:
	ldr r1, [sp, #0x020]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x020]
	ldr r5, _0807CC38 @ =0x03000FD8
	cmp r1, #0x00
	beq _0807CC00
	b _0807C702
_0807CC00:
	ldr r2, [r5, #0x00]
	movs r0, #0x1F
	ldr r4, [sp, #0x01C]
	ands r4, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x07]
_0807CC14:
	adds r0, r7, #0x0
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CC28: .4byte 0x0819832C
_0807CC2C: .4byte 0x08198220
_0807CC30: .4byte 0x03001038
_0807CC34: .4byte 0x000001FF
_0807CC38: .4byte 0x03000FD8
	thumb_func_start sub_807CC3C
sub_807CC3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, [sp, #0x02C]
	ldr r1, [sp, #0x034]
	mov r8, r1
	cmp r0, #0x01
	bne _0807CC66
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x000]
	mov r0, r9
	ldr r1, [sp, #0x004]
	bl sub_807CE0C
	b _0807CCF4
_0807CC66:
	ldr r4, _0807CD04 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r2, _0807CD08 @ =0x0807F8C5
	ldr r7, [r1, #0x3C]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r7, #0x00]
	str r2, [r7, #0x04]
	movs r5, #0x00
	strh r5, [r7, #0x10]
	str r7, [r1, #0x48]
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, [r6, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CD0C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r0, r8
	cmp r0, #0x00
	beq _0807CCBC
	movs r0, #0x01
	mov r1, r8
	strb r0, [r1, #0x00]
_0807CCBC:
	mov r0, r8
	str r0, [r6, #0x0C]
	ldr r0, [sp, #0x004]
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r6, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x10
	lsls r0, r0, #0x08
	str r0, [r6, #0x08]
	ldr r0, _0807CD10 @ =0x0000FD9A
	strh r0, [r6, #0x12]
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r6, #0x18]
	movs r0, #0x0E
	strh r0, [r6, #0x16]
	ldr r0, _0807CD14 @ =0x0807CD19
	str r0, [r7, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r6, [r7, #0x0C]
	adds r0, r7, #0x0
_0807CCF4:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CD04: .4byte 0x03000FD8
_0807CD08: .4byte sub_807F8C4
_0807CD0C: .4byte 0x03001034
_0807CD10: .4byte 0x0000FD9A
_0807CD14: .4byte sub_807CD18
	thumb_func_start sub_807CD18
sub_807CD18:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CD2E
	adds r0, #0xFF
_0807CD2E:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CD54
	adds r1, #0xFF
_0807CD54:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CD5C
	adds r0, #0xFF
_0807CD5C:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CD94 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CD8C
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CD98 @ =0x0807CD9D
	str r0, [r6, #0x04]
_0807CD8C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CD94: .4byte 0x03000FD8
_0807CD98: .4byte sub_807CD9C
	thumb_func_start sub_807CD9C
sub_807CD9C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CDAE
	adds r1, #0xFF
_0807CDAE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CDB8
	adds r2, #0xFF
_0807CDB8:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CE08 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CE00
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CDEC
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CDEC:
	cmp r4, #0x00
	beq _0807CDFE
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CDFE:
	str r2, [r5, #0x04]
_0807CE00:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CE08: .4byte 0x03000FD8
	thumb_func_start sub_807CE0C
sub_807CE0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r7, [sp, #0x02C]
	ldr r6, _0807CEAC @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r2, _0807CEB0 @ =0x0807F869
	ldr r5, [r1, #0x3C]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r5, #0x00]
	str r2, [r5, #0x04]
	movs r0, #0x00
	mov r8, r0
	mov r0, r8
	strh r0, [r5, #0x10]
	str r5, [r1, #0x48]
	ldr r0, [r6, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CEB4 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	mov r1, r8
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	subs r0, #0x0C
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, _0807CEB8 @ =0x0000FF34
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	ldr r0, _0807CEBC @ =0x0000FE9A
	strh r0, [r4, #0x12]
	strh r7, [r4, #0x18]
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807CEC0 @ =0x0807CEC5
	str r0, [r5, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r5, #0x08]
	str r4, [r5, #0x0C]
	adds r0, r5, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807CEAC: .4byte 0x03000FD8
_0807CEB0: .4byte sub_807F868
_0807CEB4: .4byte 0x03001034
_0807CEB8: .4byte 0x0000FF34
_0807CEBC: .4byte 0x0000FE9A
_0807CEC0: .4byte sub_807CEC4
	thumb_func_start sub_807CEC4
sub_807CEC4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CEDA
	adds r0, #0xFF
_0807CEDA:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CF00
	adds r1, #0xFF
_0807CF00:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CF08
	adds r0, #0xFF
_0807CF08:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CF40 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CF38
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CF44 @ =0x0807CF49
	str r0, [r6, #0x04]
_0807CF38:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CF40: .4byte 0x03000FD8
_0807CF44: .4byte sub_807CF48
	thumb_func_start sub_807CF48
sub_807CF48:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CF5A
	adds r1, #0xFF
_0807CF5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CF64
	adds r2, #0xFF
_0807CF64:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CFB4 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CFAC
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CF98
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CF98:
	cmp r4, #0x00
	beq _0807CFAA
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CFAA:
	str r2, [r5, #0x04]
_0807CFAC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CFB4: .4byte 0x03000FD8
	thumb_func_start sub_807CFB8
sub_807CFB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r8, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, _0807D06C @ =0x03001034
	mov r9, r0
	ldr r0, _0807D070 @ =0x08198154
	ldr r1, _0807D074 @ =0x081980D8
	subs r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D078 @ =0x084FB588
	ldr r4, _0807D07C @ =0x0300034C
	ldr r1, _0807D080 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x1A
	cmp r0, #0x00
	beq _0807CFF0
	movs r1, #0x1C
_0807CFF0:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D084 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D088 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	movs r6, #0x00
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r5, _0807D08C @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldr r3, _0807D090 @ =0x0807F835
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x48]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	strh r6, [r1, #0x10]
	str r1, [r2, #0x48]
	adds r7, r1, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	mov r2, r9
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r2, r8
	cmp r2, #0x09
	bhi _0807D094
	ldr r0, [sp, #0x004]
	adds r0, #0x04
	b _0807D098
	.byte 0x00, 0x00
_0807D06C: .4byte 0x03001034
_0807D070: .4byte 0x08198154
_0807D074: .4byte 0x081980D8
_0807D078: .4byte 0x084FB588
_0807D07C: .4byte 0x0300034C
_0807D080: .4byte 0x00000888
_0807D084: .4byte 0x089F808C
_0807D088: .4byte 0x02000440
_0807D08C: .4byte 0x03000FD8
_0807D090: .4byte sub_807F834
_0807D094:
	ldr r0, [sp, #0x004]
	adds r0, #0x08
_0807D098:
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	movs r0, #0xFF
	lsls r0, r0, #0x08
	strh r0, [r4, #0x12]
	movs r0, #0x0A
	strh r0, [r4, #0x16]
	mov r0, r8
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r4, [r7, #0x0C]
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807D0CC
sub_807D0CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldrh r0, [r4, #0x12]
	subs r0, #0xB4
	movs r7, #0x00
	strh r0, [r4, #0x12]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r2, r0, r1
	str r2, [r4, #0x08]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807D0F6
	adds r1, #0xFF
_0807D0F6:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807D100
	adds r0, #0xFF
_0807D100:
	asrs r2, r0, #0x08
	movs r3, #0x16
	ldsh r0, [r4, r3]
	lsls r3, r0, #0x01
	adds r3, r3, r0
	lsls r3, r3, #0x02
	str r7, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807D154
	ldr r3, _0807D150 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0807D128
	adds r1, #0xFF
_0807D128:
	asrs r1, r1, #0x08
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bgt _0807D146
	cmp r4, #0x00
	beq _0807D144
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807D144:
	str r7, [r5, #0x04]
_0807D146:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D150: .4byte 0x03000FD8
	thumb_func_start sub_807D154
sub_807D154:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	mov r8, r3
	cmp r3, #0x00
	bgt _0807D16E
	b _0807D29A
_0807D16E:
	cmp r3, #0xFF
	ble _0807D1C8
	adds r4, r7, #0x0
	adds r2, r5, #0x0
	movs r5, #0xFF
	mov r0, r9
	ands r5, r0
	ldr r0, _0807D1BC @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r12, r0
	movs r3, #0x0F
	ldr r7, _0807D1C0 @ =0x000001FF
	ldr r6, _0807D1C4 @ =0xFFFF8000
	adds r0, r6, #0x0
	orrs r5, r0
	movs r6, #0xE0
	lsls r6, r6, #0x08
_0807D196:
	adds r0, r4, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	ands r2, r7
	strh r5, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r6
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r4, r4, #0x04
	cmp r4, #0x00
	bne _0807D196
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r1, [r0, #0x00]
	b _0807D29A
_0807D1BC: .4byte 0x0300034C
_0807D1C0: .4byte 0x000001FF
_0807D1C4: .4byte 0xFFFF8000
_0807D1C8:
	ldr r0, _0807D2AC @ =0x0300034C
	mov r10, r0
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r10
	ldr r6, [r0, #0x00]
	ldr r0, _0807D2B0 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r3, r3, #0x1B
	str r3, [sp, #0x000]
	ldr r2, _0807D2B4 @ =0x03001038
	ldr r0, _0807D2B8 @ =0x0819832C
	ldr r1, _0807D2BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	mov r1, r8
	bl _call_via_r2
	ldr r1, _0807D2C0 @ =0x00000888
	add r1, r10
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0A
	ldr r3, [sp, #0x000]
	lsls r2, r3, #0x05
	mov r3, r10
	adds r3, #0x80
	adds r2, r2, r3
	adds r1, r1, r2
	ldrh r2, [r1, #0x06]
	movs r2, #0x00
	strh r0, [r1, #0x06]
	ldrh r0, [r1, #0x0E]
	strh r2, [r1, #0x0E]
	ldrh r0, [r1, #0x16]
	strh r2, [r1, #0x16]
	ldrh r0, [r1, #0x1E]
	mov r0, r8
	strh r0, [r1, #0x1E]
	movs r1, #0x08
	negs r1, r1
	add r9, r1
	movs r0, #0xFF
	mov r3, r9
	ands r3, r0
	mov r9, r3
	subs r5, #0x04
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	beq _0807D254
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_810D260
	adds r5, r0, #0x0
_0807D254:
	mov r12, r10
	movs r0, #0x0F
	mov r10, r0
	ldr r1, _0807D2C4 @ =0x000001FF
	mov r8, r1
	ldr r3, _0807D2C8 @ =0xFFFF8300
	adds r0, r3, #0x0
	mov r4, r9
	orrs r4, r0
	ldr r0, [sp, #0x000]
	lsls r2, r0, #0x09
	ldr r1, _0807D2CC @ =0xFFFFE000
	adds r3, r1, #0x0
_0807D26E:
	adds r1, r7, #0x0
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0x49
	subs r5, #0x08
	mov r0, r8
	ands r5, r0
	strh r4, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r2
	strh r0, [r6, #0x02]
	orrs r1, r3
	strh r1, [r6, #0x04]
	adds r6, #0x08
	lsrs r7, r7, #0x04
	cmp r7, #0x00
	bne _0807D26E
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r6, [r0, #0x00]
_0807D29A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D2AC: .4byte 0x0300034C
_0807D2B0: .4byte 0x03000FD8
_0807D2B4: .4byte 0x03001038
_0807D2B8: .4byte 0x0819832C
_0807D2BC: .4byte 0x08198220
_0807D2C0: .4byte 0x00000888
_0807D2C4: .4byte 0x000001FF
_0807D2C8: .4byte 0xFFFF8300
_0807D2CC: .4byte 0xFFFFE000
	thumb_func_start sub_807D2D0
sub_807D2D0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _0807D324 @ =0x0807D531
	movs r0, #0x03
	bl sub_8018B78
	ldr r3, _0807D328 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0807D32C @ =0x02000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D330 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	ldr r0, _0807D334 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x3C]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x00
	b _0807D33C
_0807D324: .4byte sub_807D530
_0807D328: .4byte 0x04000208
_0807D32C: .4byte 0x02000004
_0807D330: .4byte 0x04000200
_0807D334: .4byte 0x03000FD8
_0807D338:
	adds r3, r1, #0x0
	ldr r1, [r3, #0x00]
_0807D33C:
	cmp r1, #0x00
	beq _0807D348
	movs r7, #0x10
	ldsh r0, [r1, r7]
	cmp r4, r0
	bge _0807D338
_0807D348:
	str r1, [r2, #0x00]
	cmp r3, #0x00
	beq _0807D358
	str r2, [r3, #0x00]
_0807D350:
	cmp r5, #0x00
	beq _0807D36C
	str r5, [r2, #0x04]
	b _0807D370
_0807D358:
	ldr r0, _0807D368 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	b _0807D350
	.byte 0x00, 0x00
_0807D368: .4byte 0x03000FD8
_0807D36C:
	ldr r0, _0807D37C @ =0x0807F7B9
	str r0, [r2, #0x04]
_0807D370:
	str r6, [r2, #0x0C]
	strh r4, [r2, #0x10]
	adds r0, r2, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807D37C: .4byte 0x0807F7B9
	thumb_func_start sub_807D380
sub_807D380:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _0807D3C4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D39C
	str r1, [sp, #0x000]
	bl _call_via_r0
	ldr r1, [sp, #0x000]
_0807D39C:
	ldr r0, [r1, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x50
	movs r6, #0x00
	ldr r4, [r0, #0x50]
	cmp r4, #0x00
	beq _0807D402
_0807D3AA:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D3C8
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D3C8
	adds r6, r4, #0x0
	b _0807D3FC
	.byte 0x00, 0x00
_0807D3C4: .4byte 0x03000FD8
_0807D3C8:
	cmp r6, #0x00
	beq _0807D3D8
	str r5, [r6, #0x00]
	ldr r1, _0807D3D4 @ =0x03000FD8
	b _0807D3F4
	.byte 0x00, 0x00
_0807D3D4: .4byte 0x03000FD8
_0807D3D8:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D3E8
	str r5, [r7, #0x00]
	ldr r1, _0807D3E4 @ =0x03000FD8
	b _0807D3F4
_0807D3E4: .4byte 0x03000FD8
_0807D3E8:
	ldr r1, _0807D448 @ =0x03000FD8
_0807D3EA:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D3EA
	str r5, [r6, #0x00]
_0807D3F4:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D3FC:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D3AA
_0807D402:
	ldr r1, _0807D448 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D41A
	str r1, [sp, #0x000]
	bl sub_8085328
	ldr r1, [sp, #0x000]
_0807D41A:
	ldr r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807D512
	adds r7, r0, #0x0
	movs r6, #0x00
	adds r4, r1, #0x0
_0807D42E:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D44C
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D44C
	adds r6, r4, #0x0
	b _0807D480
	.byte 0x00, 0x00
_0807D448: .4byte 0x03000FD8
_0807D44C:
	cmp r6, #0x00
	beq _0807D45C
	str r5, [r6, #0x00]
	ldr r1, _0807D458 @ =0x03000FD8
	b _0807D478
	.byte 0x00, 0x00
_0807D458: .4byte 0x03000FD8
_0807D45C:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D46C
	str r5, [r7, #0x00]
	ldr r1, _0807D468 @ =0x03000FD8
	b _0807D478
_0807D468: .4byte 0x03000FD8
_0807D46C:
	ldr r1, _0807D4D4 @ =0x03000FD8
_0807D46E:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D46E
	str r5, [r6, #0x00]
_0807D478:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D480:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D42E
	ldr r0, _0807D4D4 @ =0x03000FD8
	ldr r6, [r0, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	beq _0807D4E4
	ldr r3, _0807D4D8 @ =0x04000208
	strh r4, [r3, #0x00]
	ldr r2, _0807D4DC @ =0x04000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x08
	movs r1, #0x20
	orrs r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D4E0 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r5, [r0, #0x00]
	b _0807D512
	.byte 0x00, 0x00
_0807D4D4: .4byte 0x03000FD8
_0807D4D8: .4byte 0x04000208
_0807D4DC: .4byte 0x04000004
_0807D4E0: .4byte 0x04000200
_0807D4E4:
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _0807D51C @ =0x04000208
	strh r5, [r3, #0x00]
	ldr r2, _0807D520 @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D524 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0807D528 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D52C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_0807D512:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D51C: .4byte 0x04000208
_0807D520: .4byte 0x02000004
_0807D524: .4byte 0x0000FFDF
_0807D528: .4byte 0x04000200
_0807D52C: .4byte 0x0000FFFB
	thumb_func_start sub_807D530
sub_807D530:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r2, #0x10
	ldsh r6, [r4, r2]
	ldr r7, _0807D5C0 @ =0x0807F7A5
	ldr r3, _0807D5C4 @ =0x04000208
	mov r10, r3
	ldr r5, _0807D5C8 @ =0x04000004
	ldr r0, _0807D5CC @ =0x04000200
	mov r8, r0
	movs r1, #0x04
	mov r9, r1
_0807D55A:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807D566
	adds r0, r4, #0x0
	bl _call_via_r1
_0807D566:
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0807D5D8
	movs r3, #0x10
	ldsh r2, [r1, r3]
	cmp r6, r2
	bge _0807D5D4
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r1, [r0, #0x00]
	lsls r4, r2, #0x08
_0807D582:
	bl _call_via_r7
	cmp r0, #0x00
	beq _0807D582
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	movs r0, #0x20
	orrs r4, r0
	ldrh r0, [r5, #0x00]
	orrs r4, r0
	strh r4, [r5, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x00]
	mov r3, r9
	orrs r0, r3
	strh r0, [r2, #0x00]
	ldr r1, _0807D5D0 @ =0x04000202
	ldrh r0, [r1, #0x00]
	orrs r0, r3
	strh r0, [r1, #0x00]
	movs r0, #0x01
	mov r1, r10
	strh r0, [r1, #0x00]
	b _0807D5D8
_0807D5BC: .4byte 0x03000FD8
_0807D5C0: .4byte 0x0807F7A5
_0807D5C4: .4byte 0x04000208
_0807D5C8: .4byte 0x04000004
_0807D5CC: .4byte 0x04000200
_0807D5D0: .4byte 0x04000202
_0807D5D4:
	adds r4, r1, #0x0
	b _0807D55A
_0807D5D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807D5E8
sub_807D5E8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r5, [sp, #0x020]
	ldr r7, [sp, #0x024]
	cmp r6, #0x00
	bge _0807D5FA
	b _0807D772
_0807D5FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807D602
	adds r0, #0xFF
_0807D602:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r3, r3, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807D61A
	adds r0, #0xFF
_0807D61A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r5, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0807D632
	adds r0, #0xFF
_0807D632:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r7, r0
	cmp r2, #0x03
	bne _0807D648
	b _0807D744
_0807D648:
	cmp r2, #0x03
	ble _0807D652
	cmp r2, #0x04
	beq _0807D684
	b _0807D772
_0807D652:
	cmp r2, #0x00
	bge _0807D658
	b _0807D772
_0807D658:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D668
	movs r0, #0x01
	b _0807D66A
_0807D668:
	movs r0, #0x00
_0807D66A:
	str r0, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D772
_0807D684:
	ldr r0, _0807D6C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x12]
	mov r12, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	mov r1, r12
	orrs r0, r1
	strh r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D6C4
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D6DE
_0807D6C0: .4byte 0x03000FD8
_0807D6C4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D6DE:
	ldr r2, _0807D724 @ =0x03001034
	ldr r0, _0807D728 @ =0x08198154
	ldr r1, _0807D72C @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D730 @ =0x084FB588
	ldr r4, _0807D734 @ =0x0300034C
	ldr r1, _0807D738 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D700
	movs r1, #0x24
_0807D700:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D73C @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D740 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D772
_0807D724: .4byte 0x03001034
_0807D728: .4byte 0x08198154
_0807D72C: .4byte 0x081980D8
_0807D730: .4byte 0x084FB588
_0807D734: .4byte 0x0300034C
_0807D738: .4byte 0x00000888
_0807D73C: .4byte 0x089F808C
_0807D740: .4byte 0x02000440
_0807D744:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D762
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D772
_0807D762:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D772:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807D77C
sub_807D77C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r0, #0xB8
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	adds r0, #0xBA
	ldrh r4, [r0, #0x00]
	adds r0, #0x02
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r1
	adds r6, r5, #0x0
	adds r6, #0xBE
	movs r1, #0x00
	ldsh r0, [r6, r1]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0xC0
	movs r2, #0x00
	ldsh r7, [r0, r2]
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x28]
	mov r10, r0
	cmp r4, #0x00
	bge _0807D7C0
	b _0807D8F4
_0807D7C0:
	adds r0, r5, #0x0
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	mov r12, r1
	mov r3, r12
	ands r3, r0
	cmp r3, #0x00
	beq _0807D7D4
	b _0807D8F4
_0807D7D4:
	ldr r2, [sp, #0x010]
	cmp r2, #0x03
	beq _0807D8C8
	cmp r2, #0x03
	ble _0807D7E4
	cmp r2, #0x04
	beq _0807D814
	b _0807D8F4
_0807D7E4:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0807D7EC
	b _0807D8F4
_0807D7EC:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D7FE
	mov r2, r12
	str r2, [sp, #0x000]
	b _0807D800
_0807D7FE:
	str r3, [sp, #0x000]
_0807D800:
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D8F4
_0807D814:
	ldr r0, _0807D848 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	ldrh r1, [r2, #0x12]
	orrs r0, r1
	strh r0, [r2, #0x12]
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D84C
	mov r0, r12
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D860
_0807D848: .4byte 0x03000FD8
_0807D84C:
	str r3, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D860:
	ldr r2, _0807D8A8 @ =0x03001034
	ldr r0, _0807D8AC @ =0x08198154
	ldr r1, _0807D8B0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D8B4 @ =0x084FB588
	ldr r4, _0807D8B8 @ =0x0300034C
	ldr r1, _0807D8BC @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D882
	movs r1, #0x24
_0807D882:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D8C0 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D8C4 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D8F4
	.byte 0x00, 0x00
_0807D8A8: .4byte 0x03001034
_0807D8AC: .4byte 0x08198154
_0807D8B0: .4byte 0x081980D8
_0807D8B4: .4byte 0x084FB588
_0807D8B8: .4byte 0x0300034C
_0807D8BC: .4byte 0x00000888
_0807D8C0: .4byte 0x089F808C
_0807D8C4: .4byte 0x02000440
_0807D8C8:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D8E6
	mov r2, r12
	str r2, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D8F4
_0807D8E6:
	str r3, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D8F4:
	adds r0, r5, #0x0
	adds r0, #0x78
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bne _0807D902
	b _0807DA4A
_0807D902:
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0807D90E
	b _0807DA4A
_0807D90E:
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bge _0807D9A4
	ldr r1, _0807D950 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r3, [r4, #0x0C]
	movs r0, #0x80
	ands r0, r3
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0807D95C
	mov r0, r10
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807D95C
	movs r0, #0x7F
	ands r0, r3
	strb r0, [r4, #0x0C]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807D954
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x74]
	b _0807D958
_0807D950: .4byte 0x03000FD8
_0807D954:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x70]
_0807D958:
	ldr r0, _0807D99C @ =0x0807F53D
	str r0, [r1, #0x54]
_0807D95C:
	ldr r3, _0807D9A0 @ =0x0807F649
	ldr r2, [r2, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	movs r1, #0x00
	ldsh r2, [r6, r1]
	adds r2, #0x01
	ldr r0, [sp, #0x00C]
	subs r2, r0, r2
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
	b _0807DA38
	.byte 0x00, 0x00
_0807D99C: .4byte sub_807F53C
_0807D9A0: .4byte sub_807F648
_0807D9A4:
	ldr r4, _0807DA00 @ =0x00000111
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0807D9C0
	str r5, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_80DF024
_0807D9C0:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _0807DA4A
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807DA0C
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x09]
	ldr r3, _0807DA04 @ =0x0807F681
	ldr r0, _0807DA08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	strh r6, [r0, #0x10]
	str r0, [r2, #0x4C]
	str r5, [r0, #0x08]
	movs r1, #0x0C
	strh r1, [r0, #0x10]
	b _0807DA14
_0807DA00: .4byte 0x00000111
_0807DA04: .4byte sub_807F680
_0807DA08: .4byte 0x03000FD8
_0807DA0C:
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x08]
_0807DA14:
	lsls r0, r4, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807DA2A
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DA2A:
	ldr r2, _0807DA5C @ =0x00000111
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807DA38:
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807DA4A:
	ldr r1, [sp, #0x010]
	cmp r1, #0x04
	bhi _0807DA9A
	lsls r0, r1, #0x02
	ldr r1, _0807DA60 @ =0x0807DA64
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807DA5C: .4byte 0x00000111
_0807DA60: .4byte 0x0807DA64
	.byte 0x9A, 0xDA, 0x07, 0x08, 0x78, 0xDA, 0x07, 0x08, 0x8A, 0xDA, 0x07, 0x08, 0x9A, 0xDA, 0x07, 0x08
	.byte 0x9A, 0xDA, 0x07, 0x08, 0x20, 0x22, 0x52, 0x42, 0x13, 0x23, 0x5B, 0x42, 0x04, 0x20, 0x29, 0x1C
	.byte 0x01, 0xF0, 0x2E, 0xF8, 0x07, 0xE0, 0x20, 0x22, 0x52, 0x42, 0x13, 0x23, 0x5B, 0x42, 0x05, 0x20
	.byte 0x29, 0x1C, 0x01, 0xF0, 0x25, 0xF8
_0807DA9A:
	ldr r0, [sp, #0x014]
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1F
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	lsls r1, r0, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x014]
	strb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB4
	movs r0, #0x00
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807DAD4
sub_807DAD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	cmp r1, #0x02
	beq _0807DBB4
	cmp r1, #0x02
	bgt _0807DAEE
	cmp r1, #0x01
	beq _0807DB80
	b _0807DC7C
_0807DAEE:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0807DB00
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _0807DB40
	b _0807DC7C
_0807DB00:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB28
	ldr r2, _0807DB24 @ =0x00002028
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA4
	lsls r0, r0, #0x01
	b _0807DBD4
_0807DB24: .4byte 0x00002028
_0807DB28:
	ldr r2, _0807DB3C @ =0x00002057
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA6
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB3C: .4byte 0x00002057
_0807DB40:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB68
	ldr r2, _0807DB64 @ =0x00002029
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xE7
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB64: .4byte 0x00002029
_0807DB68:
	ldr r2, _0807DB78 @ =0x00002058
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DB7C @ =0x0000014B
	b _0807DBD4
_0807DB78: .4byte 0x00002058
_0807DB7C: .4byte 0x0000014B
_0807DB80:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB9C
	ldr r2, _0807DB98 @ =0x0000202A
	b _0807DBC8
	.byte 0x00, 0x00
_0807DB98: .4byte 0x0000202A
_0807DB9C:
	ldr r2, _0807DBB0 @ =0x00002059
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DBB0: .4byte 0x00002059
_0807DBB4:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DBE4
	ldr r2, _0807DBDC @ =0x0000202C
_0807DBC8:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DBE0 @ =0x00000149
_0807DBD4:
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	b _0807DBFA
_0807DBDC: .4byte 0x0000202C
_0807DBE0: .4byte 0x00000149
_0807DBE4:
	ldr r2, _0807DC68 @ =0x0000205B
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_0807DBFA:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r3, #0x00
	strh r3, [r0, #0x00]
	ldr r4, _0807DC6C @ =0x0807F649
	ldr r6, _0807DC70 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r4, [r1, #0x04]
	strh r3, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DC7C
	mov r0, r8
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bne _0807DC7C
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r0, #0x00
	ldsh r1, [r7, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DC74
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x74]
	b _0807DC78
_0807DC68: .4byte 0x0000205B
_0807DC6C: .4byte sub_807F648
_0807DC70: .4byte 0x03000FD8
_0807DC74:
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
_0807DC78:
	ldr r0, _0807DC88 @ =0x0807F53D
	str r0, [r1, #0x54]
_0807DC7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DC88: .4byte sub_807F53C
	thumb_func_start sub_807DC8C
sub_807DC8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0807DCCC
	ldr r0, _0807DCC8 @ =0x00000111
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807DD38
	movs r0, #0x24
	bl sub_8082898
	b _0807DD32
_0807DCC8: .4byte 0x00000111
_0807DCCC:
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DCEC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DCF8
_0807DCEC:
	ldr r2, _0807DD24 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DCF8:
	ldr r2, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807DD2E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0807DD28
	movs r0, #0x47
	bl play_sfx_80195B4
	b _0807DD2E
_0807DD24: .4byte 0x0000204D
_0807DD28:
	movs r0, #0x47
	bl play_sfx_80195B4
_0807DD2E:
	movs r0, #0x00
	str r0, [r5, #0x04]
_0807DD32:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_807DD38
sub_807DD38:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	movs r0, #0x00
	str r0, [r4, #0x4C]
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _0807DD78
	ldr r2, _0807DD74 @ =0x00002028
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _0807DD8C
	.byte 0x00, 0x00
_0807DD74: .4byte 0x00002028
_0807DD78:
	ldr r2, _0807DDDC @ =0x00002057
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_0807DD8C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807DDA0
	adds r0, #0xFF
_0807DDA0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x16
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807DDAE
	adds r2, #0xFF
_0807DDAE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807DDB8
	adds r3, #0xFF
_0807DDB8:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x80
	bl sub_80880C4
	ldr r0, _0807DDE0 @ =0x0807F5B9
	str r0, [r6, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DDDC: .4byte 0x00002057
_0807DDE0: .4byte sub_807F5B8
	thumb_func_start sub_807DDE4
sub_807DDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, [r4, #0x4C]
	ldr r0, _0807DE5C @ =0x08086961
	mov r8, r4
	cmp r1, r0
	bne _0807DE02
	ldr r0, [r4, #0x30]
	mov r8, r0
_0807DE02:
	adds r0, r7, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	lsls r1, r5, #0x02
	mov r0, r8
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE26
	b _0807DFD6
_0807DE26:
	mov r0, r8
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE3E
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE3E
	b _0807DFD6
_0807DE3E:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0807DE60
	movs r0, #0x10
	b _0807DE6A
	.byte 0x00, 0x00
_0807DE5C: .4byte sub_8086960
_0807DE60:
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DE72
	movs r0, #0x08
_0807DE6A:
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	b _0807DFD6
_0807DE72:
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_80875E0
	str r0, [sp, #0x000]
	cmp r0, #0x00
	bne _0807DE82
	b _0807DFD6
_0807DE82:
	cmp r8, r4
	beq _0807DE8C
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x54]
_0807DE8C:
	cmp r5, #0x00
	bne _0807DE92
	b _0807DFC4
_0807DE92:
	cmp r6, #0x00
	bne _0807DE98
	b _0807DFC4
_0807DE98:
	cmp r5, #0x01
	beq _0807DEFA
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _0807DEB2
	b _0807DFD6
_0807DEB2:
	cmp r6, #0x00
	bne _0807DEF4
	movs r5, #0x00
	ldr r1, _0807DED8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x54]
	mov r9, r1
	cmp r2, #0x00
	beq _0807DEF4
	mov r0, r9
	movs r3, #0x00
_0807DEC8:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DEEC
	cmp r5, #0x00
	beq _0807DEDC
	str r1, [r5, #0x34]
	b _0807DEE0
	.byte 0x00, 0x00
_0807DED8: .4byte 0x03000FD8
_0807DEDC:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DEE0:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DEF4
_0807DEEC:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DEC8
_0807DEF4:
	cmp r6, #0x00
	ble _0807DFD6
	b _0807DFC4
_0807DEFA:
	ldr r2, _0807DF54 @ =0x03000FD8
	mov r9, r2
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	movs r3, #0x02
	mov r10, r3
	cmp r7, r0
	bne _0807DF10
	movs r0, #0x01
	mov r10, r0
_0807DF10:
	ldrb r0, [r1, #0x0D]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	bne _0807DFD6
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _0807DFD6
	cmp r6, #0x00
	bne _0807DF8A
	movs r5, #0x00
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x54]
	cmp r2, #0x00
	beq _0807DF70
	mov r0, r9
	movs r3, #0x00
_0807DF46:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DF68
	cmp r5, #0x00
	beq _0807DF58
	str r1, [r5, #0x34]
	b _0807DF5C
_0807DF54: .4byte 0x03000FD8
_0807DF58:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DF5C:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DF70
_0807DF68:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DF46
_0807DF70:
	mov r0, r9
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0D]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	orrs r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0D]
_0807DF8A:
	cmp r6, #0x00
	bgt _0807DFC4
	ldr r2, [sp, #0x000]
	cmp r2, #0x03
	bne _0807DFD6
	adds r1, r7, #0x0
	adds r1, #0x94
	ldr r0, [r1, #0x00]
	movs r2, #0x30
	negs r2, r2
	cmp r0, r2
	ble _0807DFA4
	str r2, [r1, #0x00]
_0807DFA4:
	ldr r0, [r1, #0x00]
	negs r0, r0
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r7, #0x0
	adds r2, #0xB2
	strh r1, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DFD6
_0807DFC4:
	mov r0, r8
	ldr r3, [r0, #0x58]
	cmp r3, #0x00
	beq _0807DFD6
	ldr r1, [r7, #0x28]
	adds r1, #0x08
	ldr r2, [sp, #0x000]
	bl _call_via_r3
_0807DFD6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807DFE8
sub_807DFE8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x00
	beq _0807E07C
	ldr r1, [r4, #0x4C]
	ldr r0, _0807E058 @ =0x08086961
	adds r5, r4, #0x0
	cmp r1, r0
	bne _0807E008
	ldr r5, [r4, #0x30]
_0807E008:
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1B
	adds r0, r5, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0807E07C
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_80875E0
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _0807E07C
	cmp r5, r4
	beq _0807E02E
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807E02E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r7
	cmp r0, #0x00
	bne _0807E07C
	movs r5, #0x00
	ldr r2, _0807E05C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x54]
	cmp r1, #0x00
	beq _0807E078
	adds r0, r2, #0x0
	movs r3, #0x00
_0807E04A:
	ldr r2, [r1, #0x34]
	cmp r1, r4
	bne _0807E070
	cmp r5, #0x00
	beq _0807E060
	str r2, [r5, #0x34]
	b _0807E064
_0807E058: .4byte sub_8086960
_0807E05C: .4byte 0x03000FD8
_0807E060:
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x54]
_0807E064:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807E078
_0807E070:
	adds r5, r1, #0x0
	adds r1, r2, #0x0
	cmp r1, #0x00
	bne _0807E04A
_0807E078:
	movs r0, #0x01
	b _0807E07E
_0807E07C:
	movs r0, #0x00
_0807E07E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_807E084
sub_807E084:
	push {r4, r5, r6, lr}
	ldr r3, _0807E0DC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
	ldr r0, [r3, #0x00]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	beq _0807E154
_0807E09C:
	ldr r6, [r5, #0x34]
	ldr r0, _0807E0DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807E0F6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0807E0F6
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	beq _0807E0CE
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0807E0E0
_0807E0CE:
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
	b _0807E0F6
	.byte 0x00, 0x00
_0807E0DC: .4byte 0x03000FD8
_0807E0E0:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807DFE8
	cmp r0, #0x00
	bne _0807E0F6
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
_0807E0F6:
	ldr r0, _0807E134 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807E14E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0807E14E
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	beq _0807E126
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0807E138
_0807E126:
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
	b _0807E14E
	.byte 0x00, 0x00
_0807E134: .4byte 0x03000FD8
_0807E138:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807DFE8
	cmp r0, #0x00
	bne _0807E14E
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
_0807E14E:
	adds r5, r6, #0x0
	cmp r5, #0x00
	bne _0807E09C
_0807E154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x86, 0xB0, 0x03, 0x1C
	.byte 0x89, 0x46, 0x16, 0x48, 0x88, 0x21, 0x09, 0x01, 0x40, 0x18, 0x07, 0x68, 0x18, 0x1C, 0x49, 0x30
	.byte 0x00, 0x21, 0x41, 0x56, 0x02, 0x91, 0x02, 0x38, 0x00, 0x22, 0x82, 0x56, 0x03, 0x92, 0x02, 0x38
	.byte 0x00, 0x25, 0x45, 0x57, 0x01, 0x38, 0x00, 0x24, 0x04, 0x57, 0x28, 0x1B, 0x82, 0x46, 0x18, 0x1C
	.byte 0x48, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x1A, 0x04, 0x91, 0x18, 0x1C, 0x46, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x1A, 0x05, 0x92, 0x98, 0x68, 0x41, 0x7C, 0x40, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x05, 0xD0, 0x68, 0x42, 0x01, 0x90, 0x03, 0xE0, 0x00, 0x00, 0x4C, 0x03
	.byte 0x00, 0x03, 0x01, 0x94, 0x99, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x01, 0x98
	.byte 0x40, 0x18, 0x01, 0x90, 0xD9, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x02, 0x98
	.byte 0x40, 0x18, 0x02, 0x90, 0x18, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x01, 0x12, 0x03, 0x98
	.byte 0x40, 0x18, 0x03, 0x90, 0x2E, 0x48, 0x00, 0x68, 0x93, 0x21, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68
	.byte 0x02, 0xAA, 0x03, 0xAB, 0x00, 0x21, 0x88, 0x46, 0x00, 0x91, 0x01, 0xA9, 0x04, 0xF0, 0x1F, 0xFD
	.byte 0x52, 0x46, 0x08, 0x2A, 0x5B, 0xDC, 0x05, 0x9B, 0x20, 0x2B, 0x58, 0xDC, 0x25, 0x49, 0x25, 0x4A
	.byte 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F, 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31
	.byte 0x40, 0x18, 0x24, 0x18, 0x21, 0x4E, 0x21, 0x4D, 0x22, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19
	.byte 0x80, 0x20, 0x00, 0x01, 0x51, 0x46, 0x5C, 0xF1, 0x0E, 0xFC, 0xE1, 0x88, 0xE0, 0x80, 0xE0, 0x89
	.byte 0x40, 0x46, 0xE0, 0x81, 0xE0, 0x8A, 0x41, 0x46, 0xE1, 0x82, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20
	.byte 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0xFF, 0xFB, 0xE1, 0x8B, 0xE0, 0x83, 0x08, 0x20, 0x52, 0x46
	.byte 0x80, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B, 0x1B, 0x1A, 0x12, 0x48, 0x03, 0x40
	.byte 0x01, 0x93, 0x20, 0x20, 0x05, 0x99, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x02, 0x99
	.byte 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x0C, 0x4A, 0x15, 0x1C, 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80
	.byte 0x48, 0x46, 0x42, 0x02, 0x1A, 0x43, 0x80, 0x23, 0xDB, 0x01, 0x03, 0xE1, 0x00, 0x00, 0xD8, 0x0F
	.byte 0x00, 0x03, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x85, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x10, 0x2B, 0x54, 0xDC, 0x23, 0x49, 0x23, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x1F, 0x4E, 0x1F, 0x4D
	.byte 0x20, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x00, 0x01, 0x51, 0x46, 0x5C, 0xF1
	.byte 0xB2, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89, 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82
	.byte 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0xA4, 0xFB, 0xE1, 0x8B
	.byte 0xE0, 0x83, 0x10, 0x20, 0x51, 0x46, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B
	.byte 0x1B, 0x1A, 0x10, 0x48, 0x03, 0x40, 0x01, 0x93, 0x40, 0x20, 0x05, 0x9A, 0x80, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x02, 0x99, 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x0B, 0x48, 0x05, 0x1C
	.byte 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80, 0x48, 0x46, 0x42, 0x02, 0x1A, 0x43, 0x80, 0x23, 0xDB, 0x01
	.byte 0xA8, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x87, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x20, 0x2B, 0x4C, 0xDC, 0x1F, 0x49, 0x1F, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x1B, 0x4E, 0x1B, 0x4D
	.byte 0x1C, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x40, 0x01, 0x51, 0x46, 0x5C, 0xF1
	.byte 0x5A, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89, 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82
	.byte 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0x4C, 0xFB, 0xE1, 0x8B
	.byte 0xE0, 0x83, 0x20, 0x20, 0x51, 0x46, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B
	.byte 0x1B, 0x1A, 0x0C, 0x48, 0x03, 0x40, 0x01, 0x93, 0x40, 0x20, 0x05, 0x9A, 0x80, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x02, 0x99, 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x07, 0x48, 0x05, 0x1C
	.byte 0x51, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x87, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x40, 0x2B, 0x6E, 0xDC, 0x2E, 0x49, 0x2E, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x2A, 0x48, 0x80, 0x46
	.byte 0x2A, 0x4D, 0x2A, 0x48, 0x2D, 0x1A, 0x41, 0x46, 0x0A, 0x68, 0x52, 0x19, 0x80, 0x26, 0xB6, 0x01
	.byte 0x30, 0x1C, 0x51, 0x46, 0x5C, 0xF1, 0x07, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89
	.byte 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82, 0x43, 0x46, 0x1A, 0x68, 0x52, 0x19, 0x30, 0x1C, 0x05, 0x99
	.byte 0x5C, 0xF1, 0xF9, 0xFA, 0xE1, 0x8B, 0xE0, 0x83, 0x40, 0x22, 0x51, 0x46, 0x50, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B, 0x1B, 0x1A, 0x1A, 0x48, 0x03, 0x40, 0x01, 0x93, 0x05, 0x98
	.byte 0x12, 0x1A, 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x02, 0x99, 0x89, 0x1A, 0xFF, 0x24, 0x21, 0x40
	.byte 0xE0, 0x22, 0xD2, 0x00, 0x15, 0x1C, 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80, 0x48, 0x46, 0x42, 0x02
	.byte 0x1A, 0x43, 0x10, 0x4B, 0x18, 0x1C, 0x02, 0x43, 0x7A, 0x80, 0x0F, 0x4B, 0x18, 0x1C, 0xB8, 0x80
	.byte 0x04, 0x98, 0x09, 0x1A, 0x21, 0x40, 0x02, 0x91, 0x29, 0x43, 0x39, 0x81, 0x7A, 0x81, 0x01, 0x21
	.byte 0x49, 0x42, 0x89, 0x44, 0x0A, 0x4A, 0x10, 0x1C, 0xB8, 0x81, 0x13, 0xE0, 0x00, 0x00, 0x4C, 0x03
	.byte 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82
	.byte 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xB0, 0xBB, 0x00, 0x00, 0xB0, 0xCB
	.byte 0x00, 0x00, 0x10, 0x3F, 0x08, 0x48, 0x88, 0x23, 0x1B, 0x01, 0xC0, 0x18, 0x39, 0x1C, 0x10, 0x31
	.byte 0x01, 0x60, 0x48, 0x46, 0x06, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03
	thumb_func_start sub_807E534
sub_807E534:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	ldr r6, _0807E584 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0807E554
	b _0807E656
_0807E554:
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0807E588
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r4, [r0, #0x34]
	movs r1, #0x01
	bl sub_81165CC
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x34]
	b _0807E5DA
_0807E584: .4byte 0x03000FD8
_0807E588:
	ldr r0, [r6, #0x00]
	movs r4, #0x92
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0807E656
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	lsls r0, r1, #0x08
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0xFF
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_81151E4
_0807E5DA:
	ldr r4, _0807E674 @ =0x03000FD8
	mov r8, r4
	ldr r3, [r4, #0x00]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r3, r3, r6
	ldr r0, [r3, #0x00]
	adds r0, #0x4A
	movs r1, #0x00
	mov r9, r1
	mov r4, r10
	strh r4, [r0, #0x00]
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldrh r1, [r1, #0x34]
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	ldr r5, [r0, #0x00]
	adds r5, r5, r6
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x1C]
	ldr r2, _0807E678 @ =0x02000080
	ldrh r4, [r0, #0x36]
	str r4, [sp, #0x000]
	ldr r4, [r5, #0x00]
	ldrh r4, [r4, #0x30]
	str r4, [sp, #0x004]
	mov r4, r9
	str r4, [sp, #0x008]
	bl sub_8116488
	ldr r3, _0807E67C @ =0x0300034C
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	ldr r1, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	ldrh r1, [r1, #0x36]
	orrs r0, r1
	strh r0, [r3, #0x02]
	ldr r0, [r2, #0x00]
	bl sub_8116610
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0C]
_0807E656:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807E668: .4byte 0x03001038
_0807E66C: .4byte 0x0819832C
_0807E670: .4byte 0x08198220
_0807E674: .4byte 0x03000FD8
_0807E678: .4byte 0x02000080
_0807E67C: .4byte 0x0300034C
	thumb_func_start sub_807E680
sub_807E680:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r9, r2
	mov r10, r3
	ldr r7, [sp, #0x030]
	ldr r0, _0807E6D0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E6E2
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _0807E6D8
	ldr r0, _0807E6D4 @ =0x00FFFFFF
	ands r5, r0
	b _0807E6E2
	.byte 0x00, 0x00
_0807E6D0: .4byte 0x03000FD8
_0807E6D4: .4byte 0x00FFFFFF
_0807E6D8:
	movs r5, #0x02
	negs r5, r5
	cmp r1, #0x40
	bne _0807E6E2
	adds r5, #0x01
_0807E6E2:
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807E78C
	cmp r5, #0x01
	bne _0807E6F2
	movs r1, #0x00
	b _0807E6F8
_0807E6F2:
	cmp r5, #0x02
	bne _0807E6F8
	movs r1, #0x01
_0807E6F8:
	movs r2, #0x01
	negs r2, r2
	cmp r1, r2
	beq _0807E78C
	cmp r4, #0x00
	bne _0807E770
	ldr r0, _0807E76C @ =0x000020B1
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r2, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r2
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1F]
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r3, #0x08]
	ldrb r1, [r1, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	movs r2, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0xFF
	strh r0, [r4, #0x0E]
	b _0807E78C
_0807E76C: .4byte 0x000020B1
_0807E770:
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _0807E78C
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
_0807E78C:
	movs r0, #0x02
	negs r0, r0
	ldr r2, _0807E800 @ =0x03000FD8
	cmp r5, r0
	beq _0807E7BE
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	ldr r1, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1, #0x00]
_0807E7BE:
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0807E7CC
	b _0807EA0E
_0807E7CC:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E812
	ldrb r0, [r2, #0x0A]
	movs r2, #0xC0
	ands r2, r0
	cmp r2, #0x80
	bne _0807E808
	ldr r0, _0807E804 @ =0x00FFFFFF
	ands r5, r0
	b _0807E812
_0807E800: .4byte 0x03000FD8
_0807E804: .4byte 0x00FFFFFF
_0807E808:
	cmp r2, #0x40
	beq _0807E80E
	b _0807EA0E
_0807E80E:
	movs r5, #0x01
	negs r5, r5
_0807E812:
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807E8D4
	mov r0, r9
	mov r1, r10
	bl sub_8199480
	cmp r0, #0x00
	bge _0807E828
	adds r0, #0x0F
_0807E828:
	asrs r0, r0, #0x04
	adds r0, #0x05
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	movs r0, #0x07
	ands r7, r0
	cmp r6, #0x00
	bne _0807E844
	ldr r0, _0807E840 @ =0x000020B2
	adds r1, r7, #0x0
	b _0807E9A8
_0807E840: .4byte 0x000020B2
_0807E844:
	ldrh r1, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r4, _0807E8AC @ =0x000020B2
	cmp r1, r4
	beq _0807E8B0
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
	str r4, [sp, #0x000]
	b _0807E8C0
	.byte 0x00, 0x00
_0807E8AC: .4byte 0x000020B2
_0807E8B0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r7
	bne _0807E8BC
	b _0807E9E2
_0807E8BC:
	movs r0, #0x00
	str r0, [sp, #0x000]
_0807E8C0:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	b _0807E9E2
_0807E8D4:
	movs r3, #0x00
	cmp r5, #0x60
	beq _0807E97A
	cmp r5, #0x60
	bgt _0807E916
	cmp r5, #0x10
	beq _0807E966
	cmp r5, #0x10
	bgt _0807E8FE
	cmp r5, #0x01
	beq _0807E94E
	cmp r5, #0x01
	bgt _0807E8F4
	cmp r5, #0x00
	beq _0807E95E
	b _0807E99C
_0807E8F4:
	cmp r5, #0x02
	beq _0807E952
	cmp r5, #0x03
	beq _0807E956
	b _0807E99C
_0807E8FE:
	cmp r5, #0x30
	beq _0807E982
	cmp r5, #0x30
	bgt _0807E90C
	cmp r5, #0x20
	beq _0807E96E
	b _0807E99C
_0807E90C:
	cmp r5, #0x40
	beq _0807E962
	cmp r5, #0x50
	beq _0807E972
	b _0807E99C
_0807E916:
	cmp r5, #0xB0
	beq _0807E996
	cmp r5, #0xB0
	bgt _0807E936
	cmp r5, #0x80
	beq _0807E96A
	cmp r5, #0x80
	bgt _0807E92C
	cmp r5, #0x70
	beq _0807E98E
	b _0807E99C
_0807E92C:
	cmp r5, #0x90
	beq _0807E97E
	cmp r5, #0xA0
	beq _0807E986
	b _0807E99C
_0807E936:
	cmp r5, #0xD0
	beq _0807E98A
	cmp r5, #0xD0
	bgt _0807E944
	cmp r5, #0xC0
	beq _0807E976
	b _0807E99C
_0807E944:
	cmp r5, #0xE0
	beq _0807E992
	cmp r5, #0xF0
	beq _0807E99A
	b _0807E99C
_0807E94E:
	movs r3, #0x02
	b _0807E99C
_0807E952:
	movs r3, #0x03
	b _0807E99C
_0807E956:
	lsls r1, r7, #0x01
	movs r0, #0x1A
	subs r3, r0, r1
	b _0807E99E
_0807E95E:
	movs r3, #0x0A
	b _0807E99C
_0807E962:
	movs r3, #0x0B
	b _0807E99C
_0807E966:
	movs r3, #0x0C
	b _0807E99C
_0807E96A:
	movs r3, #0x0D
	b _0807E99C
_0807E96E:
	movs r3, #0x0E
	b _0807E99C
_0807E972:
	movs r3, #0x0F
	b _0807E99C
_0807E976:
	movs r3, #0x10
	b _0807E99C
_0807E97A:
	movs r3, #0x11
	b _0807E99C
_0807E97E:
	movs r3, #0x12
	b _0807E99C
_0807E982:
	movs r3, #0x13
	b _0807E99C
_0807E986:
	movs r3, #0x14
	b _0807E99C
_0807E98A:
	movs r3, #0x15
	b _0807E99C
_0807E98E:
	movs r3, #0x16
	b _0807E99C
_0807E992:
	movs r3, #0x17
	b _0807E99C
_0807E996:
	movs r3, #0x18
	b _0807E99C
_0807E99A:
	movs r3, #0x19
_0807E99C:
	lsls r1, r7, #0x01
_0807E99E:
	adds r3, r3, r1
	cmp r6, #0x00
	bne _0807E9C0
	ldr r0, _0807E9BC @ =0x00002083
	adds r1, r3, #0x0
_0807E9A8:
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r6, r0, #0x0
	bl sub_807BC90
	movs r0, #0x00
	strh r0, [r6, #0x0E]
	b _0807E9E2
_0807E9BC: .4byte 0x00002083
_0807E9C0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	beq _0807E9E2
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
_0807E9E2:
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	add r0, r9
	strh r0, [r6, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	add r0, r10
	strh r0, [r6, #0x02]
	ldr r0, _0807EA20 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r6, [r1, #0x00]
_0807EA0E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807EA20: .4byte 0x03000FD8
	thumb_func_start sub_807EA24
sub_807EA24:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _0807EAE0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EA82
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EA82:
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EADA
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807EAE0: .4byte 0x03000FD8
	thumb_func_start sub_807EAE4
sub_807EAE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x08C
	mov r9, r0
	adds r7, r1, #0x0
	str r2, [sp, #0x080]
	str r3, [sp, #0x084]
	ldr r0, _0807EBAC @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x28]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	mov r0, r9
	cmp r0, #0x06
	bne _0807EB22
	ldrb r1, [r6, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807EB22
	b _0807EF40
_0807EB22:
	ldr r1, _0807EBB0 @ =0x0820002C
	add r0, sp, #0x010
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x018
	ldr r1, _0807EBB4 @ =0x08200034
	adds r0, r5, #0x0
	movs r2, #0x10
	bl memcpy
	add r1, sp, #0x028
	mov r8, r1
	ldr r1, _0807EBB8 @ =0x08200044
	mov r0, r8
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x030
	ldr r1, _0807EBBC @ =0x0820004C
	adds r0, r4, #0x0
	movs r2, #0x50
	bl memcpy
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0807EB5A
	adds r0, #0xFF
_0807EB5A:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x084]
	subs r0, r0, r1
	adds r0, #0x40
	str r0, [sp, #0x088]
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0807EB6C
	adds r1, #0xFF
_0807EB6C:
	asrs r1, r1, #0x08
	ldr r0, [sp, #0x080]
	adds r0, r0, r1
	str r0, [sp, #0x080]
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0807EB7C
	adds r0, #0xFF
_0807EB7C:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x084]
	mov r0, r8
	add r0, r9
	ldrb r5, [r0, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r1, sp, #0x080
	add r2, sp, #0x084
	add r3, sp, #0x088
	movs r4, #0x00
	str r4, [sp, #0x000]
	bl sub_8082C58
	ldr r1, [sp, #0x080]
	cmp r1, r5
	bge _0807EBC0
	str r5, [sp, #0x080]
	b _0807EBCA
_0807EBAC: .4byte 0x03000FD8
_0807EBB0: .4byte 0x0820002C
_0807EBB4: .4byte 0x08200034
_0807EBB8: .4byte 0x08200044
_0807EBBC: .4byte 0x0820004C
_0807EBC0:
	movs r0, #0xF0
	subs r0, r0, r5
	cmp r0, r1
	bge _0807EBCA
	str r0, [sp, #0x080]
_0807EBCA:
	ldr r0, [sp, #0x084]
	cmp r0, #0x1B
	bgt _0807EBD4
	movs r0, #0x1C
	str r0, [sp, #0x084]
_0807EBD4:
	ldrh r4, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r4, r0
	ldr r2, _0807ECEC @ =0x03001038
	ldr r0, _0807ECF0 @ =0x08198350
	ldr r1, _0807ECF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0807ECF8 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r5, r0, r1
	ldrb r0, [r5, #0x00]
	movs r1, #0x05
	bl _call_via_r2
	mov r2, r9
	lsls r7, r2, #0x01
	lsls r0, r0, #0x04
	adds r0, r7, r0
	add r0, sp
	adds r0, #0x30
	ldrh r0, [r0, #0x00]
	cmp r4, r0
	beq _0807EC6E
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x04
	adds r0, r7, r0
	add r0, sp
	adds r0, #0x30
	ldrh r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
_0807EC6E:
	mov r0, sp
	add r0, r9
	adds r0, #0x10
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	ldr r0, [sp, #0x080]
	strh r0, [r6, #0x00]
	ldr r0, [sp, #0x084]
	strh r0, [r6, #0x02]
	ldr r0, [sp, #0x088]
	strh r0, [r6, #0x0E]
	ldrb r1, [r6, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r6, #0x12]
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x18
	ldrh r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	mov r0, r9
	cmp r0, #0x02
	beq _0807ECBE
	b _0807EF40
_0807ECBE:
	ldr r3, _0807ECFC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r3, [r3, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0xC0
	beq _0807ECD8
	b _0807EF40
_0807ECD8:
	ldrb r0, [r3, #0x0E]
	cmp r0, #0x07
	bls _0807ECE0
	b _0807EF40
_0807ECE0:
	lsls r0, r0, #0x02
	ldr r1, _0807ED00 @ =0x0807ED04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807ECEC: .4byte 0x03001038
_0807ECF0: .4byte 0x08198350
_0807ECF4: .4byte 0x08198220
_0807ECF8: .4byte 0x0300034C
_0807ECFC: .4byte 0x03000FD8
_0807ED00: .4byte 0x0807ED04
	.byte 0x24, 0xED, 0x07, 0x08, 0x70, 0xED, 0x07, 0x08, 0xD0, 0xED, 0x07, 0x08, 0x08, 0xEE, 0x07, 0x08
	.byte 0x3C, 0xEE, 0x07, 0x08, 0xA0, 0xEE, 0x07, 0x08, 0xD8, 0xEE, 0x07, 0x08, 0x10, 0xEF, 0x07, 0x08
	.byte 0x11, 0x49, 0x88, 0x46, 0x0B, 0x68, 0xDC, 0x7A, 0xA0, 0x09, 0x19, 0x7B, 0x0F, 0x25, 0x29, 0x40
	.byte 0x89, 0x00, 0x01, 0x43, 0x01, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26
	.byte 0x30, 0x1C, 0x20, 0x40, 0x10, 0x43, 0xD8, 0x72, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x7B, 0x10, 0x20
	.byte 0x40, 0x42, 0x10, 0x40, 0x08, 0x43, 0x18, 0x73, 0x42, 0x46, 0x13, 0x68, 0x9A, 0x68, 0x91, 0x03
	.byte 0x89, 0x0E, 0x02, 0x20, 0x40, 0x42, 0x24, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0x15, 0x48, 0x80, 0x46
	.byte 0x03, 0x68, 0xDC, 0x7A, 0xA0, 0x09, 0x19, 0x7B, 0x0F, 0x25, 0x29, 0x40, 0x89, 0x00, 0x01, 0x43
	.byte 0x02, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26, 0x30, 0x1C, 0x20, 0x40
	.byte 0x10, 0x43, 0xD8, 0x72, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x7B, 0x10, 0x20, 0x40, 0x42, 0x10, 0x40
	.byte 0x08, 0x43, 0x18, 0x73, 0x41, 0x46, 0x0B, 0x68, 0x9A, 0x68, 0x91, 0x03, 0x89, 0x0E, 0x03, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x31, 0x40, 0x09, 0x03, 0x03, 0x48, 0x10, 0x40, 0x08, 0x43, 0x98, 0x60
	.byte 0xBC, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xFF, 0x0F, 0xFC, 0xFF, 0x0B, 0x48, 0x02, 0x68
	.byte 0x93, 0x89, 0x99, 0x05, 0x89, 0x0E, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01, 0x08, 0x48, 0x18, 0x40
	.byte 0x08, 0x43, 0x90, 0x81, 0x93, 0x7A, 0x99, 0x08, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x89, 0x00
	.byte 0x03, 0x20, 0x18, 0x40, 0x08, 0x43, 0x90, 0x72, 0xA0, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0F, 0xFC, 0xFF, 0xFF, 0x0B, 0x4C, 0x23, 0x68, 0x5A, 0x7B, 0x91, 0x08, 0x01, 0x20, 0x01, 0x43
	.byte 0x89, 0x00, 0x03, 0x20, 0x10, 0x40, 0x08, 0x43, 0x58, 0x73, 0x23, 0x68, 0xDA, 0x7A, 0x91, 0x06
	.byte 0x89, 0x0E, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x3E, 0x38, 0x10, 0x40, 0x08, 0x43, 0xD8, 0x72
	.byte 0x84, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x16, 0x4A, 0x90, 0x46, 0x13, 0x68, 0x1F, 0x1C
	.byte 0x47, 0x37, 0x3C, 0x78, 0xA0, 0x09, 0x48, 0x33, 0x19, 0x78, 0x0F, 0x25, 0x29, 0x40, 0x89, 0x00
	.byte 0x01, 0x43, 0x01, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26, 0x30, 0x1C
	.byte 0x20, 0x40, 0x10, 0x43, 0x38, 0x70, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x78, 0x10, 0x20, 0x40, 0x42
	.byte 0x10, 0x40, 0x08, 0x43, 0x18, 0x70, 0x40, 0x46, 0x03, 0x68, 0x5A, 0x6C, 0x91, 0x03, 0x89, 0x0E
	.byte 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x31, 0x40, 0x09, 0x03, 0x03, 0x48, 0x10, 0x40, 0x08, 0x43
	.byte 0x58, 0x64, 0x53, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0xFF, 0x0F, 0xFC, 0xFF, 0x0B, 0x48, 0x02, 0x68
	.byte 0x14, 0x1C, 0x48, 0x34, 0x23, 0x88, 0x99, 0x05, 0x89, 0x0E, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01
	.byte 0x07, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x80, 0x46, 0x32, 0x13, 0x78, 0x99, 0x08, 0x02, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x89, 0x00, 0x03, 0x20, 0x35, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0F, 0xFC, 0xFF, 0xFF, 0x0B, 0x48, 0x02, 0x68, 0x14, 0x1C, 0x48, 0x34, 0x23, 0x88, 0x99, 0x05
	.byte 0x89, 0x0E, 0x02, 0x20, 0x01, 0x43, 0x09, 0x01, 0x07, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x80
	.byte 0x46, 0x32, 0x13, 0x78, 0x99, 0x08, 0x03, 0x20, 0x40, 0x42, 0x01, 0x40, 0x89, 0x00, 0x03, 0x20
	.byte 0x19, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x0F, 0xFC, 0xFF, 0xFF, 0x0F, 0x4C, 0x22, 0x68
	.byte 0x49, 0x32, 0x13, 0x78, 0x99, 0x08, 0x01, 0x20, 0x01, 0x43, 0x89, 0x00, 0x03, 0x20, 0x18, 0x40
	.byte 0x08, 0x43, 0x10, 0x70, 0x22, 0x68, 0x47, 0x32, 0x13, 0x78, 0x99, 0x06, 0x89, 0x0E, 0x02, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x3E, 0x38, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70
_0807EF40:
	add sp, #0x08C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xF4, 0x0F, 0x00, 0x03
	thumb_func_start sub_807EF54
sub_807EF54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	ldr r6, _0807EFC0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807EF6E
	b _0807F39C
_0807EF6E:
	ldr r1, _0807EFC4 @ =0x0820009C
	mov r0, sp
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x008
	ldr r1, _0807EFC8 @ =0x082000A4
	adds r0, r5, #0x0
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x010
	ldr r1, _0807EFCC @ =0x082000AC
	adds r0, r4, #0x0
	movs r2, #0x08
	bl memcpy
	movs r7, #0x00
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r9, r5
	mov r8, r4
	cmp r1, r0
	bne _0807F014
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0807EFE8
	cmp r0, #0x01
	bgt _0807EFD0
	cmp r0, #0x00
	beq _0807EFDA
	b _0807F076
	.byte 0x00, 0x00
_0807EFC0: .4byte 0x03000FD8
_0807EFC4: .4byte 0x0820009C
_0807EFC8: .4byte 0x082000A4
_0807EFCC: .4byte 0x082000AC
_0807EFD0:
	cmp r0, #0x03
	beq _0807EFF4
	cmp r0, #0x06
	beq _0807F004
	b _0807F076
_0807EFDA:
	mov r1, sp
	ldr r6, _0807EFE4 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x00]
	b _0807F06C
_0807EFE4: .4byte 0x00001CD8
_0807EFE8:
	mov r0, sp
	ldrb r0, [r0, #0x01]
	ldr r1, _0807EFF0 @ =0x00001CD8
	b _0807F06C
_0807EFF0: .4byte 0x00001CD8
_0807EFF4:
	mov r0, sp
	ldrb r0, [r0, #0x02]
	ldr r2, _0807F000 @ =0x00001CD8
	adds r0, r0, r2
	b _0807F06E
	.byte 0x00, 0x00
_0807F000: .4byte 0x00001CD8
_0807F004:
	mov r0, sp
	ldrb r0, [r0, #0x03]
	ldr r3, _0807F010 @ =0x00001CD8
	adds r0, r0, r3
	b _0807F06E
	.byte 0x00, 0x00
_0807F010: .4byte 0x00001CD8
_0807F014:
	ldr r5, _0807F028 @ =0x0000034D
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0807F044
	cmp r0, #0x03
	bgt _0807F02C
	cmp r0, #0x00
	beq _0807F036
	b _0807F076
_0807F028: .4byte 0x0000034D
_0807F02C:
	cmp r0, #0x04
	beq _0807F054
	cmp r0, #0x06
	beq _0807F064
	b _0807F076
_0807F036:
	mov r1, sp
	ldr r6, _0807F040 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x04]
	b _0807F06C
_0807F040: .4byte 0x00001CD8
_0807F044:
	mov r1, sp
	ldr r2, _0807F050 @ =0x00001CD8
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x05]
	b _0807F06C
	.byte 0x00, 0x00
_0807F050: .4byte 0x00001CD8
_0807F054:
	mov r1, sp
	ldr r3, _0807F060 @ =0x00001CD8
	adds r0, r3, #0x0
	ldrb r1, [r1, #0x06]
	b _0807F06C
	.byte 0x00, 0x00
_0807F060: .4byte 0x00001CD8
_0807F064:
	mov r1, sp
	ldr r5, _0807F0BC @ =0x00001CD8
	adds r0, r5, #0x0
	ldrb r1, [r1, #0x07]
_0807F06C:
	adds r0, r0, r1
_0807F06E:
	bl sub_80E9B8C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0807F076:
	ldr r0, _0807F0C0 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _0807F0C4 @ =0x0000022F
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807F090
	b _0807F39C
_0807F090:
	ldr r0, _0807F0C8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807F0A6
	b _0807F228
_0807F0A6:
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	cmp r1, #0x01
	beq _0807F134
	cmp r1, #0x01
	bgt _0807F0CC
	cmp r1, #0x00
	beq _0807F0D8
	b _0807F39C
_0807F0BC: .4byte 0x00001CD8
_0807F0C0: .4byte 0x03000FC0
_0807F0C4: .4byte 0x0000022F
_0807F0C8: .4byte 0x03000FD8
_0807F0CC:
	cmp r1, #0x03
	beq _0807F190
	cmp r1, #0x06
	bne _0807F0D6
	b _0807F1DC
_0807F0D6:
	b _0807F39C
_0807F0D8:
	mov r6, r8
	ldrb r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0807F0E2
	b _0807F39C
_0807F0E2:
	ldr r0, _0807F12C @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x01
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F0F8
	b _0807F39C
_0807F0F8:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F10E
	b _0807F39C
_0807F10E:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, r7
	ble _0807F118
	b _0807F39C
_0807F118:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F130 @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	b _0807F39E
	.byte 0x00, 0x00
_0807F12C: .4byte 0x03000FF4
_0807F130: .4byte 0xFFFC0FFF
_0807F134:
	mov r3, r8
	ldrb r0, [r3, #0x01]
	cmp r0, #0x00
	bne _0807F13E
	b _0807F39C
_0807F13E:
	ldr r0, _0807F188 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x02
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F154
	b _0807F39C
_0807F154:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F16A
	b _0807F39C
_0807F16A:
	mov r1, r9
	ldrb r0, [r1, #0x01]
	cmp r0, r7
	ble _0807F174
	b _0807F39C
_0807F174:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F18C @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x01]
	b _0807F39E
	.byte 0x00, 0x00
_0807F188: .4byte 0x03000FF4
_0807F18C: .4byte 0xFFFC0FFF
_0807F190:
	mov r3, r8
	ldrb r0, [r3, #0x02]
	cmp r0, #0x00
	bne _0807F19A
	b _0807F39C
_0807F19A:
	ldr r0, _0807F1D8 @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r5, [r3, #0x0A]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1AE
	b _0807F39C
_0807F1AE:
	ldrh r0, [r3, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1BC
	b _0807F39C
_0807F1BC:
	mov r6, r9
	ldrb r0, [r6, #0x02]
	cmp r0, r7
	ble _0807F1C6
	b _0807F39C
_0807F1C6:
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x0A]
	mov r1, r8
	ldrb r0, [r1, #0x02]
	b _0807F39E
	.byte 0x00, 0x00
_0807F1D8: .4byte 0x03000FF4
_0807F1DC:
	mov r2, r8
	ldrb r0, [r2, #0x03]
	cmp r0, #0x00
	bne _0807F1E6
	b _0807F39C
_0807F1E6:
	ldr r0, _0807F224 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldrb r4, [r2, #0x0B]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0807F1FC
	b _0807F39C
_0807F1FC:
	ldrb r0, [r2, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	beq _0807F208
	b _0807F39C
_0807F208:
	mov r5, r9
	ldrb r0, [r5, #0x03]
	cmp r0, r7
	ble _0807F212
	b _0807F39C
_0807F212:
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, #0x0B]
	mov r6, r8
	ldrb r0, [r6, #0x03]
	b _0807F39E
_0807F224: .4byte 0x03000FF4
_0807F228:
	ldr r1, _0807F23C @ =0x0000034D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x03
	beq _0807F2B0
	cmp r1, #0x03
	bgt _0807F240
	cmp r1, #0x00
	beq _0807F24C
	b _0807F39C
_0807F23C: .4byte 0x0000034D
_0807F240:
	cmp r1, #0x04
	beq _0807F300
	cmp r1, #0x06
	bne _0807F24A
	b _0807F350
_0807F24A:
	b _0807F39C
_0807F24C:
	mov r2, r8
	ldrb r0, [r2, #0x04]
	cmp r0, #0x00
	bne _0807F256
	b _0807F39C
_0807F256:
	ldr r0, _0807F2A8 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r6, [r0, #0x44]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r4, #0x01
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F26E
	b _0807F39C
_0807F26E:
	mov r0, r12
	adds r0, #0x47
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x06
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r2
	ands r0, r4
	cmp r0, #0x00
	beq _0807F28A
	b _0807F39C
_0807F28A:
	mov r5, r9
	ldrb r0, [r5, #0x04]
	cmp r0, r7
	ble _0807F294
	b _0807F39C
_0807F294:
	orrs r3, r4
	lsls r0, r3, #0x0C
	ldr r1, _0807F2AC @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	mov r6, r12
	str r1, [r6, #0x44]
	mov r1, r8
	ldrb r0, [r1, #0x04]
	b _0807F39E
_0807F2A8: .4byte 0x03000FF4
_0807F2AC: .4byte 0xFFFC0FFF
_0807F2B0:
	mov r2, r8
	ldrb r0, [r2, #0x05]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F2FC @ =0x03000FF4
	ldr r3, [r0, #0x00]
	movs r5, #0x46
	adds r5, r5, r3
	mov r12, r5
	ldrb r5, [r5, #0x00]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r3, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	mov r6, r9
	ldrb r0, [r6, #0x05]
	cmp r0, r7
	bgt _0807F39C
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	mov r0, r12
	strb r1, [r0, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x05]
	b _0807F39E
	.byte 0x00, 0x00
_0807F2FC: .4byte 0x03000FF4
_0807F300:
	mov r2, r8
	ldrb r0, [r2, #0x06]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F34C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r3, #0x46
	adds r3, r3, r2
	mov r12, r3
	ldrb r4, [r3, #0x00]
	lsrs r1, r4, #0x02
	movs r3, #0x02
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x06]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	lsls r0, r1, #0x02
	movs r1, #0x03
	ands r1, r4
	orrs r1, r0
	mov r6, r12
	strb r1, [r6, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x06]
	b _0807F39E
_0807F34C: .4byte 0x03000FF4
_0807F350:
	mov r2, r8
	ldrb r0, [r2, #0x07]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F398 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r6, r2, #0x0
	adds r6, #0x47
	ldrb r4, [r6, #0x00]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x49
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x07]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6, #0x00]
	mov r6, r8
	ldrb r0, [r6, #0x07]
	b _0807F39E
_0807F398: .4byte 0x03000FF4
_0807F39C:
	movs r0, #0x00
_0807F39E:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_807F3AC
sub_807F3AC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r5, [r4, #0x28]
	cmp r5, #0x00
	beq _0807F43C
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bne _0807F3C4
	adds r4, r5, #0x0
	adds r4, #0x08
_0807F3C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807F3CC
	adds r0, #0xFF
_0807F3CC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807F3E4
	adds r0, #0xFF
_0807F3E4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _0807F434 @ =0x00000193
	strh r0, [r1, #0x00]
	ldr r1, _0807F438 @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086700
	movs r0, #0x01
	negs r0, r0
	b _0807F43E
	.byte 0x00, 0x00
_0807F434: .4byte 0x00000193
_0807F438: .4byte 0x00000111
_0807F43C:
	movs r0, #0x00
_0807F43E:
	add sp, #0x00C
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807F448
sub_807F448:
	push {r4, lr}
	ldr r4, _0807F478 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807F472
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_81165CC
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0807F472:
	pop {r4}
	pop {r0}
	bx r0
_0807F478: .4byte 0x03000FD8
	thumb_func_start sub_807F47C
sub_807F47C:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r5, #0x00
	ldr r2, _0807F4A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x54]
	cmp r1, #0x00
	beq _0807F4BC
	adds r0, r2, #0x0
	movs r4, #0x00
_0807F490:
	ldr r2, [r1, #0x34]
	cmp r1, r3
	bne _0807F4B4
	cmp r5, #0x00
	beq _0807F4A4
	str r2, [r5, #0x34]
	b _0807F4A8
	.byte 0x00, 0x00
_0807F4A0: .4byte 0x03000FD8
_0807F4A4:
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x54]
_0807F4A8:
	str r4, [r3, #0x58]
	str r4, [r3, #0x5C]
	str r4, [r3, #0x60]
	str r4, [r3, #0x64]
	str r4, [r3, #0x34]
	b _0807F4BC
_0807F4B4:
	adds r5, r1, #0x0
	adds r1, r2, #0x0
	cmp r1, #0x00
	bne _0807F490
_0807F4BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807F4C4
sub_807F4C4:
	push {lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	ldr r0, [r2, #0x34]
	cmp r0, #0x00
	bne _0807F4F0
	ldr r0, _0807F4F4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x54]
	str r0, [r2, #0x34]
	str r2, [r1, #0x54]
	ldr r0, _0807F4F8 @ =0x0810DD7D
	str r0, [r2, #0x58]
	str r3, [r2, #0x5C]
	str r3, [r2, #0x60]
	str r3, [r2, #0x64]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807F4F0:
	pop {r0}
	bx r0
_0807F4F4: .4byte 0x03000FD8
_0807F4F8: .4byte sub_810DD7C
	thumb_func_start sub_807F4FC
sub_807F4FC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x34]
	cmp r0, #0x00
	bne _0807F528
	ldr r0, _0807F52C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x54]
	str r0, [r2, #0x34]
	str r2, [r1, #0x54]
	ldr r0, _0807F530 @ =0x0810DD7D
	str r0, [r2, #0x58]
	ldr r0, _0807F534 @ =0x08086C65
	str r0, [r2, #0x5C]
	ldr r0, _0807F538 @ =0x08087125
	str r0, [r2, #0x60]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807F528:
	pop {r0}
	bx r0
_0807F52C: .4byte 0x03000FD8
_0807F530: .4byte sub_810DD7C
_0807F534: .4byte sub_8086C64
_0807F538: .4byte sub_8087124
	thumb_func_start sub_807F53C
sub_807F53C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _0807F5B0 @ =0x00002068
	cmp r1, r0
	bne _0807F556
	subs r2, #0x2F
_0807F556:
	adds r0, r4, #0x0
	movs r1, #0x0B
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
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807F578
	adds r0, #0xFF
_0807F578:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807F586
	adds r2, #0xFF
_0807F586:
	asrs r2, r2, #0x08
	adds r2, #0x06
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x10
	bl sub_808842C
	ldr r0, _0807F5B4 @ =0x08080065
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807F5B0: .4byte 0x00002068
_0807F5B4: .4byte sub_8080064
	thumb_func_start sub_807F5B8
sub_807F5B8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807F636
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807F5F0
	ldr r2, _0807F5EC @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0807F5FC
	.byte 0x00, 0x00
_0807F5EC: .4byte 0x00002039
_0807F5F0:
	ldr r2, _0807F640 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807F5FC:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807F614
	adds r1, #0xFF
_0807F614:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807F61E
	adds r2, #0xFF
_0807F61E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807F628
	adds r3, #0xFF
_0807F628:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _0807F644 @ =0x080800DD
	str r0, [r5, #0x04]
_0807F636:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F640: .4byte 0x00002068
_0807F644: .4byte sub_80800DC
	thumb_func_start sub_807F648
sub_807F648:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8080168
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807F674
	cmp r2, #0x00
	bne _0807F670
	adds r0, r5, #0x0
	bl sub_807DC8C
	b _0807F674
_0807F670:
	ldr r0, _0807F67C @ =0x080801A1
	str r0, [r5, #0x04]
_0807F674:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F67C: .4byte sub_80801A0
	thumb_func_start sub_807F680
sub_807F680:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r3, #0x10
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	ble _0807F6A8
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F6C8
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0807F6C8
_0807F6A8:
	ldr r1, [r2, #0x40]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0807F6C8
	movs r0, #0xC0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0807F6C8
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x04]
_0807F6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807F6D0
sub_807F6D0:
	push {lr}
	ldr r0, _0807F6E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116610
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F6E8: .4byte 0x03000FD8
	thumb_func_start sub_807F6EC
sub_807F6EC:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _0807F704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_81165CC
	pop {r0}
	bx r0
_0807F704: .4byte 0x03000FD8
	thumb_func_start sub_807F708
sub_807F708:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [sp, #0x020]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0807F750 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r3, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_81151E4
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F750: .4byte 0x03000FD8
	thumb_func_start sub_807F754
sub_807F754:
	push {r4, r5, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r3, r2, #0x0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0807F79C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0xFF
	str r1, [sp, #0x000]
	ldr r1, _0807F7A0 @ =0x0300034C
	ldrh r2, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	ands r1, r2
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_81151E4
	add sp, #0x010
	pop {r4, r5}
	pop {r0}
	bx r0
_0807F79C: .4byte 0x03000FD8
_0807F7A0: .4byte 0x0300034C
	.byte 0x03, 0x48, 0x01, 0x88, 0x02, 0x20, 0x08, 0x40, 0x00, 0x04, 0x00, 0x0C, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x04, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_807F7BC
sub_807F7BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	beq _0807F7D8
	adds r0, r5, #0x0
	bl sub_810D260
	adds r4, r0, #0x0
_0807F7D8:
	movs r2, #0xFF
	ands r2, r6
	ldr r0, _0807F828 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r8, r0
	movs r0, #0x0F
	mov r12, r0
	ldr r6, _0807F82C @ =0x000001FF
	ldr r3, _0807F830 @ =0xFFFF8000
	adds r0, r3, #0x0
	orrs r2, r0
	lsls r3, r7, #0x0C
_0807F7F6:
	adds r0, r5, #0x0
	mov r7, r12
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r4, #0x08
	ands r4, r6
	strh r2, [r1, #0x00]
	strh r4, [r1, #0x02]
	orrs r0, r3
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0807F7F6
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r8
	str r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F828: .4byte 0x0300034C
_0807F82C: .4byte 0x000001FF
_0807F830: .4byte 0xFFFF8000
	thumb_func_start sub_807F834
sub_807F834:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x0C]
	ldr r0, _0807F860 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r3, #0x16]
	subs r0, #0x01
	strh r0, [r3, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F85A
	movs r0, #0x14
	strh r0, [r3, #0x16]
	ldr r0, _0807F864 @ =0x080801BD
	str r0, [r4, #0x04]
_0807F85A:
	pop {r4}
	pop {r0}
	bx r0
_0807F860: .4byte 0x03000FD8
_0807F864: .4byte sub_80801BC
	thumb_func_start sub_807F868
sub_807F868:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807F87A
	adds r1, #0xFF
_0807F87A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807F884
	adds r2, #0xFF
_0807F884:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r0, _0807F8BC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F8B4
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807F8C0 @ =0x0807CEC5
	str r0, [r5, #0x04]
_0807F8B4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F8BC: .4byte 0x03000FD8
_0807F8C0: .4byte sub_807CEC4
	thumb_func_start sub_807F8C4
sub_807F8C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807F8D6
	adds r1, #0xFF
_0807F8D6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807F8E0
	adds r2, #0xFF
_0807F8E0:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r0, _0807F918 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F910
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807F91C @ =0x0807CD19
	str r0, [r5, #0x04]
_0807F910:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F918: .4byte 0x03000FD8
_0807F91C: .4byte sub_807CD18
	thumb_func_start sub_807F920
sub_807F920:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0807F99C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807F9A0 @ =0x000037E8
	adds r3, r0, r1
	lsls r2, r2, #0x09
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807F990
	movs r7, #0xFF
	lsls r7, r7, #0x08
	mov r12, r7
	ldr r0, _0807F9A4 @ =0x000001FF
	mov r8, r0
	movs r6, #0xC0
	lsls r6, r6, #0x08
_0807F94C:
	ldrh r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x50
	strh r0, [r3, #0x00]
	adds r3, #0x02
	mov r7, r12
	ands r1, r7
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	orrs r1, r0
	strh r1, [r3, #0x00]
	adds r3, #0x02
	ldrh r1, [r4, #0x02]
	adds r0, r1, #0x0
	mov r7, r8
	ands r0, r7
	subs r0, #0x78
	strh r0, [r3, #0x00]
	adds r3, #0x02
	ands r1, r6
	orrs r1, r2
	strh r1, [r3, #0x00]
	adds r3, #0x02
	ldrh r0, [r4, #0x04]
	strh r0, [r3, #0x00]
	adds r3, #0x02
	movs r0, #0x01
	strh r0, [r4, #0x06]
	ldr r4, [r4, #0x10]
	subs r5, #0x01
	subs r0, #0x02
	cmp r5, r0
	bne _0807F94C
_0807F990:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F99C: .4byte 0x03000FDC
_0807F9A0: .4byte 0x000037E8
_0807F9A4: .4byte 0x000001FF
	thumb_func_start sub_807F9A8
sub_807F9A8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _0807FA08 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807FA0C @ =0x000037E8
	adds r2, r0, r1
	subs r4, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	beq _0807FA00
	movs r7, #0xFF
	lsls r7, r7, #0x08
	ldr r6, _0807FA10 @ =0x000001FF
	movs r5, #0xFE
	lsls r5, r5, #0x08
_0807F9CA:
	ldrh r1, [r3, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x50
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ands r1, r7
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldrh r1, [r3, #0x02]
	adds r0, r1, #0x0
	ands r0, r6
	subs r0, #0x78
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ands r1, r5
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r3, #0x04]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	movs r0, #0x01
	strh r0, [r3, #0x06]
	ldr r3, [r3, #0x10]
	subs r4, #0x01
	subs r0, #0x02
	cmp r4, r0
	bne _0807F9CA
_0807FA00:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FA08: .4byte 0x03000FDC
_0807FA0C: .4byte 0x000037E8
_0807FA10: .4byte 0x000001FF
	thumb_func_start sub_807FA14
sub_807FA14:
	adds r3, r0, #0x0
	ldr r0, _0807FA4C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r2, #0x8E
	lsls r2, r2, #0x02
	add r2, r12
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x02
	add r2, r12
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	str r0, [r2, #0x00]
	ldrb r2, [r0, #0x0C]
	movs r1, #0x20
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x0C]
	str r0, [r3, #0x04]
	ldr r1, [r3, #0x08]
	str r1, [r0, #0x04]
	adds r3, #0x0C
	str r3, [r0, #0x08]
	bx lr
	.byte 0x00, 0x00
_0807FA4C: .4byte 0x03000FD8
	thumb_func_start sub_807FA50
sub_807FA50:
	ldr r0, _0807FA78 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r2, r3, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	str r0, [r2, #0x00]
	ldrb r2, [r0, #0x0C]
	movs r1, #0x20
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x0C]
	bx lr
_0807FA78: .4byte 0x03000FD8
	.byte 0x04, 0x4A, 0xD0, 0x21, 0x41, 0x43, 0x98, 0x20, 0x00, 0x01, 0x09, 0x18, 0x10, 0x68, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0xDC, 0x0F, 0x00, 0x03
	thumb_func_start sub_807FA94
sub_807FA94:
	push {lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0807FAB4
	ldr r0, [r3, #0x00]
	ldr r1, _0807FAB0 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r2, [r1, #0x00]
	str r2, [r3, #0x00]
	str r3, [r1, #0x00]
	b _0807FAB6
_0807FAB0: .4byte 0x03000FD8
_0807FAB4:
	movs r0, #0x00
_0807FAB6:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807FABC
sub_807FABC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	ldr r0, _0807FAFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807FB00 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	str r5, [r4, #0x04]
	str r6, [r4, #0x08]
	mov r0, r8
	str r0, [r4, #0x0C]
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FAFC: .4byte 0x03000FD8
_0807FB00: .4byte 0x03001034
	thumb_func_start sub_807FB04
sub_807FB04:
	push {r4, lr}
	ldr r0, _0807FB2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807FB30 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0807FB2C: .4byte 0x03000FD8
_0807FB30: .4byte 0x03001034
	thumb_func_start sub_807FB34
sub_807FB34:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0807FB5C
	bl sub_807BDDC
	ldrb r0, [r4, #0x13]
	movs r1, #0x05
	negs r1, r1
	ands r1, r0
	movs r0, #0x09
	negs r0, r0
	ands r1, r0
	strb r1, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
_0807FB5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807FB64
sub_807FB64:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_807FB78
sub_807FB78:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r4, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r4, #0x13]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_80842D8
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807FBD8
sub_807FBD8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _0807FC04 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C20
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC04: .4byte 0x03000FD8
	thumb_func_start sub_807FC08
sub_807FC08:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _0807FC34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C58
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC34: .4byte 0x03000FD8
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x04, 0x48, 0x00, 0x68, 0x93, 0x22, 0x92, 0x00, 0x80, 0x18, 0x00, 0x68
	.byte 0x02, 0xF0, 0x90, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0xD8, 0x0F, 0x00, 0x03
	thumb_func_start sub_807FC54
sub_807FC54:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [sp, #0x018]
	ldr r0, _0807FC84 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x000]
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082CCC
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FC84: .4byte 0x03000FD8
	thumb_func_start sub_807FC88
sub_807FC88:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FCCC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r7, #0x00
	ldr r1, [r0, #0x1C]
	adds r6, r0, #0x0
	adds r6, #0x58
	adds r5, r1, #0x0
	adds r5, #0x08
_0807FC9C:
	ldrb r0, [r5, #0x02]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FCD0
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FCD0
	cmp r4, #0x00
	blt _0807FCC8
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _0807FCD0
_0807FCC8:
	adds r0, r7, #0x0
	b _0807FD3E
_0807FCCC: .4byte 0x03000FD8
_0807FCD0:
	adds r3, r7, #0x1
	ldrb r0, [r5, #0x06]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FCFE
	ldr r2, [r6, #0x04]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FCFE
	cmp r4, #0x00
	blt _0807FD2C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	beq _0807FD2C
_0807FCFE:
	adds r3, r7, #0x2
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	asrs r0, r0, #0x1D
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _0807FD30
	ldr r2, [r6, #0x08]
	ldr r0, [r2, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0807FD30
	cmp r4, #0x00
	blt _0807FD2C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _0807FD30
_0807FD2C:
	adds r0, r3, #0x0
	b _0807FD3E
_0807FD30:
	adds r6, #0x0C
	adds r5, #0x0C
	adds r7, #0x03
	cmp r7, #0x05
	ble _0807FC9C
	movs r0, #0x01
	negs r0, r0
_0807FD3E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xF0, 0xB5, 0x04, 0x1C, 0x00, 0x23, 0x26, 0x48, 0x00, 0x68, 0x88, 0x25, 0x6D, 0x00, 0x02, 0x1C
	.byte 0x58, 0x32, 0x20, 0x26, 0x07, 0x27, 0x11, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07
	.byte 0x80, 0x0F, 0xA0, 0x42, 0x06, 0xD1, 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28
	.byte 0x00, 0xD1, 0x01, 0x33, 0x51, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F
	.byte 0xA0, 0x42, 0x06, 0xD1, 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1
	.byte 0x01, 0x33, 0x91, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F, 0xA0, 0x42
	.byte 0x06, 0xD1, 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x33
	.byte 0xD1, 0x68, 0x08, 0x1C, 0x7E, 0x30, 0x00, 0x78, 0x40, 0x07, 0x80, 0x0F, 0xA0, 0x42, 0x06, 0xD1
	.byte 0x48, 0x19, 0x01, 0x78, 0x30, 0x1C, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x33, 0x10, 0x32
	.byte 0x04, 0x3F, 0x00, 0x2F, 0xBF, 0xDA, 0x18, 0x1C, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xD8, 0x0F, 0x00, 0x03
	thumb_func_start sub_807FDE8
sub_807FDE8:
	push {lr}
	adds r3, r0, #0x0
	ldr r2, [r3, #0x00]
	ldr r0, [r1, #0x00]
	cmp r2, #0x00
	beq _0807FDFA
	cmp r0, #0x00
	bne _0807FE06
	b _0807FDFC
_0807FDFA:
	adds r2, r3, #0x0
_0807FDFC:
	cmp r0, #0x00
	bne _0807FE02
	adds r0, r1, #0x0
_0807FE02:
	str r2, [r1, #0x00]
	str r0, [r3, #0x00]
_0807FE06:
	adds r2, r3, #0x0
	b _0807FE10
_0807FE0A:
	ldr r2, [r2, #0x00]
	cmp r2, r3
	beq _0807FE3C
_0807FE10:
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807FE0A
	adds r0, r3, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807FE2C
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x10]
_0807FE2C:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807FE3C
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x10]
_0807FE3C:
	pop {r0}
	bx r0
	thumb_func_start sub_807FE40
sub_807FE40:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0807FE76
	ldr r4, [r3, #0x00]
	adds r5, r3, #0x0
	adds r5, #0x08
	cmp r4, #0x00
	beq _0807FE70
	adds r2, r4, #0x0
	b _0807FE58
_0807FE56:
	adds r2, r0, #0x0
_0807FE58:
	ldr r1, [r2, #0x10]
	ldr r0, [r3, #0x04]
	cmp r1, r0
	bne _0807FE64
	ldr r0, [r2, #0x04]
	str r0, [r2, #0x10]
_0807FE64:
	ldr r0, [r2, #0x00]
	cmp r0, r3
	bne _0807FE56
	str r4, [r2, #0x00]
	movs r0, #0x00
	str r0, [r3, #0x00]
_0807FE70:
	adds r0, r5, #0x0
	bl sub_807C298
_0807FE76:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_807FE7C
sub_807FE7C:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _0807FEAC @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r4, _0807FEB0 @ =0x0807FEB5
	ldr r2, [r3, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r3, #0x3C]
	ldr r1, [r3, #0x4C]
	str r1, [r2, #0x00]
	str r4, [r2, #0x04]
	movs r1, #0x00
	strh r1, [r2, #0x10]
	str r2, [r3, #0x4C]
	str r0, [r2, #0x08]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FEAC: .4byte 0x03000FD8
_0807FEB0: .4byte sub_807FEB4
	thumb_func_start sub_807FEB4
sub_807FEB4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x08]
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807FEE6
	adds r0, r5, #0x0
	bl sub_8085A6C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FEE6
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_0807FEE6:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x79
	cmp r0, #0x00
	beq _0807FF08
	adds r0, r5, #0x0
	bl sub_80877C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FF08
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_0807FF08:
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0807FF18
	str r0, [r6, #0x04]
_0807FF18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807FF20
sub_807FF20:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FF44 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x3C]
	ldr r2, [r3, #0x50]
	str r2, [r0, #0x00]
	str r4, [r0, #0x04]
	movs r2, #0x00
	strh r2, [r0, #0x10]
	str r0, [r3, #0x50]
	str r1, [r0, #0x08]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FF44: .4byte 0x03000FD8
	thumb_func_start sub_807FF48
sub_807FF48:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FF6C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x3C]
	ldr r2, [r3, #0x4C]
	str r2, [r0, #0x00]
	str r4, [r0, #0x04]
	movs r2, #0x00
	strh r2, [r0, #0x10]
	str r0, [r3, #0x4C]
	str r1, [r0, #0x08]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FF6C: .4byte 0x03000FD8
	thumb_func_start sub_807FF70
sub_807FF70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FF94 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x3C]
	ldr r2, [r3, #0x48]
	str r2, [r0, #0x00]
	str r4, [r0, #0x04]
	movs r2, #0x00
	strh r2, [r0, #0x10]
	str r0, [r3, #0x48]
	str r1, [r0, #0x08]
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807FF94: .4byte 0x03000FD8
	thumb_func_start sub_807FF98
sub_807FF98:
	adds r3, r0, #0x0
	ldr r0, _0807FFB4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x44]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	movs r1, #0x00
	strh r1, [r0, #0x10]
	str r0, [r2, #0x44]
	bx lr
	.byte 0x00, 0x00
_0807FFB4: .4byte 0x03000FD8
	thumb_func_start sub_807FFB8
sub_807FFB8:
	adds r3, r0, #0x0
	ldr r0, _0807FFD4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x40]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	movs r1, #0x00
	strh r1, [r0, #0x10]
	str r0, [r2, #0x40]
	bx lr
	.byte 0x00, 0x00
_0807FFD4: .4byte 0x03000FD8
	thumb_func_start sub_807FFD8
sub_807FFD8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0807FFF8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	ldr r2, [r0, #0x00]
	str r2, [r3, #0x3C]
	ldr r2, [r4, #0x00]
	str r2, [r0, #0x00]
	str r1, [r0, #0x04]
	movs r1, #0x00
	strh r1, [r0, #0x10]
	str r0, [r4, #0x00]
	pop {r4}
	pop {r1}
	bx r1
_0807FFF8: .4byte 0x03000FD8
	thumb_func_start sub_807FFFC
sub_807FFFC:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	movs r6, #0x00
	ldr r4, [r7, #0x00]
	cmp r4, #0x00
	beq _0808005A
_08080008:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _08080020
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08080020
	adds r6, r4, #0x0
	b _08080054
_08080020:
	cmp r6, #0x00
	beq _08080030
	str r5, [r6, #0x00]
	ldr r1, _0808002C @ =0x03000FD8
	b _0808004C
	.byte 0x00, 0x00
_0808002C: .4byte 0x03000FD8
_08080030:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _08080040
	str r5, [r7, #0x00]
	ldr r1, _0808003C @ =0x03000FD8
	b _0808004C
_0808003C: .4byte 0x03000FD8
_08080040:
	ldr r1, _08080060 @ =0x03000FD8
_08080042:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _08080042
	str r5, [r6, #0x00]
_0808004C:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_08080054:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _08080008
_0808005A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08080060: .4byte 0x03000FD8
	thumb_func_start sub_8080064
sub_8080064:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080800CC
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _080800D4 @ =0x00002068
	cmp r1, r0
	bne _08080088
	subs r2, #0x2F
_08080088:
	adds r0, r4, #0x0
	movs r1, #0x0C
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
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080800AA
	adds r1, #0xFF
_080800AA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080800B4
	adds r2, #0xFF
_080800B4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080800BE
	adds r3, #0xFF
_080800BE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080800D8 @ =0x08080221
	str r0, [r4, #0x4C]
_080800CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080800D4: .4byte 0x00002068
_080800D8: .4byte sub_8080220
	thumb_func_start sub_80800DC
sub_80800DC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808015A
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _0808011C
	ldr r2, _08080118 @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA5
	lsls r0, r0, #0x01
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _08080132
	.byte 0x00, 0x00
_08080118: .4byte 0x00002039
_0808011C:
	ldr r2, _08080160 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA7
	lsls r0, r0, #0x01
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_08080132:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x0C
	bl sub_80F7538
	ldr r0, [r4, #0x28]
	ldr r1, _08080164 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x04]
_0808015A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08080160: .4byte 0x00002068
_08080164: .4byte 0x00000111
	thumb_func_start sub_8080168
sub_8080168:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bgt _08080176
	movs r0, #0x00
	b _0808019A
_08080176:
	adds r2, r3, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	movs r4, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08080198
	strh r4, [r2, #0x00]
	str r4, [r3, #0x18]
	movs r0, #0x00
	b _0808019A
_08080198:
	movs r0, #0x01
_0808019A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_80801A0
sub_80801A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	bl sub_8080168
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080801B6
	adds r0, r4, #0x0
	bl sub_807DC8C
_080801B6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80801BC
sub_80801BC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r3, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080801D8
	adds r1, #0xFF
_080801D8:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080801E0
	adds r0, #0xFF
_080801E0:
	asrs r2, r0, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0E
	bl sub_807F7BC
	ldr r0, _08080218 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0808020E
	movs r0, #0x1E
	strh r0, [r4, #0x16]
	ldr r0, _0808021C @ =0x0808027D
	str r0, [r5, #0x04]
_0808020E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080218: .4byte 0x03000FD8
_0808021C: .4byte sub_808027C
	thumb_func_start sub_8080220
sub_8080220:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08080270
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08080254
	ldr r2, _08080250 @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	b _08080260
	.byte 0x00, 0x00
_08080250: .4byte 0x00002039
_08080254:
	ldr r2, _08080278 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08080260:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08080270:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080278: .4byte 0x00002068
	thumb_func_start sub_808027C
sub_808027C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r0, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0808028E
	adds r1, #0xFF
_0808028E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _08080298
	adds r2, #0xFF
_08080298:
	asrs r2, r2, #0x08
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r3, #0x0E
	bl sub_807F7BC
	ldr r0, _080802C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080802C4
	subs r0, r1, #0x1
	strh r0, [r4, #0x16]
	b _080802CE
_080802C0: .4byte 0x03000FD8
_080802C4:
	strh r6, [r4, #0x12]
	movs r0, #0x16
	strh r0, [r4, #0x16]
	ldr r0, _080802D8 @ =0x0807D0CD
	str r0, [r5, #0x04]
_080802CE:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080802D8: .4byte sub_807D0CC
	thumb_func_start sub_80802DC
sub_80802DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _08080520 @ =0x0300034C
	ldr r1, _08080524 @ =0x00000884
	adds r0, r0, r1
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	ldr r5, _08080528 @ =0x03000FD8
	ldr r4, [r5, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r4, r4, r3
	ldr r6, _0808052C @ =0x082000B4
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r6, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r4, #0x00]
	ldr r1, [r5, #0x00]
	movs r4, #0xB5
	lsls r4, r4, #0x02
	adds r0, r1, r4
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldr r3, [r5, #0x00]
	ldr r2, _08080530 @ =0x03000FDC
	ldr r4, [r2, #0x00]
	movs r1, #0xE8
	lsls r1, r1, #0x05
	adds r0, r4, r1
	str r0, [r3, #0x3C]
	adds r7, r2, #0x0
	adds r2, r1, #0x0
	mov r12, r7
	adds r5, r4, #0x0
	adds r0, r5, r2
	ldr r3, _08080534 @ =0x00001D1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r3, #0x1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r3, #0x1C
	adds r4, r5, r3
	str r4, [r0, #0x00]
	adds r1, #0x54
	movs r4, #0x54
	mov r8, r4
	movs r6, #0x43
_08080366:
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	mov r4, r8
	adds r0, r3, r4
	adds r4, r5, r1
	adds r4, #0x1C
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x1C
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x38
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x38
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x54
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x54
	ldr r5, [r7, #0x00]
	adds r3, r5, r2
	adds r0, r3, r0
	adds r4, r1, r5
	adds r4, #0x70
	str r4, [r0, #0x00]
	adds r1, #0x70
	movs r0, #0x70
	add r8, r0
	subs r6, #0x04
	cmp r6, #0x00
	bge _08080366
	mov r2, r12
	ldr r1, [r2, #0x00]
	ldr r3, _08080538 @ =0x000024C4
	adds r2, r1, r3
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r2, _08080528 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r4, #0x8E
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r3, _0808053C @ =0x000032E0
	adds r1, r1, r3
	str r1, [r0, #0x00]
	movs r6, #0x00
	ldr r0, _08080520 @ =0x0300034C
	mov r10, r0
	mov r9, r2
	mov r4, r12
	adds r5, r3, #0x0
_080803D8:
	ldr r0, [r4, #0x00]
	lsls r2, r6, #0x04
	adds r1, r0, r5
	adds r1, r1, r2
	adds r0, r0, r3
	adds r0, #0x10
	str r0, [r1, #0x00]
	adds r1, r6, #0x1
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x20
	str r0, [r2, #0x00]
	adds r1, r6, #0x2
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x30
	str r0, [r2, #0x00]
	adds r1, r6, #0x3
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x40
	str r0, [r2, #0x00]
	adds r1, r6, #0x4
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r2, r0, r5
	adds r2, r2, r1
	adds r0, r3, r0
	adds r0, #0x50
	str r0, [r2, #0x00]
	adds r3, #0x50
	adds r6, #0x05
	cmp r6, #0x0E
	ble _080803D8
	mov r1, r12
	ldr r3, [r1, #0x00]
	lsls r1, r6, #0x04
	ldr r2, _0808053C @ =0x000032E0
	adds r0, r3, r2
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _08080540 @ =0x000024E0
	adds r1, r3, r2
	str r1, [r0, #0x00]
	mov r4, r12
	adds r7, r2, #0x0
	adds r5, r3, #0x0
	adds r3, r2, #0x0
	adds r0, r5, r3
	ldr r1, _08080544 @ =0x000024FC
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r1, #0x1C
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r1, #0x1C
	adds r3, r5, r1
	str r3, [r0, #0x00]
	adds r2, #0x54
	movs r3, #0x54
	mov r8, r3
	movs r6, #0x7B
_08080476:
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	mov r3, r8
	adds r0, r1, r3
	adds r3, r5, r2
	adds r3, #0x1C
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x1C
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x38
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x38
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x54
	str r3, [r0, #0x00]
	mov r0, r8
	adds r0, #0x54
	ldr r5, [r4, #0x00]
	adds r1, r5, r7
	adds r0, r1, r0
	adds r3, r2, r5
	adds r3, #0x70
	str r3, [r0, #0x00]
	adds r2, #0x70
	movs r0, #0x70
	add r8, r0
	subs r6, #0x04
	cmp r6, #0x00
	bge _08080476
	movs r1, #0x00
	mov r2, r12
	ldr r0, [r2, #0x00]
	ldr r3, _08080548 @ =0x000032C4
	adds r0, r0, r3
	str r1, [r0, #0x00]
	mov r4, r9
	ldr r0, [r4, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, _0808054C @ =0x000008C4
	add r1, r10
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	movs r0, #0x02
	ldr r1, _08080550 @ =0x0807D381
	bl sub_8018B78
	ldr r4, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r4, r4, r2
	movs r0, #0xA3
	lsls r0, r0, #0x02
	ldr r2, _08080554 @ =0x082000BC
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80843C0
	str r0, [r4, #0x00]
	bl sub_80823C0
	bl sub_80E3DD0
	ldr r0, _08080558 @ =0x0808055D
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x04]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08080520: .4byte 0x0300034C
_08080524: .4byte 0x00000884
_08080528: .4byte 0x03000FD8
_0808052C: .4byte 0x082000B4
_08080530: .4byte 0x03000FDC
_08080534: .4byte 0x00001D1C
_08080538: .4byte 0x000024C4
_0808053C: .4byte 0x000032E0
_08080540: .4byte 0x000024E0
_08080544: .4byte 0x000024FC
_08080548: .4byte 0x000032C4
_0808054C: .4byte 0x000008C4
_08080550: .4byte sub_807D380
_08080554: .4byte 0x082000BC
_08080558: .4byte sub_808055C
	thumb_func_start sub_808055C
sub_808055C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl sub_80E3DA4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080805D0
	ldr r6, _080805D8 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8085440
	bl sub_80E3D70
	ldr r0, [r6, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080594
	movs r1, #0x03
	bl sub_8082D60
_08080594:
	ldr r4, [r6, #0x00]
	adds r4, r4, r5
	ldr r0, _080805DC @ =0x0000077C
	ldr r5, _080805E0 @ =0x082000C4
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldr r2, [r6, #0x00]
	movs r3, #0xAE
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldrb r3, [r1, #0x00]
	movs r1, #0x10
	str r1, [sp, #0x000]
	movs r1, #0x50
	str r1, [sp, #0x004]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r2, r6
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x008]
	movs r1, #0x09
	adds r2, r5, #0x0
	bl sub_8082D74
	str r0, [r4, #0x00]
	ldr r0, _080805E4 @ =0x080805E9
	str r0, [r7, #0x04]
_080805D0:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080805D8: .4byte 0x03000FD8
_080805DC: .4byte 0x0000077C
_080805E0: .4byte 0x082000C4
_080805E4: .4byte sub_80805E8
	thumb_func_start sub_80805E8
sub_80805E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	mov r8, r0
	ldr r7, _0808065C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x1C
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08080608
	b _08080806
_08080608:
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808061A
	movs r1, #0x03
	bl sub_80F2130
_0808061A:
	ldr r4, [r7, #0x00]
	adds r4, r4, r6
	ldr r5, _08080660 @ =0x082000CC
	movs r0, #0x34
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	adds r2, r5, #0x0
	bl init_ybai_process_80F2070
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl process_disable
	ldr r2, [r7, #0x00]
	ldr r1, _08080664 @ =0x000002B6
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldr r1, _08080668 @ =0x0850300C
	adds r0, r0, r1
	str r0, [r2, #0x1C]
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	ands r4, r0
	movs r5, #0x64
	b _0808068E
	.byte 0x00, 0x00
_0808065C: .4byte 0x03000FD8
_08080660: .4byte 0x082000CC
_08080664: .4byte 0x000002B6
_08080668: .4byte 0x0850300C
_0808066C:
	ldr r0, _080806EC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _080806F0 @ =0x000002B6
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x1C]
	adds r0, #0x20
	str r0, [r2, #0x1C]
	subs r5, r5, r4
	cmp r5, #0x00
	bge _08080688
	movs r5, #0x00
_08080688:
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	ands r4, r0
_0808068E:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r4, r0
	bcc _0808066C
	ldr r0, _080806EC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r2, [r3, #0x1C]
	ldrb r0, [r2, #0x02]
	lsls r0, r0, #0x02
	ldr r1, _080806F4 @ =0x0850476C
	adds r4, r0, r1
	movs r1, #0xB8
	lsls r1, r1, #0x02
	adds r5, r3, r1
	adds r7, r2, #0x0
	adds r7, #0x08
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	movs r3, #0x00
	ldr r6, _080806F8 @ =0x08500AA0
	adds r2, r7, #0x0
_080806C6:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x00
	bne _080806FC
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	b _08080718
_080806EC: .4byte 0x03000FD8
_080806F0: .4byte 0x000002B6
_080806F4: .4byte 0x0850476C
_080806F8: .4byte 0x08500AA0
_080806FC:
	cmp r3, #0x05
	beq _08080706
	adds r2, #0x04
	adds r3, #0x01
	b _080806C6
_08080706:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x11
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_08080718:
	str r0, [r5, #0x00]
	movs r3, #0x00
	ldr r6, _08080748 @ =0x08500AA0
	adds r2, r7, #0x0
_08080720:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x02
	bne _0808074C
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	lsls r2, r2, #0x0C
	lsrs r2, r2, #0x16
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	b _0808076A
	.byte 0x00, 0x00
_08080748: .4byte 0x08500AA0
_0808074C:
	cmp r3, #0x05
	beq _08080756
	adds r2, #0x04
	adds r3, #0x01
	b _08080720
_08080756:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x0C
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x05
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_0808076A:
	str r0, [r5, #0x04]
	movs r3, #0x00
	ldr r4, [r4, #0x00]
	ldr r0, _0808079C @ =0x08500AA0
	mov r12, r0
	adds r2, r7, #0x0
	lsls r6, r4, #0x02
_08080778:
	ldrb r1, [r2, #0x02]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x04
	bne _080807A0
	ldrh r1, [r2, #0x00]
	movs r0, #0x2C
	muls r0, r1
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	movs r0, #0x00
	lsrs r2, r6, #0x16
	movs r3, #0x01
	bl sub_80213A0
	b _080807BC
	.byte 0x00, 0x00
_0808079C: .4byte 0x08500AA0
_080807A0:
	cmp r3, #0x05
	beq _080807AA
	adds r2, #0x04
	adds r3, #0x01
	b _08080778
_080807AA:
	lsls r1, r4, #0x02
	lsrs r1, r1, #0x16
	lsls r1, r1, #0x05
	adds r1, #0x10
	movs r0, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sprite_heap_alloc
_080807BC:
	str r0, [r5, #0x08]
	ldr r5, _08080814 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r4, _08080818 @ =0x000002B9
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _080807D4
	ldr r0, _0808081C @ =0x084FCCD8
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
_080807D4:
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _080807E6
	ldr r0, _08080820 @ =0x084FCCE0
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
_080807E6:
	movs r1, #0xE0
	lsls r1, r1, #0x07
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r2, sp, #0x00C
	str r2, [sp, #0x004]
	movs r0, #0x0B
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r0, _08080824 @ =0x08080829
	mov r1, r8
	str r0, [r1, #0x04]
_08080806:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080814: .4byte 0x03000FD8
_08080818: .4byte 0x000002B9
_0808081C: .4byte 0x084FCCD8
_08080820: .4byte 0x084FCCE0
_08080824: .4byte sub_8080828
	thumb_func_start sub_8080828
sub_8080828:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x00C]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080842
	b _08080A2A
_08080842:
	ldr r0, _08080988 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x1C]
	adds r0, #0x08
	str r0, [sp, #0x010]
	movs r0, #0x00
	mov r10, r0
	ldr r4, [sp, #0x010]
_08080852:
	ldrb r1, [r4, #0x02]
	movs r5, #0x01
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080868
	ldrh r1, [r4, #0x00]
	mov r0, r10
	movs r2, #0x01
	bl sub_807B838
_08080868:
	mov r2, r10
	adds r2, #0x01
	ldrb r1, [r4, #0x06]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080880
	ldrh r1, [r4, #0x04]
	adds r0, r2, #0x0
	movs r2, #0x01
	bl sub_807B838
_08080880:
	mov r2, r10
	adds r2, #0x02
	ldrb r1, [r4, #0x0A]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08080898
	ldrh r1, [r4, #0x08]
	adds r0, r2, #0x0
	movs r2, #0x01
	bl sub_807B838
_08080898:
	adds r4, #0x0C
	movs r1, #0x03
	add r10, r1
	mov r0, r10
	cmp r0, #0x05
	ble _08080852
	movs r1, #0x00
	mov r10, r1
_080808A8:
	ldr r0, _08080988 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x58
	mov r9, r0
	mov r0, r10
	lsls r2, r0, #0x02
	ldr r1, [sp, #0x010]
	adds r0, r2, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x30
	ands r0, r1
	adds r4, r2, #0x0
	mov r1, r10
	adds r1, #0x01
	str r1, [sp, #0x014]
	cmp r0, #0x00
	beq _08080968
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08080968
	movs r7, #0x00
	movs r0, #0x30
	mov r8, r0
	mov r6, r9
	ldr r5, [sp, #0x010]
_080808E8:
	cmp r10, r7
	beq _0808090C
	ldrb r2, [r5, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _0808090C
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x00]
	bl sub_807FDE8
_0808090C:
	adds r1, r5, #0x4
	adds r0, r7, #0x1
	cmp r10, r0
	beq _08080934
	ldrb r2, [r1, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _08080934
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x04]
	bl sub_807FDE8
_08080934:
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r0, r7, #0x2
	cmp r10, r0
	beq _0808095E
	ldrb r2, [r1, #0x02]
	ldr r1, [sp, #0x010]
	adds r0, r4, r1
	ldrb r3, [r0, #0x02]
	mov r1, r8
	ands r1, r2
	mov r0, r8
	ands r0, r3
	cmp r1, r0
	bne _0808095E
	mov r1, r9
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r6, #0x08]
	bl sub_807FDE8
_0808095E:
	adds r6, #0x0C
	adds r5, #0x0C
	adds r7, #0x03
	cmp r7, #0x05
	ble _080808E8
_08080968:
	ldr r0, [sp, #0x014]
	mov r10, r0
	cmp r0, #0x05
	ble _080808A8
	ldr r5, _08080988 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _0808098C @ =0x000002B9
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	cmp r4, #0x01
	beq _080809A0
	cmp r4, #0x01
	bgt _08080990
	cmp r4, #0x00
	beq _0808099A
	b _08080A20
_08080988: .4byte 0x03000FD8
_0808098C: .4byte 0x000002B9
_08080990:
	cmp r4, #0x02
	beq _080809DC
	cmp r4, #0x03
	beq _080809FC
	b _08080A20
_0808099A:
	movs r1, #0x01
	negs r1, r1
	b _080809A6
_080809A0:
	movs r1, #0x01
	negs r1, r1
	movs r4, #0x00
_080809A6:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	movs r2, #0x36
	movs r3, #0x5C
	bl sub_807AFD4
	movs r1, #0x02
	negs r1, r1
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x28
	movs r3, #0x7C
	bl sub_807AFD4
	ldr r2, [r5, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x80
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x00]
	b _08080A20
_080809DC:
	movs r1, #0x01
	negs r1, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x06
	movs r2, #0x2F
	movs r3, #0x73
	bl sub_807AFD4
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x80
	ldr r1, [r0, #0x70]
	b _08080A1A
_080809FC:
	movs r1, #0x02
	negs r1, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x2F
	movs r3, #0x73
	bl sub_807AFD4
	ldr r0, [r5, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x80
	ldr r1, [r0, #0x74]
_08080A1A:
	str r1, [r2, #0x00]
	adds r0, #0x84
	str r4, [r0, #0x00]
_08080A20:
	movs r0, #0x00
	ldr r1, [sp, #0x00C]
	strh r0, [r1, #0x10]
	ldr r0, _08080A3C @ =0x08080A41
	str r0, [r1, #0x04]
_08080A2A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080A3C: .4byte sub_8080A40
	thumb_func_start sub_8080A40
sub_8080A40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r0, #0x10
	ldsh r5, [r7, r0]
	cmp r5, #0x05
	bgt _08080B1E
	movs r0, #0x06
	subs r1, r0, r5
	movs r0, #0x01
	ands r1, r0
	cmp r5, #0x06
	bge _08080A62
	cmp r1, #0x00
	beq _08080AA2
_08080A62:
	ldr r0, _08080A94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080A9C
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080A9C
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r5, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080A98 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080A94: .4byte 0x03000FD8
_08080A98: .4byte sub_8082158
_08080A9C:
	adds r5, #0x01
	cmp r5, #0x05
	bgt _08080B1E
_08080AA2:
	ldr r0, _08080AD4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080ADC
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080ADC
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r5, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080AD8 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080AD4: .4byte 0x03000FD8
_08080AD8: .4byte sub_8082158
_08080ADC:
	adds r6, r5, #0x1
	ldr r0, _08080B10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080B18
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _08080B18
	adds r0, r4, #0x0
	bl _call_via_r1
	adds r0, r6, #0x1
	strh r0, [r7, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x08
	str r0, [r7, #0x0C]
	ldr r0, _08080B14 @ =0x08082159
	b _08080BA0
	.byte 0x00, 0x00
_08080B10: .4byte 0x03000FD8
_08080B14: .4byte sub_8082158
_08080B18:
	adds r5, #0x02
	cmp r5, #0x05
	ble _08080AA2
_08080B1E:
	ldr r1, _08080BB0 @ =0x0000700A
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80213A0
	ldr r1, _08080BB4 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _08080BB8 @ =0x08080BE1
	mov r8, r1
	str r1, [r7, #0x04]
	movs r4, #0x00
	strh r4, [r7, #0x10]
	ldr r6, _08080BBC @ =0x084FB4FC
	adds r0, r6, #0x0
	adds r0, #0x6C
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r5, _08080BC0 @ =0x089F2CE0
	adds r0, r0, r5
	ldr r1, [r0, #0x00]
	adds r1, r1, r5
	ldr r2, _08080BC4 @ =0x06016800
	movs r3, #0x80
	lsls r3, r3, #0x02
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r2, _08080BC8 @ =0x03001034
	ldr r0, _08080BCC @ =0x08198154
	ldr r1, _08080BD0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r4, _08080BD4 @ =0x0300034C
	ldr r2, _08080BD8 @ =0x00000888
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x6E
	cmp r0, #0x00
	beq _08080B7E
	movs r1, #0x70
_08080B7E:
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r0, r5
	ldr r1, _08080BDC @ =0x020003C0
	movs r2, #0x20
	bl _call_via_r3
	ldrh r0, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	mov r0, r8
_08080BA0:
	str r0, [r7, #0x04]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080BB0: .4byte 0x0000700A
_08080BB4: .4byte 0x03000FD8
_08080BB8: .4byte sub_8080BE0
_08080BBC: .4byte 0x084FB4FC
_08080BC0: .4byte 0x089F2CE0
_08080BC4: .4byte 0x06016800
_08080BC8: .4byte 0x03001034
_08080BCC: .4byte 0x08198154
_08080BD0: .4byte 0x081980D8
_08080BD4: .4byte 0x0300034C
_08080BD8: .4byte 0x00000888
_08080BDC: .4byte 0x020003C0
	thumb_func_start sub_8080BE0
sub_8080BE0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080BFA
	b _08080D9E
_08080BFA:
	ldr r0, _08080DB0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08080DB4 @ =0x00003A68
	adds r5, r0, r1
	movs r7, #0x00
	movs r2, #0x01
	negs r2, r2
	mov r8, r2
	add r6, sp, #0x00C
_08080C0C:
	ldr r4, _08080DB8 @ =0x0000700A
	adds r1, r7, r4
	mov r0, r8
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	mov r3, r8
	bl sub_8020DD0
	adds r4, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	movs r0, #0x78
	strh r0, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r4, #0x02]
	movs r2, #0x00
	strb r2, [r6, #0x00]
	ldr r1, _08080DBC @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r1, [r0, #0x3C]
	adds r0, r4, #0x0
	add r2, sp, #0x00C
	bl sub_801E80C
	ldrh r2, [r4, #0x30]
	str r2, [sp, #0x014]
	ldrb r0, [r4, #0x13]
	movs r2, #0x05
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x01
	adds r0, r0, r4
	adds r0, r0, r1
	str r5, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	strh r0, [r5, #0x00]
	adds r5, #0x02
	ldr r1, _08080DBC @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x3C]
	ldrb r0, [r6, #0x00]
	subs r0, #0x01
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xFF
	beq _08080CF2
	movs r4, #0xFF
	lsls r4, r4, #0x08
	mov r10, r4
	ldr r0, _08080DC4 @ =0x000001FF
	mov r9, r0
	movs r1, #0xFE
	lsls r1, r1, #0x08
	mov r12, r1
	add r3, sp, #0x00C
_08080CA2:
	ldrh r1, [r2, #0x00]
	ldrb r0, [r2, #0x00]
	subs r0, #0x50
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r4, r10
	ands r1, r4
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldrh r1, [r2, #0x02]
	adds r0, r1, #0x0
	mov r4, r9
	ands r0, r4
	subs r0, #0x78
	strh r0, [r5, #0x00]
	adds r5, #0x02
	mov r0, r12
	ands r1, r0
	strh r1, [r5, #0x00]
	adds r5, #0x02
	ldrh r0, [r2, #0x04]
	ldr r1, _08080DC8 @ =0x00000FFF
	ands r0, r1
	ldr r4, _08080DCC @ =0xFFFFB800
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r5, #0x02
	ldr r2, [r2, #0x10]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xFF
	bne _08080CA2
_08080CF2:
	adds r7, #0x01
	cmp r7, #0x07
	ble _08080C0C
	ldr r0, _08080DBC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x08]
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	strh r0, [r1, #0x08]
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sprite_heap_free
	movs r7, #0x00
_08080D10:
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x04
	beq _08080D2E
	cmp r1, #0x02
	bne _08080D50
_08080D2E:
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x10]
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r3, r0, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_08080D50:
	adds r1, r7, #0x1
	ldr r0, _08080DC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x04
	beq _08080D70
	cmp r1, #0x02
	bne _08080D92
_08080D70:
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x10]
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r3, r0, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_08080D92:
	adds r7, #0x02
	cmp r7, #0x07
	ble _08080D10
	ldr r0, _08080DD0 @ =0x08080DD5
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x04]
_08080D9E:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080DB0: .4byte 0x03000FDC
_08080DB4: .4byte 0x00003A68
_08080DB8: .4byte 0x0000700A
_08080DBC: .4byte 0x03000D74
_08080DC0: .4byte 0x03000FD8
_08080DC4: .4byte 0x000001FF
_08080DC8: .4byte 0x00000FFF
_08080DCC: .4byte 0xFFFFB800
_08080DD0: .4byte sub_8080DD4
	thumb_func_start sub_8080DD4
sub_8080DD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x000]
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08080DEE
	b _080810E2
_08080DEE:
	movs r4, #0x00
_08080DF0:
	ldr r6, _080810F4 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E18
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E18:
	adds r1, r4, #0x1
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E3E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E3E:
	adds r1, r4, #0x2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _08080E64
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bl sub_8081D84
_08080E64:
	adds r4, #0x03
	cmp r4, #0x05
	ble _08080DF0
	ldr r0, _080810F8 @ =0x00007001
	bl sub_8082AAC
	ldr r0, _080810FC @ =0x00002083
	bl sub_8082AAC
	ldr r0, [r6, #0x00]
	ldr r1, _08081100 @ =0x000002B9
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bne _08080E84
	b _08080FAC
_08080E84:
	ldr r0, _08081104 @ =0x00002039
	bl sub_8082AAC
	ldr r0, _08081108 @ =0x00002025
	bl sub_8082AAC
	ldr r0, _0808110C @ =0x0000203A
	bl sub_8082AAC
	ldr r0, _08081110 @ =0x0000203B
	bl sub_8082AAC
	ldr r0, _08081114 @ =0x0000203C
	bl sub_8082AAC
	ldr r0, _08081118 @ =0x0000203D
	bl sub_8082AAC
	ldr r0, _0808111C @ =0x00002002
	bl sub_8082AAC
	ldr r0, _08081120 @ =0x00002029
	bl sub_8082AAC
	ldr r0, _08081124 @ =0x0000203F
	bl sub_8082AAC
	ldr r0, _08081128 @ =0x00002028
	bl sub_8082AAC
	ldr r0, _0808112C @ =0x0000203E
	bl sub_8082AAC
	ldr r0, _08081130 @ =0x0000202A
	bl sub_8082AAC
	ldr r0, _08081134 @ =0x0000202C
	bl sub_8082AAC
	ldr r0, _08081138 @ =0x00002020
	bl sub_8082AAC
	ldr r7, _0808113C @ =0x084FB814
	str r7, [sp, #0x008]
	movs r0, #0x00
	mov r9, r0
	movs r1, #0x05
	str r1, [sp, #0x004]
_08080EE4:
	ldrh r0, [r7, #0x00]
	bl sub_8082AAC
	ldr r0, [sp, #0x008]
	adds r0, #0x02
	mov r8, r0
	mov r0, r9
	add r0, r8
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r6, [sp, #0x008]
	adds r6, #0x04
	mov r1, r9
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r5, [sp, #0x008]
	adds r5, #0x24
	mov r1, r9
	adds r0, r1, r5
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	add r0, r9
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldrh r0, [r7, #0x28]
	bl sub_8082AAC
	adds r0, r7, #0x6
	mov r10, r0
	mov r4, r9
	adds r4, #0x06
	ldrh r0, [r7, #0x06]
	bl sub_8082AAC
	mov r1, r8
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	adds r0, r4, r6
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	bl sub_8082AAC
	movs r0, #0x0C
	adds r0, r0, r7
	mov r10, r0
	mov r4, r9
	adds r4, #0x0C
	ldrh r0, [r7, #0x0C]
	bl sub_8082AAC
	add r8, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	bl sub_8082AAC
	adds r6, r4, r6
	ldrh r0, [r6, #0x00]
	bl sub_8082AAC
	adds r5, r4, r5
	ldrh r0, [r5, #0x00]
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	bl sub_8082AAC
	adds r7, #0x12
	movs r0, #0x12
	add r9, r0
	ldr r1, [sp, #0x004]
	subs r1, #0x03
	str r1, [sp, #0x004]
	cmp r1, #0x00
	bge _08080EE4
_08080FAC:
	ldr r0, _080810F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08081100 @ =0x000002B9
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08080FBC
	b _080810C0
_08080FBC:
	ldr r0, _08081144 @ =0x00002068
	bl sub_8082AAC
	ldr r0, _08081148 @ =0x00002054
	bl sub_8082AAC
	ldr r0, _0808114C @ =0x00002069
	bl sub_8082AAC
	ldr r0, _08081150 @ =0x0000206A
	bl sub_8082AAC
	ldr r0, _08081154 @ =0x0000206B
	bl sub_8082AAC
	ldr r0, _08081158 @ =0x0000206C
	bl sub_8082AAC
	ldr r0, _0808115C @ =0x0000204F
	bl sub_8082AAC
	ldr r0, _08081160 @ =0x00002058
	bl sub_8082AAC
	ldr r0, _08081164 @ =0x0000206E
	bl sub_8082AAC
	ldr r0, _08081168 @ =0x00002057
	bl sub_8082AAC
	ldr r0, _0808116C @ =0x0000206D
	bl sub_8082AAC
	ldr r0, _08081170 @ =0x00002059
	bl sub_8082AAC
	ldr r0, _08081174 @ =0x0000205B
	bl sub_8082AAC
	ldr r0, _08081178 @ =0x00002021
	bl sub_8082AAC
	ldr r0, _0808113C @ =0x084FB814
	str r0, [sp, #0x010]
	movs r7, #0x00
	movs r1, #0x05
	str r1, [sp, #0x00C]
_0808101A:
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, _0808113C @ =0x084FB814
	adds r0, #0x02
	mov r8, r0
	adds r0, r7, r0
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r6, _0808113C @ =0x084FB814
	adds r6, #0x04
	adds r0, r7, r6
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r5, _0808113C @ =0x084FB814
	adds r5, #0x24
	adds r0, r7, r5
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r1, _08081140 @ =0x084FB83A
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x28]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, [sp, #0x010]
	adds r0, #0x06
	mov r10, r0
	adds r4, r7, #0x6
	ldr r1, [sp, #0x010]
	ldrh r0, [r1, #0x06]
	adds r0, #0x01
	bl sub_8082AAC
	add r8, r4
	mov r1, r8
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	adds r6, r4, r6
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	adds r5, r4, r5
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, _08081140 @ =0x084FB83A
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	bl sub_8082AAC
	mov r1, r10
	ldrh r0, [r1, #0x28]
	adds r0, #0x01
	bl sub_8082AAC
	ldr r0, [sp, #0x010]
	adds r0, #0x0C
	str r0, [sp, #0x010]
	adds r7, #0x0C
	ldr r1, [sp, #0x00C]
	subs r1, #0x02
	str r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _0808101A
_080810C0:
	ldr r0, _0808117C @ =0x0000017B
	bl sub_8082898
	movs r0, #0xB9
	lsls r0, r0, #0x01
	bl sub_8082898
	ldr r1, _08081180 @ =0x00008004
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
	ldr r0, _08081184 @ =0x08082089
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x04]
_080810E2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080810F4: .4byte 0x03000FD8
_080810F8: .4byte 0x00007001
_080810FC: .4byte 0x00002083
_08081100: .4byte 0x000002B9
_08081104: .4byte 0x00002039
_08081108: .4byte 0x00002025
_0808110C: .4byte 0x0000203A
_08081110: .4byte 0x0000203B
_08081114: .4byte 0x0000203C
_08081118: .4byte 0x0000203D
_0808111C: .4byte 0x00002002
_08081120: .4byte 0x00002029
_08081124: .4byte 0x0000203F
_08081128: .4byte 0x00002028
_0808112C: .4byte 0x0000203E
_08081130: .4byte 0x0000202A
_08081134: .4byte 0x0000202C
_08081138: .4byte 0x00002020
_0808113C: .4byte 0x084FB814
_08081140: .4byte 0x084FB83A
_08081144: .4byte 0x00002068
_08081148: .4byte 0x00002054
_0808114C: .4byte 0x00002069
_08081150: .4byte 0x0000206A
_08081154: .4byte 0x0000206B
_08081158: .4byte 0x0000206C
_0808115C: .4byte 0x0000204F
_08081160: .4byte 0x00002058
_08081164: .4byte 0x0000206E
_08081168: .4byte 0x00002057
_0808116C: .4byte 0x0000206D
_08081170: .4byte 0x00002059
_08081174: .4byte 0x0000205B
_08081178: .4byte 0x00002021
_0808117C: .4byte 0x0000017B
_08081180: .4byte 0x00008004
_08081184: .4byte sub_8082088
	thumb_func_start sub_8081188
sub_8081188:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _0808125C
	ldr r6, _0808126C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x48]
	ldr r0, [r0, #0x08]
	bl sprite_heap_free
	ldr r0, [r6, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl process_enable
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	ldr r2, _08081270 @ =0x06004020
	ldr r3, _08081274 @ =0x00003FE0
	movs r1, #0x0C
	mov r8, r1
	str r1, [sp, #0x000]
	movs r1, #0x00
	bl sub_80F8D6C
	ldr r2, [r6, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	movs r3, #0xA0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r2, r2, r5
	ldr r0, [r2, #0x00]
	ldr r2, _08081278 @ =0x060082C0
	movs r3, #0xF5
	lsls r3, r3, #0x06
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	bl sub_80F8D6C
	ldr r2, [r6, #0x00]
	adds r4, r2, r4
	ldr r1, [r4, #0x00]
	movs r3, #0xA1
	lsls r3, r3, #0x02
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r2, r2, r5
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r7, [sp, #0x004]
	movs r1, #0xE0
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	movs r1, #0x0F
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x0F
	bl sub_80F8CC0
	ldr r1, [r6, #0x00]
	ldr r3, _0808127C @ =0x000002BF
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r5, r1, r5
	ldr r0, [r5, #0x00]
	ldr r2, _08081280 @ =0x0850300C
	subs r3, #0x09
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x05
	adds r2, #0x04
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	bl sub_80F8EB0
	ldr r0, _08081284 @ =0x08081FD5
	mov r1, r9
	str r0, [r1, #0x04]
_0808125C:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808126C: .4byte 0x03000FD8
_08081270: .4byte 0x06004020
_08081274: .4byte 0x00003FE0
_08081278: .4byte 0x060082C0
_0808127C: .4byte 0x000002BF
_08081280: .4byte 0x0850300C
_08081284: .4byte sub_8081FD4
	thumb_func_start sub_8081288
sub_8081288:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _0808129A
	b _08081390
_0808129A:
	ldr r2, _080812C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x0A]
	str r5, [r4, #0x08]
	ldr r3, [r2, #0x00]
	ldr r1, _080812C8 @ =0x000002BE
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080812CC
	ldr r0, [r3, #0x70]
	b _080812CE
	.byte 0x00, 0x00
_080812C4: .4byte 0x03000FD8
_080812C8: .4byte 0x000002BE
_080812CC:
	ldr r0, [r3, #0x74]
_080812CE:
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080812E0
	str r3, [r4, #0x08]
_080812E0:
	ldr r3, [r4, #0x08]
	cmp r3, #0x00
	beq _0808131C
	ldr r0, [r2, #0x00]
	ldr r1, _080812FC @ =0x000002BA
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	bhi _08081380
	lsls r0, r0, #0x02
	ldr r1, _08081300 @ =0x08081304
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080812FC: .4byte 0x000002BA
_08081300: .4byte 0x08081304
	.byte 0x1C, 0x13, 0x08, 0x08, 0x38, 0x13, 0x08, 0x08, 0x40, 0x13, 0x08, 0x08, 0x4C, 0x13, 0x08, 0x08
	.byte 0x74, 0x13, 0x08, 0x08, 0x60, 0x13, 0x08, 0x08
_0808131C:
	ldr r0, _08081330 @ =0x08081F85
	str r0, [r4, #0x04]
	bl sub_80E3D1C
	ldr r0, _08081334 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	b _08081390
	.byte 0x00, 0x00
_08081330: .4byte sub_8081F84
_08081334: .4byte sub_80FC91C
	.byte 0x18, 0x1C, 0x9C, 0x30, 0x00, 0x21, 0x12, 0xE0, 0x01, 0x48, 0x60, 0x60, 0x24, 0xE0, 0x00, 0x00
	.byte 0xA1, 0x17, 0x08, 0x08, 0x18, 0x1C, 0x9C, 0x30, 0x00, 0x21, 0x01, 0x60, 0x01, 0x48, 0x60, 0x60
	.byte 0x1A, 0xE0, 0x00, 0x00, 0xFD, 0x18, 0x08, 0x08, 0x18, 0x1C, 0x9C, 0x30, 0x01, 0x21, 0x01, 0x60
	.byte 0x01, 0x48, 0x60, 0x60, 0x10, 0xE0, 0x00, 0x00, 0x05, 0x1D, 0x08, 0x08, 0x01, 0x48, 0x60, 0x60
	.byte 0x0A, 0xE0, 0x00, 0x00, 0xE9, 0x1B, 0x08, 0x08
_08081380:
	ldr r0, _08081398 @ =0x08081F85
	str r0, [r4, #0x04]
	bl sub_80E3D1C
	ldr r0, _0808139C @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
_08081390:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081398: .4byte sub_8081F84
_0808139C: .4byte sub_80FC91C
	thumb_func_start sub_80813A0
sub_80813A0:
	push {r4, lr}
	ldr r0, _0808143C @ =0x0000017B
	bl sub_8082898
	movs r4, #0x00
_080813AA:
	ldr r0, _08081440 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080813EC
	cmp r4, #0x00
	blt _080813EC
	cmp r4, #0x05
	bgt _080813EC
	lsls r0, r4, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _080813DC
	cmp r2, #0x02
	bne _080813EC
_080813DC:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080813EC
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_080813EC:
	adds r2, r4, #0x1
	ldr r0, _08081440 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xFA
	lsls r3, r3, #0x01
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081430
	cmp r2, #0x00
	blt _08081430
	cmp r2, #0x05
	bgt _08081430
	lsls r0, r2, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _08081420
	cmp r2, #0x02
	bne _08081430
_08081420:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081430
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_08081430:
	adds r4, #0x02
	cmp r4, #0x07
	ble _080813AA
	pop {r4}
	pop {r0}
	bx r0
_0808143C: .4byte 0x0000017B
_08081440: .4byte 0x03000FD8
	thumb_func_start sub_8081444
sub_8081444:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	movs r5, #0x00
	movs r6, #0x00
	mov r8, r6
	movs r7, #0x00
	ldr r0, _08081558 @ =0x03001038
	mov r10, r0
	ldr r0, _0808155C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x58
	movs r1, #0x05
	mov r12, r1
_08081468:
	ldr r2, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0808149C
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _0808149A
	mov r8, r0
_0808149A:
	adds r7, #0x01
_0808149C:
	ldr r2, [r4, #0x04]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080814D0
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _080814CE
	mov r8, r0
_080814CE:
	adds r7, #0x01
_080814D0:
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08081504
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _08081502
	mov r8, r0
_08081502:
	adds r7, #0x01
_08081504:
	adds r4, #0x0C
	movs r0, #0x03
	negs r0, r0
	add r12, r0
	mov r1, r12
	cmp r1, #0x00
	bge _08081468
	ldr r0, _08081560 @ =0x0819832C
	ldr r1, _08081564 @ =0x08198220
	subs r4, r0, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r0, r9
	str r5, [r0, #0x10]
	str r5, [r0, #0x38]
	str r6, [r0, #0x14]
	str r6, [r0, #0x3C]
	mov r1, r8
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081558: .4byte 0x03001038
_0808155C: .4byte 0x03000FD8
_08081560: .4byte 0x0819832C
_08081564: .4byte 0x08198220
	thumb_func_start sub_8081568
sub_8081568:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r8, r0
	movs r7, #0x00
	ldr r0, _0808160C @ =0x03000FD8
	mov r9, r0
_0808157A:
	ldr r0, _0808160C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _08081598
	b _08081784
_08081598:
	mov r1, r8
	ldr r1, [r1, #0x28]
	mov r12, r1
	movs r0, #0x81
	lsls r0, r0, #0x01
	add r0, r12
	movs r4, #0x00
	ldsh r2, [r0, r4]
	ldr r3, [r5, #0x28]
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r0, r3, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x66
	muls r2, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080815CC
	ldr r1, _08081610 @ =0x000001FF
	adds r0, r2, r1
_080815CC:
	asrs r2, r0, #0x09
	cmp r2, #0x01
	bgt _080815D4
	movs r2, #0x02
_080815D4:
	adds r4, r2, #0x0
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080815E2
	lsls r4, r4, #0x01
_080815E2:
	ldr r0, _08081614 @ =0x0000012B
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _080816D2
	cmp r4, #0x00
	ble _08081666
	ldr r0, _08081618 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0xFF
	beq _0808161C
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0808161E
_0808160C: .4byte 0x03000FD8
_08081610: .4byte 0x000001FF
_08081614: .4byte 0x0000012B
_08081618: .4byte 0x03000FF4
_0808161C:
	movs r1, #0x00
_0808161E:
	adds r2, r1, #0x0
	ldr r6, [r6, #0x00]
	mov r12, r6
	mov r1, r12
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081638
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_08081638:
	mov r1, r12
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081646
	lsls r0, r0, #0x06
	adds r2, r2, r0
_08081646:
	mov r1, r12
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08081658
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	b _0808165A
_08081658:
	adds r0, r2, #0x0
_0808165A:
	cmp r0, #0x00
	bge _08081660
	adds r0, #0xFF
_08081660:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	b _080816D0
_08081666:
	ldr r0, _08081684 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0xFF
	beq _08081688
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0808168A
	.byte 0x00, 0x00
_08081684: .4byte 0x03000FF4
_08081688:
	movs r1, #0x00
_0808168A:
	adds r2, r1, #0x0
	ldr r6, [r6, #0x00]
	mov r12, r6
	mov r1, r12
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816A4
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_080816A4:
	mov r1, r12
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816B2
	lsls r0, r0, #0x06
	adds r2, r2, r0
_080816B2:
	mov r1, r12
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080816C4
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	b _080816C6
_080816C4:
	adds r0, r2, #0x0
_080816C6:
	cmp r0, #0x00
	bge _080816CC
	adds r0, #0xFF
_080816CC:
	asrs r0, r0, #0x08
	subs r0, r4, r0
_080816D0:
	adds r4, r0, #0x0
_080816D2:
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080816E2
	lsls r4, r4, #0x01
_080816E2:
	adds r3, #0xF6
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r4
	bgt _080816F8
	movs r0, #0x00
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8086700
	b _080816FE
_080816F8:
	ldrh r0, [r3, #0x00]
	subs r0, r0, r4
	strh r0, [r3, #0x00]
_080816FE:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081706
	adds r1, #0xFF
_08081706:
	asrs r6, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08081710
	adds r2, #0xFF
_08081710:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0808171A
	adds r3, #0xFF
_0808171A:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_807CC3C
	ldr r0, _0808179C @ =0x0000017B
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081744
	adds r1, #0xFF
_08081744:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0808174E
	adds r2, #0xFF
_0808174E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08081758
	adds r3, #0xFF
_08081758:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	bl sub_80DF024
	ldr r0, [r5, #0x28]
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x08]
	movs r1, #0x08
	ldsb r1, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08081776
	movs r2, #0x01
_08081776:
	lsls r1, r2, #0x18
	asrs r1, r1, #0x18
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08081784:
	adds r7, #0x01
	cmp r7, #0x05
	bgt _0808178C
	b _0808157A
_0808178C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808179C: .4byte 0x0000017B
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
	thumb_func_start sub_8081C54
sub_8081C54:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldr r0, [r0, #0x28]
	ldr r1, _08081C74 @ =0x00000111
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08081C6E
	ldr r0, _08081C78 @ =0x08081F85
	str r0, [r2, #0x04]
_08081C6E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081C74: .4byte 0x00000111
_08081C78: .4byte sub_8081F84
	thumb_func_start sub_8081C7C
sub_8081C7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _08081CAC @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _08081CB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08081CB4 @ =0x0300034C
	ldr r0, _08081CB8 @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08081CBC @ =0x08081A69
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_08081CAC: .4byte sub_80FC91C
_08081CB0: .4byte 0x03000FD8
_08081CB4: .4byte 0x0300034C
_08081CB8: .4byte 0x00000888
_08081CBC: .4byte sub_8081A68
	thumb_func_start sub_8081CC0
sub_8081CC0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _08081CF0 @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _08081CF4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08081CF8 @ =0x0300034C
	ldr r0, _08081CFC @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08081D00 @ =0x080821C5
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_08081CF0: .4byte sub_80FC91C
_08081CF4: .4byte 0x03000FD8
_08081CF8: .4byte 0x0300034C
_08081CFC: .4byte 0x00000888
_08081D00: .4byte sub_80821C4
	thumb_func_start sub_8081D04
sub_8081D04:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8081444
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08081D20
	adds r0, #0xFF
_08081D20:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08081D2E
	adds r0, #0xFF
_08081D2E:
	asrs r2, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08081D46
	adds r2, #0xFF
_08081D46:
	asrs r2, r2, #0x08
	adds r2, #0x20
	adds r0, r4, #0x0
	movs r1, #0xC0
	lsls r1, r1, #0x03
	bl sub_808842C
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
	movs r0, #0x14
	strh r0, [r5, #0x10]
	ldr r0, _08081D80 @ =0x08082205
	str r0, [r5, #0x04]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08081D80: .4byte sub_8082204
	thumb_func_start sub_8081D84
sub_8081D84:
	push {r4, r5, lr}
	movs r1, #0x2C
	muls r0, r1
	ldr r1, _08081DD0 @ =0x08500A98
	adds r0, r0, r1
	ldr r4, [r0, #0x14]
	cmp r4, #0x00
	beq _08081DD8
	ldr r1, _08081DD4 @ =0x0000FFFF
_08081D96:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	cmp r0, r1
	bne _08081D96
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	ldr r1, _08081DD4 @ =0x0000FFFF
	cmp r0, r1
	beq _08081DC2
	adds r5, r1, #0x0
_08081DB2:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	cmp r0, r5
	bne _08081DB2
_08081DC2:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	bl sub_8082AAC
	b _08081DC2
_08081DD0: .4byte 0x08500A98
_08081DD4: .4byte 0x0000FFFF
_08081DD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
