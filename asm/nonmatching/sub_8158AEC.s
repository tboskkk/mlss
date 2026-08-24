	push {lr}
	ldr r2, _08158AFC @ =0x08CDC870
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08158AFC: .4byte 0x08CDC870
