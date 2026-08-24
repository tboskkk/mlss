	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08110C7A
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	adds r6, r5, #0x0
	adds r6, #0xDC
	ldr r0, [r6, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	adds r7, r5, #0x0
	adds r7, #0xE0
	ldr r0, [r7, #0x00]
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08110C44
	adds r0, #0xFF
_08110C44:
	asrs r1, r0, #0x08
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bge _08110C4E
	adds r0, #0xFF
_08110C4E:
	asrs r2, r0, #0x08
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _08110C58
	adds r0, #0xFF
_08110C58:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	movs r0, #0x83
	bl stop_sfx_80195A8
	ldr r0, _08110C84 @ =0x08110C89
	str r0, [r4, #0x4C]
_08110C7A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110C84: .4byte sub_8110C88
