	.syntax unified
	.text

	thumb_func_start sub_801B7B0
sub_801B7B0:
	push {r4, lr}
	cmp r1, #0x01
	beq _0801B7D4
	cmp r1, #0x01
	bgt _0801B7C0
	cmp r1, #0x00
	beq _0801B7CA
	b _0801B812
_0801B7C0:
	cmp r1, #0x02
	beq _0801B7E0
	cmp r1, #0x03
	beq _0801B800
	b _0801B812
_0801B7CA:
	ldr r1, _0801B7D0 @ =0x02000050
	movs r0, #0xFF
	b _0801B7E4
_0801B7D0: .4byte 0x02000050
_0801B7D4:
	ldr r1, _0801B7DC @ =0x02000050
	movs r0, #0xFF
	b _0801B804
	.byte 0x00, 0x00
_0801B7DC: .4byte 0x02000050
_0801B7E0:
	ldr r1, _0801B7F8 @ =0x02000050
	movs r0, #0xBF
_0801B7E4:
	strh r0, [r1, #0x00]
	ldr r4, _0801B7FC @ =0x02000054
	lsls r0, r2, #0x04
	adds r1, r3, #0x0
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x00]
	b _0801B812
_0801B7F8: .4byte 0x02000050
_0801B7FC: .4byte 0x02000054
_0801B800:
	ldr r1, _0801B818 @ =0x02000050
	movs r0, #0xBF
_0801B804:
	strh r0, [r1, #0x00]
	ldr r4, _0801B81C @ =0x02000054
	lsls r0, r2, #0x04
	adds r1, r3, #0x0
	bl __divsi3
	strh r0, [r4, #0x00]
_0801B812:
	pop {r4}
	pop {r0}
	bx r0
_0801B818: .4byte 0x02000050
_0801B81C: .4byte 0x02000054
