	.syntax unified
	.text

	thumb_func_start sub_8139970
sub_8139970:
	push {lr}
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r2, r1, r3
	ldr r3, _08139984 @ =0x081395AD
	str r3, [r2, #0x00]
	bl _call_via_r3
	pop {r0}
	bx r0
_08139984: .4byte sub_81395AC
