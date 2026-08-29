	.syntax unified
	.text

	thumb_func_start sub_80E3DD0
sub_80E3DD0:
	push {r4, r5, r6, lr}
	ldr r0, _080E3E28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r6, #0x00
	cmp r0, #0x00
	beq _080E3DE6
	ldrh r6, [r0, #0x0A]
_080E3DE6:
	ldr r4, _080E3E2C @ =0x03001034
	ldr r5, _080E3E30 @ =0x02000080
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r3, [r4, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	lsls r0, r6, #0x10
	orrs r6, r0
	movs r2, #0x80
	lsls r2, r2, #0x03
	ldr r3, [r4, #0x00]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	ldr r1, _080E3E34 @ =0x0300034C
	ldr r0, _080E3E38 @ =0x0000FFFF
	strh r0, [r1, #0x02]
	movs r0, #0x01
	negs r0, r0
	strh r0, [r1, #0x00]
	ldr r0, _080E3E3C @ =0x00000884
	adds r1, r1, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E3E28: .4byte 0x03000FD8
_080E3E2C: .4byte 0x03001034
_080E3E30: .4byte 0x02000080
_080E3E34: .4byte 0x0300034C
_080E3E38: .4byte 0x0000FFFF
_080E3E3C: .4byte 0x00000884
