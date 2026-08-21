	.syntax unified
	.text

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
