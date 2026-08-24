	.syntax unified
	.text

	thumb_func_start sub_80E122C
sub_80E122C:
	push {r4, r5, r6, r7, lr}
	cmp r0, #0x00
	beq _080E127A
	ldr r4, [r0, #0x4C]
	cmp r4, #0x00
	beq _080E127A
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
	bge _080E1264
	ldr r0, _080E1260 @ =0x03001034
	adds r1, r4, r6
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r2, r7, #0x0
	bl _call_via_r3
	b _080E127A
	.byte 0x00, 0x00
_080E1260: .4byte 0x03001034
_080E1264:
	ldr r2, _080E1280 @ =0x03001034
	ldr r0, _080E1284 @ =0x08198154
	ldr r1, _080E1288 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	adds r0, r4, r5
	adds r1, r4, r6
	adds r2, r7, #0x0
	bl _call_via_r3
_080E127A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E1280: .4byte 0x03001034
_080E1284: .4byte dword_8198154 @ =0x08198154
_080E1288: .4byte dword_81980D8 @ =0x081980D8
