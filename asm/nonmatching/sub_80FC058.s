	.syntax unified
	.text

	thumb_func_start sub_80FC058
sub_80FC058:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r4, #0x0C
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	bge _080FC09C
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FC086
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC096
	movs r0, #0x00
	b _080FC0B8
_080FC086:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	mov r1, sp
	strb r0, [r1, #0x00]
_080FC096:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _080FC0A0
_080FC09C:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
_080FC0A0:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	movs r0, #0x08
	ldsh r2, [r4, r0]
	movs r0, #0x0A
	ldsh r3, [r4, r0]
	adds r0, r4, #0x0
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080FC0B8:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
