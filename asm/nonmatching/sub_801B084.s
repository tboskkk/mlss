	.syntax unified
	.text

	thumb_func_start sub_801B084
sub_801B084:
	push {lr}
	ldr r0, _0801B0A4 @ =0x0300034C
	ldr r1, _0801B0A8 @ =0x03000D3C
	ldrh r2, [r0, #0x2A]
	ldrh r0, [r1, #0x00]
	ands r0, r2
	cmp r0, #0x00
	beq _0801B09E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
_0801B09E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B0A4: .4byte 0x0300034C
_0801B0A8: .4byte 0x03000D3C
