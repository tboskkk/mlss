	.syntax unified
	.text

	thumb_func_start sub_815861C
sub_815861C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_815FAA4
	ldr r2, [r4, #0x34]
	cmp r2, #0x00
	beq _0815864A
	ldr r1, [r5, #0x00]
	ldr r0, [r4, #0x04]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x34]
	ldr r1, [r5, #0x04]
	ldr r0, _08158650 @ =0x03001014
	ldr r0, [r0, #0x00]
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x08
	subs r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
_0815864A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08158650: .4byte 0x03001014
