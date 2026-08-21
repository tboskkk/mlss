	.syntax unified
	.text

	thumb_func_start sub_8070D88
sub_8070D88:
	push {lr}
	adds r2, r0, #0x0
	adds r3, r2, #0x0
	adds r3, #0x8C
	ldr r0, [r2, #0x18]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x00]
	subs r0, #0x80
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bgt _08070DC2
	movs r0, #0x00
	str r0, [r2, #0x18]
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08070DBE
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r3, #0x00]
	b _08070DC2
_08070DBE:
	ldr r0, _08070DC8 @ =0x0806F47D
	str r0, [r2, #0x4C]
_08070DC2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070DC8: .4byte sub_806F47C
