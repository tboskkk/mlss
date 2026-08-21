	.syntax unified
	.text

	thumb_func_start sub_8068E7C
sub_8068E7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _08068E8E
	ldr r0, _08068E94 @ =0x08068EF5
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08068E8E:
	pop {r4}
	pop {r1}
	bx r1
_08068E94: .4byte sub_8068EF4
