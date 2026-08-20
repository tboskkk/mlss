	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81DA7AC
sub_81DA7AC:
	push {r4, r5, r6, lr}
	add sp, #-0x088
	adds r5, r1, #0x0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _081DA7C4 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	cmp r3, r0
	bcc _081DA7CC
	ldr r0, _081DA7C8 @ =0x000080FF
	b _081DA84E
_081DA7C4: .4byte 0x03001BD0
_081DA7C8: .4byte 0x000080FF
_081DA7CC:
	ldr r0, _081DA858 @ =0x03001BD0
	adds r6, r0, #0x0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x08]
	lsls r0, r1, #0x01
	mov r4, sp
	adds r2, r0, r4
	adds r2, #0x02
	movs r4, #0x00
	cmp r4, r1
	bcs _081DA7F6
_081DA7E2:
	strh r3, [r2, #0x00]
	subs r2, #0x02
	lsrs r3, r3, #0x01
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x08]
	cmp r4, r0
	bcc _081DA7E2
_081DA7F6:
	movs r0, #0x01
	strh r0, [r2, #0x00]
	subs r2, #0x02
	strh r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x14
	ldr r0, _081DA858 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x08]
	adds r2, #0x03
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_81DA72C
	adds r0, r4, #0x0
	mov r1, sp
	movs r2, #0x44
	bl sub_81DA72C
	add r2, sp, #0x008
	adds r5, #0x06
	movs r4, #0x00
	movs r6, #0x01
_081DA824:
	movs r1, #0x00
	movs r3, #0x00
_081DA828:
	lsls r1, r1, #0x11
	ldrh r0, [r2, #0x00]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #0x02
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x0F
	bls _081DA828
	strh r1, [r5, #0x00]
	subs r5, #0x02
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x03
	bls _081DA824
	movs r0, #0x00
_081DA84E:
	add sp, #0x088
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081DA858: .4byte 0x03001BD0
	thumb_func_start sub_81DA85C
sub_81DA85C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x01
	bl sub_81DA870
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	thumb_func_start sub_81DA870
sub_81DA870:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x0B0
	adds r5, r1, #0x0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _081DA88C @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	cmp r1, r0
	bcc _081DA894
	ldr r0, _081DA890 @ =0x000080FF
	b _081DA9C8
_081DA88C: .4byte 0x03001BD0
_081DA890: .4byte 0x000080FF
_081DA894:
	ldr r0, _081DA8D4 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x08]
	lsls r0, r0, #0x01
	mov r2, sp
	adds r3, r0, r2
	adds r3, #0x84
	movs r0, #0x00
	strh r0, [r3, #0x00]
	subs r3, #0x02
	movs r4, #0x00
_081DA8AA:
	ldrh r2, [r5, #0x00]
	adds r5, #0x02
	movs r0, #0x00
_081DA8B0:
	strh r2, [r3, #0x00]
	subs r3, #0x02
	lsrs r2, r2, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x0F
	bls _081DA8B0
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x03
	bls _081DA8AA
	movs r4, #0x00
	ldr r0, _081DA8D4 @ =0x03001BD0
	adds r2, r0, #0x0
	ldr r0, [r0, #0x00]
	b _081DA8E6
_081DA8D4: .4byte 0x03001BD0
_081DA8D8:
	strh r1, [r3, #0x00]
	subs r3, #0x02
	lsrs r1, r1, #0x01
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r2, #0x00]
_081DA8E6:
	ldrb r0, [r0, #0x08]
	cmp r4, r0
	bcc _081DA8D8
	movs r0, #0x00
	strh r0, [r3, #0x00]
	subs r3, #0x02
	movs r6, #0x01
	strh r6, [r3, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x14
	ldr r0, _081DA958 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x08]
	adds r2, #0x43
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_81DA72C
	movs r5, #0x00
	add r2, sp, #0x0A4
	strh r5, [r2, #0x00]
	mov r1, sp
	adds r1, #0xA6
	ldr r0, _081DA95C @ =0x04000006
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	add r0, sp, #0x0AC
	str r5, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _081DA92C
	ldrh r0, [r4, #0x00]
	ands r0, r6
	cmp r0, #0x00
	bne _081DA9BC
_081DA92C:
	add r3, sp, #0x0A8
	ldr r0, _081DA95C @ =0x04000006
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	mov r4, sp
	adds r4, #0xA6
	ldrh r1, [r3, #0x00]
	ldrh r0, [r4, #0x00]
	cmp r1, r0
	beq _081DA9A6
	ldrh r1, [r3, #0x00]
	ldrh r0, [r4, #0x00]
	cmp r1, r0
	bls _081DA960
	add r2, sp, #0x0AC
	ldrh r1, [r3, #0x00]
	ldrh r0, [r4, #0x00]
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	b _081DA976
_081DA958: .4byte 0x03001BD0
_081DA95C: .4byte 0x04000006
_081DA960:
	add r2, sp, #0x0AC
	add r0, sp, #0x0A8
	ldrh r0, [r0, #0x00]
	adds r0, #0xE4
	mov r1, sp
	adds r1, #0xA6
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
_081DA976:
	add r0, sp, #0x0AC
	ldr r0, [r0, #0x00]
	cmp r0, #0x88
	bls _081DA99C
	add r0, sp, #0x0A4
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081DA9C6
	movs r0, #0xD0
	lsls r0, r0, #0x14
	ldrh r0, [r0, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081DA9C6
	ldr r5, _081DA998 @ =0x0000C001
	b _081DA9C6
_081DA998: .4byte 0x0000C001
_081DA99C:
	mov r0, sp
	adds r0, #0xA6
	add r1, sp, #0x0A8
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
_081DA9A6:
	add r2, sp, #0x0A4
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _081DA92C
	movs r0, #0xD0
	lsls r0, r0, #0x14
	movs r1, #0x01
	ldrh r0, [r0, #0x00]
	ands r1, r0
	cmp r1, #0x00
	beq _081DA92C
_081DA9BC:
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	strh r0, [r2, #0x00]
	cmp r7, #0x00
	bne _081DA92C
_081DA9C6:
	adds r0, r5, #0x0
_081DA9C8:
	add sp, #0x0B0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_81DA9D0
sub_81DA9D0:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r1, #0x0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0x00
	ldr r0, _081DA9EC @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	cmp r1, r0
	bcc _081DA9F4
	ldr r0, _081DA9F0 @ =0x000080FF
	b _081DAA1E
	.byte 0x00, 0x00
_081DA9EC: .4byte 0x03001BD0
_081DA9F0: .4byte 0x000080FF
_081DA9F4:
	adds r0, r1, #0x0
	mov r1, sp
	bl sub_81DA7AC
	mov r2, sp
	movs r3, #0x00
	b _081DAA0C
_081DAA02:
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x03
	bhi _081DAA1C
_081DAA0C:
	ldrh r1, [r4, #0x00]
	ldrh r0, [r2, #0x00]
	adds r2, #0x02
	adds r4, #0x02
	cmp r1, r0
	beq _081DAA02
	movs r5, #0x80
	lsls r5, r5, #0x08
_081DAA1C:
	adds r0, r5, #0x0
_081DAA1E:
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x70, 0xB5, 0x0D, 0x1C, 0x00, 0x04, 0x04, 0x0C, 0x00, 0x26, 0x02, 0xE0, 0x70, 0x1C
	.byte 0x00, 0x06, 0x06, 0x0E, 0x02, 0x2E, 0x0F, 0xD8, 0x20, 0x1C, 0x29, 0x1C, 0xFF, 0xF7, 0x0B, 0xFF
	.byte 0x00, 0x04, 0x02, 0x0C, 0x00, 0x2A, 0xF2, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0xFF, 0xF7, 0xBD, 0xFF
	.byte 0x00, 0x04, 0x02, 0x0C, 0x00, 0x2A, 0xEA, 0xD1, 0x10, 0x1C, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0x00
	thumb_func_start _call_via_r0
_call_via_r0: @ 081DAA68
	bx r0
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r1
_call_via_r1: @ 081DAA6C
	bx r1
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r2
_call_via_r2: @ 081DAA70
	bx r2
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r3
_call_via_r3: @ 081DAA74
	bx r3
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r4
_call_via_r4: @ 081DAA78
	bx r4
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r5
_call_via_r5: @ 081DAA7C
	bx r5
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r6
_call_via_r6: @ 081DAA80
	bx r6
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r7
_call_via_r7: @ 081DAA84
	bx r7
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r8
_call_via_r8: @ 081DAA88
	bx r8
	.byte 0xC0, 0x46
	thumb_func_start sub_81DAA8C
sub_81DAA8C:
	bx r9
	.byte 0xC0, 0x46, 0x50, 0x47, 0xC0, 0x46, 0x58, 0x47, 0xC0, 0x46
	thumb_func_start sub_81DAA98
sub_81DAA98:
	bx r12
	.byte 0xC0, 0x46, 0x68, 0x47, 0xC0, 0x46, 0x70, 0x47, 0xC0, 0x46
	thumb_func_start __divsi3
__divsi3:
	cmp r1, #0x00
	beq _081DAB2C
	push {r4}
	adds r4, r0, #0x0
	eors r4, r1
	mov r12, r4
	movs r3, #0x01
	movs r2, #0x00
	cmp r1, #0x00
	bpl _081DAABA
	negs r1, r1
_081DAABA:
	cmp r0, #0x00
	bpl _081DAAC0
	negs r0, r0
_081DAAC0:
	cmp r0, r1
	bcc _081DAB1E
	movs r4, #0x01
	lsls r4, r4, #0x1C
_081DAAC8:
	cmp r1, r4
	bcs _081DAAD6
	cmp r1, r0
	bcs _081DAAD6
	lsls r1, r1, #0x04
	lsls r3, r3, #0x04
	b _081DAAC8
_081DAAD6:
	lsls r4, r4, #0x03
_081DAAD8:
	cmp r1, r4
	bcs _081DAAE6
	cmp r1, r0
	bcs _081DAAE6
	lsls r1, r1, #0x01
	lsls r3, r3, #0x01
	b _081DAAD8
_081DAAE6:
	cmp r0, r1
	bcc _081DAAEE
	subs r0, r0, r1
	orrs r2, r3
_081DAAEE:
	lsrs r4, r1, #0x01
	cmp r0, r4
	bcc _081DAAFA
	subs r0, r0, r4
	lsrs r4, r3, #0x01
	orrs r2, r4
_081DAAFA:
	lsrs r4, r1, #0x02
	cmp r0, r4
	bcc _081DAB06
	subs r0, r0, r4
	lsrs r4, r3, #0x02
	orrs r2, r4
_081DAB06:
	lsrs r4, r1, #0x03
	cmp r0, r4
	bcc _081DAB12
	subs r0, r0, r4
	lsrs r4, r3, #0x03
	orrs r2, r4
_081DAB12:
	cmp r0, #0x00
	beq _081DAB1E
	lsrs r3, r3, #0x04
	beq _081DAB1E
	lsrs r1, r1, #0x04
	b _081DAAE6
_081DAB1E:
	adds r0, r2, #0x0
	mov r4, r12
	cmp r4, #0x00
	bpl _081DAB28
	negs r0, r0
_081DAB28:
	pop {r4}
	mov pc, lr
_081DAB2C:
	push {lr}
	bl nullsub_1
	movs r0, #0x00
	pop {pc}
	.byte 0x00, 0x00
