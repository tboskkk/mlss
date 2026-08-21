	.syntax unified
	.text

	thumb_func_start sub_80FBEA0
sub_80FBEA0:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r4, #0x0C
	ldr r6, [r1, #0x00]
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	bge _080FBEE6
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FBED0
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FBEE0
	movs r0, #0x00
	b _080FBF06
_080FBED0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r1, sp, #0x004
	strb r0, [r1, #0x00]
_080FBEE0:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _080FBEEA
_080FBEE6:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
_080FBEEA:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r0, #0x08
	ldsh r3, [r4, r0]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080FBF06:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
