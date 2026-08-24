	.syntax unified
	.text

	thumb_func_start sub_8144B98
sub_8144B98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	movs r7, #0x01
	adds r1, r7, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _08144BD2
	mov r0, r8
	str r1, [r0, #0x00]
	b _08144CBA
_08144BD2:
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	movs r7, #0x00
	str r7, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08144C2C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _08144C28 @ =0x08145AB1
	str r0, [r1, #0x00]
	mov r1, r8
	str r7, [r1, #0x00]
	b _08144CBA
	.byte 0x00, 0x00
_08144C28: .4byte sub_8145AB0
_08144C2C:
	ldr r2, _08144C5C @ =0x083A05EC
	ldr r1, _08144C60 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08144C78
	cmp r0, #0x01
	bgt _08144C64
	cmp r0, #0x00
	beq _08144C6E
	b _08144C96
	.byte 0x00, 0x00
_08144C5C: .4byte dword_83A05EC @ =0x083A05EC
_08144C60: .4byte 0x00000216
_08144C64:
	cmp r0, #0x02
	beq _08144C80
	cmp r0, #0x03
	beq _08144C8C
	b _08144C96
_08144C6E:
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x18
	b _08144C94
_08144C78:
	ldr r0, _08144C7C @ =0x03FFFFFF
	b _08144C90
_08144C7C: .4byte 0x03FFFFFF
_08144C80:
	movs r0, #0x00
	mov r10, r0
	ldr r1, _08144C88 @ =0x03FFFFFF
	b _08144C94
_08144C88: .4byte 0x03FFFFFF
_08144C8C:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08144C90:
	mov r10, r0
	movs r1, #0x00
_08144C94:
	mov r9, r1
_08144C96:
	ldr r0, _08144CCC @ =0x0000020D
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	mov r2, r10
	mov r3, r9
	bl sub_8137CD8
	adds r0, r4, #0x0
	bl sub_8138494
	ldr r0, _08144CD0 @ =0x08145969
	mov r1, r8
	str r0, [r1, #0x00]
_08144CBA:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144CCC: .4byte 0x0000020D
_08144CD0: .4byte sub_8145968
