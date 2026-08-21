	.syntax unified
	.text

	thumb_func_start sub_819B2E0
sub_819B2E0:
	push {r4, r5, r6, lr}
	movs r5, #0x00
	ldr r0, _0819B314 @ =0x03007FF0
	ldr r4, [r0, #0x00]
	ldr r0, _0819B318 @ =0x0000FFFE
	adds r6, r0, #0x0
_0819B2EC:
	ldrh r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B304
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_819B070
	ldrh r0, [r4, #0x00]
	ands r0, r6
	strh r0, [r4, #0x00]
_0819B304:
	adds r5, #0x01
	adds r4, #0x20
	cmp r5, #0x0B
	ble _0819B2EC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0819B314: .4byte 0x03007FF0
_0819B318: .4byte 0x0000FFFE
