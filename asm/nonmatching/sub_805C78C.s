	.syntax unified
	.text

	thumb_func_start sub_805C78C
sub_805C78C:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0805C7B0 @ =0x0000057C
	adds r3, r0, r4
	ldr r3, [r3, #0x00]
	adds r4, #0x04
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_8115048
	pop {r4}
	pop {r0}
	bx r0
_0805C7B0: .4byte 0x0000057C
