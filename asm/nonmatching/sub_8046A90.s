	.syntax unified
	.text

	thumb_func_start sub_8046A90
sub_8046A90:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, [sp, #0x014]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, r5, #0x0
	cmp r2, #0x01
	bne _08046ABA
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1, #0x04]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08046ABA:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	adds r2, #0x66
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r2, #0x08
	adds r0, r4, r2
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r2, [r1, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _08046AE0
	movs r0, #0x00
	b _08046B1E
_08046AE0:
	cmp r6, #0x01
	bne _08046AF8
	adds r1, r5, #0x0
	cmp r2, r0
	blt _08046AEC
	negs r1, r5
_08046AEC:
	ldr r2, _08046AF4 @ =0x0000030A
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	b _08046AFE
_08046AF4: .4byte 0x0000030A
_08046AF8:
	ldr r1, _08046B24 @ =0x0000031A
	adds r0, r4, r1
	strh r7, [r0, #0x00]
_08046AFE:
	ldr r2, _08046B28 @ =0x00000312
	adds r1, r4, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08046B2C @ =0x000002B5
	adds r3, r4, r0
	movs r0, #0x03
	ands r6, r0
	lsls r2, r6, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0x01
_08046B1E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08046B24: .4byte 0x0000031A
_08046B28: .4byte 0x00000312
_08046B2C: .4byte 0x000002B5
