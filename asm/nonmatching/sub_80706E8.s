	.syntax unified
	.text

	thumb_func_start sub_80706E8
sub_80706E8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070704
	adds r0, r4, #0x0
	movs r1, #0x18
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807070C @ =0x08070C5D
	str r0, [r4, #0x4C]
_08070704:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807070C: .4byte sub_8070C5C
