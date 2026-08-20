	.syntax unified
	.text

	thumb_func_start sub_81DA6E4
sub_81DA6E4:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x00
	cmp r0, #0x04
	bne _081DA700
	ldr r1, _081DA6F8 @ =0x03001BD0
	ldr r0, _081DA6FC @ =0x0821DBAC
	str r0, [r1, #0x00]
	b _081DA71C
_081DA6F8: .4byte 0x03001BD0
_081DA6FC: .4byte 0x0821DBAC
_081DA700:
	cmp r0, #0x40
	bne _081DA714
	ldr r1, _081DA70C @ =0x03001BD0
	ldr r0, _081DA710 @ =0x0821DBB8
	str r0, [r1, #0x00]
	b _081DA71C
_081DA70C: .4byte 0x03001BD0
_081DA710: .4byte 0x0821DBB8
_081DA714:
	ldr r1, _081DA724 @ =0x03001BD0
	ldr r0, _081DA728 @ =0x0821DBAC
	str r0, [r1, #0x00]
	movs r2, #0x01
_081DA71C:
	adds r0, r2, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081DA724: .4byte 0x03001BD0
_081DA728: .4byte 0x0821DBAC
