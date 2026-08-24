	push {r4, lr}
	adds r3, r0, #0x0
	movs r1, #0x00
	str r1, [r3, #0x00]
	ldr r0, _0815815C @ =0x08CDC530
	str r0, [r3, #0x04]
	str r1, [r3, #0x08]
	str r1, [r3, #0x1C]
	str r1, [r3, #0x30]
	str r1, [r3, #0x38]
	ldr r0, _08158160 @ =0x03001018
	ldr r0, [r0, #0x00]
	movs r4, #0x00
	ldr r1, _08158164 @ =0x00001898
	adds r2, r0, r1
_08158116:
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _08158126
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x13
	beq _08158156
_08158126:
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08158136
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x13
	beq _08158156
_08158136:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _08158146
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x13
	beq _08158156
_08158146:
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	beq _08158168
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x13
	bne _08158168
_08158156:
	adds r0, r1, #0x0
	b _08158172
	.byte 0x00, 0x00
_0815815C: .4byte 0x08CDC530
_08158160: .4byte 0x03001018
_08158164: .4byte 0x00001898
_08158168:
	adds r2, #0x10
	adds r4, #0x04
	cmp r4, #0xFF
	ble _08158116
	movs r0, #0x00
_08158172:
	str r0, [r3, #0x4C]
	adds r0, r3, #0x0
	pop {r4}
	pop {r1}
	bx r1
