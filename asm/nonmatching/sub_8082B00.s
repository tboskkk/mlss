	.syntax unified
	.text

	thumb_func_start sub_8082B00
sub_8082B00:
	push {lr}
	ldr r0, _08082B14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08082B18
	movs r0, #0x00
	b _08082B1A
_08082B14: .4byte 0x03000FD8
_08082B18:
	movs r0, #0x01
_08082B1A:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
