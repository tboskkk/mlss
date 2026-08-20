	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8059924
sub_8059924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x004]
_08059936:
	ldr r2, _08059A84 @ =room_solidity_index_table
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r7, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08059A88 @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x018]
	cmp r1, r0
	bne _08059956
	b _08059A64
_08059956:
	ldr r5, [sp, #0x004]
	lsls r2, r5, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x14
	subs r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #0x11
	mov r10, r6
	movs r0, #0x0D
	str r0, [sp, #0x00C]
	cmp r1, #0x00
	bne _080599A8
	movs r5, #0x10
	mov r10, r5
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x09
	adds r0, r0, r5
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
_080599A8:
	adds r1, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599C0
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599C0:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bne _080599D4
	movs r6, #0x0C
	str r6, [sp, #0x00C]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080599D4:
	adds r1, #0x0A
	adds r0, r7, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599EC
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599EC:
	movs r2, #0x00
	ldr r5, [sp, #0x00C]
	cmp r2, r5
	bge _08059A64
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080599FA:
	movs r1, #0x00
	lsls r2, r2, #0x10
	str r2, [sp, #0x01C]
	cmp r1, r10
	bge _08059A52
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	asrs r0, r2, #0x10
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	lsls r3, r0, #0x10
	mov r9, r3
	ldr r2, [sp, #0x008]
	adds r6, r0, #0x0
	muls r6, r2
	mov r8, r6
_08059A1C:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x004]
	lsls r0, r3, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r7, #0x6C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r3, #0x0
	mov r6, r9
	asrs r3, r6, #0x10
	bl sub_8059A8C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r10
	blt _08059A1C
_08059A52:
	ldr r1, [sp, #0x01C]
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	blt _080599FA
_08059A64:
	ldr r5, [sp, #0x018]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _08059A72
	b _08059936
_08059A72:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059A84: .4byte room_solidity_index_table
_08059A88: .4byte 0x0000FFFF
	thumb_func_start sub_8059A8C
sub_8059A8C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, [sp, #0x014]
	lsls r1, r1, #0x10
	lsls r5, r5, #0x10
	ldr r4, [r0, #0x74]
	mov r8, r4
	movs r6, #0x0F
	lsrs r1, r1, #0x06
	ands r3, r6
	lsls r4, r3, #0x06
	adds r4, r1, r4
	ands r2, r6
	lsls r2, r2, #0x01
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsls r3, r3, #0x01
	adds r3, #0x01
	lsls r3, r3, #0x05
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r0, #0x0
	adds r2, #0x7C
	ldrh r2, [r2, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x10
	ldr r3, [r0, #0x68]
	lsrs r4, r4, #0x0F
	adds r4, r4, r3
	lsrs r5, r5, #0x0D
	add r5, r8
	ldrh r0, [r5, #0x00]
	adds r0, r2, r0
	strh r0, [r4, #0x00]
	ldrh r0, [r5, #0x02]
	adds r0, r2, r0
	strh r0, [r4, #0x02]
	lsrs r1, r1, #0x0F
	adds r1, r1, r3
	ldrh r0, [r5, #0x04]
	adds r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x06]
	adds r2, r2, r0
	strh r2, [r1, #0x02]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8059AF4
sub_8059AF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_08059B06:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _08059B54 @ =room_solidity_index_table
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08059B58 @ =0x0000FFFF
	cmp r0, r2
	bne _08059B24
	b _08059C60
_08059B24:
	lsls r0, r0, #0x02
	ldr r5, _08059B5C @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08059B60
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _08059B76
	.byte 0x00, 0x00
_08059B54: .4byte room_solidity_index_table
_08059B58: .4byte 0x0000FFFF
_08059B5C: .4byte 0x08754D74
_08059B60:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_08059B76:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r7, #0x02
	movs r0, #0x00
	mov r8, r0
	cmp r0, r3
	bcs _08059C60
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r1, r5, #0x10
	str r1, [sp, #0x010]
	str r3, [sp, #0x004]
_08059BE6:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08059C54
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	mov r10, r0
	mov r1, r12
	ldr r1, [r1, #0x6C]
	mov r9, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_08059C04:
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	movs r4, #0x00
	adds r5, r2, #0x4
_08059C14:
	movs r2, #0xC0
	ands r2, r3
	lsls r2, r2, #0x02
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	orrs r1, r2
	mov r0, r10
	add r0, r8
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	lsls r0, r3, #0x1A
	lsrs r3, r0, #0x18
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x03
	bls _08059C14
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _08059C04
_08059C54:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _08059BE6
_08059C60:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08059C70
	b _08059B06
_08059C70:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _08059D00 @ =room_solidity_index_table
	ldr r3, _08059CFC @ =0x0000FFFF
_08059C78:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _08059CDE
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_08059CDE:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _08059C78
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059CFC: .4byte 0x0000FFFF
_08059D00: .4byte room_solidity_index_table
	thumb_func_start sub_8059D04
sub_8059D04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _08059D7C @ =0x086FFC20
	mov r9, r5
	ldr r1, _08059D80 @ =0x03000DE8
	ldrb r7, [r1, #0x04]
	ldr r2, _08059D84 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	ldr r2, [r0, #0x74]
	ldr r6, _08059D88 @ =0x000007FF
	mov r12, r2
_08059D2E:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bls _08059D2E
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r4, r5, r0
	movs r3, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x05
	ldr r5, _08059D88 @ =0x000007FF
_08059D5A:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _08059D5A
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059D7C: .4byte 0x086FFC20
_08059D80: .4byte 0x03000DE8
_08059D84: .4byte 0x083AAC4C
_08059D88: .4byte 0x000007FF
	thumb_func_start sub_8059D8C
sub_8059D8C:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08059DA4 @ =0x0300034C
	ldr r1, _08059DA8 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059DB0
	ldr r2, _08059DAC @ =0x088D4808
	b _08059DB2
_08059DA4: .4byte 0x0300034C
_08059DA8: .4byte 0x00000888
_08059DAC: .4byte 0x088D4808
_08059DB0:
	ldr r2, _08059DD0 @ =0x088C8730
_08059DB2:
	ldr r1, _08059DD4 @ =0x083AAD68
	ldr r0, _08059DD8 @ =0x03000DE8
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, [r3, #0x78]
	movs r2, #0x78
	bl CpuFastSet
	pop {r0}
	bx r0
_08059DD0: .4byte 0x088C8730
_08059DD4: .4byte 0x083AAD68
_08059DD8: .4byte 0x03000DE8
	thumb_func_start sub_8059DDC
sub_8059DDC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _08059E4C @ =0x081E27DC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x6C]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _08059E50 @ =0x081E27E4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x74]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x6C]
	ldr r2, _08059E54 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x74]
	ldr r2, _08059E58 @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	adds r0, r5, #0x0
	bl sub_8059AF4
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8059D04
	adds r0, r5, #0x0
	bl sub_8059924
	ldr r0, [r5, #0x74]
	cmp r0, #0x00
	beq _08059E3A
	bl free_heap_8018D9C
_08059E3A:
	ldr r0, [r5, #0x6C]
	cmp r0, #0x00
	beq _08059E44
	bl free_heap_8018D9C
_08059E44:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08059E4C: .4byte 0x081E27DC
_08059E50: .4byte 0x081E27E4
_08059E54: .4byte 0x01000C00
_08059E58: .4byte 0x01000A00
