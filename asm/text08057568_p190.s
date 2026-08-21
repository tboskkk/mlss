	.include "asm/macros.inc"

	.syntax unified
	.text

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
