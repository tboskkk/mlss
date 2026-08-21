	.syntax unified
	.text

	thumb_func_start sub_815A5D0
sub_815A5D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	movs r6, #0x00
_0815A5DA:
	lsls r0, r6, #0x02
	ldr r1, _0815A6C4 @ =0x00001898
	adds r5, r7, r1
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0815A5F8
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815A5F8:
	movs r0, #0x00
	mov r8, r0
	str r0, [r4, #0x00]
	adds r0, r6, #0x1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0815A61A
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815A61A:
	mov r0, r8
	str r0, [r4, #0x00]
	adds r0, r6, #0x2
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0815A63A
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815A63A:
	mov r0, r8
	str r0, [r4, #0x00]
	adds r0, r6, #0x3
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0815A65A
	ldr r1, [r2, #0x30]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0815A65A:
	mov r0, r8
	str r0, [r4, #0x00]
	adds r6, #0x04
	cmp r6, #0xFF
	ble _0815A5DA
	ldr r1, _0815A6C8 @ =0x00001E88
	adds r4, r7, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0815A678
	movs r1, #0x03
	bl sub_815EB70
	mov r3, r8
	str r3, [r4, #0x00]
_0815A678:
	ldr r0, _0815A6CC @ =0x00001E8C
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0815A68C
	movs r1, #0x03
	bl sub_815EACC
	mov r1, r8
	str r1, [r4, #0x00]
_0815A68C:
	ldr r3, _0815A6D0 @ =0x00001E90
	adds r4, r7, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0815A6A0
	movs r1, #0x03
	bl sub_8165144
	mov r0, r8
	str r0, [r4, #0x00]
_0815A6A0:
	adds r0, r7, #0x0
	adds r0, #0x1C
	bl sub_8160E6C
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r7, r1
	bl sub_8160E6C
	ldr r3, _0815A6D4 @ =0x00001064
	adds r0, r7, r3
	bl sub_8160E6C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0815A6C4: .4byte 0x00001898
_0815A6C8: .4byte 0x00001E88
_0815A6CC: .4byte 0x00001E8C
_0815A6D0: .4byte 0x00001E90
_0815A6D4: .4byte 0x00001064
