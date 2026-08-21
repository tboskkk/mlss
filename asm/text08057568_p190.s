	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806A058
sub_806A058:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	ble _0806A088
	ldr r0, [r4, #0x10]
	ldr r2, _0806A084 @ =0x00000133
	adds r0, r0, r2
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	b _0806A106
_0806A084: .4byte 0x00000133
_0806A088:
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0806A0D0
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0AA
	adds r1, #0xFF
_0806A0AA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0B4
	adds r2, #0xFF
_0806A0B4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0BE
	adds r3, #0xFF
_0806A0BE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A0CC @ =0x00001D82
	bl sub_80DF024
	b _0806A102
	.byte 0x00, 0x00
_0806A0CC: .4byte 0x00001D82
_0806A0D0:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0E4
	adds r1, #0xFF
_0806A0E4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0EE
	adds r2, #0xFF
_0806A0EE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0F8
	adds r3, #0xFF
_0806A0F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A110 @ =0x00001D90
	bl sub_80DF024
_0806A102:
	ldr r0, _0806A114 @ =0x0806A119
	str r0, [r4, #0x4C]
_0806A106:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A110: .4byte 0x00001D90
_0806A114: .4byte sub_806A118
	thumb_func_start sub_806A118
sub_806A118:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A170
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806A134
	adds r2, #0xFF
_0806A134:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806A13E
	adds r3, #0xFF
_0806A13E:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806A154
	movs r0, #0x13
	b _0806A156
_0806A154:
	movs r0, #0x12
_0806A156:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r2, _0806A178 @ =0x00004071
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A17C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A170:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806A178: .4byte 0x00004071
_0806A17C: .4byte sub_808750C
	thumb_func_start sub_806A180
sub_806A180:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806A196
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
_0806A196:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_806A19C
sub_806A19C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A1BC
	ldr r2, _0806A1C4 @ =0x00004071
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A1C8 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A1BC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A1C4: .4byte 0x00004071
_0806A1C8: .4byte sub_808750C
	thumb_func_start sub_806A1CC
sub_806A1CC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806A1DE
	ldr r0, _0806A1E4 @ =0x0808750D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806A1DE:
	pop {r4}
	pop {r1}
	bx r1
_0806A1E4: .4byte sub_808750C
	thumb_func_start sub_806A1E8
sub_806A1E8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A200 @ =0x0806A22D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806A200: .4byte sub_806A22C
	thumb_func_start sub_806A204
sub_806A204:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A220
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A228 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A220:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A228: .4byte sub_808750C
