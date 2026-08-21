	.syntax unified
	.text

	thumb_func_start sub_8145C58
sub_8145C58:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r3, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08145C86
	b _08145DB4
_08145C86:
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08145C94
	b _08145D98
_08145C94:
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145CA8
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08145CB4
_08145CA8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145CB4:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	add r6, sp, #0x004
	ldr r2, _08145CF4 @ =0x03001038
	ldr r0, _08145CF8 @ =0x0819832C
	ldr r1, _08145CFC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145D00
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08145D04
_08145CF4: .4byte 0x03001038
_08145CF8: .4byte 0x0819832C
_08145CFC: .4byte 0x08198220
_08145D00:
	movs r1, #0x01
	negs r1, r1
_08145D04:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	strb r0, [r6, #0x00]
	ldr r2, _08145D8C @ =0x03001038
	ldr r0, _08145D90 @ =0x0819832C
	ldr r1, _08145D94 @ =0x08198220
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
	add r1, sp, #0x004
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08145D3A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_08145D3A:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, r0, r7
	adds r0, #0x22
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r2, [r0, #0x26]
	lsls r4, r4, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_813B394
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08145DC8
_08145D8C: .4byte 0x03001038
_08145D90: .4byte 0x0819832C
_08145D94: .4byte 0x08198220
_08145D98:
	ldr r0, _08145DAC @ =0x0000020F
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08145DB0 @ =0x08146E9D
	str r0, [r3, #0x00]
	b _08145DC8
_08145DAC: .4byte 0x0000020F
_08145DB0: .4byte sub_8146E9C
_08145DB4:
	adds r0, r5, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145DC8
	ldrb r0, [r4, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x00]
_08145DC8:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
