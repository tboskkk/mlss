	.syntax unified
	.text

	thumb_func_start sub_806BAB8
sub_806BAB8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BAF8
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BADA
	adds r1, #0xFF
_0806BADA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BAE4
	adds r2, #0xFF
_0806BAE4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BAEE
	adds r3, #0xFF
_0806BAEE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BB20 @ =0x00001C52
	bl sub_80DF024
_0806BAF8:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB3C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB24
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB30
_0806BB20: .4byte 0x00001C52
_0806BB24:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB30:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _0806BB44 @ =0x0806BB49
	str r0, [r4, #0x4C]
_0806BB3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806BB44: .4byte sub_806BB48
