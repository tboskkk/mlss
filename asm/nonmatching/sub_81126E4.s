	.syntax unified
	.text

	thumb_func_start sub_81126E4
sub_81126E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112734
	adds r0, r4, #0x0
	movs r1, #0x06
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
	ldr r2, [r4, #0x2C]
	movs r3, #0x00
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _08112722
	movs r3, #0x01
_08112722:
	adds r2, #0x76
	lsls r3, r3, #0x07
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _0811273C @ =0x08112905
	str r0, [r4, #0x4C]
_08112734:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811273C: .4byte sub_8112904
