	.syntax unified
	.text

	thumb_func_start sub_80FACCC
sub_80FACCC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r0, [r0, #0x24]
	adds r0, #0xA8
	mov r12, r0
	movs r1, #0x0C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080FACEC
	ldr r0, [r2, #0x04]
	movs r1, #0xA8
	muls r0, r1
	add r12, r0
	movs r1, #0x01
_080FACEC:
	adds r3, r1, #0x0
	cmp r3, #0x00
	beq _080FAD1E
_080FACF2:
	mov r2, r12
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FAD0E
	ldrb r0, [r2, #0x04]
	cmp r0, r5
	bne _080FAD0E
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080FAD20
_080FAD0E:
	lsls r0, r3, #0x10
	ldr r1, _080FAD28 @ =0xFFFF0000
	adds r0, r0, r1
	movs r1, #0xA8
	add r12, r1
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080FACF2
_080FAD1E:
	movs r0, #0x01
_080FAD20:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FAD28: .4byte 0xFFFF0000
