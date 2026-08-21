	.syntax unified
	.text

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
