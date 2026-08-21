	.syntax unified
	.text

	thumb_func_start sub_80D3FD4
sub_80D3FD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D404C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D4008
	cmp r1, #0x04
	bne _080D4024
_080D4008:
	ldr r2, _080D4050 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D4024:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D4042
	ldr r2, _080D4054 @ =0x00002095
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D4042:
	ldr r0, _080D4058 @ =0x080D405D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D404C: .4byte 0x03000FD8
_080D4050: .4byte 0x00002066
_080D4054: .4byte 0x00002095
_080D4058: .4byte sub_80D405C
