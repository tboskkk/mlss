	.syntax unified
	.text

	thumb_func_start script_cmd_btl_return
script_cmd_btl_return: @ 080F8864
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080F8880
	ldr r0, _080F8894 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _080F8898 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F8880:
	adds r0, r3, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl script_cmd_return
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
_080F8894: .4byte 0x03000FD8
_080F8898: .4byte 0x000002BF
