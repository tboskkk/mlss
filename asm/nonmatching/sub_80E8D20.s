	.syntax unified
	.text

	thumb_func_start sub_80E8D20
sub_80E8D20:
	push {lr}
	adds r3, r0, #0x0
	lsls r1, r1, #0x10
	ldr r0, _080E8D4C @ =0x083BBDD0
	movs r2, #0xFF
	lsls r2, r2, #0x10
	ands r2, r1
	lsrs r2, r2, #0x0C
	adds r0, #0x0C
	adds r2, r2, r0
	ldr r0, _080E8D50 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	adds r2, r3, #0x0
	b _080E8D5A
_080E8D4C: .4byte byte_83BBDD0 @ =0x083BBDD0
_080E8D50: .4byte 0x0300034C
_080E8D54:
	strb r1, [r2, #0x00]
	adds r0, #0x01
	adds r2, #0x01
_080E8D5A:
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _080E8D54
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	movs r0, #0x0A
	strb r0, [r2, #0x01]
	movs r0, #0x00
	strb r0, [r2, #0x02]
	adds r0, r3, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
