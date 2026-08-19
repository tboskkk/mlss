	.syntax unified
	.text

	thumb_func_start sub_80E9310
sub_80E9310:
	ldr r0, _080E932C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x10
	ldrb r1, [r1, #0x01]
	orrs r0, r1
	bx lr
	.byte 0x00, 0x00
_080E932C: .4byte 0x0300034C
