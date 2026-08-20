	.syntax unified
	.text

	thumb_func_start sub_8047258
sub_8047258:
	push {r4, lr}
	adds r3, r0, #0x0
	cmp r1, #0x00
	bne _08047294
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	movs r4, #0x88
	lsls r4, r4, #0x02
	adds r0, r3, r4
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x11]
	lsls r1, r1, #0x19
	ldr r0, _08047290 @ =0x00000215
	adds r3, r3, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	ldrb r2, [r3, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x02
	b _080472C0
_08047290: .4byte 0x00000215
_08047294:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r2, r3, r4
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	subs r4, #0x73
	adds r0, r3, r4
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x11]
	lsls r1, r1, #0x19
	ldr r0, _080472CC @ =0x00000215
	adds r3, r3, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x04
_080472C0:
	orrs r0, r1
	strb r0, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080472CC: .4byte 0x00000215
