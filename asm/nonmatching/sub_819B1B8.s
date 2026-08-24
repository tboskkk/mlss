	.syntax unified
	.text

	thumb_func_start sub_819B1B8
sub_819B1B8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	ldr r5, _0819B220 @ =0x03007FF0
	ldr r2, [r5, #0x00]
	lsls r6, r3, #0x01
	movs r0, #0x93
	lsls r0, r0, #0x03
	adds r2, r2, r0
	adds r2, r2, r6
	lsls r0, r1, #0x08
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _0819B224 @ =0x00000494
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B21A
	movs r4, #0x00
	adds r7, r5, #0x0
	adds r0, r6, r3
	lsls r5, r0, #0x07
_0819B1EA:
	ldr r0, [r7, #0x00]
	adds r0, r0, r5
	lsls r1, r4, #0x05
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0819B214
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0819B214
	ldr r1, _0819B228 @ =0x08A80688
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	adds r0, r2, #0x0
	bl _call_via_r1
_0819B214:
	adds r4, #0x01
	cmp r4, #0x0B
	ble _0819B1EA
_0819B21A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B220: .4byte 0x03007FF0
_0819B224: .4byte 0x00000494
_0819B228: .4byte 0x08A80688
