	.syntax unified
	.text

	thumb_func_start sub_819B070
sub_819B070:
	push {r4, lr}
	adds r4, r1, #0x0
	ldrh r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0819B0A0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0819B098
	ldr r1, _0819B0A8 @ =0x08A80688
	ldrb r0, [r4, #0x12]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	adds r0, r4, #0x0
	bl _call_via_r1
_0819B098:
	ldrh r0, [r4, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r4, #0x00]
_0819B0A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819B0A8: .4byte dword_8A80688 @ =0x08A80688
