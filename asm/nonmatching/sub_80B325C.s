	.syntax unified
	.text

	thumb_func_start sub_80B325C
sub_80B325C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080B3288 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x54]
	cmp r0, #0x00
	bne _080B3282
	ldr r0, [r2, #0x4C]
	cmp r0, #0x00
	bne _080B3282
	bl sub_810D00C
	adds r0, r4, #0x0
	bl sub_807C298
_080B3282:
	pop {r4}
	pop {r0}
	bx r0
_080B3288: .4byte 0x03000FD8
