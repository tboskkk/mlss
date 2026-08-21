	.syntax unified
	.text

	thumb_func_start sub_80EAEF8
sub_80EAEF8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080EAF1E
	cmp r1, #0x01
	bgt _080EAF0C
	cmp r1, #0x00
	beq _080EAF12
	b _080EAF44
_080EAF0C:
	cmp r1, #0x02
	beq _080EAF30
	b _080EAF44
_080EAF12:
	ldr r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080EAF44
_080EAF1E:
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080EAF2A
	bl stop_sfx_80195A8
	b _080EAF44
_080EAF2A:
	bl stop_all_sfx_801959C
	b _080EAF44
_080EAF30:
	ldr r0, [r2, #0x00]
	bl sub_8019588
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EAF44
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EAF46
_080EAF44:
	movs r0, #0x01
_080EAF46:
	pop {r4}
	pop {r1}
	bx r1
