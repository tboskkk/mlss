	.syntax unified
	.text

	thumb_func_start sub_8116A2C
sub_8116A2C:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r1, #0x10
	beq _08116A42
	cmp r1, #0x20
	bne _08116A70
_08116A42:
	cmp r2, #0x00
	bne _08116A5C
	ldr r0, _08116A58 @ =0x08520200
	lsls r1, r4, #0x02
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	lsrs r4, r0, #0x1C
	ldrh r0, [r1, #0x00]
	b _08116A96
	.byte 0x00, 0x00
_08116A58: .4byte dword_8520200 @ =0x08520200
_08116A5C:
	ldr r0, _08116A6C @ =0x08520200
	lsls r1, r4, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x0F
	lsrs r4, r0, #0x1C
	ldrb r0, [r1, #0x02]
	b _08116AA8
_08116A6C: .4byte dword_8520200 @ =0x08520200
_08116A70:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08116A9C @ =0x08520200
	lsls r1, r4, #0x02
	adds r2, r1, r2
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1E
	lsrs r1, r1, #0x1E
	cmp r0, r1
	bhi _08116AA0
	lsls r0, r3, #0x1A
	lsrs r4, r0, #0x1C
	ldrh r0, [r2, #0x00]
_08116A96:
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x19
	b _08116AAA
_08116A9C: .4byte dword_8520200 @ =0x08520200
_08116AA0:
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x0F
	lsrs r4, r0, #0x1C
	ldrb r0, [r2, #0x02]
_08116AA8:
	lsrs r5, r0, #0x01
_08116AAA:
	adds r6, r5, #0x0
	cmp r4, #0x07
	bls _08116AB2
	movs r5, #0x00
_08116AB2:
	cmp r4, #0x00
	beq _08116AC0
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_8122E30
_08116AC0:
	cmp r4, #0x0C
	bhi _08116B34
	lsls r0, r4, #0x02
	ldr r1, _08116AD0 @ =lbl_08116AD4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08116AD0: .4byte lbl_08116AD4
lbl_08116AD4:
	.4byte _08116B08
	.4byte _08116B32
	.4byte _08116B0C
	.4byte _08116B24
	.4byte _08116B10
	.4byte _08116B20
	.4byte _08116B34
	.4byte _08116B34
	.4byte _08116B2A
	.4byte _08116B2E
	.4byte _08116B34
	.4byte _08116B34
	.4byte _08116B32
_08116B08:
	movs r4, #0
	b.n _08116B34
_08116B0C:
	movs r4, #4
	b.n _08116B34
_08116B10:
	ldr r1, [pc, #8] @ (0x8116b1c)
	lsls r0, r5, #4
	adds r0, r0, r1
	ldrb r4, [r0, #1]
	b.n _08116B34
	movs r0, r0
	pop {r4, r6, r7, pc}
	lsrs r3, r7, #32
_08116B20:
	movs r4, #5
	b.n _08116B34
_08116B24:
	adds r4, r5, #0
	adds r4, #12
	b.n _08116B34
_08116B2A:
	movs r4, #1
	b.n _08116B34
_08116B2E:
	movs r4, #2
	b.n _08116B34
_08116B32:
	movs r4, #3
_08116B34:
	lsls r0, r6, #0x05
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x0F
	ands r4, r1
	orrs r4, r0
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
