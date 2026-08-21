	.syntax unified
	.text

	thumb_func_start sub_80F857C
sub_80F857C:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F858A
	cmp r2, #0x01
	beq _080F859C
	b _080F85AA
_080F858A:
	ldr r0, _080F8598 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x01
	b _080F85A8
_080F8598: .4byte 0x03000FD8
_080F859C:
	ldr r0, _080F85B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0x00
_080F85A8:
	strb r1, [r0, #0x00]
_080F85AA:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F85B0: .4byte 0x03000FD8
