	.syntax unified
	.text

	thumb_func_start sub_80196E0
sub_80196E0:
	push {r4, lr}
	ldr r2, _08019730 @ =0x04000102
	ldrh r1, [r2, #0x00]
	ldr r0, _08019734 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08019738 @ =0x04000082
	movs r0, #0x88
	strh r0, [r1, #0x00]
	adds r1, #0x42
	ldr r0, [r1, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x17
	ands r0, r4
	ldr r3, _0801973C @ =0x84400004
	orrs r0, r3
	str r0, [r1, #0x00]
	nop
	nop
	nop
	nop
	ldr r0, [r1, #0x00]
	ldr r2, _08019740 @ =0x7FFFFFFF
	ands r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x0C
	ldr r0, [r1, #0x00]
	ands r0, r4
	orrs r0, r3
	str r0, [r1, #0x00]
	nop
	nop
	nop
	nop
	ldr r0, [r1, #0x00]
	ands r0, r2
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08019730: .4byte 0x04000102
_08019734: .4byte 0x0000FF7F
_08019738: .4byte 0x04000082
_0801973C: .4byte 0x84400004
_08019740: .4byte 0x7FFFFFFF
