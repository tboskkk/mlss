	.syntax unified
	.text

	thumb_func_start sub_813939C
sub_813939C:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081393D2
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _081393D2
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	subs r2, #0x3A
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_081393D2:
	pop {r4}
	pop {r0}
	bx r0
