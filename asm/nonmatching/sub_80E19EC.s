	.syntax unified
	.text

	thumb_func_start sub_80E19EC
sub_80E19EC:
	push {lr}
	adds r2, r0, #0x0
	ldrh r0, [r2, #0x12]
	ldrh r1, [r2, #0x10]
	adds r0, r0, r1
	strh r0, [r2, #0x10]
	ldrh r0, [r2, #0x14]
	ldrh r1, [r2, #0x18]
	adds r0, r0, r1
	strh r0, [r2, #0x18]
	movs r0, #0x10
	ldsh r1, [r2, r0]
	cmp r1, #0x00
	bge _080E1A0A
	adds r1, #0xFF
_080E1A0A:
	asrs r1, r1, #0x08
	ldr r0, _080E1A24 @ =0x02000018
	strh r1, [r0, #0x00]
	movs r1, #0x18
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080E1A1A
	adds r0, #0xFF
_080E1A1A:
	asrs r1, r0, #0x08
	ldr r0, _080E1A28 @ =0x0200001A
	strh r1, [r0, #0x00]
	pop {r0}
	bx r0
_080E1A24: .4byte 0x02000018
_080E1A28: .4byte 0x0200001A
