	.syntax unified
	.text

	thumb_func_start sub_8083F20
sub_8083F20:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	movs r6, #0x00
	bl sub_81980C8
	ldr r3, [r0, #0x00]
	movs r0, #0x07
	mov r12, r0
	movs r7, #0x0F
	adds r4, #0x01
_08083F36:
	ldrb r1, [r5, #0x00]
	adds r5, #0x01
	cmp r1, #0xFF
	bne _08083F42
	adds r5, #0x01
	b _08083F36
_08083F42:
	cmp r1, #0xFB
	ble _08083F62
	movs r0, #0xFF
	subs r0, r0, r1
	ldrb r2, [r5, #0x00]
	lsrs r1, r2, #0x03
	lsls r1, r1, #0x02
	lsls r0, r0, #0x02
	adds r0, r0, r3
	adds r1, r1, r0
	mov r0, r12
	ands r2, r0
	lsls r2, r2, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	b _08083F78
_08083F62:
	cmp r1, #0x00
	beq _08083F80
	adds r0, r1, #0x0
	asrs r0, r0, #0x03
	lsls r0, r0, #0x02
	adds r0, r0, r3
	mov r2, r12
	ands r1, r2
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x04]
	lsrs r0, r1
_08083F78:
	ands r0, r7
	adds r0, r0, r4
	adds r6, r6, r0
	b _08083F36
_08083F80:
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
