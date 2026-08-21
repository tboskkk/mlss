	.syntax unified
	.text

	thumb_func_start sub_819B290
sub_819B290:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, _0819B2D8 @ =0x03007FF0
	ldr r4, [r0, #0x00]
	ldr r0, _0819B2DC @ =0x0000FFFE
	adds r7, r0, #0x0
_0819B29E:
	ldrh r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B2CA
	ldr r0, _0819B2D8 @ =0x03007FF0
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x01
	movs r2, #0x96
	lsls r2, r2, #0x03
	adds r0, r0, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	bne _0819B2CA
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_819B070
	ldrh r0, [r4, #0x00]
	ands r0, r7
	strh r0, [r4, #0x00]
_0819B2CA:
	adds r5, #0x01
	adds r4, #0x20
	cmp r5, #0x0B
	ble _0819B29E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B2D8: .4byte 0x03007FF0
_0819B2DC: .4byte 0x0000FFFE
