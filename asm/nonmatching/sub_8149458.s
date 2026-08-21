	.syntax unified
	.text

	thumb_func_start sub_8149458
sub_8149458:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	add r5, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08149480
	movs r3, #0xEC
	lsls r3, r3, #0x01
	adds r2, r6, r3
	b _081494CC
_08149480:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x28]
	mov r2, sp
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	subs r0, #0x20
	strh r0, [r2, #0x00]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	subs r0, #0x20
	strh r0, [r2, #0x06]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	adds r0, #0x20
	strh r0, [r2, #0x02]
	movs r3, #0x02
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x04
	adds r0, #0x20
	strh r0, [r2, #0x04]
	ldr r2, _081494D8 @ =0x00007FFF
	mov r0, sp
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081494DC
	movs r0, #0xEC
	lsls r0, r0, #0x01
	adds r2, r6, r0
_081494CC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _081494EA
_081494D8: .4byte 0x00007FFF
_081494DC:
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
_081494EA:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
