	.syntax unified
	.text

	thumb_func_start sub_80DBC60
sub_80DBC60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBC7E
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x4C]
_080DBC7E:
	pop {r4}
	pop {r0}
	bx r0
