	.syntax unified
	.text

	thumb_func_start sub_8133C7C
sub_8133C7C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08133CE0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08133C96
	adds r1, #0xFF
_08133C96:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08133CA0
	adds r0, #0xFF
_08133CA0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08133CAC
	adds r3, #0xFF
_08133CAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08133CE8 @ =0x00002734
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x80
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x69
	bl play_sfx_80195B4
	ldr r0, _08133CEC @ =0x08133C21
	str r0, [r4, #0x4C]
_08133CE0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08133CE8: .4byte 0x00002734
_08133CEC: .4byte sub_8133C20
