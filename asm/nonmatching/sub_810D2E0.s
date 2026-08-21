	.syntax unified
	.text

	thumb_func_start sub_810D2E0
sub_810D2E0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	cmp r3, #0x00
	beq _0810D2F2
	bl sub_810D260
	adds r4, r0, #0x0
_0810D2F2:
	movs r2, #0xFF
	ands r2, r6
	ldr r0, _0810D33C @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r12, r0
	movs r7, #0x0F
	ldr r6, _0810D340 @ =0x000001FF
	ldr r3, _0810D344 @ =0xFFFF8000
	adds r0, r3, #0x0
	orrs r2, r0
	ldr r0, _0810D348 @ =0xFFFFC000
	adds r3, r0, #0x0
_0810D310:
	adds r0, r5, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r4, #0x08
	ands r4, r6
	strh r2, [r1, #0x00]
	strh r4, [r1, #0x02]
	orrs r0, r3
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r5, r5, #0x04
	cmp r5, #0x00
	bne _0810D310
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r1, [r0, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D33C: .4byte 0x0300034C
_0810D340: .4byte 0x000001FF
_0810D344: .4byte 0xFFFF8000
_0810D348: .4byte 0xFFFFC000
