	.syntax unified
	.text

	thumb_func_start sub_80E8F1C
sub_80E8F1C:
	ldr r0, [r0, #0x04]
	movs r2, #0xC4
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldrh r2, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r2
	lsls r0, r0, #0x0C
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x15
	adds r0, r1, #0x0
	bx lr
