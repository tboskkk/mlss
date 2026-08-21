	.syntax unified
	.text

	thumb_func_start sub_8145B64
sub_8145B64:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145B80
	movs r1, #0xD2
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
_08145B80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
