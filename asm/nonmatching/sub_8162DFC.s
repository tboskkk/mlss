	.syntax unified
	.text

	thumb_func_start sub_8162DFC
sub_8162DFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	movs r0, #0x00
	mov r8, r0
	movs r7, #0x00
	ldr r1, _08162ECC @ =0x08212AA4
	mov r10, r1
	mov r6, r9
_08162E1C:
	mov r2, r8
	lsls r0, r2, #0x02
	ldr r5, _08162ED0 @ =0x083CC2B0
	adds r0, r0, r5
	ldr r1, [r6, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	ldr r0, [r6, #0x00]
	bl sub_8161E38
	ldr r0, [r6, #0x00]
	mov r3, r8
	lsls r2, r3, #0x03
	movs r1, #0x06
	bl sub_816391C
	ldr r0, [r6, #0x00]
	mov r1, r10
	str r1, [r0, #0x44]
	adds r0, #0x48
	strh r7, [r0, #0x00]
	mov r4, r8
	adds r4, #0x01
	lsls r0, r4, #0x02
	adds r0, r0, r5
	ldr r1, [r6, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	ldr r0, [r6, #0x04]
	bl sub_8161E38
	ldr r0, [r6, #0x04]
	lsls r4, r4, #0x03
	movs r1, #0x06
	adds r2, r4, #0x0
	bl sub_816391C
	ldr r0, [r6, #0x04]
	mov r2, r10
	str r2, [r0, #0x44]
	adds r0, #0x48
	strh r7, [r0, #0x00]
	adds r6, #0x08
	movs r3, #0x02
	add r8, r3
	mov r0, r8
	cmp r0, #0x03
	ble _08162E1C
	ldr r1, [sp, #0x004]
	cmp r1, #0x00
	beq _08162EE0
	mov r2, r9
	ldr r0, [r2, #0x0C]
	ldr r0, [r0, #0x10]
	ldr r2, _08162ED4 @ =0x08212954
	ldr r1, _08162ED8 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	mov r3, r9
	ldr r0, [r3, #0x0C]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ldr r2, _08162EDC @ =0xFFFFF000
	str r1, [r0, #0x18]
	str r2, [r0, #0x1C]
	str r4, [r0, #0x20]
	b _08162F06
	.byte 0x00, 0x00
_08162ECC: .4byte 0x08212AA4
_08162ED0: .4byte 0x083CC2B0
_08162ED4: .4byte 0x08212954
_08162ED8: .4byte 0x0300034C
_08162EDC: .4byte 0xFFFFF000
_08162EE0:
	mov r1, r9
	ldr r0, [r1, #0x0C]
	ldr r0, [r0, #0x10]
	ldr r2, _08162F18 @ =0x0821294A
	ldr r1, _08162F1C @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r3, [sp, #0x004]
	str r3, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08162F06:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08162F18: .4byte 0x0821294A
_08162F1C: .4byte 0x0300034C
