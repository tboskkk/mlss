	.syntax unified
	.text

	thumb_func_start sub_810FB20
sub_810FB20:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FBAE
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x86
	bl stop_sfx_80195A8
	ldr r1, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	str r0, [r4, #0x38]
	adds r2, r1, #0x0
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	adds r3, r1, #0x0
	adds r3, #0xE0
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x18]
	str r0, [r4, #0x40]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810FB66
	adds r0, #0xFF
_0810FB66:
	asrs r1, r0, #0x08
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0810FB70
	adds r0, #0xFF
_0810FB70:
	asrs r2, r0, #0x08
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0810FB7A
	adds r0, #0xFF
_0810FB7A:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _0810FBB8 @ =0x0810FBFD
	str r0, [r4, #0x4C]
_0810FBAE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810FBB8: .4byte sub_810FBFC
	.byte 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
