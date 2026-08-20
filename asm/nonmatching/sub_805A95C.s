	.syntax unified
	.text

	thumb_func_start sub_805A95C
sub_805A95C:
	push {r4, lr}
	ldr r4, _0805A98C @ =0x02000010
	ldrh r3, [r0, #0x30]
	ldr r2, _0805A990 @ =0x000001FF
	adds r1, r2, #0x0
	ands r1, r3
	strh r1, [r4, #0x00]
	ldr r3, _0805A994 @ =0x02000014
	ldrh r1, [r0, #0x32]
	ands r2, r1
	strh r2, [r3, #0x00]
	adds r4, #0x02
	ldrh r3, [r0, #0x34]
	movs r2, #0xFF
	adds r1, r2, #0x0
	ands r1, r3
	strh r1, [r4, #0x00]
	ldr r1, _0805A998 @ =0x02000016
	ldrh r0, [r0, #0x36]
	ands r2, r0
	strh r2, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0805A98C: .4byte 0x02000010
_0805A990: .4byte 0x000001FF
_0805A994: .4byte 0x02000014
_0805A998: .4byte 0x02000016
