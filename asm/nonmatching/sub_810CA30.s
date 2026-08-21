	.syntax unified
	.text

	thumb_func_start sub_810CA30
sub_810CA30:
	push {lr}
	ldr r0, _0810CA50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810CA54
	movs r0, #0x00
	bl sub_810C0C8
	b _0810CA5A
	.byte 0x00, 0x00
_0810CA50: .4byte 0x03000FD8
_0810CA54:
	movs r0, #0x00
	bl sub_810C9A4
_0810CA5A:
	ldr r0, _0810CA7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810CA86
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810CA80
	movs r0, #0x01
	bl sub_810C0C8
	b _0810CA86
	.byte 0x00, 0x00
_0810CA7C: .4byte 0x03000FD8
_0810CA80:
	movs r0, #0x01
	bl sub_810C9A4
_0810CA86:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
