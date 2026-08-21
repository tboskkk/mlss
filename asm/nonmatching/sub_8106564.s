	.syntax unified
	.text

	thumb_func_start sub_8106564
sub_8106564:
	push {r4, r5, lr}
	ldr r0, _081065B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x44
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r4, _081065B8 @ =0x03001034
	ldr r1, _081065BC @ =0x02000080
	movs r5, #0x80
	lsls r5, r5, #0x02
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _081065C0 @ =0x02000280
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r1, _081065C4 @ =0x0300034C
	ldr r0, _081065C8 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x02]
	ldr r0, _081065CC @ =0x081065D1
	movs r1, #0x00
	bl sub_807FF48
	movs r1, #0x20
	strh r1, [r0, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
_081065B4: .4byte 0x03000FD8
_081065B8: .4byte 0x03001034
_081065BC: .4byte 0x02000080
_081065C0: .4byte 0x02000280
_081065C4: .4byte 0x0300034C
_081065C8: .4byte 0x0000FFFF
_081065CC: .4byte sub_81065D0
