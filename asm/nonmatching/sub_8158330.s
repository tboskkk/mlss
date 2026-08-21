	.syntax unified
	.text

	thumb_func_start sub_8158330
sub_8158330:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08158340
	bl sub_8021308
_08158340:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815834A
	bl sub_8021308
_0815834A:
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08158354
	bl sub_8021308
_08158354:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08158362
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08158362:
	pop {r4, r5}
	pop {r0}
	bx r0
