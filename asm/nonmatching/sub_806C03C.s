	.syntax unified
	.text

	thumb_func_start sub_806C03C
sub_806C03C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C052
	adds r0, #0xFF
_0806C052:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C060
	adds r0, #0xFF
_0806C060:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C06E
	adds r0, #0xFF
_0806C06E:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C0D8 @ =0x00001C19
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, _0806C0DC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r7, r5, #0x0
	adds r7, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0AA
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0AA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0C2
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0C2:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806C0D8: .4byte 0x00001C19
_0806C0DC: .4byte 0x03000FD8
