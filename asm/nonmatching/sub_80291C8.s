	.syntax unified
	.text

	thumb_func_start sub_80291C8
sub_80291C8:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xFC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1C
	cmp r0, #0x02
	bgt _080291E8
	cmp r0, #0x01
	blt _080291E8
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_8116610
_080291E8:
	pop {r0}
	bx r0
