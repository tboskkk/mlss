	.syntax unified
	.text

	thumb_func_start sub_80794FC
sub_80794FC:
	push {lr}
	adds r3, r0, #0x0
	ldr r2, [r3, #0x10]
	ldr r1, _08079538 @ =0xFFFFFD80
	adds r0, r2, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x0C]
	cmp r1, #0x00
	beq _0807951A
_0807950E:
	ldr r0, [r1, #0x04]
	str r2, [r1, #0x04]
	adds r2, r0, #0x0
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _0807950E
_0807951A:
	ldr r1, [r3, #0x10]
	cmp r1, #0x00
	bge _08079522
	adds r1, #0xFF
_08079522:
	asrs r1, r1, #0x08
	movs r0, #0x28
	negs r0, r0
	cmp r1, r0
	bgt _08079532
	adds r0, r3, #0x0
	bl sub_807C298
_08079532:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079538: .4byte 0xFFFFFD80
