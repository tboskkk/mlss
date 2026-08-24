	push {lr}
	ldr r2, _0801B86C @ =0x08CDBD98
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B86C: .4byte 0x08CDBD98
