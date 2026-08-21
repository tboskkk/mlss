	.syntax unified
	.text

	thumb_func_start sub_8062F8C
sub_8062F8C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062FC8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062FB8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062FC4
_08062FB8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062FC4:
	ldr r0, _08062FD0 @ =0x08062E0D
	str r0, [r4, #0x4C]
_08062FC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062FD0: .4byte sub_8062E0C
