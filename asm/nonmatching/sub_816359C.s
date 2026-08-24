	push {r4, r5, lr}
	movs r5, #0x00
	adds r3, r0, #0x4
	movs r4, #0x00
_081635A4:
	adds r2, r4, #0x0
	adds r0, r3, r4
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _081635B8
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _081635BA
_081635B8:
	movs r1, #0x01
_081635BA:
	cmp r1, #0x00
	beq _081635F4
	adds r0, r2, #0x4
	adds r0, r3, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _081635D2
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _081635D4
_081635D2:
	movs r1, #0x01
_081635D4:
	cmp r1, #0x00
	beq _081635F4
	adds r0, r2, #0x0
	adds r0, #0x08
	adds r0, r3, r0
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _081635EE
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _081635F0
_081635EE:
	movs r1, #0x01
_081635F0:
	cmp r1, #0x00
	bne _081635F8
_081635F4:
	movs r0, #0x00
	b _08163602
_081635F8:
	adds r4, #0x0C
	adds r5, #0x01
	cmp r5, #0x01
	ble _081635A4
	movs r0, #0x01
_08163602:
	pop {r4, r5}
	pop {r1}
	bx r1
