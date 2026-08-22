	.syntax unified
	.text

	thumb_func_start sub_8169DFC
sub_8169DFC:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	movs r1, #0x02
	bl sub_8163EE4
	ldr r1, _08169E20 @ =0x00000474
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x07
	bls _08169E14
	b _08169F14
_08169E14:
	lsls r0, r0, #0x02
	ldr r1, _08169E24 @ =lbl_08169E28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08169E20: .4byte 0x00000474
_08169E24: .4byte lbl_08169E28
lbl_08169E28:
	.4byte _08169E48
	.4byte _08169E64
	.4byte _08169E94
	.4byte _08169E9C
	.4byte _08169EA4
	.4byte _08169EAC
	.4byte _08169EB4
	.4byte _08169ED0
_08169E48:
	ldr r0, [pc, #48] @ (0x8169e7c)
	ldr r2, [pc, #52] @ (0x8169e80)
	adds r0, r0, r2
	movs r2, #1
	negs r2, r2
	str r2, [r0, #0]
	movs r0, #0
	movs r1, #3
	bl sub_8019308
	ldr r0, [pc, #36] @ (0x8169e84)
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1, #0]
_08169E64:
	adds r0, r4, #0
	adds r0, #112 @ 0x70
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08169E88
	ldr r2, [pc, #16] @ (0x8169e84)
	adds r1, r4, r2
	movs r0, #2
	str r0, [r1, #0]
	b.n _08169F14
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsrs r4, r0, #2
	movs r0, r0
	lsls r4, r6, #17
	movs r0, r0
_08169E88:
	ldr r0, [r4, #32]
	ldr r1, [r4, #36] @ 0x24
	ldr r2, [r4, #28]
	bl sub_816863C
	b.n _08169F14
_08169E94:
	adds r0, r4, #0
	bl sub_8169F28
	b.n _08169F14
_08169E9C:
	adds r0, r4, #0
	bl sub_816A1E8
	b.n _08169F14
_08169EA4:
	adds r0, r4, #0
	bl sub_816A810
	b.n _08169F14
_08169EAC:
	adds r0, r4, #0
	bl sub_816B000
	b.n _08169F14
_08169EB4:
	adds r0, r4, #0
	adds r0, #112 @ 0x70
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08169F14
	ldr r0, [pc, #8] @ (0x8169ecc)
	adds r1, r4, r0
	movs r0, #7
	str r0, [r1, #0]
	b.n _08169F14
	lsls r4, r6, #17
	movs r0, r0
_08169ED0:
	movs r0, #0
	bl sub_8163D80
	movs r0, #0
	bl sub_8019628
	ldr r0, [pc, #40] @ (0x8169f08)
	ldr r2, [pc, #44] @ (0x8169f0c)
	adds r1, r4, r2
	ldrh r1, [r1, #0]
	bl sub_80E9A6C
	ldr r0, [pc, #36] @ (0x8169f10)
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	cmp r4, #0
	beq.n _08169F20
	ldr r1, [r4, #24]
	movs r2, #16
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #20]
	movs r1, #3
	bl _call_via_r2
	b.n _08169F20
	adds r1, r4, #3
	movs r0, r0
	lsls r4, r0, #18
	movs r0, r0
	lsls r0, r2, #1
	lsls r0, r0, #8
_08169F14:
	ldr r0, [r4, #0x30]
	bl sub_816316C
	adds r0, r4, #0x0
	bl sub_816AE5C
_08169F20:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
