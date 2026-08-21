	.syntax unified
	.text

	thumb_func_start sub_80EDF90
sub_80EDF90:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	adds r4, r3, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	movs r3, #0x01
	cmp r1, #0x00
	beq _080EDFAA
	movs r3, #0x10
_080EDFAA:
	mov r12, r3
	negs r0, r1
	orrs r0, r1
	asrs r1, r0, #0x1F
	movs r0, #0x08
	ands r1, r0
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	movs r0, #0x02
	ands r2, r0
	cmp r2, #0x00
	beq _080EDFD2
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080EDFCA
	adds r0, #0xFF
_080EDFCA:
	asrs r0, r0, #0x08
	adds r0, r0, r3
	lsls r0, r0, #0x10
	b _080EDFD4
_080EDFD2:
	lsls r0, r3, #0x10
_080EDFD4:
	lsrs r0, r0, #0x10
	adds r7, r0, #0x0
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	ldm r4!, {r0}
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080EDFF4
	ldr r0, [r5, #0x0C]
	cmp r0, #0x00
	bge _080EDFEE
	adds r0, #0xFF
_080EDFEE:
	asrs r0, r0, #0x08
	adds r1, r2, r0
	b _080EDFF6
_080EDFF4:
	adds r1, r2, #0x0
_080EDFF6:
	mov r3, r12
	ldm r4!, {r0}
	muls r0, r3
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r6, #0x3C]
	ldm r4!, {r0}
	muls r0, r3
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r6, #0x38]
	ldm r4!, {r0}
	muls r0, r3
	adds r2, r2, r0
	strh r2, [r6, #0x3E]
	ldr r0, [r4, #0x00]
	muls r0, r3
	adds r1, r1, r0
	strh r1, [r6, #0x3A]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
