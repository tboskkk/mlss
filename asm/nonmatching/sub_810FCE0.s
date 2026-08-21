	.syntax unified
	.text

	thumb_func_start sub_810FCE0
sub_810FCE0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _0810FD06
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0810FD0C @ =0x0000011B
	bl stop_sfx_80195A8
	str r5, [r4, #0x4C]
_0810FD06:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810FD0C: .4byte 0x0000011B
