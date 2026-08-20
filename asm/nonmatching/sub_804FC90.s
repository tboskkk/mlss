	.syntax unified
	.text

	thumb_func_start sub_804FC90
sub_804FC90:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r2, [r3, #0x00]
	movs r1, #0x13
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0804FCCA
	ldrb r0, [r2, #0x01]
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r1, _0804FCD0 @ =0x00000352
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r0, #0x01
	eors r1, r0
	adds r0, r2, #0x0
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r1, [r2, #0x13]
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x13]
_0804FCCA:
	pop {r4}
	pop {r0}
	bx r0
_0804FCD0: .4byte 0x00000352
