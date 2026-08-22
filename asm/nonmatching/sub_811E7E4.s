	.syntax unified
	.text

	thumb_func_start sub_811E7E4
sub_811E7E4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r1, _0811E800 @ =0x0000014F
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	bls _0811E7F4
	b _0811ED92
_0811E7F4:
	lsls r0, r0, #0x02
	ldr r1, _0811E804 @ =lbl_0811E808
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0811E800: .4byte 0x0000014F
_0811E804: .4byte lbl_0811E808
lbl_0811E808:
	.4byte _0811E83C
	.4byte _0811E938
	.4byte _0811EB4C
	.4byte _0811EB4C
	.4byte _0811ECE0
	.4byte _0811ED92
	.4byte _0811E8B0
	.4byte _0811ED92
	.4byte _0811E99C
	.4byte _0811ED92
	.4byte _0811EA30
	.4byte _0811ED92
	.4byte _0811EBBC
_0811E83C:
	adds r2, r5, #0
	adds r2, #136 @ 0x88
	ldr r0, [r2, #0]
	movs r3, #0
	movs r1, #0
	strh r1, [r0, #32]
	ldr r0, [r2, #0]
	strh r1, [r0, #34] @ 0x22
	ldr r0, [r2, #0]
	strh r1, [r0, #16]
	ldr r0, [r2, #0]
	strh r1, [r0, #18]
	ldr r0, [r2, #0]
	strh r1, [r0, #0]
	ldr r1, [r2, #0]
	movs r0, #96 @ 0x60
	strh r0, [r1, #2]
	ldr r2, [pc, #68] @ (0x811e8a4)
	movs r1, #228 @ 0xe4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
	subs r2, #2
	movs r1, #229 @ 0xe5
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #32] @ (0x811e8a8)
	ldr r2, [pc, #32] @ (0x811e8ac)
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #191 @ 0xbf
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #234 @ 0xea
	lsls r0, r0, #5
	strh r0, [r1, #0]
	movs r1, #170 @ 0xaa
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r3, [r0, #0]
	b.n _0811ED92
	movs r6, r1
	lsls r0, r0, #8
	movs r0, r1
	lsls r0, r0, #8
	subs r0, r1, r0
	movs r0, r0
_0811E8B0:
	ldr r2, [pc, #72] @ (0x811e8fc)
	adds r1, r5, r2
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	bl sub_811E55C
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #136 @ 0x88
	ldr r1, [r4, #0]
	adds r1, #16
	adds r0, r5, #0
	movs r2, #2
	bl sub_811E684
	ldr r1, [r4, #0]
	adds r1, #32
	adds r0, r5, #0
	movs r2, #1
	bl sub_811E684
	ldr r0, [r4, #0]
	movs r2, #18
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge.n _0811E8EC
	negs r0, r1
_0811E8EC:
	lsls r0, r0, #16
	lsrs r3, r0, #16
	cmp r1, #0
	bgt.n _0811E904
	ldr r0, [pc, #8] @ (0x811e900)
	strh r3, [r0, #0]
	b.n _0811E910
	movs r0, r0
	lsls r5, r2, #5
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811E904:
	ldr r2, [pc, #20] @ (0x811e91c)
	movs r1, #160 @ 0xa0
	subs r0, r1, r3
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r2, #0]
_0811E910:
	cmp r6, #1
	beq.n _0811E920
	cmp r6, #2
	beq.n _0811E92C
	b.n _0811ED92
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811E920:
	ldr r1, [pc, #4] @ (0x811e928)
	adds r0, r5, r1
	strb r6, [r0, #0]
	b.n _0811EC78
	lsls r7, r1, #5
	movs r0, r0
_0811E92C:
	ldr r0, [pc, #4] @ (0x811e934)
	adds r1, r5, r0
	movs r0, #0
	b.n _0811ECC2
	lsls r7, r1, #5
	movs r0, r0
_0811E938:
	adds r2, r5, #0
	adds r2, #136 @ 0x88
	ldr r0, [r2, #0]
	movs r4, #0
	movs r1, #0
	strh r1, [r0, #32]
	ldr r0, [r2, #0]
	strh r1, [r0, #34] @ 0x22
	ldr r0, [r2, #0]
	strh r1, [r0, #16]
	ldr r0, [r2, #0]
	strh r1, [r0, #18]
	ldr r0, [r2, #0]
	strh r1, [r0, #0]
	ldr r0, [r2, #0]
	strh r1, [r0, #2]
	ldr r3, [pc, #60] @ (0x811e998)
	movs r1, #228 @ 0xe4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #3
	orrs r0, r1
	strh r0, [r3, #0]
	subs r3, #2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #20]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0]
	subs r3, #2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #36] @ 0x24
	lsrs r0, r0, #11
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r3, #0]
	movs r2, #191 @ 0xbf
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #250 @ 0xfa
	lsls r0, r0, #5
	b.n _0811EBA6
	movs r0, r0
	movs r6, r1
	lsls r0, r0, #8
_0811E99C:
	ldr r2, [pc, #72] @ (0x811e9e8)
	adds r1, r5, r2
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	bl sub_811E55C
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #136 @ 0x88
	ldr r1, [r4, #0]
	adds r1, #16
	adds r0, r5, #0
	movs r2, #2
	bl sub_811E684
	ldr r1, [r4, #0]
	adds r1, #32
	adds r0, r5, #0
	movs r2, #1
	bl sub_811E684
	ldr r0, [r4, #0]
	movs r2, #18
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge.n _0811E9D8
	negs r0, r1
_0811E9D8:
	lsls r0, r0, #16
	lsrs r3, r0, #16
	cmp r1, #0
	bgt.n _0811E9F0
	ldr r0, [pc, #8] @ (0x811e9ec)
	strh r3, [r0, #0]
	b.n _0811E9FC
	movs r0, r0
	lsls r5, r2, #5
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811E9F0:
	ldr r2, [pc, #20] @ (0x811ea08)
	movs r1, #160 @ 0xa0
	subs r0, r1, r3
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r2, #0]
_0811E9FC:
	cmp r6, #1
	beq.n _0811EA0C
	cmp r6, #2
	beq.n _0811EA1C
	b.n _0811ED92
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811EA0C:
	ldr r0, [pc, #8] @ (0x811ea18)
	adds r1, r5, r0
	movs r4, #0
	movs r0, #2
	b.n _0811EAA8
	movs r0, r0
	lsls r7, r1, #5
	movs r0, r0
_0811EA1C:
	ldr r2, [pc, #12] @ (0x811ea2c)
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1, #0]
	movs r0, #191 @ 0xbf
	lsls r0, r0, #1
	adds r1, r5, r0
	b.n _0811ECCA
	lsls r7, r1, #5
	movs r0, r0
_0811EA30:
	ldr r2, [pc, #72] @ (0x811ea7c)
	adds r1, r5, r2
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	bl sub_811E55C
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #136 @ 0x88
	ldr r1, [r4, #0]
	adds r1, #16
	adds r0, r5, #0
	movs r2, #2
	bl sub_811E684
	ldr r1, [r4, #0]
	adds r1, #32
	adds r0, r5, #0
	movs r2, #1
	bl sub_811E684
	ldr r0, [r4, #0]
	movs r2, #18
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge.n _0811EA6C
	negs r0, r1
_0811EA6C:
	lsls r0, r0, #16
	lsrs r3, r0, #16
	cmp r1, #0
	bgt.n _0811EA84
	ldr r0, [pc, #8] @ (0x811ea80)
	strh r3, [r0, #0]
	b.n _0811EA90
	movs r0, r0
	lsls r5, r2, #5
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811EA84:
	ldr r2, [pc, #20] @ (0x811ea9c)
	movs r1, #160 @ 0xa0
	subs r0, r1, r3
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r2, #0]
_0811EA90:
	cmp r6, #1
	beq.n _0811EAA0
	cmp r6, #2
	beq.n _0811EB38
	b.n _0811ED92
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811EAA0:
	ldr r0, [pc, #104] @ (0x811eb0c)
	adds r1, r5, r0
	movs r4, #0
	movs r0, #3
_0811EAA8:
	strb r0, [r1, #0]
	ldr r1, [pc, #100] @ (0x811eb10)
	ldr r2, [pc, #100] @ (0x811eb14)
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #4
	ldr r2, [pc, #96] @ (0x811eb18)
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #2
	movs r0, #80 @ 0x50
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #89 @ 0x59
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #80] @ (0x811eb1c)
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #76] @ (0x811eb20)
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #191 @ 0xbf
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, [pc, #68] @ (0x811eb24)
	strh r0, [r1, #0]
	ldr r1, [pc, #68] @ (0x811eb28)
	movs r0, #2
	bl sub_8018B78
	ldr r3, [pc, #64] @ (0x811eb2c)
	strh r4, [r3, #0]
	ldr r2, [pc, #64] @ (0x811eb30)
	ldrh r0, [r2, #0]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #60] @ (0x811eb34)
	ldrh r0, [r1, #0]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1, #0]
	adds r1, #2
	ldrh r0, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	strh r6, [r3, #0]
	b.n _0811ED92
	lsls r7, r1, #5
	movs r0, r0
	lsls r0, r0, #1
	lsls r0, r0, #8
	lsrs r1, r1, #1
	movs r0, r0
	asrs r1, r2, #1
	movs r0, r0
	lsrs r1, r3, #28
	movs r0, r0
	subs r7, r3, #4
	movs r0, r0
	ldrb r0, [r0, #29]
	movs r0, r0
	subs r5, r2, r4
	lsrs r2, r2, #32
	lsls r0, r1, #8
	lsls r0, r0, #16
	movs r4, r0
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #16
_0811EB38:
	ldr r2, [pc, #12] @ (0x811eb48)
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1, #0]
	movs r0, #191 @ 0xbf
	lsls r0, r0, #1
	adds r1, r5, r0
	b.n _0811ECCA
	lsls r7, r1, #5
	movs r0, r0
_0811EB4C:
	adds r2, r5, #0
	adds r2, #136 @ 0x88
	ldr r0, [r2, #0]
	movs r4, #0
	movs r1, #0
	strh r1, [r0, #32]
	ldr r0, [r2, #0]
	strh r1, [r0, #34] @ 0x22
	ldr r0, [r2, #0]
	strh r1, [r0, #16]
	ldr r0, [r2, #0]
	strh r1, [r0, #18]
	ldr r0, [r2, #0]
	strh r1, [r0, #0]
	ldr r0, [r2, #0]
	strh r1, [r0, #2]
	ldr r3, [pc, #68] @ (0x811ebb4)
	movs r1, #228 @ 0xe4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #3
	orrs r0, r1
	strh r0, [r3, #0]
	subs r3, #2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #20]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0]
	subs r3, #2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #36] @ 0x24
	lsrs r0, r0, #11
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r3, #0]
	movs r2, #191 @ 0xbf
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, [pc, #16] @ (0x811ebb8)
_0811EBA6:
	strh r0, [r1, #0]
	movs r1, #170 @ 0xaa
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r4, [r0, #0]
	b.n _0811ED92
	movs r0, r0
	movs r6, r1
	lsls r0, r0, #8
	ldrb r0, [r0, #29]
	movs r0, r0
_0811EBBC:
	ldr r2, [pc, #108] @ (0x811ec2c)
	adds r1, r5, r2
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	bl sub_811E55C
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #136 @ 0x88
	ldr r1, [r4, #0]
	adds r1, #16
	adds r0, r5, #0
	movs r2, #2
	bl sub_811E684
	ldr r1, [r4, #0]
	adds r1, #32
	adds r0, r5, #0
	movs r2, #1
	bl sub_811E684
	ldr r0, [pc, #68] @ (0x811ec30)
	ldr r0, [r0, #0]
	movs r1, #227 @ 0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [pc, #60] @ (0x811ec34)
	movs r1, #0
	bl sub_80E98C0
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _0811EC0E
	ldr r1, [r4, #0]
	adds r1, #48 @ 0x30
	adds r0, r5, #0
	movs r2, #0
	bl sub_811E684
_0811EC0E:
	ldr r0, [r4, #0]
	movs r2, #18
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge.n _0811EC1C
	negs r0, r1
_0811EC1C:
	lsls r0, r0, #16
	lsrs r3, r0, #16
	cmp r1, #0
	bgt.n _0811EC3C
	ldr r0, [pc, #16] @ (0x811ec38)
	strh r3, [r0, #0]
	b.n _0811EC48
	movs r0, r0
	lsls r5, r2, #5
	movs r0, r0
	lsrs r0, r0, #31
	lsls r0, r0, #12
	lsls r6, r4, #8
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811EC3C:
	ldr r2, [pc, #20] @ (0x811ec54)
	movs r1, #160 @ 0xa0
	subs r0, r1, r3
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r2, #0]
_0811EC48:
	cmp r6, #1
	beq.n _0811EC58
	cmp r6, #2
	beq.n _0811ECA2
	b.n _0811ED92
	movs r0, r0
	lsls r4, r0, #1
	lsls r0, r0, #8
_0811EC58:
	ldr r0, [pc, #44] @ (0x811ec88)
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, [pc, #40] @ (0x811ec8c)
	ldr r0, [r0, #0]
	movs r1, #227 @ 0xe3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [pc, #36] @ (0x811ec90)
	movs r1, #0
	bl sub_80E98C0
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _0811EC94
_0811EC78:
	movs r2, #191 @ 0xbf
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #250 @ 0xfa
	lsls r0, r0, #5
	strh r0, [r1, #0]
	b.n _0811ED92
	movs r0, r0
	lsls r7, r1, #5
	movs r0, r0
	lsrs r0, r0, #31
	lsls r0, r0, #12
	lsls r6, r4, #8
	movs r0, r0
_0811EC94:
	movs r0, #191 @ 0xbf
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #242 @ 0xf2
	lsls r0, r0, #5
	strh r0, [r1, #0]
	b.n _0811ED92
_0811ECA2:
	ldr r2, [pc, #48] @ (0x811ecd4)
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #44] @ (0x811ecd8)
	ldr r1, [pc, #44] @ (0x811ecdc)
	movs r2, #240 @ 0xf0
	lsls r2, r2, #7
	ldr r3, [r0, #0]
	movs r0, #0
	bl _call_via_r3
	movs r0, #169 @ 0xa9
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
_0811ECC2:
	strb r0, [r1, #0]
	movs r2, #191 @ 0xbf
	lsls r2, r2, #1
	adds r1, r5, r2
_0811ECCA:
	movs r0, #234 @ 0xea
	lsls r0, r0, #5
	strh r0, [r1, #0]
	b.n _0811ED92
	movs r0, r0
	lsls r7, r1, #5
	movs r0, r0
	asrs r4, r6, #32
	lsls r0, r0, #12
	strh r0, [r0, #0]
	lsls r0, r0, #24
_0811ECE0:
	adds r4, r5, #0
	adds r4, #136 @ 0x88
	ldr r0, [r4, #0]
	movs r1, #0
	strh r1, [r0, #32]
	ldr r0, [r4, #0]
	strh r1, [r0, #34] @ 0x22
	ldr r0, [r4, #0]
	strh r1, [r0, #16]
	ldr r0, [r4, #0]
	strh r1, [r0, #18]
	ldr r0, [r4, #0]
	strh r1, [r0, #0]
	ldr r0, [r4, #0]
	strh r1, [r0, #2]
	ldr r2, [pc, #104] @ (0x811ed68)
	movs r1, #228 @ 0xe4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0, #0]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r1, #3
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #88] @ (0x811ed6c)
	ldr r0, [r4, #0]
	ldrh r0, [r0, #20]
	lsrs r0, r0, #11
	lsls r0, r0, #8
	movs r6, #10
	orrs r0, r6
	strh r0, [r1, #0]
	subs r1, #2
	ldr r0, [r4, #0]
	ldrh r0, [r0, #36] @ 0x24
	movs r7, #31
	lsrs r0, r0, #11
	lsls r0, r0, #8
	orrs r0, r6
	strh r0, [r1, #0]
	ldr r0, [pc, #60] @ (0x811ed70)
	ldr r0, [r0, #0]
	movs r2, #227 @ 0xe3
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r2, [pc, #52] @ (0x811ed74)
	movs r1, #0
	bl sub_80E98C0
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _0811ED7C
	ldr r1, [pc, #44] @ (0x811ed78)
	ldr r0, [r4, #0]
	ldrh r0, [r0, #52] @ 0x34
	lsrs r0, r0, #11
	ands r0, r7
	lsls r0, r0, #8
	orrs r0, r6
	strh r0, [r1, #0]
	movs r0, #191 @ 0xbf
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #250 @ 0xfa
	lsls r0, r0, #5
	b.n _0811ED86
	movs r0, r0
	movs r6, r1
	lsls r0, r0, #8
	movs r4, r1
	lsls r0, r0, #8
	lsrs r0, r0, #31
	lsls r0, r0, #12
	lsls r6, r4, #8
	movs r0, r0
	movs r0, r1
	lsls r0, r0, #8
_0811ED7C:
	movs r2, #191 @ 0xbf
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #242 @ 0xf2
	lsls r0, r0, #5
_0811ED86:
	strh r0, [r1, #0]
	movs r0, #170 @ 0xaa
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	strb r0, [r1, #0]
_0811ED92:
	ldr r0, _0811EE10 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0811EE14 @ =0x00000226
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	adds r2, r5, #0x0
	adds r2, #0x88
	cmp r0, #0x00
	beq _0811EDC6
	ldr r1, _0811EE18 @ =0x02000010
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x32]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #0x00]
_0811EDC6:
	ldr r1, _0811EE1C @ =0x02000014
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x00]
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x10]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x12]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x02]
	strh r0, [r1, #0x00]
	subs r1, #0x1E
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0811EE10: .4byte 0x03000FC0
_0811EE14: .4byte 0x00000226
_0811EE18: .4byte 0x02000010
_0811EE1C: .4byte 0x02000014
