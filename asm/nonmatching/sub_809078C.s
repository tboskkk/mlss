	.syntax unified
	.text

	thumb_func_start sub_809078C
sub_809078C:
	ldr r1, _080907C0 @ =0x084FE8A8
	str r1, [r0, #0x6C]
	ldr r1, _080907C4 @ =0x03000FF4
	ldr r3, [r1, #0x00]
	movs r1, #0x77
	adds r1, r1, r0
	mov r12, r1
	ldrb r2, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldr r1, [r0, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldrh r2, [r3, #0x2A]
	str r2, [r1, #0x00]
	ldr r1, _080907C8 @ =0x08090831
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_080907C0: .4byte 0x084FE8A8
_080907C4: .4byte 0x03000FF4
_080907C8: .4byte sub_8090830
