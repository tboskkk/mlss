	.syntax unified
	.text

	thumb_func_start sub_8151BBC
sub_8151BBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	movs r6, #0x00
_08151BC6:
	lsls r0, r6, #0x02
	ldr r1, _08151CC8 @ =0x00001898
	adds r5, r7, r1
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08151BE4
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08151BE4:
	movs r0, #0x00
	mov r8, r0
	str r0, [r4, #0x00]
	adds r0, r6, #0x1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08151C06
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08151C06:
	mov r0, r8
	str r0, [r4, #0x00]
	adds r0, r6, #0x2
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08151C26
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08151C26:
	mov r0, r8
	str r0, [r4, #0x00]
	adds r0, r6, #0x3
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08151C46
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08151C46:
	mov r0, r8
	str r0, [r4, #0x00]
	adds r6, #0x04
	cmp r6, #0xFF
	ble _08151BC6
	ldr r1, _08151CCC @ =0x00001CB0
	adds r4, r7, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08151C64
	movs r1, #0x03
	bl sub_8158330
	mov r3, r8
	str r3, [r4, #0x00]
_08151C64:
	movs r0, #0xE5
	lsls r0, r0, #0x05
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08151C7A
	movs r1, #0x03
	bl sub_81581FC
	mov r1, r8
	str r1, [r4, #0x00]
_08151C7A:
	ldr r3, _08151CD0 @ =0x00001CA4
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08151C8E
	movs r1, #0x03
	bl sub_8161924
	mov r0, r8
	str r0, [r4, #0x00]
_08151C8E:
	ldr r1, _08151CD4 @ =0x00001CA8
	adds r4, r7, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08151CA2
	movs r1, #0x03
	bl sub_8165144
	mov r3, r8
	str r3, [r4, #0x00]
_08151CA2:
	adds r0, r7, #0x0
	adds r0, #0x1C
	bl sub_8160E6C
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r7, r1
	bl sub_8160E6C
	ldr r3, _08151CD8 @ =0x00001064
	adds r0, r7, r3
	bl sub_8160E6C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08151CC8: .4byte 0x00001898
_08151CCC: .4byte 0x00001CB0
_08151CD0: .4byte 0x00001CA4
_08151CD4: .4byte 0x00001CA8
_08151CD8: .4byte 0x00001064
