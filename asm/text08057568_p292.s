	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81627B4
sub_81627B4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r2, #0x0
	lsls r3, r3, #0x18
	movs r1, #0x4A
	adds r1, r1, r4
	mov r12, r1
	movs r6, #0x00
	strh r0, [r1, #0x00]
	cmp r3, #0x00
	beq _08162848
	ldr r2, _0816280C @ =0x03001038
	ldr r0, _08162810 @ =0x0819832C
	ldr r1, _08162814 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r3, r12
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	str r0, [r4, #0x60]
	cmp r5, #0x00
	bge _08162818
	lsls r0, r5, #0x08
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x56
	movs r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x5A
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _0816283A
_0816280C: .4byte 0x03001038
_08162810: .4byte 0x0819832C
_08162814: .4byte 0x08198220
_08162818:
	negs r1, r5
	lsls r1, r1, #0x08
	str r1, [r4, #0x5C]
	ldr r0, [r4, #0x1C]
	subs r0, r0, r1
	str r0, [r4, #0x1C]
	str r1, [r4, #0x3C]
	adds r1, r4, #0x0
	adds r1, #0x56
	movs r0, #0x03
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r2, [r1, #0x00]
	ldr r0, _08162844 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r1, #0x00]
	adds r2, r1, #0x0
_0816283A:
	ldrh r1, [r2, #0x00]
	movs r0, #0x0A
	orrs r0, r1
	b _08162884
	.byte 0x00, 0x00
_08162844: .4byte 0x0000FFFB
_08162848:
	lsrs r2, r0, #0x1F
	adds r2, r0, r2
	asrs r2, r2, #0x01
	ldr r3, _0816288C @ =0x03001038
	ldr r0, _08162890 @ =0x0819832C
	ldr r1, _08162894 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r3, #0x00]
	adds r3, r3, r0
	adds r0, r2, #0x0
	muls r0, r2
	lsls r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r3
	str r0, [r4, #0x60]
	lsls r0, r5, #0x08
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x56
	movs r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x5A
	ldrh r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	orrs r0, r6
	ldr r1, _08162898 @ =0x0000FFF7
	ands r0, r1
_08162884:
	strh r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0816288C: .4byte 0x03001038
_08162890: .4byte 0x0819832C
_08162894: .4byte 0x08198220
_08162898: .4byte 0x0000FFF7
	thumb_func_start sub_816289C
sub_816289C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x5A
	adds r0, r0, r4
	mov r12, r0
	ldrh r2, [r0, #0x00]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _081628FC
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _081628CA
	adds r0, r4, #0x0
	adds r0, #0x4C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	subs r0, #0x02
	movs r5, #0x00
	ldsh r0, [r0, r5]
	subs r3, r1, r0
	b _08162934
_081628CA:
	adds r0, r4, #0x0
	adds r0, #0x4C
	movs r1, #0x00
	ldsh r3, [r0, r1]
	ldr r2, _081628F0 @ =0x03001038
	ldr r0, _081628F4 @ =0x0819832C
	ldr r1, _081628F8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	muls r0, r3
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x60]
	bl _call_via_r2
	ldr r1, [r4, #0x5C]
	adds r1, r1, r0
	b _08162950
_081628F0: .4byte 0x03001038
_081628F4: .4byte 0x0819832C
_081628F8: .4byte 0x08198220
_081628FC:
	adds r0, r4, #0x0
	adds r0, #0x4A
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r1, r0, #0x01
	movs r0, #0x04
	ands r0, r2
	adds r3, r4, #0x0
	adds r3, #0x4C
	cmp r0, #0x00
	beq _0816292E
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r1, r0
	bge _0816292E
	ldr r0, _08162958 @ =0x0000FFFB
	ands r0, r2
	mov r2, r12
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x56
	movs r0, #0x03
	strh r0, [r2, #0x00]
_0816292E:
	movs r5, #0x00
	ldsh r0, [r3, r5]
	subs r3, r0, r1
_08162934:
	ldr r2, _0816295C @ =0x03001038
	ldr r0, _08162960 @ =0x0819832C
	ldr r1, _08162964 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	muls r0, r3
	lsls r0, r0, #0x10
	ldr r1, [r4, #0x60]
	bl _call_via_r2
	ldr r1, [r4, #0x5C]
	subs r1, r1, r0
_08162950:
	str r1, [r4, #0x3C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08162958: .4byte 0x0000FFFB
_0816295C: .4byte 0x03001038
_08162960: .4byte 0x0819832C
_08162964: .4byte 0x08198220
