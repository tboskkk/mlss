	.syntax unified
	.text

	thumb_func_start sub_80F86F0
sub_80F86F0:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	movs r5, #0x00
	ldr r3, [r2, #0x00]
	cmp r3, #0x07
	bgt _080F8710
	ldr r0, _080F870C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F8720
_080F870C: .4byte 0x03000FD8
_080F8710:
	ldr r1, _080F873C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F8720:
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F872A
	movs r5, #0x01
_080F872A:
	ldr r0, [r2, #0x04]
	cmp r5, r0
	beq _080F8734
	ldr r0, [r2, #0x08]
	str r0, [r4, #0x00]
_080F8734:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F873C: .4byte 0x03000FDC
