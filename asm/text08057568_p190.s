	.include "asm/macros.inc"

	.syntax unified
	.text

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
