	.syntax unified
	.text

	thumb_func_start sub_8096E08
sub_8096E08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _08096E3A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x06
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
	ldr r0, _08096E40 @ =0x08096F09
	str r0, [r4, #0x4C]
_08096E3A:
	pop {r4}
	pop {r0}
	bx r0
_08096E40: .4byte sub_8096F08
