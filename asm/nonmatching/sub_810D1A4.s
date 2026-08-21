	.syntax unified
	.text

	thumb_func_start sub_810D1A4
sub_810D1A4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810D1CE
	adds r0, r2, #0x0
	bl sub_8085A6C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810D1D2
_0810D1CE:
	movs r0, #0x00
	str r0, [r4, #0x04]
_0810D1D2:
	pop {r4}
	pop {r0}
	bx r0
