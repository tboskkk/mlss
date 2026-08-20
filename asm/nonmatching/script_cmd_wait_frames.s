	.syntax unified
	.text

	thumb_func_start script_cmd_wait_frames
script_cmd_wait_frames: @ 080EB1E4
	push {lr}
	adds r3, r1, #0x0
	adds r1, #0x9C
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080EB202
	adds r2, r3, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	b _080EB204
_080EB202:
	movs r0, #0x01
_080EB204:
	pop {r1}
	bx r1
