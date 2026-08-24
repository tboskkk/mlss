	.syntax unified
	.text

	thumb_func_start sub_8162A2C
sub_8162A2C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	movs r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	ldr r0, [r0, #0x10]
	ldr r2, _08162AC0 @ =0x082128C4
	ldr r1, _08162AC4 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r4, r1, r3
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r5, #0x04]
	ldr r0, _08162AC8 @ =0x08212834
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r6, [r0, #0x00]
	str r6, [r1, #0x40]
	subs r0, r7, #0x1
	cmp r0, #0x03
	bhi _08162AB6
	ldr r0, [r5, #0x08]
	ldr r0, [r0, #0x10]
	ldr r2, _08162ACC @ =0x082128D8
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r3, #0x00
	ldsh r1, [r1, r3]
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r5, #0x08]
	ldr r4, _08162AD0 @ =0x08212894
	str r4, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r6, [r0, #0x00]
	str r6, [r1, #0x40]
	ldr r0, [r5, #0x0C]
	ldr r0, [r0, #0x10]
	adds r1, r7, #0x0
	adds r1, #0x44
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x0C]
	str r4, [r0, #0x44]
	adds r1, r0, #0x0
	adds r1, #0x48
	strh r6, [r1, #0x00]
	str r6, [r0, #0x40]
_08162AB6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08162AC0: .4byte 0x082128C4
_08162AC4: .4byte 0x0300034C
_08162AC8: .4byte 0x08212834
_08162ACC: .4byte 0x082128D8
_08162AD0: .4byte 0x08212894
