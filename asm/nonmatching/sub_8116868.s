	.syntax unified
	.text

	thumb_func_start sub_8116868
sub_8116868:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r1, _0811688C @ =0x0300034C
	ldrh r2, [r1, #0x2A]
	movs r0, #0x40
	ands r0, r2
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _08116890
	adds r1, r4, #0x0
	adds r1, #0x46
	ldrb r0, [r1, #0x00]
	cmp r0, #0x07
	beq _081168A6
	adds r0, #0x01
	b _081168A4
	.byte 0x00, 0x00
_0811688C: .4byte 0x0300034C
_08116890:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _081168A6
	adds r1, r4, #0x0
	adds r1, #0x46
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _081168A6
	subs r0, #0x01
_081168A4:
	strb r0, [r1, #0x00]
_081168A6:
	ldrh r1, [r6, #0x2A]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081168F0
	ldrh r0, [r4, #0x20]
	cmp r0, #0x00
	bne _081168DC
	ldr r0, [r4, #0x50]
	adds r5, r4, #0x0
	adds r5, #0x46
	ldrb r2, [r5, #0x00]
	ldr r1, _081168D8 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0xFF
	bl sub_8114C1C
	ldrb r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x47
	strb r0, [r1, #0x00]
	b _081168E6
	.byte 0x00, 0x00
_081168D8: .4byte 0x0000FFFF
_081168DC:
	ldr r0, [r4, #0x50]
	movs r1, #0x00
	movs r2, #0x01
	bl sub_8115048
_081168E6:
	ldrh r0, [r4, #0x20]
	movs r1, #0x01
	eors r0, r1
	strh r0, [r4, #0x20]
	ldr r6, _08116968 @ =0x0300034C
_081168F0:
	adds r5, r6, #0x0
	ldrh r1, [r5, #0x2A]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08116918
	ldr r0, [r4, #0x50]
	ldr r1, _0811696C @ =0x00007FFF
	str r1, [sp, #0x000]
	ldr r1, _08116970 @ =0x0000FFFF
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
_08116918:
	ldrh r1, [r5, #0x2A]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08116928
	ldr r0, [r4, #0x4C]
	bl sub_81169C8
_08116928:
	ldrh r1, [r6, #0x2A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0811695E
	cmp r4, #0x00
	beq _0811695E
	ldr r0, _08116974 @ =0x08CDC378
	str r0, [r4, #0x18]
	bl sub_8021FD4
	ldr r0, [r4, #0x50]
	cmp r0, #0x00
	beq _0811694A
	movs r1, #0x03
	bl sub_81166AC
_0811694A:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08116956
	movs r1, #0x03
	bl process_remove
_08116956:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_0811695E:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08116968: .4byte 0x0300034C
_0811696C: .4byte 0x00007FFF
_08116970: .4byte 0x0000FFFF
_08116974: .4byte dword_8CDC378 @ =0x08CDC378
