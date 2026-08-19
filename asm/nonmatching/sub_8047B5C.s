	.syntax unified
	.text

	thumb_func_start sub_8047B5C
sub_8047B5C:
	push {r4, lr}
	ldr r2, _08047B74 @ =0x00000266
	adds r3, r0, r2
	ldrh r2, [r3, #0x00]
	movs r4, #0x9A
	lsls r4, r4, #0x02
	adds r0, r0, r4
	strh r2, [r0, #0x00]
	strh r1, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08047B74: .4byte 0x00000266
