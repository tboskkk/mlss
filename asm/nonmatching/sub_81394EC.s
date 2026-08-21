	.syntax unified
	.text

	thumb_func_start sub_81394EC
sub_81394EC:
	push {r4, lr}
	ldr r2, _08139504 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813946C
	pop {r4}
	pop {r0}
	bx r0
_08139504: .4byte 0x000002B6
