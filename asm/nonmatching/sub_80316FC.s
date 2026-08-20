	.syntax unified
	.text

	thumb_func_start sub_80316FC
sub_80316FC:
	push {r4, lr}
	mov r12, r0
	movs r3, #0x00
_08031702:
	lsls r0, r3, #0x02
	mov r1, r12
	adds r1, #0xA8
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x00]
	movs r4, #0x40
	adds r0, r4, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0803172A
_08031718:
	movs r1, #0x38
	ands r1, r2
	cmp r1, #0x10
	beq _0803173E
	movs r0, #0x04
	cmp r1, #0x18
	bne _0803175C
	movs r0, #0x03
	b _0803175C
_0803172A:
	adds r0, r3, #0x1
	lsls r0, r0, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _08031742
	b _08031718
_0803173E:
	movs r0, #0x02
	b _0803175C
_08031742:
	adds r3, #0x02
	cmp r3, #0x07
	ble _08031702
	movs r2, #0x00
	ldr r0, _08031764 @ =0x00000246
	add r0, r12
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x04
	bne _0803175A
	movs r2, #0x01
_0803175A:
	adds r0, r2, #0x0
_0803175C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08031764: .4byte 0x00000246
