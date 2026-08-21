	.syntax unified
	.text

	thumb_func_start sub_81321B4
sub_81321B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r4, [r0, #0x14]
	bl sub_8020A78
	ldr r0, _081322C4 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r5, r4, r2
	ldr r3, _081322C8 @ =0x0203FFB8
	mov r9, r3
	ldr r4, [r3, #0x38]
	movs r7, #0x00
	movs r6, #0x2F
_081321DE:
	ldrb r0, [r5, #0x02]
	cmp r0, #0x00
	beq _08132212
	subs r0, #0x01
	strb r0, [r5, #0x02]
	ldrb r0, [r5, #0x01]
	strh r0, [r4, #0x00]
	ldrb r0, [r5, #0x00]
	strh r0, [r4, #0x02]
	ldrb r0, [r5, #0x02]
	movs r1, #0x06
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x16
	subs r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x04]
	strh r7, [r4, #0x06]
	movs r0, #0x01
	str r0, [r4, #0x08]
	ldr r4, [r4, #0x10]
_08132212:
	adds r1, r5, #0x4
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08132248
	subs r0, #0x01
	strb r0, [r1, #0x02]
	ldrb r0, [r1, #0x01]
	strh r0, [r4, #0x00]
	ldrb r0, [r5, #0x04]
	strh r0, [r4, #0x02]
	ldrb r0, [r1, #0x02]
	movs r1, #0x06
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x16
	subs r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r4, #0x04]
	strh r7, [r4, #0x06]
	movs r0, #0x01
	str r0, [r4, #0x08]
	ldr r4, [r4, #0x10]
_08132248:
	adds r1, r5, #0x0
	adds r1, #0x08
	ldrb r0, [r1, #0x02]
	cmp r0, #0x00
	beq _08132280
	subs r0, #0x01
	strb r0, [r1, #0x02]
	ldrb r0, [r1, #0x01]
	strh r0, [r4, #0x00]
	ldrb r0, [r5, #0x08]
	strh r0, [r4, #0x02]
	ldrb r0, [r1, #0x02]
	movs r1, #0x06
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x16
	subs r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r4, #0x04]
	strh r7, [r4, #0x06]
	movs r0, #0x01
	str r0, [r4, #0x08]
	ldr r4, [r4, #0x10]
_08132280:
	subs r6, #0x03
	adds r5, #0x0C
	cmp r6, #0x00
	bge _081321DE
	mov r3, r9
	str r4, [r3, #0x38]
	ldr r2, _081322CC @ =0x03000D48
	ldr r4, _081322C8 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _081322D0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _081322D4 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	mov r1, r8
	bl _call_via_r2
	mov r8, r0
	ldr r0, _081322C4 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	mov r2, r8
	str r2, [r0, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081322C4: .4byte 0x0300034C
_081322C8: .4byte 0x0203FFB8
_081322CC: .4byte 0x03000D48
_081322D0: .4byte 0x00000A14
_081322D4: .4byte 0x03000D4C
