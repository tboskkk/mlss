	.syntax unified
	.text

	thumb_func_start sub_81427AC
sub_81427AC:
	push {lr}
	adds r3, r1, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081427D8
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081427D8
	ldr r0, _081427DC @ =0x081417F9
	str r0, [r2, #0x00]
_081427D8:
	pop {r0}
	bx r0
_081427DC: .4byte sub_81417F8
