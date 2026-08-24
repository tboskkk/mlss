	.syntax unified
	.text

	thumb_func_start sub_81695AC
sub_81695AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r1, [sp, #0x000]
	adds r7, r2, #0x0
	movs r0, #0x00
	mov r8, r0
	ldr r1, _0816960C @ =0x08216A54
	mov r9, r1
	ldr r2, _08169610 @ =0xFFFF7000
	mov r10, r2
_081695C8:
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r4, r0, r1
	ldr r2, [sp, #0x000]
	ldr r6, [r2, #0x08]
	ldr r0, [r7, #0x08]
	adds r5, r6, r0
	cmp r1, #0x00
	bge _08169666
	cmp r0, #0x00
	bne _08169666
	ldr r0, _08169614 @ =0x00006FFF
	mov r12, r0
	cmp r5, r12
	bgt _08169620
	cmp r4, r12
	ble _081695EE
	b _08169902
_081695EE:
	ldr r1, _08169618 @ =0xFFFFA800
	adds r2, r4, r1
	adds r3, r6, r1
	adds r1, r2, r3
	ldr r0, _0816961C @ =0x000017FE
	cmp r1, r0
	ble _081695FE
	b _08169902
_081695FE:
	mov r2, r8
	cmp r2, #0x00
	bne _08169606
	b _08169804
_08169606:
	mov r0, r12
	subs r4, r0, r3
	b _08169902
_0816960C: .4byte dword_8216A54 @ =0x08216A54
_08169610: .4byte 0xFFFF7000
_08169614: .4byte 0x00006FFF
_08169618: .4byte 0xFFFFA800
_0816961C: .4byte 0x000017FE
_08169620:
	ldr r1, _08169648 @ =0x00008FFF
	cmp r5, r1
	bgt _08169628
	b _08169902
_08169628:
	cmp r4, r12
	ble _0816962E
	b _08169902
_0816962E:
	ldr r0, _0816964C @ =0xFFFFA800
	adds r2, r4, r0
	ldr r1, _08169650 @ =0xFFFF7000
	adds r3, r6, r1
	cmp r2, r3
	blt _0816963C
	b _08169902
_0816963C:
	mov r2, r8
	cmp r2, #0x00
	beq _08169658
	ldr r0, _08169654 @ =0xFFFFC800
	adds r4, r6, r0
	b _08169902
_08169648: .4byte 0x00008FFF
_0816964C: .4byte 0xFFFFA800
_08169650: .4byte 0xFFFF7000
_08169654: .4byte 0xFFFFC800
_08169658:
	mov r1, r9
	movs r2, #0x18
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x1A
	ldsh r0, [r1, r2]
	b _08169810
_08169666:
	cmp r1, #0x00
	ble _081696F6
	cmp r0, #0x00
	bne _081696F6
	ldr r1, _08169698 @ =0x00006FFF
	cmp r5, r1
	bgt _081696B2
	ldr r2, _0816969C @ =0x00008FFF
	cmp r4, r2
	bgt _0816967C
	b _08169902
_0816967C:
	mov r0, r10
	adds r2, r4, r0
	ldr r1, _081696A0 @ =0xFFFFA800
	adds r3, r5, r1
	cmp r2, r3
	bgt _0816968A
	b _08169902
_0816968A:
	mov r2, r8
	cmp r2, #0x00
	beq _081696A4
	movs r0, #0xE0
	lsls r0, r0, #0x06
	adds r4, r5, r0
	b _08169902
_08169698: .4byte 0x00006FFF
_0816969C: .4byte 0x00008FFF
_081696A0: .4byte 0xFFFFA800
_081696A4:
	mov r1, r9
	movs r2, #0x24
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x26
	ldsh r0, [r1, r2]
	b _08169810
_081696B2:
	ldr r0, _081696DC @ =0x00008FFF
	cmp r5, r0
	bgt _081696BA
	b _08169902
_081696BA:
	cmp r4, r0
	bgt _081696C0
	b _08169902
_081696C0:
	mov r1, r10
	adds r2, r4, r1
	adds r3, r5, r1
	adds r1, r2, r3
	ldr r0, _081696E0 @ =0x000017FF
	cmp r1, r0
	bgt _081696D0
	b _08169902
_081696D0:
	mov r2, r8
	cmp r2, #0x00
	beq _081696E8
	ldr r0, _081696E4 @ =0x0000A7FF
	subs r4, r0, r3
	b _08169902
_081696DC: .4byte 0x00008FFF
_081696E0: .4byte 0x000017FF
_081696E4: .4byte 0x0000A7FF
_081696E8:
	mov r1, r9
	movs r2, #0x14
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x16
	ldsh r0, [r1, r2]
	b _08169810
_081696F6:
	cmp r0, #0x00
	bge _08169782
	cmp r1, #0x00
	bne _08169782
	ldr r6, _08169724 @ =0x00006FFF
	cmp r4, r6
	bgt _0816973E
	cmp r5, r6
	ble _0816970A
	b _08169902
_0816970A:
	ldr r1, _08169728 @ =0xFFFFA800
	adds r2, r4, r1
	adds r3, r5, r1
	adds r1, r2, r3
	ldr r0, _0816972C @ =0x000017FE
	cmp r1, r0
	ble _0816971A
	b _08169902
_0816971A:
	mov r0, r8
	cmp r0, #0x00
	beq _08169730
	subs r5, r6, r2
	b _08169902
_08169724: .4byte 0x00006FFF
_08169728: .4byte 0xFFFFA800
_0816972C: .4byte 0x000017FE
_08169730:
	mov r1, r9
	movs r2, #0x14
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x16
	ldsh r0, [r1, r2]
	b _08169810
_0816973E:
	ldr r1, _08169768 @ =0x00008FFF
	cmp r4, r1
	bgt _08169746
	b _08169902
_08169746:
	cmp r5, r6
	ble _0816974C
	b _08169902
_0816974C:
	mov r0, r10
	adds r2, r4, r0
	ldr r1, _0816976C @ =0xFFFFA800
	adds r3, r5, r1
	cmp r2, r3
	bgt _0816975A
	b _08169902
_0816975A:
	mov r2, r8
	cmp r2, #0x00
	beq _08169774
	ldr r0, _08169770 @ =0xFFFFC800
	adds r5, r4, r0
	b _08169902
	.byte 0x00, 0x00
_08169768: .4byte 0x00008FFF
_0816976C: .4byte 0xFFFFA800
_08169770: .4byte 0xFFFFC800
_08169774:
	mov r1, r9
	movs r2, #0x18
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x1A
	ldsh r0, [r1, r2]
	b _08169810
_08169782:
	cmp r0, #0x00
	ble _08169818
	cmp r1, #0x00
	bne _08169818
	ldr r1, _081697B4 @ =0x00006FFF
	cmp r4, r1
	bgt _081697CE
	ldr r2, _081697B8 @ =0x00008FFF
	cmp r5, r2
	bgt _08169798
	b _08169902
_08169798:
	ldr r0, _081697BC @ =0xFFFFA800
	adds r2, r4, r0
	mov r1, r10
	adds r3, r5, r1
	cmp r2, r3
	blt _081697A6
	b _08169902
_081697A6:
	mov r2, r8
	cmp r2, #0x00
	beq _081697C0
	movs r0, #0xE0
	lsls r0, r0, #0x06
	adds r5, r4, r0
	b _08169902
_081697B4: .4byte 0x00006FFF
_081697B8: .4byte 0x00008FFF
_081697BC: .4byte 0xFFFFA800
_081697C0:
	mov r1, r9
	movs r2, #0x24
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x26
	ldsh r0, [r1, r2]
	b _08169810
_081697CE:
	ldr r0, _081697F8 @ =0x00008FFF
	cmp r4, r0
	bgt _081697D6
	b _08169902
_081697D6:
	cmp r5, r0
	bgt _081697DC
	b _08169902
_081697DC:
	mov r1, r10
	adds r2, r4, r1
	adds r3, r5, r1
	adds r1, r2, r3
	ldr r0, _081697FC @ =0x000017FF
	cmp r1, r0
	bgt _081697EC
	b _08169902
_081697EC:
	mov r0, r8
	cmp r0, #0x00
	beq _08169804
	ldr r0, _08169800 @ =0x0000A7FF
	subs r5, r0, r2
	b _08169902
_081697F8: .4byte 0x00008FFF
_081697FC: .4byte 0x000017FF
_08169800: .4byte 0x0000A7FF
_08169804:
	mov r1, r9
	movs r2, #0x28
	ldsh r0, [r1, r2]
	str r0, [r7, #0x00]
	movs r2, #0x2A
	ldsh r0, [r1, r2]
_08169810:
	str r0, [r7, #0x08]
	movs r0, #0x01
	mov r8, r0
	b _081695C8
_08169818:
	cmp r1, #0x00
	bge _08169854
	cmp r0, #0x00
	bge _08169854
	ldr r0, _08169848 @ =0x00006FFF
	cmp r4, r0
	bgt _08169902
	cmp r5, r0
	bgt _08169902
	ldr r1, _0816984C @ =0xFFFFA800
	adds r2, r4, r1
	adds r3, r5, r1
	adds r1, r2, r3
	ldr r0, _08169850 @ =0x000017FE
	cmp r1, r0
	bgt _08169902
	adds r0, #0x01
	subs r0, r0, r2
	subs r0, r0, r3
	asrs r0, r0, #0x01
	movs r1, #0xB0
	lsls r1, r1, #0x07
	b _0816987E
	.byte 0x00, 0x00
_08169848: .4byte 0x00006FFF
_0816984C: .4byte 0xFFFFA800
_08169850: .4byte 0x000017FE
_08169854:
	cmp r1, #0x00
	ble _08169890
	cmp r0, #0x00
	ble _08169890
	ldr r0, _08169888 @ =0x00008FFF
	cmp r4, r0
	ble _08169902
	cmp r5, r0
	ble _08169902
	mov r0, r10
	adds r2, r4, r0
	adds r3, r5, r0
	adds r0, r2, r3
	ldr r1, _0816988C @ =0x000017FF
	cmp r0, r1
	ble _08169902
	subs r0, r1, r2
	subs r0, r0, r3
	asrs r0, r0, #0x01
	movs r1, #0x90
	lsls r1, r1, #0x08
_0816987E:
	adds r0, r0, r1
	adds r4, r2, r0
	adds r5, r3, r0
	b _08169902
	.byte 0x00, 0x00
_08169888: .4byte 0x00008FFF
_0816988C: .4byte 0x000017FF
_08169890:
	cmp r1, #0x00
	bge _081698D0
	cmp r0, #0x00
	ble _081698D0
	ldr r2, _081698C4 @ =0x00006FFF
	cmp r4, r2
	bgt _08169902
	ldr r0, _081698C8 @ =0x00008FFF
	cmp r5, r0
	ble _08169902
	ldr r1, _081698CC @ =0xFFFFA800
	adds r2, r4, r1
	mov r0, r10
	adds r3, r5, r0
	cmp r2, r3
	bge _08169902
	subs r0, r3, r2
	asrs r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0xB0
	lsls r1, r1, #0x07
	adds r4, r0, r1
	movs r2, #0x90
	lsls r2, r2, #0x08
	adds r5, r0, r2
	b _08169902
_081698C4: .4byte 0x00006FFF
_081698C8: .4byte 0x00008FFF
_081698CC: .4byte 0xFFFFA800
_081698D0:
	cmp r1, #0x00
	ble _08169902
	cmp r0, #0x00
	bge _08169902
	ldr r0, _08169938 @ =0x00008FFF
	cmp r4, r0
	ble _08169902
	ldr r1, _0816993C @ =0x00006FFF
	cmp r5, r1
	bgt _08169902
	mov r0, r10
	adds r2, r4, r0
	ldr r1, _08169940 @ =0xFFFFA800
	adds r3, r5, r1
	cmp r2, r3
	ble _08169902
	subs r0, r2, r3
	asrs r0, r0, #0x01
	adds r0, r0, r3
	movs r2, #0x90
	lsls r2, r2, #0x08
	adds r4, r0, r2
	movs r1, #0xB0
	lsls r1, r1, #0x07
	adds r5, r0, r1
_08169902:
	ldr r1, _08169944 @ =0x000057FF
	cmp r4, r1
	bgt _0816990C
	movs r4, #0xB0
	lsls r4, r4, #0x07
_0816990C:
	ldr r0, _08169948 @ =0x0000A7FF
	cmp r4, r0
	ble _08169914
	adds r4, r0, #0x0
_08169914:
	cmp r5, r1
	bgt _0816991C
	movs r5, #0xB0
	lsls r5, r5, #0x07
_0816991C:
	cmp r5, r0
	ble _08169922
	adds r5, r0, #0x0
_08169922:
	ldr r2, [sp, #0x000]
	str r4, [r2, #0x00]
	str r5, [r2, #0x08]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08169938: .4byte 0x00008FFF
_0816993C: .4byte 0x00006FFF
_08169940: .4byte 0xFFFFA800
_08169944: .4byte 0x000057FF
_08169948: .4byte 0x0000A7FF
