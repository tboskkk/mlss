	.syntax unified
	.text

	thumb_func_start sub_8171B44
sub_8171B44:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08171B5C @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08171B58
	movs r0, #0x04
	str r0, [r2, #0x44]
_08171B58:
	pop {r0}
	bx r0
_08171B5C: .4byte 0x0300034C
