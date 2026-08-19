	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805CCE0
sub_805CCE0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldr r0, [sp, #0x038]
	mov r8, r0
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	str r0, [sp, #0x008]
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	ldr r0, [sp, #0x03C]
	lsls r0, r0, #0x10
	str r0, [sp, #0x014]
	lsrs r5, r0, #0x10
	str r5, [sp, #0x010]
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _0805CDF0 @ =0x08CDC2C8
	str r0, [r7, #0x18]
	ldr r1, _0805CDF4 @ =0x00000A3C
	adds r0, r7, r1
	str r4, [r0, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x94
	movs r4, #0xC0
	lsls r4, r4, #0x06
	ldr r2, _0805CDF8 @ =0x081E2840
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r2, #0x98
	adds r2, r2, r7
	mov r9, r2
	ldr r2, _0805CDFC @ =0x081E2848
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r9
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xA8
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _0805CE00 @ =0x081E2850
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	movs r2, #0xA4
	adds r2, r2, r7
	mov r10, r2
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _0805CE04 @ =0x081E2858
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r10
	str r0, [r1, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x00]
	ldr r5, _0805CE08 @ =0x01000C00
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r6, #0x00]
	ldr r2, _0805CE0C @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	mov r5, r10
	ldr r1, [r5, #0x00]
	ldr r2, _0805CE10 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldr r0, _0805CE14 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	mov r0, sp
	ldrh r0, [r0, #0x08]
	strh r0, [r7, #0x1E]
	mov r1, r8
	strh r1, [r7, #0x22]
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r7, #0x24]
	ldrh r1, [r7, #0x1E]
	adds r0, r7, #0x0
	bl sub_805D914
	adds r0, r7, #0x0
	bl sub_805D5C0
	ldr r0, _0805CE18 @ =0x03000DD0
	ldrb r0, [r0, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	cmp r1, #0x20
	beq _0805CE2A
	cmp r1, #0x20
	bgt _0805CE1C
	cmp r1, #0x00
	beq _0805CE22
	b _0805CE38
	.byte 0x00, 0x00
_0805CDF0: .4byte 0x08CDC2C8
_0805CDF4: .4byte 0x00000A3C
_0805CDF8: .4byte 0x081E2840
_0805CDFC: .4byte 0x081E2848
_0805CE00: .4byte 0x081E2850
_0805CE04: .4byte 0x081E2858
_0805CE08: .4byte 0x01000C00
_0805CE0C: .4byte 0x01000A00
_0805CE10: .4byte 0x01000800
_0805CE14: .4byte 0x0000FFFB
_0805CE18: .4byte 0x03000DD0
_0805CE1C:
	cmp r0, #0x40
	beq _0805CE32
	b _0805CE38
_0805CE22:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _0805CE38
_0805CE2A:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _0805CE38
_0805CE32:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_0805CE38:
	ldr r1, _0805CE68 @ =0x0200000A
	ldr r5, _0805CE6C @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0805CE70 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _0805CE74 @ =0x00004404
	adds r0, r5, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CE68: .4byte 0x0200000A
_0805CE6C: .4byte 0x00004004
_0805CE70: .4byte 0x00004204
_0805CE74: .4byte 0x00004404
	thumb_func_start sub_805CE78
sub_805CE78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	ldr r0, _0805CEA8 @ =0x086527F4
	mov r9, r0
	mov r10, r9
	ldr r0, _0805CEAC @ =0x03000DD0
	ldrb r5, [r0, #0x03]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _0805CE9C
	b _0805D024
_0805CE9C:
	lsls r0, r0, #0x02
	ldr r1, _0805CEB0 @ =0x0805CEB4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0805CEA8: .4byte 0x086527F4
_0805CEAC: .4byte 0x03000DD0
_0805CEB0: .4byte 0x0805CEB4
	.byte 0xC8, 0xCE, 0x05, 0x08, 0x14, 0xCF, 0x05, 0x08, 0x74, 0xCF, 0x05, 0x08, 0xDC, 0xCF, 0x05, 0x08
	.byte 0x10, 0xD0, 0x05, 0x08, 0x0F, 0x4A, 0xA1, 0x18, 0x01, 0x20, 0x08, 0x70, 0x20, 0x1C, 0x00, 0xF0
	.byte 0xB1, 0xF8, 0x00, 0x23, 0x0C, 0x4A, 0x13, 0x60, 0x0C, 0x49, 0xA8, 0x00, 0x41, 0x18, 0x08, 0x78
	.byte 0xFF, 0x28, 0x00, 0xD1, 0x98, 0xE0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x50, 0x60
	.byte 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x90, 0x60, 0xD3, 0x60, 0x10, 0x1C, 0xBC, 0xF7, 0x82, 0xFC
	.byte 0x8A, 0xE0, 0x00, 0x00, 0x39, 0x0A, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08
	.byte 0x14, 0x4F, 0x3E, 0x68, 0x00, 0x2E, 0x00, 0xD0, 0x85, 0xE0, 0x13, 0x48, 0x80, 0x46, 0xAD, 0x00
	.byte 0x28, 0x18, 0x00, 0x78, 0xFF, 0x28, 0x07, 0xD0, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x0F, 0x49
	.byte 0x80, 0x22, 0x12, 0x01, 0x7D, 0xF1, 0xAE, 0xFB, 0x3E, 0x60, 0x68, 0x1C, 0x42, 0x46, 0x81, 0x18
	.byte 0x08, 0x78, 0xFF, 0x28, 0x68, 0xD0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x78, 0x60
	.byte 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0xB8, 0x60, 0xFE, 0x60, 0x38, 0x1C, 0xBC, 0xF7, 0x52, 0xFC
	.byte 0x5A, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x00, 0x40, 0x00, 0x06
	.byte 0x13, 0x4F, 0x3E, 0x68, 0x00, 0x2E, 0x56, 0xD1, 0x12, 0x48, 0x80, 0x46, 0xAD, 0x00, 0x28, 0x18
	.byte 0x40, 0x78, 0xFF, 0x28, 0x07, 0xD0, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x0E, 0x49, 0x80, 0x22
	.byte 0x12, 0x01, 0x7D, 0xF1, 0x7F, 0xFB, 0x3E, 0x60, 0xA8, 0x1C, 0x42, 0x46, 0x81, 0x18, 0x08, 0x78
	.byte 0xFF, 0x28, 0x13, 0xD0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x78, 0x60, 0x20, 0x1C
	.byte 0xA4, 0x30, 0x00, 0x68, 0xB8, 0x60, 0xFE, 0x60, 0x38, 0x1C, 0xBC, 0xF7, 0x23, 0xFC, 0x2B, 0xE0
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x00, 0x60, 0x00, 0x06, 0x01, 0x48, 0xA0, 0x83
	.byte 0x29, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x09, 0x48, 0x00, 0x68, 0x00, 0x28, 0x22, 0xD1
	.byte 0x08, 0x48, 0xA9, 0x00, 0x09, 0x18, 0x88, 0x78, 0xFF, 0x28, 0x15, 0xD0, 0x20, 0x1C, 0xA4, 0x30
	.byte 0x00, 0x68, 0x05, 0x49, 0x80, 0x22, 0x12, 0x01, 0x7D, 0xF1, 0x4C, 0xFB, 0x0C, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x00, 0x80, 0x00, 0x06, 0x20, 0x1C, 0x00, 0xF0
	.byte 0xDB, 0xFC, 0x20, 0x1C, 0x00, 0xF0, 0x0C, 0xFB, 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83, 0x02, 0xE0
_0805D024:
	adds r0, r4, #0x0
	bl sub_805D3F8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805D038
sub_805D038:
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805D050 @ =0x0300034C
	ldr r1, _0805D054 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805D05C
	ldr r2, _0805D058 @ =0x088D4808
	b _0805D05E
	.byte 0x00, 0x00
_0805D050: .4byte 0x0300034C
_0805D054: .4byte 0x00000888
_0805D058: .4byte 0x088D4808
_0805D05C:
	ldr r2, _0805D0C4 @ =0x088C8730
_0805D05E:
	ldr r1, _0805D0C8 @ =0x083AAD68
	ldr r0, _0805D0CC @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r6, r2, r0
	movs r0, #0x00
_0805D072:
	movs r4, #0x00
	movs r3, #0x01
	lsls r1, r0, #0x05
	adds r7, r0, #0x1
	adds r5, r1, #0x0
_0805D07C:
	lsls r0, r3, #0x01
	adds r0, r0, r5
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0805D08E
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	beq _0805D094
_0805D08E:
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805D094:
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x0F
	bls _0805D07C
	cmp r4, #0x00
	beq _0805D0AE
	adds r0, r6, r1
	ldr r2, _0805D0D0 @ =0x02000080
	adds r1, r1, r2
	movs r2, #0x08
	bl CpuFastSet
_0805D0AE:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0E
	bls _0805D072
	ldr r1, _0805D0D4 @ =0x0300034C
	ldr r0, _0805D0D8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D0C4: .4byte 0x088C8730
_0805D0C8: .4byte 0x083AAD68
_0805D0CC: .4byte 0x03000DD0
_0805D0D0: .4byte 0x02000080
_0805D0D4: .4byte 0x0300034C
_0805D0D8: .4byte 0x00007FFF
	thumb_func_start sub_805D0DC
sub_805D0DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_0805D0EE:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r8
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r2, _0805D144 @ =room_solidity_index_table
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r2, #0x01
	str r2, [sp, #0x018]
	ldr r2, _0805D148 @ =0x0000FFFF
	cmp r0, r2
	bne _0805D112
	b _0805D264
_0805D112:
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0805D14C @ =0x08754D74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r1, #0x0
	adds r7, r2, r0
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _0805D150
	ldr r0, [sp, #0x000]
	lsls r1, r0, #0x01
	mov r0, r8
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _0805D166
	.byte 0x00, 0x00
_0805D144: .4byte room_solidity_index_table
_0805D148: .4byte 0x0000FFFF
_0805D14C: .4byte 0x08754D74
_0805D150:
	ldr r1, [sp, #0x000]
	lsls r2, r1, #0x01
	mov r1, r8
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_0805D166:
	mov r1, r8
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r7, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r8
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0805D284 @ =0x0000FFFF
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x26]
	mov r2, r8
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r7, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r2, _0805D284 @ =0x0000FFFF
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x28]
	mov r2, r8
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r8
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r7, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r2, #0x02
	mov r12, r2
	movs r0, #0x00
	mov r9, r0
	ldr r1, [sp, #0x000]
	adds r1, #0x01
	str r1, [sp, #0x018]
	cmp r0, r3
	bcs _0805D264
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r2, r5, #0x10
	str r2, [sp, #0x010]
	str r3, [sp, #0x004]
_0805D1E2:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r2, r0
	bcs _0805D258
	ldr r1, [sp, #0x000]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x01C]
	movs r0, #0x98
	add r0, r8
	mov r10, r0
	ldr r1, [sp, #0x00C]
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
_0805D200:
	mov r1, r12
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r1, r7, r1
	ldrb r4, [r1, #0x00]
	movs r5, #0x00
	adds r6, r2, #0x4
_0805D212:
	movs r2, #0xC0
	ands r2, r4
	lsls r2, r2, #0x02
	mov r1, r12
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r1, r7, r1
	ldrb r3, [r1, #0x00]
	orrs r3, r2
	ldr r0, [sp, #0x01C]
	add r0, r9
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	lsls r0, r4, #0x1A
	lsrs r4, r0, #0x18
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x03
	bls _0805D212
	lsls r0, r6, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _0805D200
_0805D258:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _0805D1E2
_0805D264:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _0805D272
	b _0805D0EE
_0805D272:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D284: .4byte 0x0000FFFF
	thumb_func_start sub_805D288
sub_805D288:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r0, #0x00
	mov r8, r0
_0805D29A:
	movs r0, #0x02
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, _0805D314 @ =room_solidity_index_table
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r2, _0805D318 @ =0x0000FFFF
	cmp r0, r2
	beq _0805D31C
	movs r2, #0x00
	mov r0, r8
	lsls r0, r0, #0x0B
	str r0, [sp, #0x008]
	movs r1, #0x98
	add r1, r9
	mov r10, r1
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x004]
_0805D2CA:
	movs r1, #0x00
	lsls r6, r2, #0x10
	asrs r5, r6, #0x10
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x04
	ldr r2, [sp, #0x008]
	adds r7, r0, r2
_0805D2DA:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r7, r4
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r9
	mov r1, r8
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_805D34C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1F
	ble _0805D2DA
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _0805D2CA
	b _0805D32A
_0805D314: .4byte room_solidity_index_table
_0805D318: .4byte 0x0000FFFF
_0805D31C:
	ldr r0, _0805D348 @ =0x00000A5A
	add r0, r9
	mov r2, r8
	strb r2, [r0, #0x00]
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x004]
_0805D32A:
	ldr r1, [sp, #0x004]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x02
	bls _0805D29A
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D348: .4byte 0x00000A5A
	thumb_func_start sub_805D34C
sub_805D34C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805D394
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805D3BE
_0805D394:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805D3BE:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805D3F8
sub_805D3F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x0F
	mov r9, r1
_0805D40A:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	adds r5, r3, #0x0
	adds r5, #0xAC
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805D42C
	cmp r0, #0x10
	bgt _0805D426
	b _0805D5A2
_0805D426:
	cmp r0, #0x20
	beq _0805D44A
	b _0805D5A2
_0805D42C:
	adds r1, r3, #0x0
	adds r1, #0xB1
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805D43E
	b _0805D5A2
_0805D43E:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805D5A2
_0805D44A:
	mov r0, r9
	ands r0, r1
	movs r1, #0x00
	mov r12, r1
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805D4B8
	cmp r2, #0x01
	bgt _0805D468
	cmp r2, #0x00
	beq _0805D46E
	b _0805D5A2
_0805D468:
	cmp r2, #0x02
	beq _0805D54A
	b _0805D5A2
_0805D46E:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D48E
	mov r0, r12
	strb r0, [r4, #0x00]
_0805D48E:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805D53A
_0805D4B8:
	adds r4, r3, #0x0
	adds r4, #0xB4
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805D4E0
	adds r1, r3, #0x0
	adds r1, #0xB3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805D504
_0805D4E0:
	adds r2, r3, #0x0
	adds r2, #0xB3
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r3, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805D504:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	adds r3, r2, #0x0
	adds r3, #0xB3
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805D53A:
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
	b _0805D5A2
_0805D54A:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D56C
	mov r1, r12
	strb r1, [r5, #0x00]
	b _0805D5A2
_0805D56C:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
_0805D5A2:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x1F
	bhi _0805D5B2
	b _0805D40A
_0805D5B2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805D5C0
sub_805D5C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r4, #0x00
	movs r0, #0x4C
	mov r8, r0
	movs r3, #0x00
	movs r7, #0xB6
	adds r7, r7, r6
	mov r12, r7
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
_0805D5DE:
	mov r1, r8
	muls r1, r4
	adds r2, r6, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r5, r4, #0x1
	adds r4, r1, #0x0
_0805D608:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	mov r7, r12
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	add r0, r9
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805D608
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1F
	bls _0805D5DE
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805D634
sub_805D634:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r0
	ldr r0, _0805D720 @ =0x00000A5A
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	asrs r0, r0, #0x1F
	mov r12, r0
	movs r0, #0x10
	mov r1, r12
	ands r1, r0
	mov r12, r1
	movs r4, #0x00
	mov r3, r12
	movs r2, #0x4C
	mov r9, r2
	movs r2, #0x00
	mov r5, r10
	adds r5, #0xB6
	str r5, [sp, #0x008]
	mov r0, r10
	adds r0, #0xD6
	str r0, [sp, #0x00C]
	movs r7, #0x4C
_0805D674:
	mov r0, r9
	muls r0, r3
	mov r5, r10
	adds r1, r5, r0
	adds r0, r1, #0x0
	adds r0, #0xAC
	strb r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	adds r6, r3, #0x1
	adds r0, r3, #0x0
	muls r0, r7
	ldr r3, [sp, #0x00C]
	adds r1, r0, r3
	ldr r5, [sp, #0x008]
	adds r0, r0, r5
	movs r5, #0x0F
_0805D6AE:
	strh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	strh r2, [r0, #0x02]
	strh r2, [r1, #0x02]
	strh r2, [r0, #0x04]
	strh r2, [r1, #0x04]
	strh r2, [r0, #0x06]
	strh r2, [r1, #0x06]
	strh r2, [r0, #0x08]
	strh r2, [r1, #0x08]
	strh r2, [r0, #0x0A]
	strh r2, [r1, #0x0A]
	strh r2, [r0, #0x0C]
	strh r2, [r1, #0x0C]
	strh r2, [r0, #0x0E]
	strh r2, [r1, #0x0E]
	adds r1, #0x10
	adds r0, #0x10
	subs r5, #0x08
	cmp r5, #0x00
	bge _0805D6AE
	mov r4, r8
	adds r3, r6, #0x0
	cmp r4, #0x0F
	ble _0805D674
	ldr r1, _0805D724 @ =0x03000DD0
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x02
	ldr r2, _0805D728 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805D7C6
	movs r4, #0x00
_0805D6F4:
	lsls r2, r4, #0x03
	ldr r5, [sp, #0x000]
	adds r3, r2, r5
	ldrb r1, [r3, #0x00]
	movs r0, #0x40
	ands r1, r0
	str r2, [sp, #0x004]
	cmp r1, #0x00
	beq _0805D72C
	movs r1, #0x4C
	mov r0, r12
	muls r0, r1
	add r0, r10
	adds r0, #0xAC
	movs r2, #0x00
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	movs r3, #0x01
	add r3, r12
	mov r9, r3
	b _0805D7B2
_0805D720: .4byte 0x00000A5A
_0805D724: .4byte 0x03000DD0
_0805D728: .4byte 0x083B283C
_0805D72C:
	movs r5, #0x4C
	mov r0, r12
	muls r0, r5
	mov r1, r10
	adds r2, r1, r0
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	adds r1, r2, #0x0
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	movs r5, #0x00
	adds r4, #0x01
	mov r8, r4
	movs r2, #0x01
	add r2, r12
	mov r9, r2
	ldr r3, [r3, #0x04]
	movs r0, #0x4C
	mov r4, r12
	muls r4, r0
	ldr r7, [sp, #0x008]
	ldr r6, [sp, #0x00C]
_0805D770:
	adds r1, r7, r4
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r6, r4
	ldrh r1, [r3, #0x02]
	ldr r0, _0805D7D8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	adds r3, #0x04
	adds r4, #0x02
	adds r5, #0x01
	cmp r0, #0x00
	beq _0805D770
	movs r3, #0x4C
	mov r0, r12
	muls r0, r3
	mov r2, r10
	adds r1, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r5, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	strb r3, [r0, #0x00]
_0805D7B2:
	mov r12, r9
	ldr r5, [sp, #0x004]
	ldr r1, [sp, #0x000]
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r1, r0
	mov r4, r8
	cmp r1, #0x00
	beq _0805D6F4
_0805D7C6:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D7D8: .4byte 0x00007FFF
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x06, 0x1C, 0x09, 0x04, 0x0A, 0x0C
	.byte 0x00, 0x27, 0xAC, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0C, 0xD0, 0x4C, 0x21, 0x78, 0x1C, 0x00, 0x06
	.byte 0x07, 0x0E, 0x38, 0x1C, 0x48, 0x43, 0x30, 0x18, 0xAC, 0x30, 0x00, 0x78, 0x00, 0x28, 0x01, 0xD0
	.byte 0x0F, 0x2F, 0xF3, 0xD9, 0x0F, 0x2F, 0x55, 0xD8, 0x2E, 0x48, 0xC0, 0x79, 0x2E, 0x49, 0x80, 0x00
	.byte 0x40, 0x18, 0x04, 0x68, 0x00, 0x2C, 0x4D, 0xD0, 0xF8, 0x00, 0x00, 0x19, 0x00, 0x78, 0x40, 0x21
	.byte 0x08, 0x40, 0x00, 0x28, 0x46, 0xD0, 0x4C, 0x20, 0x3B, 0x1C, 0x43, 0x43, 0xF0, 0x18, 0x84, 0x46
	.byte 0xD2, 0x00, 0x12, 0x19, 0x50, 0x78, 0x80, 0x07, 0x80, 0x0F, 0x20, 0x30, 0x61, 0x46, 0xAC, 0x31
	.byte 0x08, 0x70, 0x10, 0x68, 0x00, 0x03, 0x80, 0x0D, 0x02, 0x31, 0x08, 0x80, 0x50, 0x88, 0xC0, 0x05
	.byte 0xC0, 0x0E, 0x02, 0x31, 0x08, 0x70, 0x55, 0x68, 0x00, 0x24, 0xD6, 0x20, 0x80, 0x19, 0x81, 0x46
	.byte 0x98, 0x46, 0x80, 0x20, 0x00, 0x02, 0x82, 0x46, 0xB6, 0x20, 0x80, 0x19, 0x84, 0x46, 0x22, 0x1C
	.byte 0x53, 0x00, 0x43, 0x44, 0x60, 0x46, 0xC4, 0x18, 0x91, 0x00, 0x49, 0x19, 0x08, 0x88, 0x20, 0x80
	.byte 0x4B, 0x44, 0x49, 0x88, 0x11, 0x48, 0x08, 0x40, 0x18, 0x80, 0x50, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x92, 0x00, 0x52, 0x19, 0x51, 0x88, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28, 0xE7, 0xD0, 0x4C, 0x20
	.byte 0x78, 0x43, 0x30, 0x18, 0x02, 0x1C, 0xB2, 0x32, 0x00, 0x21, 0x14, 0x70, 0x01, 0x32, 0x11, 0x70
	.byte 0xB4, 0x30, 0x01, 0x70, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x3C, 0x28, 0x3B, 0x08, 0xFF, 0x7F, 0x00, 0x00
	thumb_func_start sub_805D8DC
sub_805D8DC:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805D90C @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805D910 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D90C: .4byte 0x08940C9C
_0805D910: .4byte 0x06004000
	thumb_func_start sub_805D914
sub_805D914:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x03
	ldr r1, _0805D934 @ =room_props_table
	ldr r0, _0805D938 @ =0x03000DD0
	adds r2, r2, r1
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
_0805D934: .4byte room_props_table
_0805D938: .4byte 0x03000DD0
	thumb_func_start sub_805D93C
sub_805D93C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _0805D9BC @ =0x086FFC20
	mov r9, r5
	ldr r1, _0805D9C0 @ =0x03000DD0
	ldrb r6, [r1, #0x04]
	ldr r2, _0805D9C4 @ =0x083AAC4C
	lsls r1, r6, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r7, _0805D9C8 @ =0x000007FF
	mov r12, r2
_0805D968:
	ldr r1, [r2, #0x00]
	lsls r0, r3, #0x01
	adds r1, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r7
	bls _0805D968
	lsls r0, r6, #0x02
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
	ldr r5, _0805D9C8 @ =0x000007FF
_0805D996:
	ldr r1, [r2, #0x00]
	lsls r0, r3, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _0805D996
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D9BC: .4byte 0x086FFC20
_0805D9C0: .4byte 0x03000DD0
_0805D9C4: .4byte 0x083AAC4C
_0805D9C8: .4byte 0x000007FF
	thumb_func_start sub_805D9CC
sub_805D9CC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_805D0DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_805D93C
	adds r0, r4, #0x0
	bl sub_805D288
	adds r4, #0x94
	ldr r0, [r4, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805DA04
sub_805DA04:
	push {lr}
	ldr r2, _0805DA18 @ =0x0000FFFB
	strh r2, [r0, #0x1C]
	strh r1, [r0, #0x1E]
	ldrh r1, [r0, #0x1E]
	bl sub_805D914
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DA18: .4byte 0x0000FFFB
	thumb_func_start sub_805DA1C
sub_805DA1C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805DA74 @ =0x08CDC2C8
	str r0, [r4, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA3C
	bl free_heap_8018D9C
_0805DA3C:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA4A
	bl free_heap_8018D9C
_0805DA4A:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA58
	bl free_heap_8018D9C
_0805DA58:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA66
	bl free_heap_8018D9C
_0805DA66:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0805DA74: .4byte 0x08CDC2C8
	thumb_func_start sub_805DA78
sub_805DA78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805DA94
	b _0805DCB6
_0805DA94:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805DAA8
	adds r1, #0xFF
_0805DAA8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805DAB2
	adds r2, #0xFF
_0805DAB2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805DABC
	adds r3, #0xFF
_0805DABC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805DCC8 @ =0x000010EE
	bl sub_80DF024
	ldr r0, _0805DCCC @ =0x0805DDD5
	str r0, [r6, #0x4C]
	ldr r4, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0805DAD4
	adds r2, #0xFF
_0805DAD4:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DADE
	adds r0, #0xFF
_0805DADE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DAEA
	adds r0, #0xFF
_0805DAEA:
	asrs r0, r0, #0x08
	movs r1, #0xA0
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	mov r10, r5
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	ldr r1, _0805DCD0 @ =0x0000408E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	mov r2, r10
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	subs r1, #0x81
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r2, r10
	ands r2, r0
	lsls r2, r2, #0x05
	movs r4, #0x21
	negs r4, r4
	ands r1, r4
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _0805DCD4 @ =0x0805DCE1
	str r0, [r5, #0x4C]
	ldr r1, _0805DCD8 @ =0x08087541
	str r1, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	subs r0, #0x02
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r4, r6, #0x0
	adds r4, #0xA4
	str r4, [sp, #0x010]
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA8
	str r0, [sp, #0x014]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x74
	str r1, [sp, #0x018]
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x08]
	movs r2, #0x10
	mov r9, r2
	mov r4, r9
	strh r4, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x06]
	ldr r0, [r6, #0x28]
	mov r12, r0
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0805DBD4
	adds r2, #0xFF
_0805DBD4:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DBDE
	adds r0, #0xFF
_0805DBDE:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DBEA
	adds r0, #0xFF
_0805DBEA:
	asrs r0, r0, #0x08
	mov r4, r8
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	mov r0, r10
	str r0, [sp, #0x008]
	mov r0, r12
	ldr r1, _0805DCDC @ =0x0000408F
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	mov r1, r10
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r0, [r3, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r1, r10
	ands r1, r0
	lsls r1, r1, #0x05
	movs r5, #0x21
	negs r5, r5
	ands r2, r5
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r0, _0805DCD4 @ =0x0805DCE1
	str r0, [r4, #0x4C]
	ldr r1, _0805DCD8 @ =0x08087541
	str r1, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	subs r0, #0x02
	movs r5, #0x00
	strh r5, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r2, [sp, #0x00C]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r5, r8
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x014]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x018]
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	mov r1, r9
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD3
	bl play_sfx_80195B4
_0805DCB6:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DCC8: .4byte 0x000010EE
_0805DCCC: .4byte sub_805DDD4
_0805DCD0: .4byte 0x0000408E
_0805DCD4: .4byte sub_805DCE0
_0805DCD8: .4byte sub_8087540
_0805DCDC: .4byte 0x0000408F
	thumb_func_start sub_805DCE0
sub_805DCE0:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrh r3, [r2, #0x04]
	movs r0, #0x04
	ldsh r1, [r2, r0]
	ldr r0, _0805DD3C @ =0x0000013F
	cmp r1, r0
	bgt _0805DD40
	adds r0, r3, #0x0
	adds r0, #0x0C
	strh r0, [r2, #0x04]
	ldr r1, [r4, #0x08]
	ldrh r0, [r1, #0x06]
	adds r0, #0x0C
	strh r0, [r1, #0x06]
	ldr r1, [r4, #0x38]
	adds r0, r1, #0x0
	subs r0, #0x80
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805DD10
	adds r0, #0xFF
_0805DD10:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805DD1C
	adds r0, #0xFF
_0805DD1C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805DD28
	adds r0, #0xFF
_0805DD28:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _0805DD4A
	.byte 0x00, 0x00
_0805DD3C: .4byte 0x0000013F
_0805DD40:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	strh r1, [r2, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
_0805DD4A:
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805DD66
	ldr r0, [r4, #0x08]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	ldr r0, _0805DD70 @ =0x0805DD75
	str r0, [r4, #0x4C]
_0805DD66:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DD70: .4byte sub_805DD74
	thumb_func_start sub_805DD74
sub_805DD74:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x14
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805DD94
	adds r0, #0xFF
_0805DD94:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805DDA0
	adds r0, #0xFF
_0805DDA0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805DDAC
	adds r0, #0xFF
_0805DDAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805DDCC
	adds r0, r4, #0x0
	bl sub_807C298
_0805DDCC:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805DDD4
sub_805DDD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DDF4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DDFC @ =0x0808750D
	str r0, [r4, #0x4C]
_0805DDF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DDFC: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0xDE, 0x05, 0x08
	thumb_func_start sub_805DE0C
sub_805DE0C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r0, [r0, #0x28]
	mov r12, r0
	mov r2, r12
	adds r2, #0xD8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DE88 @ =0x0805DE91
	str r0, [r4, #0x4C]
	ldr r0, _0805DE8C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DE88: .4byte sub_805DE90
_0805DE8C: .4byte 0x0000011B
	thumb_func_start sub_805DE90
sub_805DE90:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805DEA6
	ldr r0, _0805DEAC @ =0x0805DEB5
	str r0, [r1, #0x4C]
	ldr r0, _0805DEB0 @ =0x0000011B
	bl stop_sfx_80195A8
_0805DEA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DEAC: .4byte sub_805DEB4
_0805DEB0: .4byte 0x0000011B
	thumb_func_start sub_805DEB4
sub_805DEB4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805DED0
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DED8 @ =0x0805DEDD
	str r0, [r4, #0x4C]
_0805DED0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DED8: .4byte sub_805DEDC
	thumb_func_start sub_805DEDC
sub_805DEDC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF3A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0805DF44 @ =0x0805DF4D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805DF10
	adds r1, #0xFF
_0805DF10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805DF1A
	adds r2, #0xFF
_0805DF1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805DF24
	adds r3, #0xFF
_0805DF24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805DF48 @ =0x000010E6
	bl sub_80DF024
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805DF3A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF44: .4byte sub_805DF4C
_0805DF48: .4byte 0x000010E6
	thumb_func_start sub_805DF4C
sub_805DF4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805DF7C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DF84 @ =0x0805DA79
	str r0, [r4, #0x4C]
_0805DF7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF84: .4byte sub_805DA78
	thumb_func_start sub_805DF88
sub_805DF88:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805DFA4
	b _0805E528
_0805DFA4:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805DFB8
	adds r1, #0xFF
_0805DFB8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805DFC2
	adds r2, #0xFF
_0805DFC2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805DFCC
	adds r3, #0xFF
_0805DFCC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805E0A4 @ =0x000012E2
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805DFE0
	adds r0, #0xFF
_0805DFE0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DFEE
	adds r0, #0xFF
_0805DFEE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DFFA
	adds r0, #0xFF
_0805DFFA:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E0A8 @ =0x0000412E
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805E0AC @ =0x03000E14
	movs r2, #0x01
	strb r4, [r0, #0x00]
	ldr r1, _0805E0B0 @ =0x03000E15
	movs r0, #0x00
	strb r0, [r1, #0x00]
	str r5, [r6, #0x30]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x77
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r5
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r0, _0805E0B4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r2, r6, #0x0
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r7, #0x00
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x010]
	str r2, [sp, #0x00C]
	cmp r0, #0x01
	beq _0805E138
	cmp r0, #0x01
	bgt _0805E0B8
	cmp r0, #0x00
	beq _0805E0C0
	b _0805E264
_0805E0A4: .4byte 0x000012E2
_0805E0A8: .4byte 0x0000412E
_0805E0AC: .4byte 0x03000E14
_0805E0B0: .4byte 0x03000E15
_0805E0B4: .4byte sub_8087540
_0805E0B8:
	cmp r0, #0x02
	bne _0805E0BE
	b _0805E1D0
_0805E0BE:
	b _0805E264
_0805E0C0:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x38]
	ldr r3, _0805E130 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x88
	ldr r0, [r6, #0x3C]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r6, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	subs r0, #0x10
	str r7, [r0, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0805E104
	adds r0, #0xFF
_0805E104:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0805E112
	adds r0, #0xFF
_0805E112:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r5, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	ldr r0, _0805E134 @ =0x0805E551
	b _0805E262
_0805E130: .4byte 0xFFFFF000
_0805E134: .4byte sub_805E550
_0805E138:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E140
	adds r0, #0xFF
_0805E140:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E152
	adds r0, #0xFF
_0805E152:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E164
	adds r0, #0xFF
_0805E164:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r4, r8
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	movs r4, #0x00
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x12
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x0C
	str r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _0805E1CC @ =0x0805E8B5
	b _0805E262
	.byte 0x00, 0x00
_0805E1CC: .4byte sub_805E8B4
_0805E1D0:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E1D8
	adds r0, #0xFF
_0805E1D8:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E1EA
	adds r0, #0xFF
_0805E1EA:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E1FC
	adds r0, #0xFF
_0805E1FC:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r4, r8
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	movs r4, #0x00
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x12
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0xB0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _0805E538 @ =0x0805EDE5
_0805E262:
	str r0, [r5, #0x4C]
_0805E264:
	adds r4, r5, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r7, #0x07
_0805E2A0:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r7, #0x04
	cmp r7, #0x00
	bge _0805E2A0
	movs r1, #0x00
	mov r8, r1
	str r1, [r0, #0x00]
	ldr r1, [r5, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E2EE
	adds r0, #0xFF
_0805E2EE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0805E2FC
	adds r3, #0xFF
_0805E2FC:
	asrs r3, r3, #0x08
	adds r3, #0x02
	mov r4, r8
	str r4, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E53C @ =0x0000700C
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	mov r10, r2
	mov r3, r10
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	mov r9, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	movs r0, #0x7F
	strb r0, [r1, #0x00]
	mov r1, r8
	str r1, [r4, #0x4C]
	ldr r1, [r4, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E350
	adds r0, #0xFF
_0805E350:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E35E
	adds r0, #0xFF
_0805E35E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E36A
	adds r0, #0xFF
_0805E36A:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E540 @ =0x0000412F
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r4, r5, #0x0
	adds r4, #0x77
	adds r2, r7, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r4, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r7, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r3, #0x21
	negs r3, r3
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldr r4, _0805E544 @ =0x08087541
	str r4, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x28
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E3F4
	adds r0, #0xFF
_0805E3F4:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E406
	adds r0, #0xFF
_0805E406:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E418
	adds r0, #0xFF
_0805E418:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r3, _0805E548 @ =0x0805F49D
	mov r8, r3
	str r3, [r5, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E43A
	adds r0, #0xFF
_0805E43A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E448
	adds r0, #0xFF
_0805E448:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E454
	adds r0, #0xFF
_0805E454:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E540 @ =0x0000412F
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r0, [r3, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, [sp, #0x010]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, _0805E544 @ =0x08087541
	str r1, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r2, [sp, #0x00C]
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E4E0
	adds r0, #0xFF
_0805E4E0:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E4F2
	adds r0, #0xFF
_0805E4F2:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E504
	adds r0, #0xFF
_0805E504:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	mov r3, r8
	str r3, [r4, #0x4C]
	ldr r0, _0805E54C @ =0x0805F555
	str r0, [r6, #0x4C]
	movs r0, #0x88
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E528:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E538: .4byte sub_805EDE4
_0805E53C: .4byte 0x0000700C
_0805E540: .4byte 0x0000412F
_0805E544: .4byte sub_8087540
_0805E548: .4byte sub_805F49C
_0805E54C: .4byte sub_805F554
	thumb_func_start sub_805E550
sub_805E550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x88
	ldr r2, [r7, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r3, #0xAC
	adds r3, r3, r6
	mov r10, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	str r0, [sp, #0x004]
	movs r3, #0x9C
	adds r3, r3, r6
	mov r9, r3
	ldr r0, [r3, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	ldr r3, [r5, #0x00]
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5B2
	adds r1, #0xFF
_0805E5B2:
	asrs r2, r1, #0x08
	ldr r1, _0805E64C @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E5CC
	adds r0, #0x3F
_0805E5CC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5E2
	adds r1, #0xFF
_0805E5E2:
	asrs r2, r1, #0x08
	ldr r1, _0805E650 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E5F8
	adds r0, #0x3F
_0805E5F8:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	cmp r0, #0x37
	bgt _0805E610
	adds r0, #0x01
	str r0, [r1, #0x00]
_0805E610:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	adds r0, #0x02
	ands r0, r5
	strh r0, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	bgt _0805E63C
	ldr r0, [r7, #0x00]
	cmp r0, r1
	bgt _0805E63C
	str r1, [r3, #0x00]
	str r1, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _0805E654 @ =0x0805E659
	str r0, [r6, #0x4C]
_0805E63C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E64C: .4byte 0x08198584
_0805E650: .4byte 0x08198504
_0805E654: .4byte sub_805E658
	thumb_func_start sub_805E658
sub_805E658:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r6
	mov r9, r3
	ldr r2, [r3, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r7, [r5, #0x00]
	mov r12, r7
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r10, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	str r0, [sp, #0x004]
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	mov r1, r10
	ldrh r0, [r1, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	mov r3, r10
	strh r0, [r3, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x37
	bgt _0805E6C8
	adds r0, #0x01
	str r0, [r7, #0x00]
_0805E6C8:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0805E71C
	ldr r0, _0805E72C @ =0x0805E731
	str r0, [r6, #0x4C]
	mov r7, r8
	ldr r0, [r7, #0x00]
	negs r0, r0
	cmp r0, #0x00
	bge _0805E6E6
	adds r0, #0xFF
_0805E6E6:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	mov r0, r9
	ldr r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0805E6FA
	adds r0, #0xFF
_0805E6FA:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r6, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
_0805E71C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E72C: .4byte sub_805E730
	thumb_func_start sub_805E730
sub_805E730:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	subs r0, #0x01
	strh r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _0805E7A2
	ldr r0, _0805E7B0 @ =0x0805E7B9
	str r0, [r7, #0x4C]
	ldr r0, _0805E7B4 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E7A2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E7B0: .4byte sub_805E7B8
_0805E7B4: .4byte 0x0000010F
	thumb_func_start sub_805E7B8
sub_805E7B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r6, #0x0
	adds r7, #0x84
	ldr r1, [r7, #0x00]
	movs r0, #0x88
	adds r0, r0, r6
	mov r8, r0
	ldr r2, [r0, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r10, r3
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r9, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E81A
	adds r0, #0xFF
_0805E81A:
	asrs r4, r0, #0x08
	ldr r1, _0805E8AC @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E834
	adds r0, #0x3F
_0805E834:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E848
	adds r0, #0xFF
_0805E848:
	asrs r2, r0, #0x08
	ldr r1, _0805E8B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E85E
	adds r0, #0x3F
_0805E85E:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r3, r9
	ldrh r0, [r3, #0x00]
	adds r0, #0x04
	ands r0, r5
	strh r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0805E89C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
_0805E89C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E8AC: .4byte 0x08198584
_0805E8B0: .4byte 0x08198504
	thumb_func_start sub_805E8B4
sub_805E8B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805E97C @ =0xFFFFFE80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r3, r7, #0x0
	adds r3, #0xB0
	str r3, [sp, #0x010]
	movs r0, #0x00
	ldsh r4, [r3, r0]
	lsls r4, r4, #0x08
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805E96A
	adds r0, r1, #0x0
	subs r0, #0x30
	str r0, [r2, #0x00]
	movs r0, #0x00
	ldr r3, [sp, #0x010]
	strh r0, [r3, #0x00]
	ldr r0, _0805E980 @ =0x0805E985
	str r0, [r7, #0x4C]
_0805E96A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805E97C: .4byte 0xFFFFFE80
_0805E980: .4byte sub_805E984
	thumb_func_start sub_805E984
sub_805E984:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805E9FA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EA08 @ =0x0805EA0D
	str r0, [r7, #0x4C]
_0805E9FA:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EA08: .4byte sub_805EA0C
	thumb_func_start sub_805EA0C
sub_805EA0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EA98
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EA86
	adds r0, #0xFF
_0805EA86:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _0805EAA8 @ =0x0805EAB1
	str r0, [r7, #0x4C]
	ldr r0, _0805EAAC @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EA98:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EAA8: .4byte sub_805EAB0
_0805EAAC: .4byte 0x0000010F
	thumb_func_start sub_805EAB0
sub_805EAB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	subs r2, r2, r1
	str r2, [r6, #0x00]
	adds r0, #0x06
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, _0805EB74 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r6, #0x00]
	cmp r1, r0
	bge _0805EB64
	ldr r0, _0805EB78 @ =0x0805EB7D
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x30
	strh r0, [r1, #0x00]
_0805EB64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EB74: .4byte 0xFFFFD000
_0805EB78: .4byte sub_805EB7C
	thumb_func_start sub_805EB7C
sub_805EB7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EBF2
	ldr r0, _0805EC00 @ =0x0805EC05
	str r0, [r7, #0x4C]
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0805EBF2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EC00: .4byte sub_805EC04
	thumb_func_start sub_805EC04
sub_805EC04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r12, r3
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	ldr r3, [r5, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EC8C
	ldr r0, _0805EC9C @ =0x0805ECA1
	str r0, [r7, #0x4C]
	mov r3, r9
	strh r3, [r1, #0x00]
	subs r1, #0x0A
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	subs r0, #0x71
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EC8C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EC9C: .4byte sub_805ECA0
	thumb_func_start sub_805ECA0
sub_805ECA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	movs r0, #0x84
	adds r0, r0, r7
	mov r10, r0
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xAE
	str r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r4, [r0, r5]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r5, r8
	str r4, [r5, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r2, #0xB2
	adds r2, r2, r7
	mov r9, r2
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	mov r3, r10
	ldr r1, [r3, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	mov r8, r0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r5, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	subs r0, #0x18
	lsls r0, r0, #0x08
	mov r2, r10
	ldr r1, [r2, #0x00]
	cmp r1, r0
	ble _0805EDA4
	ldr r1, _0805ED80 @ =0x03000E15
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0805ED84 @ =0xFFFFFEE0
	adds r0, r0, r3
	str r0, [r6, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	ble _0805ED88
	subs r0, r1, #0x1
	strh r0, [r4, #0x00]
	b _0805EDA4
	.byte 0x00, 0x00
_0805ED80: .4byte 0x03000E15
_0805ED84: .4byte 0xFFFFFEE0
_0805ED88:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDA4:
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	cmp r0, r1
	ble _0805EDD4
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDD4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805EDE4
sub_805EDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805EEB4 @ =0xFFFFFD80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	adds r7, r5, #0x0
	adds r7, #0x88
	muls r0, r2
	bl __divsi3
	subs r2, r4, r0
	str r2, [r7, #0x00]
	ldr r1, [r6, #0x00]
	movs r3, #0x8C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	movs r3, #0x22
	mov r9, r3
	str r3, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EE5C
	adds r0, #0xFF
_0805EE5C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	ldr r2, [r7, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805EEA2
	str r1, [r6, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0805EEB8 @ =0x0805EEBD
	str r0, [r5, #0x4C]
_0805EEA2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EEB4: .4byte 0xFFFFFD80
_0805EEB8: .4byte sub_805EEBC
	thumb_func_start sub_805EEBC
sub_805EEBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r10, r7
	ldr r2, [r7, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EEFC
	adds r0, #0xFF
_0805EEFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r7, r10
	ldr r2, [r7, #0x00]
	ldr r3, [r6, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EF3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EF4C @ =0x0805EF51
	str r0, [r4, #0x4C]
_0805EF3C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EF4C: .4byte sub_805EF50
	thumb_func_start sub_805EF50
sub_805EF50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	movs r7, #0x8C
	adds r7, r7, r5
	mov r10, r7
	ldr r3, [r7, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r7, #0x00
	ldsh r0, [r4, r7]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EF90
	adds r0, #0xFF
_0805EF90:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805F016
	ldr r1, [r6, #0x00]
	ldr r0, _0805EFDC @ =0x00005FFF
	cmp r1, r0
	bgt _0805EFE0
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0805EFE6
	.byte 0x00, 0x00
_0805EFDC: .4byte 0x00005FFF
_0805EFE0:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, _0805F028 @ =0xFFFFE000
_0805EFE6:
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x10
	bl __divsi3
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r0, _0805F02C @ =0x0805F035
	str r0, [r5, #0x4C]
	ldr r0, _0805F030 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805F016:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F028: .4byte 0xFFFFE000
_0805F02C: .4byte sub_805F034
_0805F030: .4byte 0x0000010F
	thumb_func_start sub_805F034
sub_805F034:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r6, r4, #0x0
	adds r6, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	subs r1, r0, r1
	str r1, [r6, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r8, r7
	ldr r2, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F082
	adds r0, #0xFF
_0805F082:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _0805F0C8 @ =0x000007FF
	cmp r1, r0
	bgt _0805F0B6
	ldr r0, _0805F0CC @ =0x0805F0D1
	str r0, [r4, #0x4C]
_0805F0B6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F0C8: .4byte 0x000007FF
_0805F0CC: .4byte sub_805F0D0
	thumb_func_start sub_805F0D0
sub_805F0D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _0805F11C
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r7, _0805F118 @ =0xFFFFFF00
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	bgt _0805F14C
	b _0805F148
	.byte 0x00, 0x00
_0805F118: .4byte 0xFFFFFF00
_0805F11C:
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	ldr r1, _0805F1C8 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	blt _0805F14C
_0805F148:
	ldr r0, _0805F1CC @ =0x0805F1D1
	str r0, [r4, #0x4C]
_0805F14C:
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r7, [r6, #0x00]
	mov r12, r7
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805F17A
	adds r0, #0xFF
_0805F17A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r2, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r0, #0x51
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805F1C8: .4byte 0xFFFFFF00
_0805F1CC: .4byte sub_805F1D0
	thumb_func_start sub_805F1D0
sub_805F1D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r7, r4, #0x0
	adds r7, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r7, #0x00]
	adds r1, r0, r1
	str r1, [r7, #0x00]
	movs r2, #0x88
	adds r2, r2, r4
	mov r9, r2
	ldr r2, [r2, #0x00]
	movs r3, #0x8C
	adds r3, r3, r4
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F220
	adds r0, #0xFF
_0805F220:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	mov r3, r8
	ldr r3, [r3, #0x00]
	mov r8, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, _0805F278 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	adds r5, r2, #0x0
	cmp r1, r0
	ble _0805F29C
	ldr r0, _0805F27C @ =0x03000E15
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	ble _0805F280
	subs r0, r1, #0x1
	strh r0, [r6, #0x00]
	b _0805F29C
_0805F278: .4byte 0xFFFFD000
_0805F27C: .4byte 0x03000E15
_0805F280:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F29C:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _0805F2C4
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F2C4:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805F2D4
sub_805F2D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	str r1, [sp, #0x00C]
	mov r10, r2
	str r3, [sp, #0x010]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F328
	ldr r6, _0805F48C @ =0x03000E14
	ldr r4, _0805F490 @ =0x03000E15
	ldrb r0, [r6, #0x00]
	ldrb r1, [r4, #0x00]
	cmp r0, r1
	beq _0805F328
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldrb r0, [r4, #0x00]
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bne _0805F328
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0805F328:
	ldr r2, _0805F494 @ =0x08198584
	mov r9, r2
	movs r1, #0xFF
	ldr r0, [sp, #0x03C]
	ands r0, r1
	lsls r7, r0, #0x01
	adds r0, r7, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F340
	adds r0, #0x3F
_0805F340:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r6
	adds r4, r1, #0x0
	ldr r0, [sp, #0x040]
	ands r4, r0
	lsls r3, r4, #0x01
	mov r1, r9
	adds r0, r3, r1
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _0805F35E
	adds r0, #0x3F
_0805F35E:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F368
	adds r0, #0xFF
_0805F368:
	asrs r2, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r2
	ldr r1, _0805F498 @ =0x08198504
	adds r0, r3, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F37C
	adds r0, #0x3F
_0805F37C:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r3, [sp, #0x00C]
	adds r2, r0, r3
	str r2, [r5, #0x10]
	mov r0, r10
	adds r3, r6, r0
	str r3, [r5, #0x14]
	adds r0, r7, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F398
	adds r0, #0x3F
_0805F398:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r6, [sp, #0x010]
	adds r1, r0, r6
	str r1, [r5, #0x18]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F3AC
	adds r0, #0xFF
_0805F3AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F3B8
	adds r0, #0xFF
_0805F3B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805F3C4
	adds r0, #0xFF
_0805F3C4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x10]
	mov r2, r10
	str r2, [r0, #0x14]
	movs r1, #0x00
	str r1, [r0, #0x18]
	adds r5, #0x0C
	mov r8, r1
	cmp r5, #0x00
	beq _0805F47A
	str r4, [sp, #0x014]
_0805F3EC:
	mov r3, r8
	lsls r0, r3, #0x08
	movs r1, #0x0B
	bl __divsi3
	ldr r6, [sp, #0x03C]
	adds r0, r6, r0
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	mov r12, r0
	add r0, r9
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0805F40E
	adds r0, #0x3F
_0805F40E:
	asrs r0, r0, #0x06
	ldr r3, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r3
	ldr r6, [sp, #0x014]
	lsls r4, r6, #0x01
	mov r1, r9
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F428
	adds r0, #0x3F
_0805F428:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F432
	adds r0, #0xFF
_0805F432:
	asrs r3, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r3
	ldr r7, _0805F498 @ =0x08198504
	adds r0, r4, r7
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F446
	adds r0, #0x3F
_0805F446:
	asrs r0, r0, #0x06
	muls r0, r3
	ldr r2, [sp, #0x00C]
	adds r1, r0, r2
	mov r3, r10
	adds r2, r6, r3
	mov r6, r12
	adds r0, r6, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F460
	adds r0, #0x3F
_0805F460:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	str r1, [r5, #0x04]
	str r2, [r5, #0x08]
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	movs r6, #0x01
	add r8, r6
	cmp r5, #0x00
	bne _0805F3EC
_0805F47A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F48C: .4byte 0x03000E14
_0805F490: .4byte 0x03000E15
_0805F494: .4byte 0x08198584
_0805F498: .4byte 0x08198504
	thumb_func_start sub_805F49C
sub_805F49C:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x08
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r2, r0, #0x08
	str r2, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	str r3, [r4, #0x18]
	cmp r1, #0x00
	bge _0805F4C8
	adds r1, #0xFF
_0805F4C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F4D4
	adds r0, #0xFF
_0805F4D4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F4E0
	adds r0, #0xFF
_0805F4E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805F500
	adds r0, r4, #0x0
	bl sub_807C298
_0805F500:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805F508
sub_805F508:
	push {r4, r5, r6, lr}
	adds r4, r3, #0x0
	ldr r6, [sp, #0x010]
	ldr r3, [r0, #0x30]
	ldr r5, [r3, #0x30]
	cmp r1, #0x00
	bge _0805F518
	adds r1, #0xFF
_0805F518:
	asrs r0, r1, #0x08
	movs r1, #0xAE
	strh r0, [r1, r5]
	strh r0, [r1, r3]
	cmp r2, #0x00
	bge _0805F526
	adds r2, #0xFF
_0805F526:
	asrs r0, r2, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _0805F53C
	adds r1, #0xFF
_0805F53C:
	asrs r2, r1, #0x08
	adds r1, r2, r6
	adds r0, r3, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	subs r1, r2, r6
	adds r0, r5, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_805F554
sub_805F554:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F59C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805F584
	ldr r0, _0805F580 @ =0x0808750D
	b _0805F59A
	.byte 0x00, 0x00
_0805F580: .4byte sub_808750C
_0805F584:
	cmp r0, #0x01
	bne _0805F590
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _0805F596
_0805F590:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x96
_0805F596:
	str r0, [r1, #0x00]
	ldr r0, _0805F5A4 @ =0x0805F5E5
_0805F59A:
	str r0, [r4, #0x4C]
_0805F59C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F5A4: .4byte sub_805F5E4
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x02, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x05, 0xF6, 0x05, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x05, 0xF6, 0x05, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x05, 0xF6, 0x05, 0x08
