	.syntax unified
	.text

	thumb_func_start sub_8110874
sub_8110874:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x2C]
	ldr r0, [r1, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r7, r0, r2
	ldrh r0, [r7, #0x00]
	movs r4, #0xF0
	lsls r4, r4, #0x08
	adds r5, r4, #0x0
	ands r5, r0
	ldr r0, _081108FC @ =0x0000FFFF
	eors r5, r0
	adds r0, r6, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08110900 @ =0x081104AD
	str r0, [r6, #0x4C]
	ldrh r0, [r7, #0x00]
	ands r4, r0
	ands r5, r4
	lsls r0, r5, #0x10
	cmp r0, #0x00
	beq _081108F4
	lsrs r5, r0, #0x1C
	movs r3, #0x00
	movs r1, #0x01
	adds r0, r5, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _081108D2
	movs r2, #0x01
_081108BA:
	lsls r1, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r1, r1, r0
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	asrs r0, r1
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _081108BA
_081108D2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08110904 @ =0x00004136
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x28]
	ldr r2, _08110908 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
_081108F4:
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081108FC: .4byte 0x0000FFFF
_08110900: .4byte sub_81104AC
_08110904: .4byte 0x00004136
_08110908: .4byte 0x00000113
