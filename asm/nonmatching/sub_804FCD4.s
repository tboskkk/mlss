	.syntax unified
	.text

	thumb_func_start sub_804FCD4
sub_804FCD4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0804FD14
	ldr r1, _0804FD0C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _0804FD10 @ =0x00001001
	cmp r0, #0x00
	beq _0804FD16
	adds r1, #0x27
	b _0804FD16
	.byte 0x00, 0x00
_0804FD0C: .4byte 0x0000035B
_0804FD10: .4byte 0x00001001
_0804FD14:
	ldr r1, _0804FD34 @ =0x00001002
_0804FD16:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0x00
	strh r0, [r4, #0x04]
	ldr r0, _0804FD38 @ =0x00000212
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0804FD34: .4byte 0x00001002
_0804FD38: .4byte 0x00000212
