	.syntax unified
	.text

	thumb_func_start sub_813B6DC
sub_813B6DC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	cmp r3, #0x00
	beq _0813B6F4
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	adds r5, r5, r0
_0813B6F4:
	ldr r1, _0813B738 @ =0x000002DE
	adds r0, r4, r1
	strh r6, [r0, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r5, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r5, r5, r0
	ldr r2, _0813B73C @ =0x03001038
	ldr r0, _0813B740 @ =0x0819832C
	ldr r1, _0813B744 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B738: .4byte 0x000002DE
_0813B73C: .4byte 0x03001038
_0813B740: .4byte 0x0819832C
_0813B744: .4byte 0x08198220
