	.syntax unified
	.text

	thumb_func_start sub_8019628
sub_8019628:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, r4, #0x1
	bl sub_819B984
	ldr r0, _08019648 @ =0x0300034C
	lsls r4, r4, #0x01
	ldr r1, _0801964C @ =0x0000089C
	adds r0, r0, r1
	adds r4, r4, r0
	movs r0, #0x00
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08019648: .4byte 0x0300034C
_0801964C: .4byte 0x0000089C
