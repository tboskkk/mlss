	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806B528
sub_806B528:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B53A
	adds r0, r1, #0x0
	bl sub_807C298
_0806B53A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B540
sub_806B540:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0806B568 @ =0x0806B5A9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B568: .4byte sub_806B5A8
