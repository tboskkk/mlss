	.syntax unified
	.text

	thumb_func_start sub_80FEB64
sub_80FEB64:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080FEC8C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r7, [r0, #0x7C]
	adds r0, r7, #0x0
	movs r1, #0x02
	bl sub_810C414
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FEB80
	b _080FECCE
_080FEB80:
	movs r5, #0x00
	movs r4, #0x00
	ldr r0, _080FEC90 @ =0x0300034C
	mov r8, r0
	ldr r6, [r6, #0x00]
	mov r12, r6
	ldr r6, _080FEC94 @ =0x00000352
	add r6, r12
_080FEB90:
	lsls r1, r4, #0x02
	mov r0, r12
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080FEC00
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FEC00
	movs r1, #0x00
	ldsb r1, [r6, r1]
	adds r0, r2, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _080FECA0
	cmp r5, #0x00
	beq _080FEBFE
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _080FEBD2
	adds r1, #0xFF
_080FEBD2:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	bge _080FEBEA
	adds r1, #0xFF
_080FEBEA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	cmp r3, r1
	bge _080FEC00
_080FEBFE:
	adds r5, r2, #0x0
_080FEC00:
	adds r4, #0x01
	cmp r4, #0x07
	ble _080FEB90
_080FEC06:
	ldr r4, _080FEC8C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0x08
	str r1, [r0, #0x00]
	str r1, [r7, #0x34]
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	movs r0, #0x8C
	lsls r0, r0, #0x04
	add r0, r8
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	bl sub_810D468
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_810D524
	bl sub_810CCF4
	adds r0, r5, #0x0
	movs r1, #0x0D
	bl sub_810A78C
	movs r0, #0x02
	bl sub_81069B4
	ldr r0, [r4, #0x00]
	ldr r1, _080FEC98 @ =0x00000347
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	movs r0, #0x1F
	ands r1, r0
	ldrb r0, [r2, #0x00]
	movs r3, #0x20
	negs r3, r3
	ands r3, r0
	orrs r3, r1
	strb r3, [r2, #0x00]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x70]
	cmp r7, r0
	bne _080FECA4
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1B
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, _080FEC9C @ =0x084FE8A8
	b _080FECB0
_080FEC8C: .4byte 0x03000FD8
_080FEC90: .4byte 0x0300034C
_080FEC94: .4byte 0x00000352
_080FEC98: .4byte 0x00000347
_080FEC9C: .4byte dword_84FE8A8 @ =0x084FE8A8
_080FECA0:
	adds r5, r2, #0x0
	b _080FEC06
_080FECA4:
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1B
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, _080FECD8 @ =0x084FE9A4
_080FECB0:
	adds r0, r1, r0
	str r0, [r7, #0x74]
	ldr r4, _080FECDC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r1, _080FECE0 @ =0x000002BD
	adds r0, r0, r1
	movs r1, #0x02
	strb r1, [r0, #0x00]
	subs r1, #0x03
	movs r0, #0x77
	bl play_sfx_80195B4
	ldr r1, [r4, #0x00]
	ldr r0, _080FECE4 @ =0x080FFD21
	str r0, [r1, #0x24]
_080FECCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FECD8: .4byte dword_84FE9A4 @ =0x084FE9A4
_080FECDC: .4byte 0x03000FD8
_080FECE0: .4byte 0x000002BD
_080FECE4: .4byte sub_80FFD20
