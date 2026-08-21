	.syntax unified
	.text

	thumb_func_start sub_80EA854
sub_80EA854:
	push {r4, r5, lr}
	add sp, #-0x008
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	bne _080EA868
	ldr r0, _080EA888 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r0, r0, r4
	ldrb r4, [r0, #0x00]
_080EA868:
	adds r1, #0x18
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EA888: .4byte 0x0300034C
