	.syntax unified
	.text

	thumb_func_start sub_806ACA4
sub_806ACA4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806ACB8
	b _0806AEE0
_0806ACB8:
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806ACCA
	b _0806AEE0
_0806ACCA:
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _0806AD14
	subs r0, #0x04
	ldr r1, [r0, #0x00]
	adds r1, #0x03
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806ACEE
	adds r1, #0xFF
_0806ACEE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806ACF8
	adds r2, #0xFF
_0806ACF8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806AD02
	adds r3, #0xFF
_0806AD02:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806AD10 @ =0x00000D92
	bl sub_80DF024
	b _0806AD4C
	.byte 0x00, 0x00
_0806AD10: .4byte 0x00000D92
_0806AD14:
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x06
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806AD2E
	adds r1, #0xFF
_0806AD2E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806AD38
	adds r2, #0xFF
_0806AD38:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806AD42
	adds r3, #0xFF
_0806AD42:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806AD94 @ =0x00000D9A
	bl sub_80DF024
_0806AD4C:
	ldr r0, _0806AD98 @ =0x0806B319
	str r0, [r6, #0x4C]
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0806ADA0
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806AD60
	adds r0, #0xFF
_0806AD60:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x40
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806AD6E
	adds r0, #0xFF
_0806AD6E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806AD7A
	adds r0, #0xFF
_0806AD7A:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806AD9C @ =0x0000408B
	b _0806ADDC
_0806AD94: .4byte 0x00000D9A
_0806AD98: .4byte sub_806B318
_0806AD9C: .4byte 0x0000408B
_0806ADA0:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806ADAA
	adds r0, #0xFF
_0806ADAA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x3C
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806ADB8
	adds r0, #0xFF
_0806ADB8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806ADC4
	adds r0, #0xFF
_0806ADC4:
	asrs r0, r0, #0x08
	adds r0, #0x1D
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806AEE8 @ =0x0000408C
_0806ADDC:
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806AEEC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806AEF0 @ =0x0806B289
	str r0, [r5, #0x58]
	ldr r0, _0806AEF4 @ =0x0806B26D
	str r0, [r5, #0x5C]
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
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806AEF8 @ =0x0806B299
	str r0, [r5, #0x4C]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x3C]
	subs r2, r2, r0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	ldr r0, [r5, #0x38]
	subs r3, r1, r0
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806AE9E
	adds r0, #0xFF
_0806AE9E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _0806AEB6
	adds r0, #0xFF
_0806AEB6:
	asrs r1, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r0, r0, r3
	cmp r0, #0x00
	bge _0806AECE
	adds r0, #0xFF
_0806AECE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_0806AEE0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806AEE8: .4byte 0x0000408C
_0806AEEC: .4byte sub_8087540
_0806AEF0: .4byte sub_806B288
_0806AEF4: .4byte sub_806B26C
_0806AEF8: .4byte sub_806B298
