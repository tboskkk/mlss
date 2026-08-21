	.syntax unified
	.text

	thumb_func_start sub_8145E8C
sub_8145E8C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08145EC4
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08145EBC @ =0x08146005
	str r0, [r2, #0x00]
	ldr r0, _08145EC0 @ =0x0814616D
	str r0, [r2, #0x08]
	b _08145FF0
	.byte 0x00, 0x00
_08145EBC: .4byte sub_8146004
_08145EC0: .4byte sub_814616C
_08145EC4:
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08145ED4
	subs r0, #0x01
	b _08145F18
_08145ED4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x08
	bl sub_81DD77C
	adds r1, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _08145F44 @ =0x03001038
	ldr r1, _08145F48 @ =0x0819832C
	ldr r2, _08145F4C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x1E
_08145F18:
	strh r0, [r5, #0x00]
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x00
	bl sub_8139FB0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145FF0
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145F50
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08145F5C
_08145F44: .4byte 0x03001038
_08145F48: .4byte 0x0819832C
_08145F4C: .4byte 0x08198220
_08145F50:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145F5C:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	ldr r2, _08145F9C @ =0x03001038
	ldr r0, _08145FA0 @ =0x0819832C
	ldr r1, _08145FA4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08145FA8
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
	b _08145FAC
	.byte 0x00, 0x00
_08145F9C: .4byte 0x03001038
_08145FA0: .4byte 0x0819832C
_08145FA4: .4byte 0x08198220
_08145FA8:
	movs r1, #0x01
	negs r1, r1
_08145FAC:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _08145FF8 @ =0x03001038
	ldr r0, _08145FFC @ =0x0819832C
	ldr r1, _08146000 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r5
	beq _08145FE2
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_08145FE2:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_08145FF0:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08145FF8: .4byte 0x03001038
_08145FFC: .4byte 0x0819832C
_08146000: .4byte 0x08198220
