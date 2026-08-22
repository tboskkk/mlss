	.syntax unified
	.text

	thumb_func_start sub_8122E30
sub_8122E30:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r7, #0x00
	subs r0, #0x01
	cmp r0, #0x0B
	bls _08122E4E
	b _081230C2
_08122E4E:
	lsls r0, r0, #0x02
	ldr r1, _08122E58 @ =lbl_08122E5C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08122E58: .4byte lbl_08122E5C
lbl_08122E5C:
	.4byte _08122F56
	.4byte _08122F08
	.4byte _0812308C
	.4byte _08123000
	.4byte _08123030
	.4byte _08122FA2
	.4byte _081230C2
	.4byte _08122E8C
	.4byte _08122EB4
	.4byte _081230C2
	.4byte _081230C2
	.4byte _08122EDC
_08122E8C:
	ldr r0, [pc, #28] @ (0x8122eac)
	ldr r0, [r0, #0]
	adds r4, r0, #0
	adds r4, #136 @ 0x88
	ldrh r0, [r4, #0]
	adds r3, r0, r5
	strh r3, [r4, #0]
	lsls r1, r3, #16
	ldr r0, [pc, #16] @ (0x8122eb0)
	cmp r1, r0
	bhi.n _08122EA4
	b.n _081230C0
_08122EA4:
	subs r0, r3, r5
	strh r0, [r4, #0]
	b.n _081230C2
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
	movs r0, r0
	movs r7, #15
_08122EB4:
	ldr r0, [pc, #28] @ (0x8122ed4)
	ldr r0, [r0, #0]
	adds r3, r0, #0
	adds r3, #136 @ 0x88
	lsls r0, r5, #2
	adds r0, r0, r5
	ldrh r1, [r3, #0]
	adds r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #12] @ (0x8122ed8)
	cmp r0, r1
	bhi.n _08122EFC
	b.n _081230C0
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
	movs r7, #15
	movs r0, r0
_08122EDC:
	ldr r0, [pc, #32] @ (0x8122f00)
	ldr r0, [r0, #0]
	adds r3, r0, #0
	adds r3, #136 @ 0x88
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	ldrh r2, [r3, #0]
	adds r0, r0, r2
	strh r0, [r3, #0]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #12] @ (0x8122f04)
	cmp r0, r1
	bhi.n _08122EFC
	b.n _081230C0
_08122EFC:
	strh r1, [r3, #0]
	b.n _081230C2
	lsrs r4, r6, #31
	lsls r0, r0, #12
	movs r7, #15
	movs r0, r0
_08122F08:
	movs r3, #0
	ldr r0, [pc, #28] @ (0x8122f28)
	mov r8, r0
	mov r2, r8
	movs r6, #0
_08122F12:
	ldr r0, [r2, #0]
	movs r1, #185 @ 0xb9
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #0]
	cmp r1, #255 @ 0xff
	beq.n _08122F2C
	cmp r1, r4
	bne.n _08122F4A
	b.n _08122F38
	lsrs r4, r6, #31
	lsls r0, r0, #12
_08122F2C:
	strb r4, [r0, #0]
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, #242 @ 0xf2
	adds r0, r0, r4
	strb r6, [r0, #0]
_08122F38:
	ldr r1, [r2, #0]
	adds r1, #242 @ 0xf2
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	adds r0, r5, r0
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #242 @ 0xf2
	b.n _08122FE6
_08122F4A:
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #45 @ 0x2d
	bls.n _08122F12
	b.n _081230C2
_08122F56:
	movs r3, #0
	ldr r2, [pc, #24] @ (0x8122f74)
	mov r8, r2
	movs r6, #0
_08122F5E:
	ldr r0, [r2, #0]
	movs r1, #157 @ 0x9d
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #0]
	cmp r1, #255 @ 0xff
	beq.n _08122F78
	cmp r1, r4
	bne.n _08122F96
	b.n _08122F84
	lsrs r4, r6, #31
	lsls r0, r0, #12
_08122F78:
	strb r4, [r0, #0]
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, #186 @ 0xba
	adds r0, r0, r4
	strb r6, [r0, #0]
_08122F84:
	ldr r1, [r2, #0]
	adds r1, #186 @ 0xba
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	adds r0, r5, r0
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #186 @ 0xba
	b.n _08122FE6
_08122F96:
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #43 @ 0x2b
	bls.n _08122F5E
	b.n _081230C2
_08122FA2:
	movs r3, #0
	ldr r2, [pc, #28] @ (0x8122fc4)
	mov r8, r2
	mov r9, r3
	movs r6, #149 @ 0x95
	lsls r6, r6, #1
_08122FAE:
	ldr r0, [r2, #0]
	movs r1, #213 @ 0xd5
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r1, [r0, #0]
	cmp r1, #255 @ 0xff
	beq.n _08122FC8
	cmp r1, r4
	bne.n _08122FF4
	b.n _08122FD6
	lsrs r4, r6, #31
	lsls r0, r0, #12
_08122FC8:
	strb r4, [r0, #0]
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r1, r9
	strb r1, [r0, #0]
_08122FD6:
	ldr r1, [r2, #0]
	adds r1, r1, r6
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	adds r0, r5, r0
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, r0, r6
_08122FE6:
	adds r1, r0, r4
	ldrb r0, [r1, #0]
	cmp r0, #9
	bls.n _081230C0
	movs r0, #9
	strb r0, [r1, #0]
	b.n _081230C0
_08122FF4:
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #6
	bls.n _08122FAE
	b.n _081230C2
_08123000:
	ldr r2, [pc, #40] @ (0x812302c)
	ldr r0, [r2, #0]
	adds r0, #138 @ 0x8a
	adds r1, r0, r4
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	bne.n _08123012
	movs r0, #0
	strb r0, [r1, #0]
_08123012:
	ldr r1, [r2, #0]
	adds r1, #138 @ 0x8a
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	adds r0, r5, r0
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #138 @ 0x8a
	adds r1, r0, r4
	ldrb r0, [r1, #0]
	cmp r0, #99 @ 0x63
	bhi.n _081230B6
	b.n _081230C0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_08123030:
	ldr r2, [pc, #72] @ (0x812307c)
	mov r9, r2
	ldr r1, [pc, #72] @ (0x8123080)
	ldr r0, [pc, #76] @ (0x8123084)
	subs r6, r1, r0
	ldr r2, [r2, #0]
	adds r2, r2, r6
	adds r0, r4, #0
	movs r1, #8
	bl _call_via_r2
	ldr r1, [pc, #64] @ (0x8123088)
	mov r8, r1
	ldr r1, [r1, #0]
	asrs r5, r4, #8
	adds r1, #178 @ 0xb2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	asrs r1, r0
	cmp r1, #0
	bne.n _081230C2
	mov r0, r9
	ldr r2, [r0, #0]
	adds r2, r2, r6
	adds r0, r4, #0
	movs r1, #8
	bl _call_via_r2
	mov r1, r8
	ldr r2, [r1, #0]
	adds r2, #178 @ 0xb2
	adds r2, r2, r5
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2, #0]
	orrs r1, r0
	strb r1, [r2, #0]
	b.n _081230C0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r0, [r2, #26]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
	lsrs r4, r6, #31
	lsls r0, r0, #12
_0812308C:
	ldr r2, [pc, #44] @ (0x81230bc)
	ldr r0, [r2, #0]
	adds r0, #170 @ 0xaa
	adds r1, r0, r4
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	bne.n _0812309E
	movs r0, #0
	strb r0, [r1, #0]
_0812309E:
	ldr r1, [r2, #0]
	adds r1, #170 @ 0xaa
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	adds r0, r5, r0
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #170 @ 0xaa
	adds r1, r0, r4
	ldrb r0, [r1, #0]
	cmp r0, #99 @ 0x63
	bls.n _081230C0
_081230B6:
	movs r0, #99 @ 0x63
	strb r0, [r1, #0]
	b.n _081230C2
	lsrs r4, r6, #31
	lsls r0, r0, #12
_081230C0:
	movs r7, #1
_081230C2:
	adds r0, r7, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
