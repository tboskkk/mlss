	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_816375C
sub_816375C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	ldr r0, [r0, #0x10]
	ldr r2, _081637A0 @ =0x082128CE
	ldr r1, _081637A4 @ =0x0300034C
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
	ldr r1, [r5, #0x04]
	ldr r0, _081637A8 @ =0x08212866
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r4, [r0, #0x00]
	str r4, [r1, #0x40]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_081637A0: .4byte 0x082128CE
_081637A4: .4byte 0x0300034C
_081637A8: .4byte 0x08212866
	thumb_func_start sub_81637AC
sub_81637AC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _081637FC
	cmp r0, #0x01
	bne _081637FC
	movs r6, #0x00
	adds r4, r5, #0x4
	adds r7, r4, #0x0
_081637C0:
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _081637D0
	ldr r0, [r1, #0x40]
	movs r1, #0x00
	cmp r0, #0x01
	bne _081637D2
_081637D0:
	movs r1, #0x01
_081637D2:
	cmp r1, #0x00
	beq _081637DA
	adds r6, #0x01
	b _081637EA
_081637DA:
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
_081637EA:
	adds r4, #0x04
	adds r0, r7, #0x0
	adds r0, #0x08
	cmp r4, r0
	ble _081637C0
	cmp r6, #0x03
	bne _081637FC
	movs r0, #0x00
	str r0, [r5, #0x00]
_081637FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163804
sub_8163804:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x4
	ldr r2, [r5, #0x04]
	cmp r2, #0x00
	beq _08163822
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163822:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _08163838
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163838:
	ldr r2, [r5, #0x0C]
	cmp r2, #0x00
	beq _0816384E
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816384E:
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _0816385C
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_0816385C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163864
sub_8163864:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08163880
_08163870:
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8161C9C
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	bne _08163870
_08163880:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163888
sub_8163888:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _081638AC @ =0x08CDD108
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_8163BE4
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _081638A6
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_081638A6:
	pop {r4, r5}
	pop {r0}
	bx r0
_081638AC: .4byte 0x08CDD108
