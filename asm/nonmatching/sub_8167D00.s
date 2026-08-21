	.syntax unified
	.text

	thumb_func_start sub_8167D00
sub_8167D00:
	push {r4, r5, lr}
	ldr r5, [r0, #0x14]
	bl sub_8020A78
	ldr r2, _08167D3C @ =0x03000D48
	ldr r4, _08167D40 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _08167D44 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r2, _08167D48 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r4, _08167D4C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_8167B44
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08167D3C: .4byte 0x03000D48
_08167D40: .4byte 0x0203FFB8
_08167D44: .4byte 0x00000A14
_08167D48: .4byte 0x03000D4C
_08167D4C: .4byte 0x0300034C
