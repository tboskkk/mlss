	.syntax unified
	.text

	thumb_func_start sub_8062E70
sub_8062E70:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08062E8C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E94 @ =0x08062E99
	str r0, [r4, #0x4C]
_08062E8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E94: .4byte sub_8062E98
