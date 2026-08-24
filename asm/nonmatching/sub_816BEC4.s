	.syntax unified
	.text

	thumb_func_start sub_816BEC4
sub_816BEC4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r7, r0, #0x0
	str r1, [sp, #0x000]
	adds r4, r2, #0x0
	str r3, [sp, #0x004]
	ldr r1, [r7, #0x18]
	ldr r0, [r7, #0x6C]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	ldr r3, [r7, #0x1C]
	ldr r2, [r7, #0x70]
	adds r0, r3, r2
	mov r9, r0
	ldr r0, [r7, #0x78]
	cmp r0, #0x01
	bne _0816BEF0
	b _0816C126
_0816BEF0:
	cmp r0, #0x01
	bgt _0816BEFA
	cmp r0, #0x00
	beq _0816BF02
	b _0816C14E
_0816BEFA:
	cmp r0, #0x02
	bne _0816BF00
	b _0816C12E
_0816BF00:
	b _0816C14E
_0816BF02:
	ldr r1, [r4, #0x7C]
	mov r12, r1
	ldr r3, [r4, #0x74]
	mov r2, r12
	subs r2, r2, r3
	mov r8, r2
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	ldr r2, [r4, #0x78]
	subs r6, r5, r2
	str r6, [sp, #0x00C]
	mov r0, r8
	mov r1, r8
	muls r1, r0
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r1, r0
	str r1, [sp, #0x014]
	ldr r1, [sp, #0x008]
	subs r6, r1, r3
	mov r3, r9
	subs r3, r3, r2
	mov r10, r3
	mov r1, r8
	muls r1, r6
	ldr r2, [sp, #0x00C]
	mov r0, r10
	muls r0, r2
	adds r3, r1, r0
	ldr r0, [sp, #0x014]
	cmp r0, r3
	bge _0816BF5C
	mov r1, r12
	ldr r2, [sp, #0x008]
	subs r6, r1, r2
	mov r3, r9
	subs r3, r5, r3
	mov r10, r3
	mov r1, r8
	muls r1, r6
	ldr r2, [sp, #0x00C]
	mov r0, r10
	muls r0, r2
	adds r3, r1, r0
_0816BF5C:
	cmp r3, #0x00
	bge _0816BF7C
	ldr r2, _0816BF78 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	mov r3, r10
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	b _0816BFAE
	.byte 0x00, 0x00
_0816BF78: .4byte 0x03001038
_0816BF7C:
	ldr r2, _0816C074 @ =0x03001038
	ldr r0, _0816C078 @ =0x0819832C
	ldr r1, _0816C07C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r0, r2, r0
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x00C]
	adds r1, r6, #0x0
	muls r1, r0
	mov r3, r8
	mov r0, r10
	muls r0, r3
	subs r5, r1, r0
	cmp r5, #0x00
	bge _0816BF9E
	negs r5, r5
_0816BF9E:
	ldr r0, [sp, #0x014]
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	ldr r6, [sp, #0x018]
	bl _call_via_r6
_0816BFAE:
	str r0, [sp, #0x010]
	ldr r2, [r7, #0x7C]
	ldr r0, [sp, #0x010]
	cmp r0, r2
	bge _0816C080
	ldr r0, [r4, #0x74]
	ldr r1, [sp, #0x008]
	subs r6, r1, r0
	ldr r0, [r4, #0x78]
	mov r2, r9
	subs r2, r2, r0
	mov r10, r2
	ldr r1, _0816C078 @ =0x0819832C
	ldr r0, _0816C07C @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x01C]
	ldr r3, _0816C074 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	mov r0, r8
	muls r0, r6
	ldr r4, [sp, #0x00C]
	mov r1, r10
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [sp, #0x014]
	asrs r1, r1, #0x08
	str r1, [sp, #0x020]
	bl _call_via_r2
	adds r3, r0, #0x0
	mov r0, r8
	muls r0, r3
	asrs r0, r0, #0x08
	subs r6, r0, r6
	adds r0, r4, #0x0
	muls r0, r3
	asrs r0, r0, #0x08
	mov r2, r10
	subs r2, r0, r2
	mov r10, r2
	ldr r3, [sp, #0x008]
	adds r4, r3, r6
	ldr r5, [r7, #0x7C]
	adds r0, r6, #0x0
	muls r0, r5
	ldr r1, [sp, #0x010]
	bl __divsi3
	subs r4, r4, r0
	str r4, [r7, #0x18]
	mov r4, r9
	add r4, r10
	mov r0, r10
	muls r0, r5
	ldr r1, [sp, #0x010]
	bl __divsi3
	subs r4, r4, r0
	str r4, [r7, #0x1C]
	ldr r4, _0816C074 @ =0x03001038
	ldr r2, [r4, #0x00]
	ldr r6, [sp, #0x01C]
	adds r2, r2, r6
	ldr r0, [r7, #0x6C]
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0x0
	ldr r1, [r7, #0x70]
	ldr r3, [sp, #0x00C]
	muls r1, r3
	adds r0, r0, r1
	lsls r0, r0, #0x04
	ldr r1, [sp, #0x020]
	bl _call_via_r2
	adds r3, r0, #0x0
	mov r1, r8
	muls r1, r3
	asrs r1, r1, #0x0C
	ldr r2, [r7, #0x6C]
	subs r1, r1, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r2, r2, r0
	str r2, [r7, #0x6C]
	ldr r4, [sp, #0x00C]
	adds r1, r4, #0x0
	muls r1, r3
	asrs r1, r1, #0x0C
	ldr r2, [r7, #0x70]
	subs r1, r1, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r2, r2, r0
	str r2, [r7, #0x70]
	b _0816C110
_0816C074: .4byte 0x03001038
_0816C078: .4byte 0x0819832C
_0816C07C: .4byte 0x08198220
_0816C080:
	ldr r6, [sp, #0x008]
	subs r1, r6, r2
	ldr r0, _0816C0B8 @ =0x00001FFF
	cmp r1, r0
	bgt _0816C0C0
	mov r1, r9
	subs r0, r1, r2
	ldr r3, [sp, #0x004]
	ldr r1, [r3, #0x6C]
	ldr r1, [r1, #0x1C]
	cmp r0, r1
	ble _0816C0FC
	mov r4, r9
	adds r0, r4, r2
	ldr r1, [r3, #0x70]
	ldr r1, [r1, #0x1C]
	cmp r0, r1
	bge _0816C0FC
	ldr r1, [r7, #0x6C]
	ldr r0, _0816C0BC @ =0xFFFFFF00
	cmp r1, r0
	bge _0816C0FC
	movs r0, #0x01
	str r0, [r7, #0x78]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	asrs r0, r0, #0x01
	b _0816C106
_0816C0B8: .4byte 0x00001FFF
_0816C0BC: .4byte 0xFFFFFF00
_0816C0C0:
	ldr r6, [sp, #0x008]
	adds r1, r6, r2
	movs r0, #0xD0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0816C108
	mov r1, r9
	subs r0, r1, r2
	ldr r3, [sp, #0x044]
	ldr r1, [r3, #0x6C]
	ldr r1, [r1, #0x1C]
	cmp r0, r1
	ble _0816C0FC
	mov r4, r9
	adds r0, r4, r2
	ldr r1, [r3, #0x70]
	ldr r1, [r1, #0x1C]
	cmp r0, r1
	bge _0816C0FC
	ldr r1, [r7, #0x6C]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0816C0FC
	movs r0, #0x02
	str r0, [r7, #0x78]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	asrs r0, r0, #0x01
	b _0816C106
_0816C0FC:
	ldr r1, [r7, #0x6C]
	negs r1, r1
	lsls r0, r1, #0x01
	adds r0, r0, r1
	asrs r0, r0, #0x02
_0816C106:
	str r0, [r7, #0x6C]
_0816C108:
	ldr r6, [sp, #0x008]
	str r6, [r7, #0x18]
	mov r0, r9
	str r0, [r7, #0x1C]
_0816C110:
	ldr r0, [r7, #0x6C]
	cmp r0, #0x00
	bge _0816C11C
	adds r0, #0x01
	str r0, [r7, #0x6C]
	b _0816C14E
_0816C11C:
	cmp r0, #0x00
	ble _0816C14E
	subs r0, #0x01
	str r0, [r7, #0x6C]
	b _0816C14E
_0816C126:
	ldr r0, [r7, #0x7C]
	add r0, r9
	ldr r4, [sp, #0x004]
	b _0816C134
_0816C12E:
	ldr r0, [r7, #0x7C]
	add r0, r9
	ldr r4, [sp, #0x044]
_0816C134:
	ldr r1, [r4, #0x70]
	ldr r1, [r1, #0x1C]
	cmp r0, r1
	ble _0816C146
	negs r0, r2
	asrs r0, r0, #0x01
	str r0, [r7, #0x70]
	adds r3, r3, r0
	mov r9, r3
_0816C146:
	ldr r6, [sp, #0x008]
	str r6, [r7, #0x18]
	mov r0, r9
	str r0, [r7, #0x1C]
_0816C14E:
	ldr r0, [r7, #0x70]
	adds r0, #0x40
	str r0, [r7, #0x70]
	ldr r0, [r7, #0x6C]
	ldr r2, _0816C1AC @ =0xFFFFFC00
	cmp r0, r2
	bge _0816C15E
	str r2, [r7, #0x6C]
_0816C15E:
	ldr r0, [r7, #0x6C]
	movs r1, #0x80
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _0816C16A
	str r1, [r7, #0x6C]
_0816C16A:
	ldr r0, [r7, #0x70]
	cmp r0, r2
	bge _0816C172
	str r2, [r7, #0x70]
_0816C172:
	ldr r0, [r7, #0x70]
	cmp r0, r1
	ble _0816C17A
	str r1, [r7, #0x70]
_0816C17A:
	ldr r0, [r7, #0x78]
	cmp r0, #0x00
	bne _0816C1B0
	ldr r0, [r7, #0x1C]
	ldr r1, [r7, #0x7C]
	subs r0, r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x08
	cmp r0, r1
	ble _0816C208
	ldr r0, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_8163C94
	cmp r7, #0x00
	beq _0816C208
	ldr r1, [r7, #0x0C]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
	b _0816C208
_0816C1AC: .4byte 0xFFFFFC00
_0816C1B0:
	cmp r0, #0x00
	blt _0816C208
	cmp r0, #0x02
	bgt _0816C208
	ldr r0, [r7, #0x1C]
	ldr r2, [r7, #0x7C]
	subs r0, r0, r2
	movs r1, #0xA0
	lsls r1, r1, #0x08
	cmp r0, r1
	bgt _0816C1DA
	ldr r3, [r7, #0x18]
	adds r1, r2, #0x0
	adds r0, r3, r1
	cmp r0, #0x00
	blt _0816C1DA
	subs r1, r3, r1
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0816C208
_0816C1DA:
	ldr r4, [r7, #0x74]
	ldr r0, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_8163C94
	cmp r7, #0x00
	beq _0816C1F8
	ldr r1, [r7, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816C1F8:
	ldr r0, _0816C204 @ =0x08218EB6
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0816C20A
_0816C204: .4byte byte_8218EB6 @ =0x08218EB6
_0816C208:
	movs r0, #0x00
_0816C20A:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
