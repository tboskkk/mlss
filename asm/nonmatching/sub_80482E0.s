	.syntax unified
	.text

	thumb_func_start sub_80482E0
sub_80482E0:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0x0
	bl sub_8040020
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x19
	ldr r2, _0804841C @ =0x0000033D
	adds r3, r4, r2
	lsrs r1, r1, #0x19
	ldrb r2, [r3, #0x00]
	movs r0, #0x80
	negs r0, r0
	mov r8, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xD4
	lsls r1, r1, #0x02
	adds r6, r4, r1
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	ldr r2, _08048420 @ =0x00000351
	adds r2, r2, r4
	mov r9, r2
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	ldrb r1, [r5, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r5, #0x7F
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _08048424 @ =0x0000033E
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r1, _08048428 @ =0x00000342
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x15
	ldrh r2, [r6, #0x00]
	ldr r0, _0804842C @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x03
	mov r0, r9
	ldrb r2, [r0, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	adds r2, #0x01
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	movs r1, #0x8E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x0F
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	ldr r1, _08048430 @ =0x00000242
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	adds r2, #0x0E
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	adds r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, _08048434 @ =0x00000353
	adds r3, r4, r0
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x07
	adds r0, r5, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r3, [r4, #0x00]
	ldrb r0, [r3, #0x16]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	adds r1, r5, #0x0
	ands r1, r0
	ldrb r2, [r3, #0x17]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x17]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x16]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x07
	ldrb r2, [r1, #0x17]
	ands r5, r2
	orrs r5, r0
	strb r5, [r1, #0x17]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x16]
	mov r2, r8
	ands r2, r0
	strb r2, [r1, #0x16]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0804841C: .4byte 0x0000033D
_08048420: .4byte 0x00000351
_08048424: .4byte 0x0000033E
_08048428: .4byte 0x00000342
_0804842C: .4byte 0xFFFFF87F
_08048430: .4byte 0x00000242
_08048434: .4byte 0x00000353
