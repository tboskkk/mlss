	.syntax unified
	.text

	thumb_func_start sub_8086A18
sub_8086A18:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08086AE0 @ =0x084FB814
	ldrh r2, [r0, #0x0A]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08086A38
	adds r2, #0x01
_08086A38:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r6, r4, #0x0
	adds r6, #0xA8
	movs r0, #0x03
	str r0, [r6, #0x00]
	ldr r0, _08086AE4 @ =0x03001038
	mov r8, r0
	ldr r1, _08086AE8 @ =0x0819832C
	ldr r0, _08086AEC @ =0x08198220
	subs r5, r1, r0
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r2, r0, r5
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	ldr r0, [r4, #0x38]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08086A78
	adds r0, #0xFF
_08086A78:
	asrs r0, r0, #0x08
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r3, r8
	ldr r0, [r3, #0x00]
	adds r2, r0, r5
	ldr r1, [r4, #0x28]
	adds r1, #0xDC
	ldr r0, [r4, #0x3C]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08086A9A
	adds r0, #0xFF
_08086A9A:
	asrs r0, r0, #0x08
	movs r1, #0x03
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08086ABC
	adds r2, #0xFF
_08086ABC:
	asrs r2, r2, #0x08
	adds r2, #0x18
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	ldr r0, _08086AF0 @ =0x08086AF5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08086AE0: .4byte 0x084FB814
_08086AE4: .4byte 0x03001038
_08086AE8: .4byte 0x0819832C
_08086AEC: .4byte 0x08198220
_08086AF0: .4byte sub_8086AF4
