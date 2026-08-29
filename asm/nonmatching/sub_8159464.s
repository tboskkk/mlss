	.syntax unified
	.text

	thumb_func_start sub_8159464
sub_8159464:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08159480 @ =0x08CDCA30
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0815947A
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_0815947A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08159480: .4byte 0x08CDCA30
