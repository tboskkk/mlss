	.syntax unified
	.text

	thumb_func_start sub_8159A64
sub_8159A64:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r1, _08159A8C @ =0x00000524
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08159A78
	bl sub_8021308
_08159A78:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08159A86
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08159A86:
	pop {r4, r5}
	pop {r0}
	bx r0
_08159A8C: .4byte 0x00000524
