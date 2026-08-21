	.syntax unified
	.text

	thumb_func_start sub_8065E68
sub_8065E68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065E96
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08065E96
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065E9C @ =0x08065D11
	str r0, [r4, #0x4C]
_08065E96:
	pop {r4}
	pop {r0}
	bx r0
_08065E9C: .4byte sub_8065D10
