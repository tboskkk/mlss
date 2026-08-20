	.syntax unified
	.text

	thumb_func_start sub_8087BA4
sub_8087BA4:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x01
	bgt _08087BCA
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x50]
	str r0, [r2, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x50]
_08087BCA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
