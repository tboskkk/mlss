	.syntax unified
	.text

	thumb_func_start sub_806A83C
sub_806A83C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A878
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r4, [r1, #0x00]
	adds r1, #0x04
	ldr r1, [r1, #0x00]
	bl __umodsi3
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	ldr r0, _0806A880 @ =0x0806A47D
	str r0, [r5, #0x4C]
_0806A878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A880: .4byte sub_806A47C
