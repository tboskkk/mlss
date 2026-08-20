	.syntax unified
	.text

	thumb_func_start sub_8114790
sub_8114790:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r2, #0x38
	ands r2, r0
	cmp r2, #0x00
	bne _081147AC
	str r2, [r1, #0x4C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	ldr r1, _081147B0 @ =0x00000113
	adds r0, r0, r1
	strb r2, [r0, #0x00]
_081147AC:
	pop {r0}
	bx r0
_081147B0: .4byte 0x00000113
