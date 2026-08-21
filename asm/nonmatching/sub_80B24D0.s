	.syntax unified
	.text

	thumb_func_start sub_80B24D0
sub_80B24D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B2558 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r3, r4, #0x0
	adds r3, #0x08
	ldr r0, _080B255C @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _080B2500
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	eors r0, r1
	str r0, [r2, #0x00]
_080B2500:
	ldr r0, [r3, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B2552
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B251E
	cmp r1, #0x04
	bne _080B254E
_080B251E:
	ldr r2, _080B2560 @ =0x03001038
	ldr r0, _080B2564 @ =0x0819832C
	ldr r1, _080B2568 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x50
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B254E:
	ldr r0, _080B256C @ =0x080B2571
	str r0, [r5, #0x4C]
_080B2552:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B2558: .4byte 0x03000FD8
_080B255C: .4byte 0x0300034C
_080B2560: .4byte 0x03001038
_080B2564: .4byte 0x0819832C
_080B2568: .4byte 0x08198220
_080B256C: .4byte sub_80B2570
