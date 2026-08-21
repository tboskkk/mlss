	.syntax unified
	.text

	thumb_func_start sub_80817A0
sub_80817A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	ldr r6, [r0, #0x08]
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _080818EC @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	ldr r2, _080818F0 @ =0x00002054
	cmp r0, #0x00
	bne _080817C4
	subs r2, #0x2F
_080817C4:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080817E2
	adds r1, #0xFF
_080817E2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080817EC
	adds r2, #0xFF
_080817EC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080817F6
	adds r3, #0xFF
_080817F6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	bl sub_80DF024
	movs r7, #0x00
	ldr r2, _080818F4 @ =0xFFFF0000
	mov r9, r2
_08081808:
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08081868
	ldr r1, [r6, #0x28]
	movs r5, #0x84
	lsls r5, r5, #0x01
	adds r0, r1, r5
	movs r2, #0x00
	ldsh r3, [r0, r2]
	ldr r0, [r4, #0x28]
	adds r0, r0, r5
	movs r5, #0x00
	ldsh r2, [r0, r5]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r9
	asrs r5, r1, #0x10
	movs r1, #0x8C
	cmp r0, r5
	bne _0808184A
	movs r1, #0x78
_0808184A:
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8108180
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_08081868:
	adds r1, r7, #0x1
	ldr r0, _080818E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080818CA
	ldr r1, [r6, #0x28]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r5, #0x00
	ldsh r3, [r0, r5]
	ldr r0, [r4, #0x28]
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r2, [r0, r5]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r9
	asrs r5, r1, #0x10
	movs r1, #0x8C
	cmp r0, r5
	bne _080818AC
	movs r1, #0x78
_080818AC:
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8108180
	adds r0, r4, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080818CA:
	adds r7, #0x02
	cmp r7, #0x05
	ble _08081808
	movs r0, #0x1E
	mov r2, r8
	strh r0, [r2, #0x10]
	ldr r0, _080818F8 @ =0x08081CC1
	str r0, [r2, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080818E8: .4byte 0x03000FD8
_080818EC: .4byte 0x000002BE
_080818F0: .4byte 0x00002054
_080818F4: .4byte 0xFFFF0000
_080818F8: .4byte sub_8081CC0
