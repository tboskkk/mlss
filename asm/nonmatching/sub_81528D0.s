	.syntax unified
	.text

	thumb_func_start sub_81528D0
sub_81528D0:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _08152910
	ldr r0, _08152900 @ =0x00001CC4
	adds r2, r4, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _08152904 @ =0x0000FFF6
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08152908 @ =0x00001C98
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8158E10
	ldr r1, _0815290C @ =0x00001C9C
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8158E10
	b _08152934
	.byte 0x00, 0x00
_08152900: .4byte 0x00001CC4
_08152904: .4byte 0x0000FFF6
_08152908: .4byte 0x00001C98
_0815290C: .4byte 0x00001C9C
_08152910:
	ldr r0, _0815293C @ =0x00001CC4
	adds r2, r4, r0
	ldrh r1, [r2, #0x00]
	movs r0, #0x09
	orrs r0, r1
	ldr r1, _08152940 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08152944 @ =0x00001C98
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8158E18
	ldr r1, _08152948 @ =0x00001C9C
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8158E18
_08152934:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815293C: .4byte 0x00001CC4
_08152940: .4byte 0x0000FFEF
_08152944: .4byte 0x00001C98
_08152948: .4byte 0x00001C9C
