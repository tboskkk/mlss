	.syntax unified
	.text

	thumb_func_start sub_805FF58
sub_805FF58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805FF74
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FF7C @ =0x0805F6BD
	str r0, [r4, #0x4C]
_0805FF74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FF7C: .4byte sub_805F6BC
