	.syntax unified
	.text

	thumb_func_start sub_8062150
sub_8062150:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062164
	ldr r0, _08062160 @ =0x0808750D
	b _0806217A
	.byte 0x00, 0x00
_08062160: .4byte sub_808750C
_08062164:
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806217C
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062184 @ =0x08061B8D
_0806217A:
	str r0, [r4, #0x4C]
_0806217C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062184: .4byte sub_8061B8C
