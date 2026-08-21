	.syntax unified
	.text

	thumb_func_start sub_8108CD0
sub_8108CD0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08108D1E
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08108D10
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08108D10
	ldr r0, _08108D24 @ =0x08108BE1
	bl sub_807FFB8
	str r5, [r0, #0x08]
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108D10:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08108D28 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2, #0x00]
_08108D1E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08108D24: .4byte sub_8108BE0
_08108D28: .4byte 0x0000FFFC
