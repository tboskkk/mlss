	.syntax unified
	.text

	thumb_func_start sub_803495C
sub_803495C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldr r2, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r1, [r4, #0x00]
	movs r0, #0x49
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r4, #0x00]
	ldr r3, _08034A4C @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r7, #0x40
	mov r8, r7
	mov r7, r8
	orrs r0, r7
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	mov r1, r8
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r4, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _08034A50 @ =0x0000020D
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _08034A54 @ =0x00001025
	bl sub_8049000
	ldr r0, [r5, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x00]
	ldr r7, _08034A58 @ =0x00000212
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, r0, r3
	ldr r2, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x03
	subs r3, #0x8A
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r2, #0x20
	strb r1, [r2, #0x00]
	subs r7, #0x07
	adds r6, r6, r7
	ldrb r0, [r6, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08034A4C: .4byte 0x00000351
_08034A50: .4byte 0x0000020D
_08034A54: .4byte 0x00001025
_08034A58: .4byte 0x00000212
