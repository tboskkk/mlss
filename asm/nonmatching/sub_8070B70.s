	.syntax unified
	.text

	thumb_func_start sub_8070B70
sub_8070B70:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08070BB8
	adds r0, r4, #0x0
	movs r1, #0x2B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08070B96
	adds r1, #0xFF
_08070B96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08070BA0
	adds r2, #0xFF
_08070BA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08070BAA
	adds r3, #0xFF
_08070BAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08070BC0 @ =0x0000201C
	bl sub_80DF024
	ldr r0, _08070BC4 @ =0x08070EDD
	str r0, [r4, #0x4C]
_08070BB8:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08070BC0: .4byte 0x0000201C
_08070BC4: .4byte sub_8070EDC
