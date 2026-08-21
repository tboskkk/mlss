	.syntax unified
	.text

	thumb_func_start sub_80EAC78
sub_80EAC78:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r7, r3, #0x0
	ldm r2!, {r5}
	ldr r3, _080EACA0 @ =0x03000FF4
	ldm r2!, {r1}
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r3, #0x00]
	adds r1, r1, r0
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080EACB2
	cmp r2, #0x01
	bgt _080EACA4
	cmp r2, #0x00
	beq _080EACAE
	b _080EACBC
_080EACA0: .4byte 0x03000FF4
_080EACA4:
	cmp r2, #0x02
	beq _080EACB6
	cmp r2, #0x03
	beq _080EACBA
	b _080EACBC
_080EACAE:
	ldrh r4, [r1, #0x0E]
	b _080EACBC
_080EACB2:
	ldrh r4, [r1, #0x12]
	b _080EACBC
_080EACB6:
	ldrh r4, [r1, #0x14]
	b _080EACBC
_080EACBA:
	ldrh r4, [r1, #0x18]
_080EACBC:
	adds r1, r6, #0x0
	adds r1, #0x18
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
