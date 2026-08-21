	.syntax unified
	.text

	thumb_func_start sub_8106178
sub_8106178:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, _08106204 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081061FC
	adds r0, r2, #0x0
	movs r1, #0x04
	cmp r0, #0x00
	beq _081061AC
	movs r1, #0x01
_081061AC:
	ldr r2, _08106208 @ =0x00002001
	cmp r0, #0x00
	beq _081061B4
	adds r2, #0x4D
_081061B4:
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x00]
	ldr r2, _0810620C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106210 @ =0x08106791
	str r0, [r6, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
_081061FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106204: .4byte 0x03000FD8
_08106208: .4byte 0x00002001
_0810620C: .4byte 0x0000033F
_08106210: .4byte sub_8106790
