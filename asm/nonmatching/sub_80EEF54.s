	.syntax unified
	.text

	thumb_func_start sub_80EEF54
sub_80EEF54:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x04
	bls _080EEF66
	b _080EF098
_080EEF66:
	lsls r0, r0, #0x02
	ldr r1, _080EEF70 @ =lbl_080EEF74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EEF70: .4byte lbl_080EEF74
lbl_080EEF74:
	.4byte _080EEF88
	.4byte _080EEFBC
	.4byte _080EEFF4
	.4byte _080EF028
	.4byte _080EF068
_080EEF88:
	ldr r0, [pc, #40] @ (0x80eefb4)
	ldr r0, [r0, #0]
	movs r1, #150 @ 0x96
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #24
	ldr r2, [pc, #32] @ (0x80eefb8)
	ldr r2, [r2, #0]
	movs r3, #227 @ 0xe3
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r6, #0
	ldrsh r3, [r4, r6]
	str r3, [sp, #0]
	ldr r3, [r5, #20]
	movs r4, #146 @ 0x92
	lsls r4, r4, #1
	adds r3, r3, r4
	ldrh r3, [r3, #0]
	b.n _080EF050
	movs r0, r0
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsrs r0, r0, #31
	lsls r0, r0, #12
_080EEFBC:
	ldr r0, [pc, #40] @ (0x80eefe8)
	ldr r0, [r0, #0]
	movs r6, #150 @ 0x96
	lsls r6, r6, #3
	adds r0, r0, r6
	adds r1, r3, #0
	adds r1, #24
	ldr r2, [pc, #32] @ (0x80eefec)
	ldr r2, [r2, #0]
	movs r3, #227 @ 0xe3
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r6, #0
	ldrsh r3, [r4, r6]
	str r3, [sp, #0]
	ldr r3, [r5, #20]
	ldr r4, [pc, #16] @ (0x80eeff0)
	adds r3, r3, r4
	movs r6, #0
	ldrsh r3, [r3, r6]
	b.n _080EF050
	movs r0, r0
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsrs r0, r0, #31
	lsls r0, r0, #12
	lsls r6, r7, #9
	movs r0, r0
_080EEFF4:
	ldr r0, [pc, #40] @ (0x80ef020)
	ldr r0, [r0, #0]
	movs r1, #150 @ 0x96
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #24
	ldr r2, [pc, #32] @ (0x80ef024)
	ldr r2, [r2, #0]
	movs r3, #227 @ 0xe3
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r6, #0
	ldrsh r3, [r4, r6]
	str r3, [sp, #0]
	ldr r3, [r5, #20]
	movs r4, #160 @ 0xa0
	lsls r4, r4, #2
	adds r3, r3, r4
	movs r6, #0
	ldrsh r3, [r3, r6]
	b.n _080EF050
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsrs r0, r0, #31
	lsls r0, r0, #12
_080EF028:
	ldr r0, [pc, #48] @ (0x80ef05c)
	ldr r0, [r0, #0]
	movs r1, #150 @ 0x96
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #24
	ldr r2, [pc, #40] @ (0x80ef060)
	ldr r2, [r2, #0]
	movs r3, #227 @ 0xe3
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r6, #0
	ldrsh r3, [r4, r6]
	str r3, [sp, #0]
	ldr r3, [r5, #20]
	ldr r4, [pc, #24] @ (0x80ef064)
	adds r3, r3, r4
	ldrb r3, [r3, #0]
	lsrs r3, r3, #5
_080EF050:
	str r3, [sp, #4]
	movs r3, #0
	bl sub_80E9C4C
	b.n _080EF098
	movs r0, r0
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsrs r0, r0, #31
	lsls r0, r0, #12
	lsls r3, r5, #9
	movs r0, r0
_080EF068:
	ldr r0, [pc, #56] @ (0x80ef0a4)
	ldr r0, [r0, #0]
	movs r6, #150 @ 0x96
	lsls r6, r6, #3
	adds r0, r0, r6
	adds r1, r3, #0
	adds r1, #24
	ldr r2, [pc, #48] @ (0x80ef0a8)
	ldr r2, [r2, #0]
	movs r3, #227 @ 0xe3
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r6, #0
	ldrsh r3, [r4, r6]
	str r3, [sp, #0]
	ldr r3, [r5, #20]
	ldr r4, [pc, #32] @ (0x80ef0ac)
	adds r3, r3, r4
	movs r6, #0
	ldrsh r3, [r3, r6]
	str r3, [sp, #4]
	movs r3, #0
	bl sub_80E9C4C
_080EF098:
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xD0, 0x0F, 0x00, 0x03, 0xC0, 0x0F, 0x00, 0x03, 0x6E, 0x02, 0x00, 0x00
