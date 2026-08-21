	.syntax unified
	.text

	thumb_func_start sub_819AC14
sub_819AC14:
	push {r4, lr}
	ldr r1, _0819AC38 @ =0x03007FF0
	ldr r2, [r1, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r1, _0819AC3C @ =0x000004D2
	adds r0, r2, r1
	ldrb r3, [r0, #0x00]
	lsrs r4, r3, #0x04
	movs r0, #0x0F
	ands r0, r3
	cmp r0, #0x00
	bne _0819AC40
	adds r0, r4, #0x0
	b _0819AC7A
	.byte 0x00, 0x00
_0819AC38: .4byte 0x03007FF0
_0819AC3C: .4byte 0x000004D2
_0819AC40:
	movs r1, #0x07
	ands r1, r3
	movs r0, #0x08
	ands r3, r0
	cmp r3, #0x00
	beq _0819AC64
	ldr r3, _0819AC60 @ =0x000004CD
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	bl __divsi3
	adds r4, r4, r0
	cmp r4, #0x0F
	ble _0819AC76
	movs r4, #0x0F
	b _0819AC76
_0819AC60: .4byte 0x000004CD
_0819AC64:
	ldr r3, _0819AC80 @ =0x000004CD
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	bl __divsi3
	subs r4, r4, r0
	cmp r4, #0x00
	bge _0819AC76
	movs r4, #0x00
_0819AC76:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
_0819AC7A:
	pop {r4}
	pop {r1}
	bx r1
_0819AC80: .4byte 0x000004CD
