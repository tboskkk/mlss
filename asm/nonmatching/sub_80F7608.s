	.syntax unified
	.text

	thumb_func_start sub_80F7608
sub_80F7608:
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _080F7618
	bl sub_810CA30
	b _080F761C
_080F7618:
	bl sub_810C950
_080F761C:
	ldr r0, _080F763C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _080F7640 @ =0x000002BF
	adds r2, r2, r0
	movs r1, #0x01
	ands r1, r4
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F763C: .4byte 0x03000FD8
_080F7640: .4byte 0x000002BF
