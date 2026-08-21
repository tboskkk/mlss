	.syntax unified
	.text

	thumb_func_start sub_811308C
sub_811308C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _08113138 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	mov r4, r12
	adds r4, #0x08
	mov r0, r12
	ldr r3, [r0, #0x04]
	movs r0, #0x88
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r6, #0x01
	negs r6, r6
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _081130FC
	adds r1, #0xFF
_081130FC:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08113106
	adds r2, #0xFF
_08113106:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08113110
	adds r3, #0xFF
_08113110:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0xA4
	lsls r0, r0, #0x06
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x00
	str r0, [r5, #0x4C]
	movs r0, #0xAD
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08113138: .4byte 0x03000FD8
