	.syntax unified
	.text

	thumb_func_start sub_801A33C
sub_801A33C:
	push {lr}
	ldr r0, _0801A354 @ =0x03000D0C
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0801A34C
	movs r0, #0x01
	strb r0, [r1, #0x06]
_0801A34C:
	pop {r0}
	bx r0
_0801A354: .4byte 0x03000D0C
