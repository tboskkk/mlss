	.syntax unified
	.text

	thumb_func_start sub_80EAB00
sub_80EAB00:
	ldr r3, _080EAB1C @ =0x0300034C
	adds r3, #0x79
	movs r0, #0x03
	ldrb r1, [r2, #0x00]
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
_080EAB1C: .4byte 0x0300034C
