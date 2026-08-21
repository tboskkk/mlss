	.syntax unified
	.text

	thumb_func_start sub_804FD3C
sub_804FD3C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _0804FD78 @ =0x00001053
	cmp r0, #0x00
	bne _0804FD62
	subs r1, #0x15
_0804FD62:
	adds r0, r4, #0x0
	bl sub_8049000
	ldr r0, _0804FD7C @ =0x0000035A
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0804FD78: .4byte 0x00001053
_0804FD7C: .4byte 0x0000035A
