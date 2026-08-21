	.syntax unified
	.text

	thumb_func_start sub_806A2FC
sub_806A2FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A336
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806A33C @ =0x00001810
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806A340 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806A344 @ =0x08069559
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
_0806A336:
	pop {r4}
	pop {r0}
	bx r0
_0806A33C: .4byte 0x00001810
_0806A340: .4byte 0x03000E3C
_0806A344: .4byte sub_8069558
