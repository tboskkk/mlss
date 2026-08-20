	.syntax unified
	.text

	thumb_func_start sub_8123340
sub_8123340:
	push {r4, lr}
	ldr r4, _08123358 @ =0x03000FF4
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0812334E
	bl free_heap_8018D9C
_0812334E:
	movs r0, #0x00
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08123358: .4byte 0x03000FF4
