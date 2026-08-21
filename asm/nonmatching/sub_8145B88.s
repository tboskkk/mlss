	.syntax unified
	.text

	thumb_func_start sub_8145B88
sub_8145B88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	adds r1, #0xB4
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x08]
	cmp r0, #0x00
	beq _08145BF4
	adds r0, r4, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145BC2
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08145BCE
_08145BC2:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08145BCE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x0A
	bl sub_8139BB0
	ldr r2, _08145BF0 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	b _08145C04
	.byte 0x00, 0x00
_08145BF0: .4byte 0x00007FFF
_08145BF4:
	movs r0, #0x03
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x11
	movs r3, #0x18
	bl sub_8139FB0
_08145C04:
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145C14
	ldr r0, _08145C10 @ =0x08146F2D
	str r0, [r6, #0x00]
	b _08145C42
_08145C10: .4byte sub_8146F2C
_08145C14:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08145C42
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _08145C50 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _08145C54 @ =0x08146FAD
	str r0, [r6, #0x0C]
_08145C42:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08145C50: .4byte sub_813B1E8
_08145C54: .4byte sub_8146FAC
