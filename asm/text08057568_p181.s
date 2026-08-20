	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81633C0
sub_81633C0:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x004
	mov r10, r0
	mov r9, r1
	ldr r0, _08163464 @ =0x03001038
	mov r8, r0
	ldr r4, _08163468 @ =0x0819832C
	ldr r0, _0816346C @ =0x08198220
	subs r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r6, r2, r4
	ldr r5, _08163470 @ =0x08198350
	subs r5, r5, r0
	adds r2, r2, r5
	movs r1, #0xFA
	lsls r1, r1, #0x02
	mov r0, r9
	bl _call_via_r2
	movs r1, #0x64
	bl _call_via_r6
	adds r1, r0, #0x0
	mov r2, r10
	ldr r0, [r2, #0x08]
	ldr r0, [r0, #0x10]
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r4, r2, r4
	adds r2, r2, r5
	mov r0, r9
	movs r1, #0x64
	bl _call_via_r2
	movs r1, #0x0A
	bl _call_via_r4
	adds r1, r0, #0x0
	mov r2, r10
	ldr r0, [r2, #0x04]
	ldr r0, [r0, #0x10]
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r0, r9
	movs r1, #0x0A
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x10]
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163464: .4byte 0x03001038
_08163468: .4byte 0x0819832C
_0816346C: .4byte 0x08198220
_08163470: .4byte 0x08198350
	thumb_func_start sub_8163474
sub_8163474:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	ldr r5, _081634D8 @ =0x08212ABA
	ldr r0, [r4, #0x00]
	movs r6, #0x00
	movs r1, #0x06
	movs r2, #0x00
	bl sub_816391C
	ldr r0, [r4, #0x00]
	str r5, [r0, #0x44]
	adds r0, #0x48
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x04]
	movs r1, #0x06
	movs r2, #0x08
	bl sub_816391C
	ldr r0, [r4, #0x04]
	str r5, [r0, #0x44]
	adds r0, #0x48
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x08]
	movs r1, #0x06
	movs r2, #0x10
	bl sub_816391C
	ldr r0, [r4, #0x08]
	str r5, [r0, #0x44]
	adds r0, #0x48
	strh r6, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	movs r1, #0x06
	movs r2, #0x18
	bl sub_816391C
	ldr r0, [r4, #0x0C]
	str r5, [r0, #0x44]
	adds r0, #0x48
	strh r6, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081634D8: .4byte 0x08212ABA
	thumb_func_start sub_81634DC
sub_81634DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x04]
	bl sub_8161E38
	ldr r0, [r4, #0x04]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x08]
	bl sub_8161E38
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x0C]
	bl sub_8161E38
	ldr r0, [r4, #0x0C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163528
sub_8163528:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08163544
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163544:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0816355A
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816355A:
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _08163570
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163570:
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	beq _08163586
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163586:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08163594
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08163594:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
