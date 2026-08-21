	.syntax unified
	.text

	thumb_func_start sub_815F380
sub_815F380:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_815FAA4
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	beq _0815F3A8
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x3C]
	ldr r1, [r5, #0x04]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	adds r0, #0x08
	strh r0, [r2, #0x02]
_0815F3A8:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0815F3C6
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldr r1, [r4, #0x40]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldr r1, [r4, #0x40]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
_0815F3C6:
	pop {r4, r5}
	pop {r0}
	bx r0
