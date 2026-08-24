	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060086
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _0805FFCE
	cmp r1, #0x01
	bgt _0805FFA6
	cmp r1, #0x00
	beq _0805FFAC
	b _08060016
_0805FFA6:
	cmp r1, #0x02
	beq _0805FFF0
	b _08060016
_0805FFAC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	subs r0, #0x02
	b _0806000A
_0805FFCE:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	subs r0, #0x02
	b _0806000A
_0805FFF0:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
_0806000A:
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
_08060016:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08060060
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _0806005C @ =0x08060325
	b _08060084
	.byte 0x00, 0x00
_0806005C: .4byte sub_8060324
_08060060:
	cmp r0, #0x01
	bne _08060078
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _08060074 @ =0x08060289
	b _08060084
	.byte 0x00, 0x00
_08060074: .4byte sub_8060288
_08060078:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _0806008C @ =0x0806025D
_08060084:
	str r0, [r4, #0x4C]
_08060086:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806008C: .4byte sub_806025C
