	.syntax unified
	.text

	thumb_func_start sub_812A42C
sub_812A42C:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x07
	bls _0812A43C
	b _0812A790
_0812A43C:
	lsls r0, r0, #0x02
	ldr r1, _0812A448 @ =lbl_0812A44C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0812A448: .4byte lbl_0812A44C
lbl_0812A44C:
	.4byte _0812A46C
	.4byte _0812A4D4
	.4byte _0812A592
	.4byte _0812A5AA
	.4byte _0812A5CC
	.4byte _0812A602
	.4byte _0812A68E
	.4byte _0812A77A
_0812A46C:
	ldr r1, [r3, #60] @ 0x3c
	ldrh r2, [r1, #2]
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #136 @ 0x88
	ble.n _0812A488
	subs r0, r2, #4
	strh r0, [r1, #2]
	ldr r0, [r3, #60] @ 0x3c
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #136 @ 0x88
	ble.n _0812A488
	b.n _0812A790
_0812A488:
	adds r0, r3, #0
	adds r0, #176 @ 0xb0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq.n _0812A4A4
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #2
	strb r0, [r1, #0]
	ldr r1, [r3, #60] @ 0x3c
	movs r0, #136 @ 0x88
	strh r0, [r1, #2]
	ldr r2, [r3, #60] @ 0x3c
	b.n _0812A5F8
_0812A4A4:
	adds r1, r3, #0
	adds r1, #183 @ 0xb7
	movs r0, #1
	strb r0, [r1, #0]
	adds r1, #1
	movs r0, #3
	strb r0, [r1, #0]
	ldr r1, [r3, #60] @ 0x3c
	movs r0, #192 @ 0xc0
	strh r0, [r1, #2]
	ldr r2, [r3, #60] @ 0x3c
	ldrb r0, [r2, #18]
	movs r1, #16
	orrs r0, r1
	strb r0, [r2, #18]
	ldr r1, [r3, #68] @ 0x44
	ldr r0, [r3, #60] @ 0x3c
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r1, [r3, #68] @ 0x44
	movs r0, #136 @ 0x88
	strh r0, [r1, #2]
	ldr r2, [r3, #68] @ 0x44
	b.n _0812A5F8
_0812A4D4:
	ldr r2, [r3, #60] @ 0x3c
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #181 @ 0xb5
	adds r4, r4, r3
	mov ip, r4
	ldrb r0, [r4, #0]
	adds r0, #40 @ 0x28
	cmp r1, r0
	bge.n _0812A51C
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	ldr r3, [r3, #60] @ 0x3c
	movs r5, #0
	ldrsh r1, [r3, r5]
	ldrb r0, [r4, #0]
	adds r2, r0, #0
	adds r2, #32
	cmp r1, r2
	bge.n _0812A50C
	ldr r1, [pc, #8] @ (0x812a508)
	ldrh r0, [r3, #0]
	lsls r0, r0, #8
	b.n _0812A510
	movs r0, r0
	lsls r0, r0, #1
	lsls r0, r0, #8
_0812A50C:
	ldr r1, [pc, #8] @ (0x812a518)
	lsls r0, r2, #8
_0812A510:
	orrs r0, r2
	strh r0, [r1, #0]
	b.n _0812A790
	movs r0, r0
	lsls r0, r0, #1
	lsls r0, r0, #8
_0812A51C:
	adds r1, r3, #0
	adds r1, #183 @ 0xb7
	movs r0, #1
	strb r0, [r1, #0]
	ldr r1, [r3, #60] @ 0x3c
	mov r2, ip
	ldrb r0, [r2, #0]
	adds r0, #40 @ 0x28
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #164 @ 0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq.n _0812A562
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #3
	strb r0, [r1, #0]
	ldr r1, [r3, #60] @ 0x3c
	movs r0, #192 @ 0xc0
	strh r0, [r1, #2]
	ldr r2, [r3, #60] @ 0x3c
	ldrb r0, [r2, #18]
	movs r1, #16
	orrs r0, r1
	strb r0, [r2, #18]
	ldr r1, [r3, #68] @ 0x44
	ldr r0, [r3, #60] @ 0x3c
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r1, [r3, #68] @ 0x44
	movs r0, #136 @ 0x88
	strh r0, [r1, #2]
	ldr r2, [r3, #68] @ 0x44
	b.n _0812A5F8
_0812A562:
	ldr r1, [r3, #60] @ 0x3c
	movs r0, #192 @ 0xc0
	strh r0, [r1, #2]
	ldr r1, [r3, #60] @ 0x3c
	ldrb r0, [r1, #18]
	movs r2, #16
	orrs r0, r2
	strb r0, [r1, #18]
	ldr r1, [r3, #68] @ 0x44
	ldr r0, [r3, #60] @ 0x3c
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r1, [r3, #68] @ 0x44
	movs r0, #136 @ 0x88
	strh r0, [r1, #2]
	ldr r1, [r3, #68] @ 0x44
	ldrb r0, [r1, #18]
	orrs r0, r2
	strb r0, [r1, #18]
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #4
	strb r0, [r1, #0]
	b.n _0812A790
_0812A592:
	adds r0, r3, #0
	adds r0, #164 @ 0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq.n _0812A59E
	b.n _0812A790
_0812A59E:
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #4
	strb r0, [r1, #0]
	ldr r2, [r3, #68] @ 0x44
	b.n _0812A684
_0812A5AA:
	ldr r1, [r3, #68] @ 0x44
	ldrh r2, [r1, #2]
	movs r4, #2
	ldrsh r0, [r1, r4]
	cmp r0, #191 @ 0xbf
	bgt.n _0812A5BC
	adds r0, r2, #4
	strh r0, [r1, #2]
	b.n _0812A790
_0812A5BC:
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #4
	strb r0, [r1, #0]
	ldr r1, [r3, #68] @ 0x44
	movs r0, #192 @ 0xc0
	strh r0, [r1, #2]
	b.n _0812A790
_0812A5CC:
	ldr r1, [r3, #64] @ 0x40
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r0, [r1, r5]
	cmp r0, #136 @ 0x88
	ble.n _0812A5E8
	subs r0, r2, #4
	strh r0, [r1, #2]
	ldr r0, [r3, #64] @ 0x40
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #136 @ 0x88
	ble.n _0812A5E8
	b.n _0812A790
_0812A5E8:
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #6
	strb r0, [r1, #0]
	ldr r1, [r3, #64] @ 0x40
	movs r0, #136 @ 0x88
	strh r0, [r1, #2]
	ldr r2, [r3, #64] @ 0x40
_0812A5F8:
	ldrb r1, [r2, #18]
	subs r0, #153 @ 0x99
	ands r0, r1
	strb r0, [r2, #18]
	b.n _0812A790
_0812A602:
	ldr r2, [r3, #64] @ 0x40
	movs r4, #44 @ 0x2c
	ldrsh r0, [r2, r4]
	adds r0, r3, #0
	adds r0, #176 @ 0xb0
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _0812A642
	adds r4, r3, #0
	adds r4, #182 @ 0xb6
	ldrb r0, [r4, #0]
	adds r0, #32
	movs r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bge.n _0812A62C
	ldrh r0, [r2, #0]
	subs r0, #1
	b.n _0812A658
_0812A62C:
	cmp r1, r0
	ble.n _0812A632
	b.n _0812A790
_0812A632:
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #7
	strb r0, [r1, #0]
	ldr r1, [r3, #64] @ 0x40
	ldrb r0, [r4, #0]
	adds r0, #32
	b.n _0812A680
_0812A642:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne.n _0812A64C
	b.n _0812A790
_0812A64C:
	ldrh r1, [r2, #0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #32
	ble.n _0812A674
	subs r0, r1, #1
_0812A658:
	strh r0, [r2, #0]
	ldr r2, [pc, #20] @ (0x812a670)
	ldr r0, [r3, #64] @ 0x40
	ldrh r1, [r0, #0]
	lsls r1, r1, #8
	adds r0, r3, #0
	adds r0, #180 @ 0xb4
	ldrb r0, [r0, #0]
	adds r0, #32
	orrs r1, r0
	strh r1, [r2, #0]
	b.n _0812A790
	lsls r0, r0, #1
	lsls r0, r0, #8
_0812A674:
	adds r1, r3, #0
	adds r1, #184 @ 0xb8
	movs r0, #7
	strb r0, [r1, #0]
	ldr r1, [r3, #64] @ 0x40
	movs r0, #32
_0812A680:
	strh r0, [r1, #0]
	ldr r2, [r3, #64] @ 0x40
_0812A684:
	ldrb r0, [r2, #18]
	movs r1, #16
	orrs r0, r1
	strb r0, [r2, #18]
	b.n _0812A790
_0812A68E:
	ldr r1, [r3, #64] @ 0x40
	ldrh r2, [r1, #2]
	movs r5, #2
	ldrsh r0, [r1, r5]
	cmp r0, #191 @ 0xbf
	bgt.n _0812A6A8
	adds r0, r2, #4
	strh r0, [r1, #2]
	ldr r0, [r3, #64] @ 0x40
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #191 @ 0xbf
	ble.n _0812A790
_0812A6A8:
	ldr r1, [r3, #60] @ 0x3c
	ldr r0, [r3, #64] @ 0x40
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r1, [r3, #64] @ 0x40
	movs r0, #192 @ 0xc0
	strh r0, [r1, #2]
	adds r0, r3, #0
	adds r0, #176 @ 0xb0
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _0812A728
	adds r5, r3, #0
	adds r5, #180 @ 0xb4
	adds r4, r3, #0
	adds r4, #181 @ 0xb5
	ldrb r0, [r5, #0]
	ldrb r2, [r4, #0]
	cmp r0, r2
	bcs.n _0812A6FC
	ldr r2, [pc, #28] @ (0x812a6f4)
	adds r5, #2
	ldrb r0, [r5, #0]
	adds r0, #32
	lsls r0, r0, #8
	ldrb r1, [r4, #0]
	adds r1, #32
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r2, [pc, #16] @ (0x812a6f8)
	ldrb r0, [r5, #0]
	adds r0, #32
	lsls r0, r0, #8
	ldrb r1, [r4, #0]
	adds r1, #32
	b.n _0812A776
	lsls r0, r0, #1
	lsls r0, r0, #16
	lsls r0, r0, #1
	lsls r0, r0, #8
_0812A6FC:
	ldr r2, [pc, #32] @ (0x812a720)
	adds r4, r3, #0
	adds r4, #182 @ 0xb6
	ldrb r0, [r4, #0]
	adds r0, #32
	lsls r0, r0, #8
	ldrb r1, [r5, #0]
	adds r1, #32
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r2, [pc, #16] @ (0x812a724)
	ldrb r0, [r4, #0]
	adds r0, #32
	lsls r0, r0, #8
	ldrb r1, [r5, #0]
	adds r1, #32
	b.n _0812A776
	movs r0, r0
	lsls r0, r0, #1
	lsls r0, r0, #16
	lsls r0, r0, #1
	lsls r0, r0, #8
_0812A728:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq.n _0812A77A
	adds r4, r3, #0
	adds r4, #180 @ 0xb4
	movs r5, #181 @ 0xb5
	adds r5, r5, r3
	ldrb r0, [r4, #0]
	ldrb r1, [r5, #0]
	cmp r0, r1
	bcs.n _0812A760
	ldr r2, [pc, #20] @ (0x812a758)
	ldrb r0, [r5, #0]
	adds r0, #32
	movs r4, #128 @ 0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r2, [pc, #8] @ (0x812a75c)
	ldrb r0, [r5, #0]
	b.n _0812A774
	movs r0, r0
	lsls r0, r0, #1
	lsls r0, r0, #16
	lsls r0, r0, #1
	lsls r0, r0, #8
_0812A760:
	ldr r2, [pc, #52] @ (0x812a798)
	ldrb r0, [r4, #0]
	adds r0, #32
	movs r5, #128 @ 0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r2, [pc, #40] @ (0x812a79c)
	ldrb r0, [r4, #0]
_0812A774:
	adds r0, #32
_0812A776:
	orrs r0, r1
	strh r0, [r2, #0]
_0812A77A:
	adds r0, r3, #0
	adds r0, #184 @ 0xb8
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0]
	subs r0, #81 @ 0x51
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #84 @ 0x54
	strh r2, [r0, #0]
_0812A790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x40, 0x00, 0x00, 0x04, 0x40, 0x00, 0x00, 0x02
