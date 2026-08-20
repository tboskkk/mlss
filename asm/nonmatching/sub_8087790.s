	.syntax unified
	.text

	thumb_func_start sub_8087790
sub_8087790:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r3, _080877B4 @ =0x03001038
	ldr r0, _080877B8 @ =0x0819832C
	ldr r2, _080877BC @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl _call_via_r2
	adds r4, #0x7C
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080877B4: .4byte 0x03001038
_080877B8: .4byte 0x0819832C
_080877BC: .4byte 0x08198220
