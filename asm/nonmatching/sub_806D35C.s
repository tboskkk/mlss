	.syntax unified
	.text

	thumb_func_start sub_806D35C
sub_806D35C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D386
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D38C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D386:
	pop {r4}
	pop {r0}
	bx r0
_0806D38C: .4byte sub_808750C
