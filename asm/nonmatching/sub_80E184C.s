	.syntax unified
	.text

	thumb_func_start sub_80E184C
sub_80E184C:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r1, #0x14
	ldsh r0, [r2, r1]
	ldr r1, [r2, #0x0C]
	adds r1, r1, r0
	str r1, [r2, #0x0C]
	cmp r0, #0x00
	bge _080E186C
	ldr r0, _080E1868 @ =0xFFFF8000
	cmp r1, r0
	bge _080E187A
	b _080E1876
_080E1868: .4byte 0xFFFF8000
_080E186C:
	movs r4, #0x06
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	cmp r0, r1
	bge _080E187A
_080E1876:
	movs r0, #0x00
	strh r0, [r2, #0x16]
_080E187A:
	pop {r4}
	pop {r0}
	bx r0
