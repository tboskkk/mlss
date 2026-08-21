	.syntax unified
	.text

	thumb_func_start sub_81459FC
sub_81459FC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _08145A1E
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r3
_08145A1E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08145A4E
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08145A54 @ =0x08145AB1
	str r0, [r1, #0x00]
_08145A4E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08145A54: .4byte sub_8145AB0
