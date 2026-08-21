	.syntax unified
	.text

	thumb_func_start sub_80FC164
sub_80FC164:
	push {lr}
	adds r2, r0, #0x0
	ldr r3, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0x0C
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	blt _080FC178
	ldrb r1, [r1, #0x0C]
	b _080FC184
_080FC178:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1F
_080FC184:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	cmp r0, r1
	beq _080FC190
	movs r0, #0x00
	b _080FC192
_080FC190:
	movs r0, #0x01
_080FC192:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
