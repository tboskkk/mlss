	.syntax unified
	.text

	thumb_func_start sub_81070B8
sub_81070B8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _081070D8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, [r1, #0x7C]
	ldrb r2, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _081070DC
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x0B]
	b _0810710E
	.byte 0x00, 0x00
_081070D8: .4byte 0x03000FD8
_081070DC:
	adds r0, r3, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08107100
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0810710E
	ldr r0, _081070FC @ =0x080FD44D
	b _0810710C
	.byte 0x00, 0x00
_081070FC: .4byte sub_80FD44C
_08107100:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810710E
	ldr r0, _08107114 @ =0x0810124D
_0810710C:
	str r0, [r4, #0x04]
_0810710E:
	pop {r4}
	pop {r0}
	bx r0
_08107114: .4byte sub_810124C
