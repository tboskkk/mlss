	.syntax unified
	.text

	thumb_func_start sub_81455DC
sub_81455DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, _08145624 @ =0x03001038
	ldr r0, _08145628 @ =0x0819832C
	ldr r1, _0814562C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _0814564C
	cmp r0, #0x01
	bgt _08145630
	cmp r0, #0x00
	beq _0814563A
	b _08145662
_08145624: .4byte 0x03001038
_08145628: .4byte 0x0819832C
_0814562C: .4byte 0x08198220
_08145630:
	cmp r0, #0x02
	beq _0814565A
	cmp r0, #0x03
	beq _08145642
	b _08145662
_0814563A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x03
	b _08145660
_08145642:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814564C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x06
	b _08145660
_0814565A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x09
_08145660:
	strb r1, [r0, #0x00]
_08145662:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r6, r0
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _08145698 @ =0x0814569D
	str r0, [r7, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08145698: .4byte sub_814569C
