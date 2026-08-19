	.syntax unified
	.text

	thumb_func_start sub_81632EC
sub_81632EC:
	push {lr}
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r2, #0x00]
	cmp r1, #0x00
	bne _081632FE
	movs r0, #0x01
	strh r0, [r2, #0x00]
_081632FE:
	movs r0, #0x00
	strh r0, [r2, #0x02]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
