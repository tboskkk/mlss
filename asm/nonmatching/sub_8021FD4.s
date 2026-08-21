	.syntax unified
	.text

	thumb_func_start sub_8021FD4
sub_8021FD4:
	push {lr}
	ldr r0, _08021FF0 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	cmp r0, #0x00
	beq _08021FE2
	bl free_heap_8018D9C
_08021FE2:
	bl sub_80208F4
	ldr r1, _08021FF4 @ =0x03000D74
	movs r0, #0x00
	str r0, [r1, #0x00]
	pop {r0}
	bx r0
_08021FF0: .4byte 0x0203FFB8
_08021FF4: .4byte 0x03000D74
