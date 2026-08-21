	.syntax unified
	.text

	thumb_func_start sub_8112E40
sub_8112E40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x28]
	mov r8, r0
	adds r5, r4, #0x0
	adds r5, #0x84
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	mov r0, r8
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	ldr r2, [r4, #0x38]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08112E7A
	adds r0, #0xFF
_08112E7A:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x1C]
	ldr r1, [r4, #0x3C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08112E88
	adds r0, #0xFF
_08112E88:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x1E]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08112E94
	adds r0, #0xFF
_08112E94:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x20]
	ldr r0, [r5, #0x00]
	subs r5, r0, r2
	ldr r0, [r3, #0x00]
	subs r7, r0, r1
	ldr r2, _08112EE0 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE6
	lsls r1, r1, #0x01
	bl __divsi3
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	muls r1, r6
	ldr r0, [r4, #0x40]
	bl __divsi3
	adds r1, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xA8
	cmp r1, #0x01
	bgt _08112EEA
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bge _08112EE4
	negs r0, r1
	str r0, [r2, #0x00]
	b _08112EEC
	.byte 0x00, 0x00
_08112EE0: .4byte 0x03001038
_08112EE4:
	movs r0, #0x02
	str r0, [r2, #0x00]
	b _08112EEC
_08112EEA:
	str r1, [r2, #0x00]
_08112EEC:
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _08112EF4
	adds r0, #0xFF
_08112EF4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08112F04
	adds r0, #0xFF
_08112F04:
	asrs r1, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x1A
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	mov r0, r8
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x0A
	subs r1, #0x1D
	strb r0, [r1, #0x00]
	ldr r0, _08112F3C @ =0x08112F41
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08112F3C: .4byte sub_8112F40
