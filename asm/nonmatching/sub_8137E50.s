	push {r4, lr}
	adds r3, r0, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _08137E62
	b _08137F5A
_08137E62:
	lsls r0, r0, #0x02
	ldr r1, _08137E6C @ =lbl_08137E70
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08137E6C: .4byte lbl_08137E70
lbl_08137E70:
	.4byte _08137E90
	.4byte _08137EA8
	.4byte _08137EBC
	.4byte _08137ED4
	.4byte _08137EE8
	.4byte _08137F00
	.4byte _08137F20
	.4byte _08137F40
_08137E90:
	movs r0, #182 @ 0xb6
	lsls r0, r0, #2
	adds r1, r3, r0
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #8] @ (0x8137ea4)
	adds r0, r3, r1
	ldrh r0, [r0, #0]
	b.n _08137F52
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
_08137EA8:
	ldr r4, [pc, #12] @ (0x8137eb8)
	adds r2, r3, r4
	ldrh r1, [r2, #0]
	adds r4, #154 @ 0x9a
	adds r0, r3, r4
	strh r1, [r0, #0]
	b.n _08137F50
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
_08137EBC:
	ldr r4, [pc, #16] @ (0x8137ed0)
	adds r0, r3, r4
	ldrh r1, [r0, #0]
	movs r2, #182 @ 0xb6
	lsls r2, r2, #2
	adds r0, r3, r2
	movs r2, #0
	strh r1, [r0, #0]
	b.n _08137F32
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
_08137ED4:
	ldr r0, [pc, #12] @ (0x8137ee4)
	adds r2, r3, r0
	ldrh r1, [r2, #0]
	movs r4, #182 @ 0xb6
	lsls r4, r4, #2
	adds r0, r3, r4
	strh r1, [r0, #0]
	b.n _08137F0E
	lsls r6, r7, #8
	movs r0, r0
_08137EE8:
	movs r4, #182 @ 0xb6
	lsls r4, r4, #2
	adds r1, r3, r4
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #8] @ (0x8137efc)
	adds r0, r3, r1
	ldrh r1, [r0, #0]
	b.n _08137F10
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
_08137F00:
	ldr r4, [pc, #20] @ (0x8137f18)
	adds r2, r3, r4
	ldrh r0, [r2, #0]
	negs r0, r0
	adds r4, #154 @ 0x9a
	adds r1, r3, r4
	strh r0, [r1, #0]
_08137F0E:
	ldrh r1, [r2, #0]
_08137F10:
	ldr r2, [pc, #8] @ (0x8137f1c)
	adds r0, r3, r2
	strh r1, [r0, #0]
	b.n _08137F5A
	lsls r6, r7, #8
	movs r0, r0
	lsls r2, r3, #11
	movs r0, r0
_08137F20:
	ldr r4, [pc, #24] @ (0x8137f3c)
	adds r0, r3, r4
	ldrh r0, [r0, #0]
	negs r0, r0
	movs r2, #182 @ 0xb6
	lsls r2, r2, #2
	adds r1, r3, r2
	movs r2, #0
	strh r0, [r1, #0]
_08137F32:
	adds r4, #156 @ 0x9c
	adds r0, r3, r4
	strh r2, [r0, #0]
	b.n _08137F5A
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
_08137F40:
	ldr r0, [pc, #80] @ (0x8137f94)
	adds r2, r3, r0
	ldrh r0, [r2, #0]
	negs r0, r0
	movs r4, #182 @ 0xb6
	lsls r4, r4, #2
	adds r1, r3, r4
	strh r0, [r1, #0]
_08137F50:
	ldrh r0, [r2, #0]
_08137F52:
	negs r0, r0
	ldr r2, [pc, #64] @ (0x8137f98)
	adds r1, r3, r2
	strh r0, [r1, #0]
_08137F5A:
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldrh r1, [r0, #0x00]
	ldr r2, _08137F9C @ =0x00000242
	adds r0, r3, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r4, #0x02
	adds r0, r3, r4
	ldrh r1, [r0, #0x00]
	subs r4, #0x96
	adds r0, r3, r4
	strh r1, [r0, #0x00]
	ldr r1, _08137FA0 @ =0x000002DE
	adds r0, r3, r1
	strh r2, [r0, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00, 0xDA, 0x02, 0x00, 0x00
_08137F9C: .4byte 0x00000242
_08137FA0: .4byte 0x000002DE
