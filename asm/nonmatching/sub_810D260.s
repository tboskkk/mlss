	.syntax unified
	.text

	thumb_func_start sub_810D260
sub_810D260:
	push {lr}
	adds r2, r1, #0x0
	movs r1, #0x00
_0810D266:
	lsrs r0, r0, #0x04
	adds r1, #0x04
	cmp r0, #0x00
	bne _0810D266
	adds r0, r2, r1
	pop {r1}
	bx r1
