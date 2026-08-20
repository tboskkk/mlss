	.syntax unified
	.text

	thumb_func_start sub_8114558
sub_8114558:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x30]
	ldr r0, [r0, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08114580
	adds r1, r2, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	ldr r1, _08114584 @ =0x081140C1
	cmp r0, #0x00
	beq _0811457E
	ldr r1, _08114588 @ =0x0811458D
_0811457E:
	str r1, [r2, #0x4C]
_08114580:
	pop {r0}
	bx r0
_08114584: .4byte sub_81140C0
_08114588: .4byte sub_811458C
