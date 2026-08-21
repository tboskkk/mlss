	.syntax unified
	.text

	thumb_func_start sub_80E12F8
sub_80E12F8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r7, _080E1338 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _080E1316
	ldr r0, _080E133C @ =0x080E19ED
	bl sub_807FFB8
	adds r1, r0, #0x0
_080E1316:
	strh r4, [r1, #0x12]
	strh r5, [r1, #0x14]
	ldr r0, _080E1340 @ =0x02000018
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	strh r0, [r1, #0x10]
	ldr r0, _080E1344 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	strh r0, [r1, #0x18]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	str r1, [r0, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E1338: .4byte 0x03000FD8
_080E133C: .4byte sub_80E19EC
_080E1340: .4byte 0x02000018
_080E1344: .4byte 0x0200001A
