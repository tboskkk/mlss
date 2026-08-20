	.syntax unified
	.text

	thumb_func_start sub_8087038
sub_8087038:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080870B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r3, r2, #0x0
	adds r3, #0x08
	ldr r0, [r0, #0x74]
	mov r12, r0
	mov r5, r12
	adds r5, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087064
	ldr r0, [r3, #0x4C]
	cmp r0, #0x00
	bne _080870AA
_08087064:
	mov r0, r12
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087078
	ldr r0, [r5, #0x4C]
	cmp r0, #0x00
	bne _080870AA
_08087078:
	adds r0, r2, #0x0
	adds r0, #0x7C
	movs r3, #0x00
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	mov r0, r12
	adds r0, #0x7C
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r4, r2, #0x0
	adds r4, #0x81
	ldrb r2, [r4, #0x00]
	movs r1, #0x05
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r4, #0x00]
	mov r2, r12
	adds r2, #0x81
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	str r3, [r6, #0x04]
_080870AA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080870B0: .4byte 0x03000FD8
