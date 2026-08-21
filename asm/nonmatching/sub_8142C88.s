	.syntax unified
	.text

	thumb_func_start sub_8142C88
sub_8142C88:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r3
	mov r12, r0
	ldr r1, [r3, #0x18]
	cmp r1, #0x00
	ble _08142CC0
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r2, r3, r5
	movs r5, #0x00
	ldsh r0, [r2, r5]
	subs r0, r1, r0
	str r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08142CB2
	movs r0, #0x00
	str r0, [r3, #0x18]
	b _08142CC0
_08142CB2:
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
_08142CC0:
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08142CE4
	ldr r5, _08142CEC @ =0x0000033E
	adds r2, r3, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_08142CE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142CEC: .4byte 0x0000033E
