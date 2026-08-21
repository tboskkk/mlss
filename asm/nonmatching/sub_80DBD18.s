	.syntax unified
	.text

	thumb_func_start sub_80DBD18
sub_80DBD18:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DBD48
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x06
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	adds r0, r4, #0x0
	bl sub_8087540
_080DBD48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
