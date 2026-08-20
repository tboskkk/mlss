	.syntax unified
	.text

	thumb_func_start sub_8087AE0
sub_8087AE0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08087B2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r3, [r0, #0x74]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087B08
	adds r0, r2, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08087B08:
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08087B22
	adds r0, r3, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x00]
_08087B22:
	ldr r0, _08087B30 @ =0x08086F0D
	str r0, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08087B2C: .4byte 0x03000FD8
_08087B30: .4byte sub_8086F0C
