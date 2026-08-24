	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	mov r8, r0
	cmp r0, #0x00
	bne _08060800
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08060746
	adds r0, #0xFF
_08060746:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _08060756
	adds r1, #0xFF
_08060756:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08060766
	adds r0, #0xFF
_08060766:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r0, [r4, #0x38]
	subs r6, r1, r0
	ldr r1, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	subs r5, r1, r0
	ldr r2, _0806080C @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08060794
	ldr r1, _08060810 @ =0x000001FF
	adds r0, r0, r1
_08060794:
	asrs r7, r0, #0x09
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl __divsi3
	cmp r0, #0x01
	bne _080607AE
	movs r0, #0x02
_080607AE:
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
	mov r1, r8
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080607DE
	adds r1, #0xFF
_080607DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080607E8
	adds r2, #0xFF
_080607E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080607F2
	adds r3, #0xFF
_080607F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060814 @ =0x0000120A
	bl sub_80DF024
	ldr r0, _08060818 @ =0x0806081D
	str r0, [r4, #0x4C]
_08060800:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806080C: .4byte 0x03001038
_08060810: .4byte 0x000001FF
_08060814: .4byte 0x0000120A
_08060818: .4byte sub_806081C
