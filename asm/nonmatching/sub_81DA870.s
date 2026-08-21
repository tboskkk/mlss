	.syntax unified
	.text

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
