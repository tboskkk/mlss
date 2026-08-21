	.syntax unified
	.text

	thumb_func_start sub_81111C0
sub_81111C0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111208
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	movs r1, #0x04
	cmp r0, #0x01
	beq _081111E4
	movs r1, #0x07
_081111E4:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08111210 @ =0x08110CB1
	str r0, [r4, #0x4C]
	movs r0, #0x89
	bl stop_sfx_80195A8
_08111208:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111210: .4byte sub_8110CB0
