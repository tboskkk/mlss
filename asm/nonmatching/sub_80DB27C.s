	.syntax unified
	.text

	thumb_func_start sub_80DB27C
sub_80DB27C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB298
	adds r0, #0xFF
_080DB298:
	asrs r0, r0, #0x08
	mov r3, r12
	strh r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DB2B4
	adds r0, #0xFF
_080DB2B4:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r4, #0x40]
	adds r1, r0, r1
	str r1, [r4, #0x18]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bgt _080DB324
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DB324
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA8
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080DB32C @ =0x080DB331
	str r0, [r4, #0x4C]
_080DB324:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB32C: .4byte sub_80DB330
