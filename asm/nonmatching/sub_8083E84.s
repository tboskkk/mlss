	.syntax unified
	.text

	thumb_func_start sub_8083E84
sub_8083E84:
	push {r4, r5, r6, r7, lr}
	cmp r0, #0x00
	beq _08083EDA
	ldr r4, [r0, #0x4C]
	cmp r4, #0x00
	beq _08083EDA
	lsls r1, r1, #0x01
	ldr r0, _08083EBC @ =0x0838F8B4
	adds r1, r1, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r7, r0, #0x05
	movs r2, #0x02
	ldsh r0, [r1, r2]
	lsls r5, r0, #0x05
	movs r2, #0x04
	ldsh r0, [r1, r2]
	lsls r6, r0, #0x05
	cmp r5, #0x00
	bge _08083EC4
	ldr r0, _08083EC0 @ =0x03001034
	adds r1, r4, r6
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r7, #0x0
	bl _call_via_r3
	b _08083EDA
_08083EBC: .4byte dword_838F8B4 @ =0x0838F8B4
_08083EC0: .4byte 0x03001034
_08083EC4:
	ldr r2, _08083EE0 @ =0x03001034
	ldr r0, _08083EE4 @ =0x08198154
	ldr r1, _08083EE8 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	adds r0, r4, r5
	adds r1, r4, r6
	adds r2, r7, #0x0
	bl _call_via_r3
_08083EDA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08083EE0: .4byte 0x03001034
_08083EE4: .4byte dword_8198154 @ =0x08198154
_08083EE8: .4byte dword_81980D8 @ =0x081980D8
