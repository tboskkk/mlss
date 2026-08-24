	.syntax unified
	.text

	thumb_func_start sub_810118C
sub_810118C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _081011C0 @ =0x0810118D
	str r0, [r4, #0x04]
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810123E
	ldr r2, _081011C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r1, [r3, #0x7C]
	movs r0, #0x00
	strh r0, [r4, #0x12]
	ldr r5, _081011C8 @ =0x0000012B
	adds r0, r1, r5
	ldrb r1, [r0, #0x00]
	adds r5, r2, #0x0
	cmp r1, #0x05
	beq _081011D0
	cmp r1, #0x05
	bgt _081011CC
	cmp r1, #0x04
	beq _081011D0
	b _081011E0
	.byte 0x00, 0x00
_081011C0: .4byte sub_810118C
_081011C4: .4byte 0x03000FD8
_081011C8: .4byte 0x0000012B
_081011CC:
	cmp r1, #0x06
	bne _081011E0
_081011D0:
	ldr r1, _08101218 @ =0x000002D6
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x0A
	bl __divsi3
	strh r0, [r4, #0x12]
_081011E0:
	movs r1, #0x12
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bgt _081011EC
	movs r0, #0x01
	strh r0, [r4, #0x12]
_081011EC:
	movs r1, #0x00
	movs r0, #0x01
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x00]
	ldr r2, _08101218 @ =0x000002D6
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r0, _0810121C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r5, _08101220 @ =0x00008E58
	adds r0, r0, r5
	ldr r1, _08101224 @ =0x0810124D
	str r1, [r0, #0x00]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	beq _08101228
	movs r1, #0x0E
	cmp r0, #0x02
	bne _0810122A
	movs r1, #0x08
	b _0810122A
_08101218: .4byte 0x000002D6
_0810121C: .4byte 0x03000FDC
_08101220: .4byte 0x00008E58
_08101224: .4byte sub_810124C
_08101228:
	movs r1, #0x00
_0810122A:
	strh r1, [r4, #0x16]
	ldr r0, _08101244 @ =0x08107151
	str r0, [r4, #0x04]
	ldr r1, _08101248 @ =0x084FCE8C
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082898
_0810123E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101244: .4byte sub_8107150
_08101248: .4byte dword_84FCE8C @ =0x084FCE8C
