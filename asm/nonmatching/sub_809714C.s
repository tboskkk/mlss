	.syntax unified
	.text

	thumb_func_start sub_809714C
sub_809714C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	ldr r0, _08097298 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x004]
	movs r5, #0x00
	movs r6, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	ldr r2, _0809729C @ =0x03001038
	mov r10, r2
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r4, #0x06
	mov r12, r4
	movs r4, #0x05
_08097182:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _080971B8
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_080971B8:
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _080971EE
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_080971EE:
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08097224
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_08097224:
	adds r3, #0x0C
	subs r4, #0x03
	cmp r4, #0x00
	bge _08097182
	ldr r3, _080972A0 @ =0x0819832C
	ldr r0, _080972A4 @ =0x08198220
	subs r4, r3, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x1C]
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x1C]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	strh r0, [r1, #0x1E]
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x1E]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r4, [sp, #0x004]
	strh r0, [r4, #0x20]
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x20]
	mov r1, r9
	ldr r0, [r1, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r4, r9
	movs r5, #0x20
	ldsh r0, [r4, r5]
	cmp r1, r0
	blt _080972B0
	ldr r0, _080972A8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080972AC @ =0x00005470
	adds r0, r0, r1
	movs r1, #0x03
	b _080972BA
_08097298: .4byte 0x03000FD8
_0809729C: .4byte 0x03001038
_080972A0: .4byte 0x0819832C
_080972A4: .4byte 0x08198220
_080972A8: .4byte 0x03000FDC
_080972AC: .4byte 0x00005470
_080972B0:
	ldr r0, _080974C8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _080974CC @ =0x00005470
	adds r0, r0, r2
	movs r1, #0x02
_080972BA:
	str r1, [r0, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x28]
	movs r4, #0x83
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	movs r2, #0x20
	ldsh r1, [r3, r2]
	bl __divsi3
	ldr r6, _080974C8 @ =0x03000FDC
	ldr r2, [r6, #0x00]
	ldr r3, _080974CC @ =0x00005470
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080972E6
	adds r0, #0xFF
_080972E6:
	asrs r5, r0, #0x08
	ldr r4, _080974D0 @ =0x00005498
	adds r3, r2, r4
	movs r4, #0x00
	str r4, [r3, #0x00]
	ldr r0, _080974D4 @ =0x0000549C
	adds r1, r2, r0
	movs r7, #0x01
	str r7, [r1, #0x00]
	cmp r5, #0x08
	ble _08097302
	movs r0, #0x07
	str r0, [r3, #0x00]
	str r4, [r1, #0x00]
_08097302:
	cmp r5, #0x00
	bgt _08097314
	ldr r0, [r6, #0x00]
	ldr r2, _080974D0 @ =0x00005498
	adds r1, r0, r2
	str r7, [r1, #0x00]
	ldr r3, _080974D4 @ =0x0000549C
	adds r0, r0, r3
	str r4, [r0, #0x00]
_08097314:
	ldr r0, [r6, #0x00]
	ldr r5, _080974D8 @ =0x00005474
	adds r4, r0, r5
	mov r1, r9
	ldr r0, [r1, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x08
	movs r5, #0x20
	ldsh r1, [r1, r5]
	bl __divsi3
	adds r1, r0, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r1, r2
	cmp r0, #0x00
	bge _08097342
	ldr r3, _080974DC @ =0x000001FF
	adds r0, r1, r3
_08097342:
	asrs r0, r0, #0x08
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r4, _080974D8 @ =0x00005474
	adds r1, r0, r4
	ldr r0, [r1, #0x00]
	cmp r0, #0x04
	ble _08097356
	movs r0, #0x04
	str r0, [r1, #0x00]
_08097356:
	ldr r0, [r6, #0x00]
	ldr r5, _080974D8 @ =0x00005474
	adds r1, r0, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08097364
	str r7, [r1, #0x00]
_08097364:
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r3, r0, #0x0
	adds r3, #0xF5
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r1, #0x00
	bge _08097376
	adds r1, #0x03
_08097376:
	asrs r1, r1, #0x02
	ldr r0, [r6, #0x00]
	ldr r4, _080974E0 @ =0x00005478
	adds r2, r0, r4
	movs r0, #0x10
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x03
	bgt _0809738C
	movs r0, #0x04
	str r0, [r2, #0x00]
_0809738C:
	ldr r0, [r6, #0x00]
	ldr r5, _080974E4 @ =0x0000547C
	adds r2, r0, r5
	mov r0, r9
	movs r4, #0x1C
	ldsh r1, [r0, r4]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	subs r1, r1, r0
	movs r0, #0x0A
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x03
	bgt _080973AC
	movs r0, #0x04
	str r0, [r2, #0x00]
_080973AC:
	ldr r0, [r6, #0x00]
	ldr r5, _080974E4 @ =0x0000547C
	adds r1, r0, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x0E
	ble _080973BC
	movs r0, #0x0E
	str r0, [r1, #0x00]
_080973BC:
	ldr r0, [r6, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x07
	adds r4, r0, r1
	mov r2, r9
	ldr r0, [r2, #0x28]
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r3, r0, #0x08
	movs r0, #0x1E
	ldsh r2, [r2, r0]
	mov r5, r9
	movs r0, #0x1C
	ldsh r1, [r5, r0]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080973EC
	adds r0, #0xFF
_080973EC:
	asrs r1, r0, #0x08
	adds r1, r2, r1
	adds r0, r3, #0x0
	bl __divsi3
	movs r1, #0x46
	muls r0, r1
	cmp r0, #0x00
	bge _08097400
	adds r0, #0xFF
_08097400:
	asrs r0, r0, #0x08
	adds r0, #0x32
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, _080974E8 @ =0x00005484
	adds r3, r0, r1
	mov r4, r9
	ldr r2, [r4, #0x28]
	movs r5, #0x84
	lsls r5, r5, #0x01
	adds r0, r2, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x1E
	ldsh r1, [r4, r5]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	cmp r0, #0x03
	bgt _0809742A
	movs r0, #0x04
	str r0, [r3, #0x00]
_0809742A:
	ldr r0, [r6, #0x00]
	ldr r3, _080974E8 @ =0x00005484
	adds r1, r0, r3
	ldr r0, [r1, #0x00]
	cmp r0, #0x08
	ble _0809743A
	movs r0, #0x08
	str r0, [r1, #0x00]
_0809743A:
	mov r4, r9
	movs r5, #0x1C
	ldsh r0, [r4, r5]
	adds r2, #0xF5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	subs r3, r0, r1
	cmp r3, #0x00
	bge _0809744E
	movs r3, #0x00
_0809744E:
	ldr r0, [r6, #0x00]
	ldr r4, _080974EC @ =0x00005488
	adds r5, r0, r4
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r4, r0, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	adds r0, #0xC0
	muls r0, r3
	cmp r0, #0x00
	bge _0809746C
	adds r0, #0xFF
_0809746C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	str r0, [r5, #0x00]
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	cmp r2, r0
	bge _0809747E
	str r2, [r5, #0x00]
_0809747E:
	ldr r5, [sp, #0x000]
	cmp r9, r5
	bne _08097498
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08097498
	ldr r0, _080974F0 @ =0x08097B8D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_08097498:
	ldr r2, [sp, #0x004]
	cmp r9, r2
	bne _080974B2
	ldr r0, [sp, #0x000]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080974B2
	ldr r0, _080974F0 @ =0x08097B8D
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x4C]
_080974B2:
	ldr r0, _080974F4 @ =0x080974F9
	mov r4, r9
	str r0, [r4, #0x4C]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080974C8: .4byte 0x03000FDC
_080974CC: .4byte 0x00005470
_080974D0: .4byte 0x00005498
_080974D4: .4byte 0x0000549C
_080974D8: .4byte 0x00005474
_080974DC: .4byte 0x000001FF
_080974E0: .4byte 0x00005478
_080974E4: .4byte 0x0000547C
_080974E8: .4byte 0x00005484
_080974EC: .4byte 0x00005488
_080974F0: .4byte sub_8097B8C
_080974F4: .4byte sub_80974F8
