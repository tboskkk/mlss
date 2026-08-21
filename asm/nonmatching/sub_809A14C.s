	.syntax unified
	.text

	thumb_func_start sub_809A14C
sub_809A14C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A16C
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809A174 @ =0x08099BE5
	str r0, [r4, #0x4C]
_0809A16C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A174: .4byte sub_8099BE4
