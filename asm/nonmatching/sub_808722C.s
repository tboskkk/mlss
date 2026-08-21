	.syntax unified
	.text

	thumb_func_start sub_808722C
sub_808722C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0808723A
	adds r0, #0xFF
_0808723A:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x40
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08087248
	adds r2, #0xFF
_08087248:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08087260
	adds r2, #0xFF
_08087260:
	asrs r2, r2, #0x08
	adds r2, #0x18
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldr r1, _080872A0 @ =0x084FB814
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	mvns r2, r2
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080872A4 @ =0x08087B35
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080872A0: .4byte 0x084FB814
_080872A4: .4byte sub_8087B34
