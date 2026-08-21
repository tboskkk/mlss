	.syntax unified
	.text

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
