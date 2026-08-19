	.syntax unified
	.text

	thumb_func_start sub_8047A3C
sub_8047A3C:
	push {lr}
	ldr r1, _08047A58 @ =0x000002B5
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _08047A50
	movs r1, #0x01
_08047A50:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08047A58: .4byte 0x000002B5
