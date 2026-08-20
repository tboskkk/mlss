	.syntax unified
	.text

	thumb_func_start sub_80EAB20
sub_80EAB20:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080EAB48
	cmp r0, #0x01
	bgt _080EAB32
	cmp r0, #0x00
	beq _080EAB38
	b _080EAB64
_080EAB32:
	cmp r0, #0x02
	beq _080EAB58
	b _080EAB64
_080EAB38:
	ldr r0, _080EAB44 @ =0x0300034C
	adds r0, #0x7C
	ldr r1, [r2, #0x00]
	ldrh r2, [r0, #0x00]
	orrs r1, r2
	b _080EAB62
_080EAB44: .4byte 0x0300034C
_080EAB48:
	ldr r0, _080EAB54 @ =0x0300034C
	adds r0, #0x7A
	ldr r1, [r2, #0x00]
	ldrh r2, [r0, #0x00]
	orrs r1, r2
	b _080EAB62
_080EAB54: .4byte 0x0300034C
_080EAB58:
	ldr r0, _080EAB6C @ =0x0300034C
	adds r0, #0x7A
	ldr r2, [r2, #0x00]
	ldrh r1, [r0, #0x00]
	bics r1, r2
_080EAB62:
	strh r1, [r0, #0x00]
_080EAB64:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EAB6C: .4byte 0x0300034C
