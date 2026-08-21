	.syntax unified
	.text

	thumb_func_start sub_80187A8
sub_80187A8:
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldm r0!, {r2}
	stm r1!, {r2}
	ldrh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x04
	adds r1, #0x04
	ldm r0!, {r2}
	stm r1!, {r2}
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
