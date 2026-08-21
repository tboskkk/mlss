	.syntax unified
	.text

	thumb_func_start sub_8148038
sub_8148038:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	movs r0, #0x58
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0xD1
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r6, [r0, #0x00]
	adds r1, #0xE4
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0814807A
	b _0814823A
_0814807A:
	adds r0, r6, #0x0
	bl sub_81488F0
	ldr r2, _081480B0 @ =0x03001038
	ldr r0, _081480B4 @ =0x0819832C
	ldr r1, _081480B8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r4, r7, #0x0
	adds r4, #0x24
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r10, r4
	cmp r5, #0x01
	beq _081480EC
	cmp r5, #0x01
	bgt _081480BC
	cmp r5, #0x00
	beq _081480C6
	b _08148148
	.byte 0x00, 0x00
_081480B0: .4byte 0x03001038
_081480B4: .4byte 0x0819832C
_081480B8: .4byte 0x08198220
_081480BC:
	cmp r5, #0x02
	beq _08148106
	cmp r5, #0x03
	beq _08148126
	b _08148148
_081480C6:
	ldr r1, [r7, #0x0C]
	ldr r2, _081480E8 @ =0x00000276
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r2, [r7, #0x10]
	subs r2, r2, r0
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	b _0814811E
	.byte 0x00, 0x00
_081480E8: .4byte 0x00000276
_081480EC:
	ldr r1, [r7, #0x0C]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	str r5, [sp, #0x000]
	b _0814811A
_08148106:
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814811A:
	movs r0, #0x00
	str r0, [sp, #0x004]
_0814811E:
	adds r0, r6, #0x0
	bl sub_8047F60
	b _08148148
_08148126:
	ldr r1, [r7, #0x0C]
	ldr r2, _0814824C @ =0xFFFFF600
	adds r1, r1, r2
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
_08148148:
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r6, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	movs r2, #0x00
	strb r0, [r1, #0x00]
	movs r3, #0xB9
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xBA
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r6, r3
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r3, #0x04
	adds r0, r6, r3
	str r2, [r0, #0x00]
	ldr r0, _08148250 @ =0x0000030A
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, #0x1C
	adds r1, r6, r3
	adds r0, #0x80
	strh r0, [r1, #0x00]
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r3, #0x1C
	adds r0, r6, r3
	str r2, [r0, #0x00]
	ldr r0, _08148254 @ =0x0000030E
	adds r1, r6, r0
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r6, r2
	adds r0, #0x80
	strh r0, [r1, #0x00]
	adds r0, #0x38
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x00C]
	adds r0, r0, r3
	ldrh r0, [r0, #0x2A]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r2, _08148258 @ =0x083A05EC
	ldr r1, _0814825C @ =0x00000216
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	mov r3, r10
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r0, r1
	adds r0, #0x08
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	adds r1, #0x10
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, r4
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08148260 @ =0x08148265
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
_0814823A:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814824C: .4byte 0xFFFFF600
_08148250: .4byte 0x0000030A
_08148254: .4byte 0x0000030E
_08148258: .4byte 0x083A05EC
_0814825C: .4byte 0x00000216
_08148260: .4byte sub_8148264
