	.syntax unified
	.text

	thumb_func_start sub_81345E8
sub_81345E8:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [r3, #0x08]
	ldr r0, [r3, #0x28]
	cmp r0, #0x00
	bge _081345FA
	adds r0, #0xFF
_081345FA:
	asrs r0, r0, #0x08
	subs r0, r0, r4
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x2C]
	ldr r0, [r3, #0x30]
	ldr r2, [r3, #0x08]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0813460E
	adds r0, #0xFF
_0813460E:
	asrs r0, r0, #0x08
	subs r0, r0, r5
	strh r0, [r2, #0x02]
	ldr r1, [r3, #0x0C]
	cmp r1, #0x00
	beq _08134628
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x0C]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
_08134628:
	ldr r1, [r3, #0x08]
	ldr r0, [r3, #0x34]
	cmp r0, #0x00
	bge _08134632
	adds r0, #0xFF
_08134632:
	asrs r0, r0, #0x08
	ldrh r2, [r1, #0x02]
	adds r0, r0, r2
	strh r0, [r1, #0x02]
	ldr r2, [r3, #0x08]
	adds r0, r3, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	ldr r0, [r3, #0x30]
	cmp r0, #0x00
	bge _0813464A
	adds r0, #0xFF
_0813464A:
	asrs r0, r0, #0x08
	ldr r3, _0813465C @ =0xFFFFFC00
	adds r0, r0, r3
	subs r0, r1, r0
	strh r0, [r2, #0x0E]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813465C: .4byte 0xFFFFFC00
