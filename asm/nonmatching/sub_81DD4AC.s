	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	bl nullsub_5
	ldr r0, _081DD534 @ =0x08CDB634
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldr r6, [r0, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #0x05
	ldr r1, _081DD538 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl __udivsi3
	subs r0, #0x01
	lsls r4, r0, #0x0C
	cmp r4, r5
	blt _081DD52A
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_81DCDF4
	adds r2, r0, #0x0
	mov r1, r8
	ldr r0, [r1, #0x08]
	adds r0, r0, r6
	cmp r2, r0
	bne _081DD52A
	negs r1, r4
	adds r0, r7, #0x0
	bl sub_81DCDF4
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081DD544
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_81DCDF4
	adds r2, r0, #0x0
	mov r0, r8
	ldr r3, [r0, #0x08]
	subs r6, r2, r3
	cmp r6, #0x0F
	ble _081DD52A
	ldr r1, _081DD53C @ =0x08CDBA50
	ldr r0, _081DD540 @ =0x08CDBA44
	ldr r0, [r0, #0x00]
	subs r0, r2, r0
	str r0, [r1, #0x00]
	movs r0, #0x01
	orrs r6, r0
	str r6, [r3, #0x04]
_081DD52A:
	adds r0, r7, #0x0
	bl nullsub_6
	movs r0, #0x00
	b _081DD560
_081DD534: .4byte 0x08CDB634
_081DD538: .4byte 0x00000FEF
_081DD53C: .4byte 0x08CDBA50
_081DD540: .4byte 0x08CDBA44
_081DD544:
	mov r1, r8
	ldr r2, [r1, #0x08]
	subs r0, r6, r4
	movs r1, #0x01
	orrs r0, r1
	str r0, [r2, #0x04]
	ldr r1, _081DD568 @ =0x08CDBA50
	ldr r0, [r1, #0x00]
	subs r0, r0, r4
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl nullsub_6
	movs r0, #0x01
_081DD560:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00
_081DD568: .4byte 0x08CDBA50
