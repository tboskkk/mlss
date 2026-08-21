	.syntax unified
	.text

	thumb_func_start sub_8082A6C
sub_8082A6C:
	push {lr}
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AA6
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _08082AA6
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
_08082AA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
