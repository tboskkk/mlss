	.syntax unified
	.text

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
