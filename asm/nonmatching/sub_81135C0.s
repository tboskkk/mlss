	.syntax unified
	.text

	thumb_func_start sub_81135C0
sub_81135C0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	ldr r2, _081135E4 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _081135E8
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08113658
_081135E4: .4byte 0x00000113
_081135E8:
	ldr r0, _08113660 @ =0x08114111
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x30]
	ldr r4, [r0, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08113622
	adds r1, #0xFF
_08113622:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0811362C
	adds r2, #0xFF
_0811362C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113636
	adds r3, #0xFF
_08113636:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113664 @ =0x00002ABF
	bl sub_80DF024
	ldr r1, _08113668 @ =0x000018CE
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _0811366C @ =0x08113F31
	str r0, [r4, #0x58]
	ldr r0, _08113670 @ =0x08113EA1
	str r0, [r4, #0x60]
	movs r0, #0x90
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
_08113658:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08113660: .4byte sub_8114110
_08113664: .4byte 0x00002ABF
_08113668: .4byte 0x000018CE
_0811366C: .4byte sub_8113F30
_08113670: .4byte sub_8113EA0
