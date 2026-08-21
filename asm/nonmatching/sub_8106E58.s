	.syntax unified
	.text

	thumb_func_start sub_8106E58
sub_8106E58:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106E9E
	ldr r5, _08106EA4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08106E9E
	ldr r0, [r2, #0x7C]
	adds r0, #0x08
	bl sub_8095584
	ldr r0, [r5, #0x00]
	ldr r4, _08106EA8 @ =0x00000349
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl sub_80F7068
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r0, _08106EAC @ =0x08100E5D
	str r0, [r6, #0x04]
	movs r0, #0x08
	bl sub_80F75B4
_08106E9E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08106EA4: .4byte 0x03000FD8
_08106EA8: .4byte 0x00000349
_08106EAC: .4byte sub_8100E5C
