	.syntax unified
	.text

	thumb_func_start sub_8145290
sub_8145290:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _081452D4 @ =0x03001038
	ldr r0, _081452D8 @ =0x0819832C
	ldr r1, _081452DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _08145308
	cmp r0, #0x01
	bgt _081452E0
	cmp r0, #0x00
	beq _081452EA
	b _08145324
_081452D4: .4byte 0x03001038
_081452D8: .4byte 0x0819832C
_081452DC: .4byte 0x08198220
_081452E0:
	cmp r0, #0x02
	beq _08145316
	cmp r0, #0x03
	beq _081452F8
	b _08145324
_081452EA:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	b _08145322
_081452F8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
_08145308:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x07
	b _08145322
_08145316:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x0A
_08145322:
	strb r1, [r0, #0x00]
_08145324:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	bl sub_8047928
	ldr r0, _0814534C @ =0x08145351
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814534C: .4byte sub_8145350
