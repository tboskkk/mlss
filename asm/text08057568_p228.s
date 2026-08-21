	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810787C
sub_810787C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r12, r0
	ldr r0, _08107988 @ =0x00000129
	add r0, r12
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _0810798C @ =0x03000FD8
	ldr r4, [r2, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	mov r9, r2
	cmp r0, #0x00
	bne _081078F4
	movs r2, #0xAC
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x3F
	ands r0, r1
	cmp r0, #0x20
	bne _081078F4
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	movs r0, #0xFC
	ands r0, r1
	lsrs r4, r0, #0x02
	movs r2, #0x01
_081078CC:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _081078DE
	movs r3, #0x00
_081078DE:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0x0
	asrs r0, r1
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _081078CC
	ldr r0, _08107988 @ =0x00000129
	add r0, r12
	strb r3, [r0, #0x00]
_081078F4:
	lsls r4, r3, #0x10
	asrs r2, r4, #0x10
	mov r8, r2
	cmp r2, #0x00
	bge _08107900
	b _08107A44
_08107900:
	mov r0, r12
	ldr r7, [r0, #0x10]
	ldr r0, [r7, #0x34]
	cmp r0, #0x00
	bne _0810790C
	b _08107A44
_0810790C:
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	beq _08107914
	b _08107A44
_08107914:
	ldrb r1, [r7, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	beq _08107924
	b _08107A44
_08107924:
	ldr r0, _08107990 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r6, [r1, #0x38]
	ldr r5, [r6, #0x10]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x38]
	ldrb r0, [r1, #0x02]
	adds r0, #0x02
	strb r0, [r1, #0x02]
	strh r2, [r5, #0x06]
	strh r2, [r6, #0x06]
	mov r2, r12
	adds r2, #0xE4
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0C]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x02]
	adds r0, r0, r1
	subs r0, #0x0C
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r6, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r7, #0x00]
	adds r0, r0, r1
	subs r0, #0x08
	ldr r1, _08107994 @ =0x000001FF
	mov r10, r1
	mov r1, r10
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strh r0, [r6, #0x02]
	asrs r0, r4, #0x11
	lsls r0, r0, #0x02
	adds r0, #0x89
	mov r1, r8
	cmp r1, #0x03
	ble _08107998
	movs r1, #0xC8
	lsls r1, r1, #0x08
	b _0810799C
	.byte 0x00, 0x00
_08107988: .4byte 0x00000129
_0810798C: .4byte 0x03000FD8
_08107990: .4byte 0x03000D74
_08107994: .4byte 0x000001FF
_08107998:
	movs r1, #0xB8
	lsls r1, r1, #0x08
_0810799C:
	orrs r1, r0
	strh r1, [r6, #0x04]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r0, #0x01
	ands r3, r0
	movs r4, #0x00
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x3F
	ands r0, r1
	cmp r0, #0x1F
	bhi _081079C0
	movs r4, #0x01
_081079C0:
	movs r1, #0x02
	ldsh r0, [r7, r1]
	ldr r1, [r2, #0x00]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0C
	lsls r0, r3, #0x10
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _081079DE
	lsls r0, r4, #0x01
	b _081079E2
_081079DE:
	lsls r0, r4, #0x01
	negs r0, r0
_081079E2:
	adds r1, r1, r0
	movs r0, #0xFF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r5, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r7, [r7, #0x00]
	adds r0, r0, r7
	adds r0, #0x08
	ldr r2, _08107A54 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r5, #0x02]
	asrs r0, r3, #0x0F
	adds r0, #0x95
	ldr r2, _08107A58 @ =0xFFFFB800
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x04]
	movs r4, #0x8C
	lsls r4, r4, #0x01
	add r4, r12
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08107A28
	mov r0, r12
	adds r0, #0x08
	bl sub_8086E8C
	str r0, [r4, #0x00]
_08107A28:
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x0C]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x34]
	str r0, [r5, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r6, #0x0C]
	str r6, [r0, #0x10]
	ldr r0, [r5, #0x10]
	str r5, [r0, #0x0C]
_08107A44:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107A54: .4byte 0x000001FF
_08107A58: .4byte 0xFFFFB800
	thumb_func_start sub_8107A5C
sub_8107A5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	movs r0, #0x93
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08107A9E
	movs r3, #0x94
	lsls r3, r3, #0x01
	adds r1, r4, r3
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x09
	ble _08107A8E
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08107A8E:
	ldr r0, _08107B88 @ =0x082010E2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	strh r0, [r2, #0x00]
_08107A9E:
	ldr r7, [r4, #0x10]
	ldr r0, [r7, #0x34]
	cmp r0, #0x00
	beq _08107B7C
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	bne _08107B7C
	ldrb r1, [r7, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08107B7C
	movs r0, #0x00
	mov r12, r0
	ldrh r1, [r7, #0x14]
	movs r0, #0x01
	ands r0, r1
	ldr r5, _08107B8C @ =0x03000D74
	ldr r2, _08107B90 @ =0x082010D8
	mov r8, r2
	cmp r0, #0x00
	bne _08107AEA
	movs r2, #0x01
_08107ACC:
	mov r3, r12
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	mov r12, r3
	asrs r3, r0, #0x10
	cmp r3, #0x0F
	bgt _08107AEA
	adds r0, r1, #0x0
	asrs r0, r3
	ands r0, r2
	cmp r0, #0x00
	beq _08107ACC
_08107AEA:
	ldr r3, [r5, #0x00]
	ldr r5, [r3, #0x38]
	movs r0, #0x00
	ldsh r6, [r7, r0]
	movs r1, #0x02
	ldsh r2, [r7, r1]
	movs r1, #0x94
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r4, [r5, #0x10]
	ldr r0, [r4, #0x10]
	str r0, [r3, #0x38]
	ldrb r0, [r3, #0x02]
	adds r0, #0x02
	movs r1, #0x00
	strb r0, [r3, #0x02]
	strh r1, [r4, #0x06]
	strh r1, [r5, #0x06]
	movs r0, #0xFF
	ands r2, r0
	strh r2, [r5, #0x00]
	adds r0, r6, #0x0
	subs r0, #0x0C
	ldr r3, _08107B94 @ =0x000001FF
	mov r8, r3
	mov r1, r8
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r5, #0x02]
	mov r0, r12
	lsls r3, r0, #0x10
	asrs r3, r3, #0x04
	ldr r0, _08107B98 @ =0x000008BA
	adds r1, r0, #0x0
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r5, #0x04]
	ldr r1, _08107B9C @ =0xFFFF8000
	adds r0, r1, #0x0
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r6, #0x04
	mov r2, r8
	ands r6, r2
	strh r6, [r4, #0x02]
	ldr r1, _08107BA0 @ =0x000008BE
	adds r0, r1, #0x0
	orrs r3, r0
	strh r3, [r4, #0x04]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x0C]
	ldr r0, [r7, #0x34]
	str r0, [r4, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r5, #0x0C]
	str r5, [r0, #0x10]
	ldr r0, [r4, #0x10]
	str r4, [r0, #0x0C]
_08107B7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107B88: .4byte 0x082010E2
_08107B8C: .4byte 0x03000D74
_08107B90: .4byte 0x082010D8
_08107B94: .4byte 0x000001FF
_08107B98: .4byte 0x000008BA
_08107B9C: .4byte 0xFFFF8000
_08107BA0: .4byte 0x000008BE
	thumb_func_start sub_8107BA4
sub_8107BA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	movs r1, #0x93
	lsls r1, r1, #0x01
	add r1, r9
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08107BE0
	movs r0, #0x05
	strh r0, [r1, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x01
	add r1, r9
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x19
	ble _08107BE0
	movs r0, #0x00
	strb r0, [r1, #0x00]
_08107BE0:
	mov r0, r9
	ldr r0, [r0, #0x10]
	mov r8, r0
	ldr r0, [r0, #0x34]
	cmp r0, #0x00
	bne _08107BEE
	b _08107D1E
_08107BEE:
	ldrh r0, [r0, #0x06]
	cmp r0, #0x00
	beq _08107BF6
	b _08107D1E
_08107BF6:
	mov r2, r8
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08107C04
	b _08107D1E
_08107C04:
	movs r3, #0x00
	mov r10, r3
	ldrh r1, [r2, #0x14]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08107C34
	adds r2, r1, #0x0
	movs r3, #0x01
_08107C16:
	mov r1, r10
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r10, r1
	asrs r1, r0, #0x10
	cmp r1, #0x0F
	bgt _08107C34
	adds r0, r2, #0x0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0x00
	beq _08107C16
_08107C34:
	ldr r2, _08107D30 @ =0x03000D74
	ldr r0, [r2, #0x00]
	ldr r5, [r0, #0x38]
	adds r7, r5, #0x0
	mov r3, r8
	movs r0, #0x00
	ldsh r3, [r3, r0]
	str r3, [sp, #0x000]
	mov r1, r8
	movs r2, #0x02
	ldsh r1, [r1, r2]
	str r1, [sp, #0x004]
	movs r6, #0x00
_08107C4E:
	movs r0, #0x94
	lsls r0, r0, #0x01
	add r0, r9
	movs r4, #0x00
	ldsb r4, [r0, r4]
	ldr r3, _08107D34 @ =0x082010EC
	adds r0, r6, r3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	cmp r4, r1
	blt _08107CF4
	ldr r0, _08107D38 @ =0x082010F1
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bgt _08107CF4
	subs r4, r4, r1
	ldr r0, _08107D3C @ =0x08201100
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r4, r0
	movs r1, #0x0A
	bl __modsi3
	ldr r1, _08107D40 @ =0x082010FB
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, [sp, #0x004]
	adds r1, r1, r2
	subs r1, r1, r4
	movs r2, #0xFF
	ands r1, r2
	strh r1, [r5, #0x00]
	ldr r1, _08107D44 @ =0x082010F6
	adds r1, r6, r1
	movs r3, #0x00
	ldsb r3, [r1, r3]
	ldr r1, [sp, #0x000]
	adds r3, r3, r1
	ldr r1, _08107D48 @ =0x0820110F
	adds r1, r0, r1
	movs r2, #0x00
	ldsb r2, [r1, r2]
	adds r2, r2, r3
	ldr r3, _08107D4C @ =0x000001FF
	adds r1, r3, #0x0
	ands r2, r1
	ldr r1, _08107D50 @ =0x08201119
	adds r1, r0, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #0x0C
	orrs r2, r1
	strh r2, [r5, #0x02]
	mov r2, r10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x04
	movs r3, #0x80
	lsls r3, r3, #0x04
	orrs r1, r3
	ldr r2, _08107D54 @ =0x08201105
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0xB8
	orrs r1, r0
	strh r1, [r5, #0x04]
	ldr r0, _08107D30 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x02]
	adds r0, #0x01
	strb r0, [r1, #0x02]
	movs r1, #0x00
	strh r1, [r5, #0x06]
	ldr r5, [r5, #0x10]
_08107CF4:
	adds r6, #0x01
	cmp r6, #0x04
	ble _08107C4E
	ldr r2, _08107D30 @ =0x03000D74
	ldr r0, [r2, #0x00]
	str r5, [r0, #0x38]
	ldr r5, [r5, #0x0C]
	ldr r1, [r7, #0x0C]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r1, [r5, #0x10]
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x0C]
	mov r3, r8
	ldr r0, [r3, #0x34]
	str r0, [r5, #0x10]
	ldr r0, [r0, #0x0C]
	str r0, [r7, #0x0C]
	str r7, [r0, #0x10]
	ldr r0, [r5, #0x10]
	str r5, [r0, #0x0C]
_08107D1E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107D30: .4byte 0x03000D74
_08107D34: .4byte 0x082010EC
_08107D38: .4byte 0x082010F1
_08107D3C: .4byte 0x08201100
_08107D40: .4byte 0x082010FB
_08107D44: .4byte 0x082010F6
_08107D48: .4byte 0x0820110F
_08107D4C: .4byte 0x000001FF
_08107D50: .4byte 0x08201119
_08107D54: .4byte 0x08201105
	thumb_func_start sub_8107D58
sub_8107D58:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08107D6E
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8107F84
	b _08107E64
_08107D6E:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08107D80
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108084
	b _08107E64
_08107D80:
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _08107D96
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl sub_810857C
	b _08107E64
_08107D96:
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _08107DAC
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl sub_81087F0
	b _08107E64
_08107DAC:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _08107DC2
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	adds r2, r3, #0x0
	bl sub_81086B4
	b _08107E64
_08107DC2:
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08107DD6
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108180
	b _08107E64
_08107DD6:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08107DEA
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_810835C
	b _08107E64
_08107DEA:
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08107DFE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_81083EC
	b _08107E64
_08107DFE:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08107E12
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_81084B4
	b _08107E64
_08107E12:
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	beq _08107E26
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108E3C
	b _08107E64
_08107E26:
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _08107E3A
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108DE4
	b _08107E64
_08107E3A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _08107E4E
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108D8C
	b _08107E64
_08107E4E:
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08107E5C
	movs r0, #0x00
	b _08107E64
_08107E5C:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8108D2C
_08107E64:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8107E6C
sub_8107E6C:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r6, #0x90
	lsls r6, r6, #0x01
	adds r2, r0, r6
	mov r9, r2
	ldrb r5, [r2, #0x00]
	lsls r3, r5, #0x1D
	adds r6, r1, r6
	lsrs r3, r3, #0x1D
	ldrb r4, [r6, #0x00]
	movs r2, #0x08
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	movs r3, #0x38
	ands r3, r5
	movs r4, #0x39
	negs r4, r4
	ands r2, r4
	orrs r2, r3
	strb r2, [r6, #0x00]
	mov r3, r9
	ldrh r2, [r3, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x01
	ands r3, r2
	ldrh r4, [r6, #0x00]
	ldr r2, _08107F74 @ =0xFFFFFE3F
	ands r2, r4
	orrs r2, r3
	strh r2, [r6, #0x00]
	ldr r5, _08107F78 @ =0x00000121
	adds r2, r0, r5
	ldrb r2, [r2, #0x00]
	mov r8, r2
	adds r5, r1, r5
	movs r3, #0x0E
	mov r4, r8
	ands r3, r4
	ldrb r4, [r5, #0x00]
	movs r2, #0x0F
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	movs r3, #0x70
	mov r4, r8
	ands r3, r4
	movs r4, #0x71
	negs r4, r4
	ands r2, r4
	orrs r2, r3
	strb r2, [r5, #0x00]
	mov r2, r9
	ldr r4, [r2, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x0A
	ands r4, r2
	ldr r2, [r6, #0x00]
	ldr r3, _08107F7C @ =0xFFFC7FFF
	ands r2, r3
	orrs r2, r4
	str r2, [r6, #0x00]
	movs r5, #0x91
	lsls r5, r5, #0x01
	adds r2, r0, r5
	ldrb r6, [r2, #0x00]
	adds r5, r1, r5
	movs r3, #0x1C
	ands r3, r6
	ldrb r4, [r5, #0x00]
	movs r2, #0x1D
	negs r2, r2
	ands r2, r4
	orrs r2, r3
	movs r3, #0x20
	ands r3, r6
	movs r4, #0x21
	negs r4, r4
	ands r2, r4
	orrs r2, r3
	strb r2, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrh r3, [r3, #0x00]
	adds r2, r1, r2
	strh r3, [r2, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r3, r0, r2
	ldrb r3, [r3, #0x00]
	adds r2, r1, r2
	strb r3, [r2, #0x00]
	ldr r2, _08107F80 @ =0x00000129
	adds r3, r0, r2
	ldrb r3, [r3, #0x00]
	adds r2, r1, r2
	strb r3, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08107F74: .4byte 0xFFFFFE3F
_08107F78: .4byte 0x00000121
_08107F7C: .4byte 0xFFFC7FFF
_08107F80: .4byte 0x00000129
	thumb_func_start sub_8107F84
sub_8107F84:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08107FDE
	adds r1, r5, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _08107FE2
	ldr r0, _08107FC8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r0, [r2, #0x00]
	cmp r0, #0x0F
	beq _08107FCC
	cmp r0, #0x11
	bne _08107FCE
	subs r6, #0x3C
	b _08107FCE
_08107FC8: .4byte 0x03000FF4
_08107FCC:
	subs r6, #0x1E
_08107FCE:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810804C
_08107FDE:
	movs r0, #0x00
	b _08108074
_08107FE2:
	ldr r2, _0810807C @ =0x08201123
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x02
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _08107FDE
	cmp r0, #0x00
	beq _08108026
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _08108022
	movs r1, #0x00
_08108022:
	cmp r1, #0x00
	beq _08107FDE
_08108026:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810804C
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
_0810804C:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08108080 @ =0x0000FFFC
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08108074:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0810807C: .4byte 0x08201123
_08108080: .4byte 0x0000FFFC
	thumb_func_start sub_8108084
sub_8108084:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081080DE
	adds r1, r5, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _081080E2
	ldr r0, _081080C8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r0, [r2, #0x00]
	cmp r0, #0x0F
	beq _081080CC
	cmp r0, #0x11
	bne _081080CE
	subs r6, #0x3C
	b _081080CE
_081080C8: .4byte 0x03000FF4
_081080CC:
	subs r6, #0x1E
_081080CE:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810814C
_081080DE:
	movs r0, #0x00
	b _08108170
_081080E2:
	ldr r2, _08108178 @ =0x08201123
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x02
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _081080DE
	cmp r0, #0x00
	beq _08108126
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _08108122
	movs r1, #0x00
_08108122:
	cmp r1, #0x00
	beq _081080DE
_08108126:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810814C
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r0, r5, r2
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
_0810814C:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _0810817C @ =0x0000FFFC
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08108170:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08108178: .4byte 0x08201123
_0810817C: .4byte 0x0000FFFC
	thumb_func_start sub_8108180
sub_8108180:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	mov r9, r1
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0810825E
	adds r1, r6, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _08108268
	ldr r0, _081081D8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r1, [r2, #0x00]
	ldr r0, _081081DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	cmp r1, #0x10
	beq _081081E0
	movs r2, #0x00
	mov r8, r2
	cmp r1, #0x12
	bne _081081E4
	movs r3, #0x3C
	mov r8, r3
	b _081081E4
	.byte 0x00, 0x00
_081081D8: .4byte 0x03000FF4
_081081DC: .4byte 0x03000FD8
_081081E0:
	movs r1, #0x1E
	mov r8, r1
_081081E4:
	ldr r0, [r0, #0x7C]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, r6, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	bl __divsi3
	movs r7, #0x64
	mov r3, r9
	subs r5, r7, r3
	muls r0, r5
	cmp r0, #0x00
	bge _0810820A
	adds r0, #0xFF
_0810820A:
	asrs r5, r0, #0x08
	mov r0, r8
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r7, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r5, r0
	ble _0810822C
	movs r2, #0x00
	b _08108244
_0810822C:
	mov r0, r8
	subs r4, r7, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r2, #0x02
	cmp r5, r0
	ble _08108244
	movs r2, #0x01
_08108244:
	ldr r1, _08108264 @ =0x00000121
	adds r3, r6, r1
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r1, #0x70
	ands r0, r1
	cmp r0, #0x00
	bne _08108332
_0810825E:
	movs r0, #0x00
	b _08108348
	.byte 0x00, 0x00
_08108264: .4byte 0x00000121
_08108268:
	ldr r2, _08108290 @ =0x083BA960
	adds r0, r6, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x04
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r4, r0, r1
	cmp r4, #0x64
	beq _081082B0
	cmp r4, #0x00
	bne _08108294
	movs r2, #0x02
	b _081082CC
	.byte 0x00, 0x00
_08108290: .4byte 0x083BA960
_08108294:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl __divsi3
	mov r2, r9
	subs r5, r2, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r5, r0
	bge _081082B4
_081082B0:
	movs r2, #0x00
	b _081082CC
_081082B4:
	mov r3, r9
	subs r5, r3, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r2, #0x02
	cmp r5, r0
	bge _081082CC
	movs r2, #0x01
_081082CC:
	ldr r0, _08108354 @ =0x00000121
	adds r3, r6, r0
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r1, #0x70
	ands r0, r1
	cmp r0, #0x00
	beq _0810825E
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r6, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x01
	adds r1, r6, r3
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108332
	subs r3, #0x04
	adds r4, r6, r3
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108332
	adds r0, r6, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r6, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108332:
	movs r3, #0x8F
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrh r0, [r2, #0x00]
	ldr r1, _08108358 @ =0x0000FCFF
	ands r1, r0
	subs r3, #0x1E
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r0, #0x01
_08108348:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08108354: .4byte 0x00000121
_08108358: .4byte 0x0000FCFF
	thumb_func_start sub_810835C
sub_810835C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081083E4
	ldr r0, _0810839C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r0, [r2, #0x00]
	cmp r0, #0x10
	beq _081083A0
	cmp r0, #0x12
	bne _081083A2
	subs r3, #0x3C
	b _081083A2
	.byte 0x00, 0x00
_0810839C: .4byte 0x03000FF4
_081083A0:
	subs r3, #0x1E
_081083A2:
	lsrs r4, r3, #0x1F
	adds r4, r3, r4
	asrs r4, r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r4, r0
	blt _081083E4
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r4, _081083E0 @ =0x00000121
	adds r2, r5, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _081083E6
_081083E0: .4byte 0x00000121
_081083E4:
	movs r0, #0x00
_081083E6:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_81083EC
sub_81083EC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r1, [r6, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108416
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r4, r0
	bge _0810841A
_08108416:
	movs r0, #0x00
	b _081084A8
_0810841A:
	ldrh r0, [r6, #0x00]
	ldr r1, _0810847C @ =0x0000F3FF
	ands r1, r0
	strh r1, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08108480
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108454
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108454:
	movs r0, #0x94
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r2, r5, r1
	movs r1, #0x01
	movs r0, #0x01
	strh r0, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	adds r0, r7, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _08108492
_0810847C: .4byte 0x0000F3FF
_08108480:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _081084A6
_08108492:
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	ldr r1, _081084B0 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x0A
	orrs r0, r1
	str r0, [r2, #0x00]
_081084A6:
	movs r0, #0x01
_081084A8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081084B0: .4byte 0xFFFC7FFF
	thumb_func_start sub_81084B4
sub_81084B4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r1, [r6, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x04
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081084DE
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r4, r0
	bge _081084E2
_081084DE:
	movs r0, #0x00
	b _08108570
_081084E2:
	ldrh r0, [r6, #0x00]
	ldr r1, _08108544 @ =0x0000F3FF
	ands r1, r0
	strh r1, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _08108548
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810851C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_0810851C:
	movs r0, #0x94
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x01
	adds r2, r5, r1
	movs r1, #0x01
	movs r0, #0x01
	strh r0, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	adds r0, r7, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _0810855A
_08108544: .4byte 0x0000F3FF
_08108548:
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _0810856E
_0810855A:
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	ldr r1, _08108578 @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x0A
	orrs r0, r1
	str r0, [r2, #0x00]
_0810856E:
	movs r0, #0x01
_08108570:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08108578: .4byte 0xFFFC7FFF
	thumb_func_start sub_810857C
sub_810857C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _08108638
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081085A8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810861A
_081085A4:
	movs r0, #0x00
	b _081086A4
_081085A8:
	ldr r2, _0810862C @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _081085A4
	cmp r0, #0x00
	beq _081085EA
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _081085E6
	movs r1, #0x00
_081085E6:
	cmp r1, #0x00
	beq _081085A4
_081085EA:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108612
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108612:
	ldr r0, _08108630 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_0810861A:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _08108634 @ =0x0000FFF3
	ands r1, r0
	movs r0, #0x08
	b _08108682
	.byte 0x00, 0x00
_0810862C: .4byte 0x08201127
_08108630: .4byte 0x00000129
_08108634: .4byte 0x0000FFF3
_08108638:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _08108674
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810866C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_0810866C:
	ldr r0, _081086AC @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_08108674:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _081086B0 @ =0x0000FFF3
	ands r1, r0
	movs r0, #0x04
_08108682:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r2, #0x85
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strh r7, [r0, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_081086A4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081086AC: .4byte 0x00000129
_081086B0: .4byte 0x0000FFF3
	thumb_func_start sub_81086B4
sub_81086B4:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _08108770
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _081086E0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _08108752
_081086DC:
	movs r0, #0x00
	b _081087DC
_081086E0:
	ldr r2, _08108764 @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _081086DC
	cmp r0, #0x00
	beq _08108722
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _0810871E
	movs r1, #0x00
_0810871E:
	cmp r1, #0x00
	beq _081086DC
_08108722:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0810874A
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r3, #0x8C
	lsls r3, r3, #0x01
	adds r1, r5, r3
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_0810874A:
	ldr r0, _08108768 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_08108752:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _0810876C @ =0x0000FFCF
	ands r1, r0
	movs r0, #0x20
	b _081087BA
	.byte 0x00, 0x00
_08108764: .4byte 0x08201127
_08108768: .4byte 0x00000129
_0810876C: .4byte 0x0000FFCF
_08108770:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _081087AC
	movs r3, #0x91
	lsls r3, r3, #0x01
	adds r4, r5, r3
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _081087A4
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_081087A4:
	ldr r3, _081087E4 @ =0x00000129
	adds r1, r5, r3
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_081087AC:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r0, [r2, #0x00]
	ldr r1, _081087E8 @ =0x0000FFCF
	ands r1, r0
	movs r0, #0x10
_081087BA:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r1, #0x86
	lsls r1, r1, #0x01
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	movs r3, #0x90
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrh r1, [r2, #0x00]
	ldr r0, _081087EC @ =0xFFFFFE3F
	ands r0, r1
	adds r3, #0x20
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
_081087DC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081087E4: .4byte 0x00000129
_081087E8: .4byte 0x0000FFCF
_081087EC: .4byte 0xFFFFFE3F
	thumb_func_start sub_81087F0
sub_81087F0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0xFF
	bhi _081088AC
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810881C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r6, r0
	bge _0810888E
_08108818:
	movs r0, #0x00
	b _08108916
_0810881C:
	ldr r2, _081088A0 @ =0x08201127
	adds r0, r5, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r0, r0, r1
	cmp r0, #0x64
	beq _08108818
	cmp r0, #0x00
	beq _0810885E
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r6, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r1, #0x01
	cmp r4, r0
	bge _0810885A
	movs r1, #0x00
_0810885A:
	cmp r1, #0x00
	beq _08108818
_0810885E:
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108886
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108886:
	ldr r0, _081088A4 @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_0810888E:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _081088A8 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x80
	b _081088F6
	.byte 0x00, 0x00
_081088A0: .4byte 0x08201127
_081088A4: .4byte 0x00000129
_081088A8: .4byte 0x0000FF3F
_081088AC:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _081088E8
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _081088E0
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r5, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_081088E0:
	ldr r0, _0810891C @ =0x00000129
	adds r1, r5, r0
	movs r0, #0xFF
	strb r0, [r1, #0x00]
_081088E8:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r0, [r2, #0x00]
	ldr r1, _08108920 @ =0x0000FF3F
	ands r1, r0
	movs r0, #0x40
_081088F6:
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r2, #0x8E
	lsls r2, r2, #0x01
	adds r0, r5, r2
	strh r7, [r0, #0x00]
	ldr r0, _08108924 @ =0x00000121
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x0A
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
_08108916:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0810891C: .4byte 0x00000129
_08108920: .4byte 0x0000FF3F
_08108924: .4byte 0x00000121
	thumb_func_start sub_8108928
sub_8108928:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	subs r0, #0x1E
	ands r0, r1
	cmp r0, #0x00
	beq _0810899C
	ldr r0, _08108980 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08108984 @ =0x00000121
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810898C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810899C
	ldr r0, _08108988 @ =0x08108A9D
	bl sub_807FFB8
	str r5, [r0, #0x08]
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _0810899C
	.byte 0x00, 0x00
_08108980: .4byte 0x0000FEFF
_08108984: .4byte 0x00000121
_08108988: .4byte sub_8108A9C
_0810898C:
	adds r0, r5, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_0810899C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81089A4
sub_81089A4:
	push {lr}
	adds r3, r0, #0x0
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x0A
	ands r0, r1
	cmp r0, #0x00
	beq _08108A3A
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _081089F0 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08108A2C
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	ldrh r1, [r2, #0x00]
	cmp r0, #0x13
	beq _081089F4
	adds r2, r1, #0x0
	cmp r0, #0x14
	bne _081089FA
	movs r0, #0x80
	lsls r0, r0, #0x03
	orrs r2, r0
	b _081089FA
_081089F0: .4byte 0x0000F3FF
_081089F4:
	movs r2, #0x80
	lsls r2, r2, #0x04
	orrs r2, r1
_081089FA:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	strh r2, [r0, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r3, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, #0x27
	adds r2, r3, r0
	movs r1, #0x01
	movs r0, #0x01
	strh r0, [r2, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_08108A2C:
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r2, _08108A40 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_08108A3A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08108A40: .4byte 0xFFFC7FFF
	thumb_func_start sub_8108A44
sub_8108A44:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x08]
	adds r2, r5, #0x0
	adds r2, #0x08
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08108A94
	movs r4, #0x01
	negs r4, r4
	adds r0, r2, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x04]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0xF5
	cmp r0, r4
	bne _08108A8E
	adds r1, #0x52
_08108A8E:
	adds r0, r1, #0x0
	bl stop_sfx_80195A8
_08108A94:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8108A9C
sub_8108A9C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08108AF4
	adds r1, r2, #0x0
	adds r1, #0x08
	adds r6, r2, #0x0
	adds r6, #0xEC
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r5, #0x01
	negs r5, r5
	ldr r2, _08108AEC @ =0x00002057
	cmp r0, r5
	bne _08108AC8
	subs r2, #0x2F
_08108AC8:
	adds r0, r1, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08108AF0 @ =0x08108A45
	str r0, [r4, #0x04]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0xF5
	cmp r0, r5
	bne _08108AE2
	adds r1, #0x52
_08108AE2:
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _08108B08
_08108AEC: .4byte 0x00002057
_08108AF0: .4byte sub_8108A44
_08108AF4:
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x04]
_08108B08:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8108B10
sub_8108B10:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r3, r4, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08108B48
	movs r2, #0x01
	negs r2, r2
	adds r0, r3, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r5, #0x04]
_08108B48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8108B50
sub_8108B50:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08108B68
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08108B76
_08108B68:
	ldr r0, _08108B7C @ =0x00000151
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08108B80 @ =0x08108B11
	str r0, [r4, #0x04]
_08108B76:
	pop {r4}
	pop {r0}
	bx r0
_08108B7C: .4byte 0x00000151
_08108B80: .4byte sub_8108B10
	thumb_func_start sub_8108B84
sub_8108B84:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08108BD2
	ldr r0, [r5, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r6, r0, #0x0
	adds r6, #0xEC
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r4, #0x01
	negs r4, r4
	ldr r2, _08108BD8 @ =0x0000205A
	cmp r0, r4
	bne _08108BAC
	subs r2, #0x2F
_08108BAC:
	adds r0, r1, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0xFE
	cmp r0, r4
	bne _08108BC2
	movs r1, #0xF0
_08108BC2:
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x10
	strh r0, [r5, #0x10]
	ldr r0, _08108BDC @ =0x08108B51
	str r0, [r5, #0x04]
_08108BD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08108BD8: .4byte 0x0000205A
_08108BDC: .4byte sub_8108B50
	thumb_func_start sub_8108BE0
sub_8108BE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08108C1C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _08108C14 @ =0x0000205A
	cmp r1, r0
	bne _08108C08
	subs r2, #0x2F
_08108C08:
	adds r0, r2, #0x0
	bl sub_8082AAC
	ldr r0, _08108C18 @ =0x08108B85
	b _08108C2E
	.byte 0x00, 0x00
_08108C14: .4byte 0x0000205A
_08108C18: .4byte sub_8108B84
_08108C1C:
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0x00
_08108C2E:
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
