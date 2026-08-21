	.syntax unified
	.text

	thumb_func_start sub_810D170
sub_810D170:
	push {r4, r5, lr}
	ldr r5, _0810D1A0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810D19A
	adds r0, r1, #0x0
	adds r0, #0x80
	movs r4, #0x00
	str r4, [r0, #0x00]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_0810D19A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810D1A0: .4byte 0x03000FD8
