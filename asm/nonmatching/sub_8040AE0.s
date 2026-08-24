	.syntax unified
	.text

	thumb_func_start sub_8040AE0
sub_8040AE0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08040B60 @ =0x02000001
	ands r0, r1
	cmp r0, r1
	beq _08040AF8
	b _08040C46
_08040AF8:
	ldr r2, _08040B64 @ =0x00000216
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _08040B08
	b _08040C46
_08040B08:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _08040B40
	ldr r3, _08040B68 @ =0x083A0636
	ldrb r0, [r6, #0x02]
	lsrs r1, r0, #0x04
	movs r0, #0x0C
	ands r0, r2
	cmp r0, #0x04
	beq _08040B28
	adds r1, #0x10
_08040B28:
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08040B40:
	adds r2, r4, #0x0
	movs r7, #0x00
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x05
	bhi _08040BF8
	lsls r0, r0, #0x02
	ldr r1, _08040B6C @ =lbl_08040B70
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08040B60: .4byte 0x02000001
_08040B64: .4byte 0x00000216
_08040B68: .4byte dword_83A0636 @ =0x083A0636
_08040B6C: .4byte lbl_08040B70
lbl_08040B70:
	.4byte _08040B88
	.4byte _08040B88
	.4byte _08040BAE
	.4byte _08040BAE
	.4byte _08040B88
	.4byte _08040BAE
_08040B88:
	adds r0, r6, #0
	adds r0, #36 @ 0x24
	ldrb r1, [r0, #0]
	lsls r1, r1, #29
	adds r0, #40 @ 0x28
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	cmp r1, r0
	beq.n _08040B9C
	movs r2, #1
_08040B9C:
	movs r3, #133 @ 0x85
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r1, [r0, #0]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne.n _08040BF8
	b.n _08040BF6
_08040BAE:
	movs r0, #4
	ldrsh r1, [r6, r0]
	movs r3, #44 @ 0x2c
	ldrsh r0, [r6, r3]
	cmp r1, r0
	bne.n _08040BCC
	adds r0, r6, #0
	adds r0, #36 @ 0x24
	ldrb r1, [r0, #0]
	lsls r1, r1, #29
	adds r0, #40 @ 0x28
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	cmp r1, r0
	beq.n _08040BCE
_08040BCC:
	movs r2, #1
_08040BCE:
	ldr r1, [pc, #124] @ (0x8040c4c)
	adds r0, r6, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne.n _08040BE6
	adds r1, #2
	adds r0, r6, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq.n _08040BF6
_08040BE6:
	movs r1, #133 @ 0x85
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r1, [r0, #0]
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	bne.n _08040BF8
_08040BF6:
	movs r7, #1
_08040BF8:
	cmp r2, #0x00
	beq _08040C30
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r5, r6, r2
	ldr r0, [r5, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x3C]
	movs r1, #0x01
	bl _call_via_r2
	ldr r2, [r5, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
_08040C30:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r2, [r0, #0x00]
	lsls r3, r7, #0x04
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x12]
_08040C46:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x42, 0x02, 0x00, 0x00
