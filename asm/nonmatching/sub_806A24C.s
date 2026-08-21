	.syntax unified
	.text

	thumb_func_start sub_806A24C
sub_806A24C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A284
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	subs r4, r4, r0
	bl sub_8199F30
	adds r5, r7, #0x0
	adds r5, #0xA8
	adds r1, r4, #0x0
	bl __umodsi3
	ldr r1, [r6, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x00]
	ldr r0, _0806A28C @ =0x0806A349
	str r0, [r7, #0x4C]
_0806A284:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A28C: .4byte sub_806A348
