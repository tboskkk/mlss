	.syntax unified
	.text

	thumb_func_start sub_810FD54
sub_810FD54:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810FD8A
	adds r0, r4, #0x0
	movs r1, #0x0F
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
	movs r0, #0x89
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _0810FD90 @ =0x0810FEF5
	str r0, [r4, #0x4C]
_0810FD8A:
	pop {r4}
	pop {r0}
	bx r0
_0810FD90: .4byte sub_810FEF4
