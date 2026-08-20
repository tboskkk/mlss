	.syntax unified
	.text

	thumb_func_start sub_81632C8
sub_81632C8:
	push {lr}
	adds r1, r0, #0x0
	ldrh r0, [r1, #0x02]
	ldrh r2, [r1, #0x00]
	cmp r0, r2
	bcs _081632E4
	adds r0, #0x01
	strh r0, [r1, #0x02]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r2
	bcs _081632E4
	movs r0, #0x00
	b _081632E6
_081632E4:
	movs r0, #0x01
_081632E6:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
