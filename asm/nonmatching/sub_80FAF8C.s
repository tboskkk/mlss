	.syntax unified
	.text

	thumb_func_start sub_80FAF8C
sub_80FAF8C:
	push {r4, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	adds r0, #0x1C
	ldr r1, [r4, #0x24]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0xFF
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80EA5C8
	ldr r0, [r4, #0x24]
	ldr r1, _080FAFB8 @ =0x000009A1
	adds r0, r0, r1
	movs r1, #0x02
	strb r1, [r0, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
_080FAFB8: .4byte 0x000009A1
