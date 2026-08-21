	.syntax unified
	.text

	thumb_func_start sub_80FADD4
sub_80FADD4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x24]
	ldr r2, _080FAE28 @ =0x000009A2
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	lsrs r5, r1, #0x01
	ldr r1, _080FAE2C @ =0x00000888
	adds r4, r0, r1
	cmp r5, #0x00
	beq _080FAE06
_080FADEA:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FADF8
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x00]
_080FADF8:
	lsls r0, r5, #0x10
	ldr r2, _080FAE30 @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #0x04
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080FADEA
_080FAE06:
	ldr r1, [r6, #0x24]
	ldr r3, _080FAE28 @ =0x000009A2
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x01
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x24]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FAE28: .4byte 0x000009A2
_080FAE2C: .4byte 0x00000888
_080FAE30: .4byte 0xFFFF0000
