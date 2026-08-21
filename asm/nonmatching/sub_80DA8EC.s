	.syntax unified
	.text

	thumb_func_start sub_80DA8EC
sub_80DA8EC:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DA908
	adds r0, #0xFF
_080DA908:
	asrs r0, r0, #0x08
	mov r4, r12
	strh r0, [r4, #0x00]
	adds r4, r2, #0x0
	adds r4, #0xB0
	movs r5, #0x00
	ldsh r1, [r4, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DA924
	adds r0, #0xFF
_080DA924:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xB2
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r2, #0x3C]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r4, #0x00
	ldsh r1, [r3, r4]
	ldr r0, [r2, #0x40]
	adds r1, r0, r1
	str r1, [r2, #0x18]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bgt _080DA970
	ldr r0, [r2, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DA970
	str r0, [r2, #0x18]
	ldr r0, _080DA978 @ =0x080DA9E1
	str r0, [r2, #0x4C]
_080DA970:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DA978: .4byte sub_80DA9E0
