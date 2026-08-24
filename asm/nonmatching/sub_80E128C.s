	.syntax unified
	.text

	thumb_func_start sub_80E128C
sub_80E128C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r1, [r7, #0x08]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r6, r0, #0x05
	movs r2, #0x02
	ldsh r0, [r1, r2]
	lsls r4, r0, #0x05
	movs r2, #0x04
	ldsh r0, [r1, r2]
	lsls r5, r0, #0x05
	cmp r4, #0x00
	bge _080E12C4
	ldr r0, _080E12BC @ =0x03001034
	ldr r2, _080E12C0 @ =0x06004000
	adds r1, r5, r2
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r6, #0x0
	bl _call_via_r3
	b _080E12DC
	.byte 0x00, 0x00
_080E12BC: .4byte 0x03001034
_080E12C0: .4byte 0x06004000
_080E12C4:
	ldr r2, _080E12E8 @ =0x03001034
	ldr r0, _080E12EC @ =0x08198154
	ldr r1, _080E12F0 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r1, _080E12F4 @ =0x06004000
	adds r0, r4, r1
	adds r1, r5, r1
	adds r2, r6, #0x0
	bl _call_via_r3
_080E12DC:
	movs r0, #0x00
	str r0, [r7, #0x04]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E12E8: .4byte 0x03001034
_080E12EC: .4byte dword_8198154 @ =0x08198154
_080E12F0: .4byte dword_81980D8 @ =0x081980D8
_080E12F4: .4byte 0x06004000
