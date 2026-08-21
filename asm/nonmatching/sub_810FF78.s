	.syntax unified
	.text

	thumb_func_start sub_810FF78
sub_810FF78:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FFA6
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0810FFAC @ =0x0810F9FD
	str r0, [r4, #0x4C]
_0810FFA6:
	pop {r4}
	pop {r0}
	bx r0
_0810FFAC: .4byte sub_810F9FC
