	.syntax unified
	.text

	thumb_func_start sub_810192C
sub_810192C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8100BC4
	adds r2, r0, #0x0
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	bne _0810194C
	ldr r0, _08101994 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_0810194C:
	cmp r2, #0x00
	beq _0810199C
	ldr r1, _08101994 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r3, r1, #0x0
	cmp r2, #0x00
	beq _08101972
	ldr r0, [r2, #0x54]
	cmp r0, #0x00
	bne _08101972
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _08101998 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
_08101972:
	ldr r0, [r3, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _081019A2
	ldr r0, [r2, #0x54]
	cmp r0, #0x00
	bne _081019A2
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08101998 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	b _081019A2
	.byte 0x00, 0x00
_08101994: .4byte 0x03000FD8
_08101998: .4byte 0x0000F3FF
_0810199C:
	adds r0, r4, #0x0
	bl sub_81054D4
_081019A2:
	pop {r4}
	pop {r0}
	bx r0
