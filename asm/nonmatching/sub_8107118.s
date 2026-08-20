	.syntax unified
	.text

	thumb_func_start sub_8107118
sub_8107118:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08107134 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08107138
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	b _08107144
_08107134: .4byte 0x03000FD8
_08107138:
	ldr r0, _08107148 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0810714C @ =0x00008E58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
_08107144:
	pop {r0}
	bx r0
_08107148: .4byte 0x03000FDC
_0810714C: .4byte 0x00008E58
