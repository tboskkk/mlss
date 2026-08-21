	.syntax unified
	.text

	thumb_func_start sub_8096EBC
sub_8096EBC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096F00
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096EE0
	cmp r1, #0x04
	bne _08096EFA
_08096EE0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08096EFA:
	adds r0, r5, #0x0
	bl sub_807C298
_08096F00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
