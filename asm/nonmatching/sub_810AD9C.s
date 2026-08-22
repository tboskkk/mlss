	.syntax unified
	.text

	thumb_func_start sub_810AD9C
sub_810AD9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r10, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	movs r0, #0x0F
	mov r1, r9
	ands r1, r0
	mov r9, r1
	ldr r0, _0810ADE0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xF8
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	mov r3, r10
	movs r4, #0x10
	ldsh r7, [r3, r4]
	ldr r5, [r3, #0x08]
	str r5, [sp, #0x01C]
	mov r0, r9
	cmp r0, #0x01
	beq _0810AE00
	cmp r0, #0x01
	bgt _0810ADE4
	cmp r0, #0x00
	beq _0810ADEC
	b _0810AE1C
	.byte 0x00, 0x00
_0810ADE0: .4byte 0x03000FD8
_0810ADE4:
	mov r2, r9
	cmp r2, #0x02
	beq _0810AE10
	b _0810AE1C
_0810ADEC:
	ldr r3, _0810ADFC @ =0x0000033F
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x018]
	mov r4, r10
	strh r0, [r4, #0x16]
	b _0810AE1C
	.byte 0x00, 0x00
_0810ADFC: .4byte 0x0000033F
_0810AE00:
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r1, r5
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x018]
	mov r1, r10
	strh r0, [r1, #0x16]
	b _0810AE1C
_0810AE10:
	ldr r2, _0810AE70 @ =0x00000341
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x018]
	mov r3, r10
	strh r0, [r3, #0x16]
_0810AE1C:
	cmp r7, #0x00
	bne _0810AE30
	ldr r0, _0810AE74 @ =0x03001034
	movs r2, #0x87
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	ldr r1, [sp, #0x014]
	bl _call_via_r3
_0810AE30:
	ldr r0, _0810AE78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, _0810AE7C @ =0x000002C2
	adds r0, r0, r4
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
_0810AE46:
	ldr r5, [sp, #0x020]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r7
	ldr r1, [sp, #0x018]
	cmp r0, r1
	blt _0810AE56
	subs r0, r0, r1
_0810AE56:
	ldr r2, [sp, #0x01C]
	adds r0, r2, r0
	ldrb r4, [r0, #0x00]
	mov r3, r9
	cmp r3, #0x01
	beq _0810AF1C
	cmp r3, #0x01
	bgt _0810AE80
	cmp r3, #0x00
	beq _0810AE8C
	adds r6, r7, #0x1
	b _0810B1CA
	.byte 0x00, 0x00
_0810AE70: .4byte 0x00000341
_0810AE74: .4byte 0x03001034
_0810AE78: .4byte 0x03000FD8
_0810AE7C: .4byte 0x000002C2
_0810AE80:
	mov r5, r9
	cmp r5, #0x02
	bne _0810AE88
	b _0810AFE0
_0810AE88:
	adds r6, r7, #0x1
	b _0810B1CA
_0810AE8C:
	ldr r0, _0810AED8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x7C]
	cmp r7, #0x00
	bne _0810AEA8
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _0810AED4
_0810AEA8:
	cmp r7, #0x01
	bne _0810AEBE
	movs r3, #0x8F
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0810AED4
_0810AEBE:
	cmp r7, #0x02
	bne _0810AEDC
	movs r5, #0x8F
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0810AEDC
_0810AED4:
	movs r2, #0x03
	b _0810AEDE
_0810AED8: .4byte 0x03000FD8
_0810AEDC:
	movs r2, #0x01
_0810AEDE:
	movs r0, #0x0B
	adds r3, r7, #0x0
	muls r3, r0
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0810AF14 @ =0x083BA63C
	ldr r0, _0810AF18 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x014]
	movs r1, #0x09
	movs r2, #0x00
	bl sub_8083860
	adds r6, r7, #0x1
	b _0810B1CA
_0810AF14: .4byte 0x083BA63C
_0810AF18: .4byte 0x0300034C
_0810AF1C:
	ldr r0, _0810AF4C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r5, [r3, #0x7C]
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r1, r3, r0
	lsls r2, r4, #0x01
	adds r0, r2, r4
	lsls r0, r0, #0x03
	ldr r1, [r1, #0x00]
	adds r6, r1, r0
	movs r1, #0xC6
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	lsrs r0, r2
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810AF50
	ldrb r2, [r6, #0x11]
	mov r8, r2
	b _0810AF54
	.byte 0x00, 0x00
_0810AF4C: .4byte 0x03000FD8
_0810AF50:
	ldrb r3, [r6, #0x10]
	mov r8, r3
_0810AF54:
	adds r0, r5, #0x0
	adds r0, #0xFC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r8, r0
	bgt _0810AF88
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	lsrs r1, r0, #0x0C
	cmp r4, #0x02
	ble _0810AF80
	cmp r4, #0x05
	bgt _0810AF76
	movs r0, #0x02
	b _0810AF78
_0810AF76:
	movs r0, #0x04
_0810AF78:
	ands r1, r0
	cmp r1, #0x00
	bne _0810AF88
	b _0810AF8C
_0810AF80:
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0810AF8C
_0810AF88:
	movs r5, #0x03
	b _0810AF8E
_0810AF8C:
	movs r5, #0x01
_0810AF8E:
	movs r0, #0x0B
	adds r4, r7, #0x0
	muls r4, r0
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0810AFDC @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x014]
	movs r1, #0x0C
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8083860
	mov r0, r8
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x014]
	movs r1, #0x0C
	movs r2, #0x60
	adds r3, r4, #0x0
	bl sub_8083934
	adds r6, r7, #0x1
	b _0810B1CA
_0810AFDC: .4byte 0x0300034C
_0810AFE0:
	ldr r0, _0810B02C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x8A
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x024]
	movs r1, #0x03
	mov r12, r1
	cmp r0, #0x00
	beq _0810AFF8
	movs r2, #0x01
	mov r12, r2
_0810AFF8:
	movs r3, #0x00
	movs r5, #0x00
	lsls r4, r4, #0x04
	mov r8, r4
	adds r6, r7, #0x1
_0810B002:
	ldr r4, _0810B030 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x80
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _0810B014
	b _0810B168
_0810B014:
	ldr r0, _0810B034 @ =0x083BBDD0
	add r0, r8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _0810B022
	b _0810B168
_0810B022:
	lsls r0, r0, #0x02
	ldr r1, _0810B038 @ =lbl_0810B03C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0810B02C: .4byte 0x03000FF4
_0810B030: .4byte 0x03000FD8
_0810B034: .4byte 0x083BBDD0
_0810B038: .4byte lbl_0810B03C
lbl_0810B03C:
	.4byte _0810B074
	.4byte _0810B0F0
	.4byte _0810B098
	.4byte _0810B168
	.4byte _0810B168
	.4byte _0810B168
	.4byte _0810B168
	.4byte _0810B168
	.4byte _0810B168
	.4byte _0810B168
	.4byte _0810B0A8
	.4byte _0810B0B8
	.4byte _0810B166
	.4byte _0810B166
_0810B074:
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	bne.n _0810B168
	adds r1, r2, #0
	adds r1, #246 @ 0xf6
	adds r0, r2, #0
	adds r0, #248 @ 0xf8
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bge.n _0810B168
	b.n _0810B166
_0810B098:
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r0, #6
	ands r0, r1
	cmp r0, #6
	bne.n _0810B168
	b.n _0810B166
_0810B0A8:
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	bne.n _0810B168
	b.n _0810B0DA
_0810B0B8:
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	bne.n _0810B168
	adds r1, r2, #0
	adds r1, #246 @ 0xf6
	adds r0, r2, #0
	adds r0, #248 @ 0xf8
	movs r4, #0
	ldrsh r1, [r1, r4]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt.n _0810B166
_0810B0DA:
	adds r0, r2, #0
	adds r0, #252 @ 0xfc
	adds r1, r2, #0
	adds r1, #254 @ 0xfe
	movs r4, #0
	ldrsh r2, [r0, r4]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r2, r0
	bge.n _0810B168
	b.n _0810B166
_0810B0F0:
	adds r0, r2, #0
	adds r0, #126 @ 0x7e
	ldrb r1, [r0, #0]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	bne.n _0810B168
	movs r1, #150 @ 0x96
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrb r0, [r0, #0]
	cmp r0, #19
	beq.n _0810B134
	cmp r0, #20
	beq.n _0810B142
	movs r4, #143 @ 0x8f
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r1, [r0, #0]
	movs r0, #192 @ 0xc0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq.n _0810B156
	movs r1, #144 @ 0x90
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r0, [r0, #0]
	movs r1, #224 @ 0xe0
	lsls r1, r1, #10
	ands r0, r1
	cmp r0, #0
	beq.n _0810B156
	b.n _0810B154
_0810B134:
	movs r4, #143 @ 0x8f
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #4
	b.n _0810B14E
_0810B142:
	movs r1, #143 @ 0x8f
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #3
_0810B14E:
	ands r0, r1
	cmp r0, #0
	bne.n _0810B156
_0810B154:
	movs r3, #1
_0810B156:
	movs r4, #143 @ 0x8f
	lsls r4, r4, #1
	adds r0, r2, r4
	ldrh r1, [r0, #0]
	ldr r0, [pc, #156] @ (0x810b1fc)
	ands r0, r1
	cmp r0, #0
	beq.n _0810B168
_0810B166:
	movs r3, #1
_0810B168:
	adds r5, #0x01
	cmp r5, #0x01
	bgt _0810B170
	b _0810B002
_0810B170:
	cmp r3, #0x00
	bne _0810B178
	movs r5, #0x03
	mov r12, r5
_0810B178:
	movs r0, #0x0B
	adds r4, r7, #0x0
	muls r4, r0
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0810B200 @ =0x083BBDD0
	adds r1, #0x0C
	add r1, r8
	ldr r2, _0810B204 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r5, r12
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x014]
	movs r1, #0x0F
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_8083860
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x014]
	movs r1, #0x0F
	movs r2, #0x78
	adds r3, r4, #0x0
	bl sub_8083934
_0810B1CA:
	adds r7, r6, #0x0
	ldr r1, [sp, #0x018]
	cmp r1, r7
	ble _0810B1D8
	cmp r7, #0x04
	bgt _0810B1D8
	b _0810B2EC
_0810B1D8:
	mov r2, r10
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	blt _0810B1E2
	b _0810B2E4
_0810B1E2:
	ldr r0, _0810B208 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [r2, #0x0C]
	movs r0, #0x00
	strh r0, [r2, #0x10]
	mov r3, r9
	cmp r3, #0x01
	beq _0810B228
	cmp r3, #0x01
	bgt _0810B20C
	cmp r3, #0x00
	beq _0810B214
	b _0810B24E
	.byte 0xAB, 0xF1, 0x00, 0x00
_0810B200: .4byte 0x083BBDD0
_0810B204: .4byte 0x0300034C
_0810B208: .4byte 0x7FFFFFFF
_0810B20C:
	mov r4, r9
	cmp r4, #0x02
	beq _0810B238
	b _0810B24E
_0810B214:
	ldr r2, _0810B220 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r5, _0810B224 @ =0x0000033F
	adds r0, r0, r5
	b _0810B240
	.byte 0x00, 0x00
_0810B220: .4byte 0x03000FD8
_0810B224: .4byte 0x0000033F
_0810B228:
	ldr r2, _0810B234 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	b _0810B240
_0810B234: .4byte 0x03000FD8
_0810B238:
	ldr r2, _0810B288 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r3, _0810B28C @ =0x00000341
	adds r0, r0, r3
_0810B240:
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	lsrs r0, r0, #0x03
	str r0, [sp, #0x028]
_0810B24E:
	ldr r4, _0810B288 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x94
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x00]
	ldr r0, _0810B290 @ =0x08201131
	add r0, r9
	ldrb r0, [r0, #0x00]
	adds r3, r0, #0x1
	ldr r0, _0810B294 @ =0x08201134
	add r0, r9
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, _0810B298 @ =0x08201137
	add r0, r9
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r0, _0810B29C @ =0x0820113A
	add r0, r9
	ldrb r0, [r0, #0x00]
	subs r0, #0x02
	ldr r1, [sp, #0x028]
	cmp r0, r1
	blt _0810B2A0
	adds r0, r1, #0x0
	adds r0, #0x02
	b _0810B2A2
_0810B288: .4byte 0x03000FD8
_0810B28C: .4byte 0x00000341
_0810B290: .4byte 0x08201131
_0810B294: .4byte 0x08201134
_0810B298: .4byte 0x08201137
_0810B29C: .4byte 0x0820113A
_0810B2A0:
	movs r0, #0x09
_0810B2A2:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8084578
	ldr r5, _0810B2DC @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	movs r2, #0x02
	movs r3, #0x02
	bl sub_80847B0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	movs r2, #0x90
	bl sub_8085170
	ldr r0, _0810B2E0 @ =0x0810CD31
	mov r2, r10
	str r0, [r2, #0x04]
	b _0810B300
	.byte 0x00, 0x00
_0810B2DC: .4byte 0x03000FD8
_0810B2E0: .4byte sub_810CD30
_0810B2E4:
	mov r0, r10
	bl sub_810CD30
	b _0810B300
_0810B2EC:
	add r0, sp, #0x010
	bl sub_8199470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x46
	bhi _0810B2FC
	b _0810AE46
_0810B2FC:
	mov r3, r10
	strh r7, [r3, #0x10]
_0810B300:
	mov r0, r10
	bl sub_810B318
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
