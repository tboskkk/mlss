	.syntax unified
	.text

	thumb_func_start sub_8084294
sub_8084294:
	push {r4, lr}
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _080842D0
	ldr r1, [r2, #0x68]
	ldr r0, [r2, #0x64]
	cmp r1, r0
	bne _080842D0
	ldr r0, _080842BC @ =0x03000D74
	ldr r3, [r0, #0x00]
	ldr r1, [r3, #0x30]
	adds r4, r0, #0x0
	cmp r2, r1
	beq _080842D0
	adds r0, r1, #0x0
	cmp r0, #0x00
	beq _080842C0
	str r2, [r0, #0x64]
	b _080842C2
	.byte 0x00, 0x00
_080842BC: .4byte 0x03000D74
_080842C0:
	str r2, [r3, #0x34]
_080842C2:
	str r0, [r2, #0x68]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x01]
	adds r1, #0x01
	strb r1, [r0, #0x01]
	ldr r0, [r4, #0x00]
	str r2, [r0, #0x30]
_080842D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
