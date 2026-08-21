	.syntax unified
	.text

	thumb_func_start sub_801B820
sub_801B820:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x1E]
	adds r0, #0x01
	strh r0, [r4, #0x1E]
	adds r0, r4, #0x0
	adds r0, #0x20
	ldrb r1, [r0, #0x00]
	ldrh r2, [r4, #0x1E]
	ldrh r3, [r4, #0x1C]
	adds r0, r4, #0x0
	bl sub_801B7B0
	ldrh r0, [r4, #0x1E]
	ldrh r1, [r4, #0x1C]
	cmp r0, r1
	bcc _0801B852
	cmp r4, #0x00
	beq _0801B852
	ldr r0, _0801B858 @ =0x08CDBD98
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_0801B852:
	pop {r4}
	pop {r0}
	bx r0
_0801B858: .4byte 0x08CDBD98
