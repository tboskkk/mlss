	.syntax unified
	.text

	thumb_func_start init_btl_process_80FC25C
init_btl_process_80FC25C: @ 080FC25C
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r5, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080FC2F0 @ =0x08CDC338
	str r0, [r6, #0x18]
	ldr r0, _080FC2F4 @ =0x03000FDC
	str r5, [r0, #0x00]
	ldr r4, _080FC2F8 @ =0x0300034C
	movs r1, #0x8D
	lsls r1, r1, #0x04
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x1C]
	bl sub_819A138
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrh r0, [r2, #0x00]
	ldr r3, _080FC2FC @ =0x000003FF
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x44
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	adds r1, #0x01
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _080FC300 @ =0x03000FE0
	ldr r0, _080FC304 @ =0x080FC439
	str r0, [r1, #0x00]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bgt _080FC2E6
	ldr r0, _080FC308 @ =0x0850300C
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x05
	adds r1, r1, r0
	ldrb r0, [r1, #0x03]
	strb r0, [r5, #0x02]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bgt _080FC2E6
	ldr r1, _080FC30C @ =0x08200205
	ldr r0, [r6, #0x14]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r5, #0x02]
_080FC2E6:
	adds r0, r6, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FC2F0: .4byte 0x08CDC338
_080FC2F4: .4byte 0x03000FDC
_080FC2F8: .4byte 0x0300034C
_080FC2FC: .4byte 0x000003FF
_080FC300: .4byte 0x03000FE0
_080FC304: .4byte btl_80FC438
_080FC308: .4byte 0x0850300C
_080FC30C: .4byte 0x08200205
