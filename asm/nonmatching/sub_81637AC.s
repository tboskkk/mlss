	.syntax unified
	.text

	thumb_func_start sub_81637AC
sub_81637AC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _081637FC
	cmp r0, #0x01
	bne _081637FC
	movs r6, #0x00
	adds r4, r5, #0x4
	adds r7, r4, #0x0
_081637C0:
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _081637D0
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _081637D2
_081637D0:
	movs r1, #0x01
_081637D2:
	cmp r1, #0x00
	beq _081637DA
	adds r6, #0x01
	b _081637EA
_081637DA:
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
_081637EA:
	adds r4, #0x04
	adds r0, r7, #0x0
	adds r0, #0x08
	cmp r4, r0
	ble _081637C0
	cmp r6, #0x03
	bne _081637FC
	movs r0, #0x00
	str r0, [r5, #0x00]
_081637FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
