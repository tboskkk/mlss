	.syntax unified
	.text

	thumb_func_start sub_8099F7C
sub_8099F7C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x4C]
	str r0, [r4, #0x50]
	adds r0, r4, #0x0
	bl sub_8086C64
	adds r1, r0, #0x0
	cmp r1, #0x00
	bne _08099F94
	ldr r0, _08099F9C @ =0x0809A02D
	str r0, [r4, #0x4C]
_08099F94:
	adds r0, r1, #0x0
	pop {r4}
	pop {r1}
	bx r1
_08099F9C: .4byte sub_809A02C
