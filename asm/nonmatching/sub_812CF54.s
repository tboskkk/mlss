	.syntax unified
	.text

	thumb_func_start sub_812CF54
sub_812CF54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x064
	str r0, [sp, #0x02C]
	adds r7, r1, #0x0
	adds r0, #0xBB
	ldrb r1, [r0, #0x00]
	cmp r1, #0x01
	bne _0812D01C
	ldr r0, [sp, #0x02C]
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812CFF4
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r0, [r0, #0x00]
	ands r1, r0
	cmp r1, #0x00
	beq _0812CFCC
	ldr r0, [sp, #0x02C]
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812CF98
	movs r4, #0xED
	lsls r4, r4, #0x01
	b _0812CFF4
_0812CF98:
	ldr r2, _0812CFC8 @ =0x083BE67C
	ldr r0, [sp, #0x02C]
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r4, [sp, #0x02C]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	movs r5, #0xED
	lsls r5, r5, #0x01
	adds r1, r5, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	adds r4, r1, #0x0
	b _0812CFF4
	.byte 0x00, 0x00
_0812CFC8: .4byte 0x083BE67C
_0812CFCC:
	ldr r3, _0812D17C @ =0x083BBDD0
	ldr r0, [sp, #0x02C]
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r6, [sp, #0x02C]
	ldr r0, [r6, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r1, r1, #0x04
	adds r1, r1, r3
	movs r2, #0xE4
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x01]
	adds r0, r0, r1
	adds r4, r0, #0x0
_0812CFF4:
	ldr r3, [sp, #0x02C]
	ldr r1, [r3, #0x68]
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	ldr r2, [r3, #0x6C]
	lsls r2, r2, #0x08
	asrs r2, r2, #0x10
	movs r3, #0x00
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D01C:
	ldr r0, [sp, #0x02C]
	adds r0, #0xBD
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x04C]
	cmp r1, #0x00
	beq _0812D04C
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812D04C
	ldr r0, [sp, #0x02C]
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	ldr r4, [sp, #0x02C]
	adds r4, #0xC4
	str r4, [sp, #0x058]
	cmp r0, #0x00
	bne _0812D04C
	b _0812D446
_0812D04C:
	movs r5, #0x01
	mov r9, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xA2
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA5
	movs r2, #0x0D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r0, [sp, #0x04C]
	ldrb r6, [r0, #0x00]
	cmp r6, #0x00
	beq _0812D07C
	b _0812D190
_0812D07C:
	ldr r2, _0812D180 @ =0x03001038
	ldr r0, _0812D184 @ =0x0819832C
	ldr r1, _0812D188 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r5, [sp, #0x02C]
	adds r5, #0xC4
	ldrb r1, [r5, #0x00]
	movs r0, #0x7F
	ands r0, r1
	ldr r3, [sp, #0x02C]
	ldr r1, [r3, #0x54]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x04
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r0, #0x08
	str r0, [sp, #0x000]
	movs r4, #0x03
	str r4, [sp, #0x004]
	subs r0, #0x09
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0xA8
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, [sp, #0x02C]
	adds r0, #0xB0
	ldrh r1, [r0, #0x00]
	movs r0, #0x05
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x06
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x12
	adds r2, r7, #0x0
	movs r3, #0xBF
	bl sub_8121B5C
	adds r7, r0, #0x0
	mov r4, r9
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0xF5
	str r0, [sp, #0x008]
	movs r0, #0x02
	mov r8, r0
	str r0, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xC8
	movs r2, #0x10
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0xF2
	str r0, [sp, #0x008]
	mov r1, r8
	str r1, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xD2
	movs r2, #0x0C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r1, #0x00
	str r5, [sp, #0x058]
	ldr r4, [sp, #0x02C]
	adds r4, #0xB6
	ldr r2, [sp, #0x02C]
	adds r2, #0xC5
	mov r10, r2
	ldrh r0, [r4, #0x00]
	mov r3, r9
	ands r0, r3
	cmp r0, #0x00
	beq _0812D15A
	str r3, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r0, #0x97
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	mov r5, r8
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xD9
	movs r2, #0x08
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D15A:
	ldrh r0, [r4, #0x00]
	asrs r0, r0, #0x01
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	bne _0812D168
	b _0812D304
_0812D168:
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r0, _0812D18C @ =0x0000025E
	str r0, [sp, #0x008]
	mov r2, r8
	str r2, [sp, #0x00C]
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	b _0812D2F6
_0812D17C: .4byte 0x083BBDD0
_0812D180: .4byte 0x03001038
_0812D184: .4byte 0x0819832C
_0812D188: .4byte 0x08198220
_0812D18C: .4byte 0x0000025E
_0812D190:
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812D208
	ldr r0, [sp, #0x02C]
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r6, #0x7F
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812D1C4
	ldr r3, _0812D1C0 @ =0x083BD844
	ldr r2, [sp, #0x02C]
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	ldr r4, [sp, #0x02C]
	ldr r0, [r4, #0x40]
	b _0812D1D4
_0812D1C0: .4byte 0x083BD844
_0812D1C4:
	ldr r3, _0812D204 @ =0x083BE67C
	ldr r2, [sp, #0x02C]
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	ldr r5, [sp, #0x02C]
	ldr r0, [r5, #0x40]
_0812D1D4:
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrh r1, [r0, #0x04]
	str r2, [sp, #0x058]
	movs r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0xA8
	bl sub_8121B5C
	adds r7, r0, #0x0
	b _0812D242
_0812D204: .4byte 0x083BE67C
_0812D208:
	ldr r3, _0812D344 @ =0x083BBDD0
	ldr r4, [sp, #0x02C]
	adds r4, #0xC4
	ldrb r0, [r4, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r6, [sp, #0x02C]
	ldr r0, [r6, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r1, r1, #0x04
	adds r1, r1, r3
	ldrh r1, [r1, #0x0A]
	movs r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0xA8
	bl sub_8121B5C
	adds r7, r0, #0x0
	str r4, [sp, #0x058]
_0812D242:
	ldr r0, [sp, #0x02C]
	adds r0, #0xB0
	ldrh r1, [r0, #0x00]
	movs r0, #0x05
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	movs r0, #0x06
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x12
	adds r2, r7, #0x0
	movs r3, #0xBF
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	movs r0, #0xF3
	str r0, [sp, #0x008]
	movs r6, #0x02
	str r6, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xC8
	movs r2, #0x10
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xF2
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xD2
	movs r2, #0x0C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r1, #0x00
	ldr r4, [sp, #0x02C]
	adds r4, #0xB6
	ldr r0, [sp, #0x02C]
	adds r0, #0xC5
	mov r10, r0
	movs r2, #0x01
	ldrh r0, [r4, #0x00]
	ands r0, r2
	cmp r0, #0x00
	beq _0812D2DA
	str r2, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r0, #0x97
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xD9
	movs r2, #0x08
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D2DA:
	movs r1, #0x01
	ldrh r0, [r4, #0x00]
	asrs r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812D304
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, _0812D348 @ =0x0000025E
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
_0812D2F6:
	adds r0, r7, #0x0
	movs r1, #0xDC
	movs r2, #0x10
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D304:
	ldr r1, [sp, #0x04C]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0812D31C
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0812D39A
_0812D31C:
	mov r2, r10
	ldrb r0, [r2, #0x00]
	cmp r0, #0x01
	bhi _0812D34C
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x9E
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	b _0812D43E
_0812D344: .4byte 0x083BBDD0
_0812D348: .4byte 0x0000025E
_0812D34C:
	cmp r0, #0x03
	bhi _0812D36E
	movs r1, #0x02
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r0, #0x9F
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	b _0812D43E
_0812D36E:
	movs r5, #0x02
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xA1
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x00
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r4, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	b _0812D42A
_0812D39A:
	mov r3, r10
	ldrb r1, [r3, #0x00]
	cmp r1, #0x00
	bne _0812D3BE
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0xAB
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	b _0812D43E
_0812D3BE:
	cmp r1, #0x02
	bhi _0812D3E0
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x9E
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	b _0812D43E
_0812D3E0:
	cmp r1, #0x04
	bhi _0812D402
	movs r1, #0x02
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r0, #0x9F
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	b _0812D43E
_0812D402:
	movs r5, #0x02
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xA1
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x00
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r4, [sp, #0x000]
	str r6, [sp, #0x004]
_0812D42A:
	movs r0, #0xA3
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA0
	movs r2, #0x38
_0812D43E:
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D446:
	ldr r4, [sp, #0x04C]
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0812D518
	ldr r1, [sp, #0x02C]
	adds r1, #0xBE
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	adds r2, r3, #0x0
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x00
	beq _0812D4D6
	ldr r0, [sp, #0x02C]
	adds r0, #0xC0
	ldrb r2, [r0, #0x00]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _0812D49A
	movs r0, #0x02
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r1, #0x7F
	ands r1, r2
	lsls r1, r1, #0x13
	movs r5, #0x98
	lsls r5, r5, #0x12
	adds r1, r1, r5
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x43
	b _0812D4F0
_0812D49A:
	movs r4, #0x02
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x98
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x18
	movs r2, #0x20
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x9A
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x18
	movs r2, #0x3A
	b _0812D4F0
_0812D4D6:
	str r2, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r3, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r2, [sp, #0x014]
	str r2, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
_0812D4F0:
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r1, [sp, #0x04C]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0812D518
	ldrb r1, [r6, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812D518
	ldr r0, [sp, #0x02C]
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812D58C
_0812D518:
	ldr r0, [sp, #0x02C]
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r0, #0x06
	bls _0812D58C
	movs r3, #0x00
	ldr r2, [sp, #0x02C]
	adds r2, #0xC0
	str r2, [sp, #0x050]
	movs r4, #0x00
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812D53A
	movs r2, #0x10
	b _0812D53C
_0812D53A:
	movs r2, #0x00
_0812D53C:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x67
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x02
	str r0, [sp, #0x010]
	str r4, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x50
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r3, #0x01
	ldr r5, [sp, #0x050]
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812D56C
	movs r2, #0x58
	b _0812D56E
_0812D56C:
	movs r2, #0x48
_0812D56E:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x67
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x02
	str r0, [sp, #0x010]
	str r4, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x50
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D58C:
	ldr r6, [sp, #0x04C]
	ldrb r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0812D596
	b _0812D780
_0812D596:
	ldr r1, [sp, #0x058]
	ldrb r0, [r1, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [sp, #0x02C]
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	subs r3, r1, r2
	mov r8, r3
	ldr r4, [sp, #0x02C]
	adds r4, #0xA8
	str r4, [sp, #0x048]
	cmp r3, #0x00
	bge _0812D5BA
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	subs r0, r0, r2
	mov r8, r0
_0812D5BA:
	movs r5, #0x00
	mov r10, r5
	b _0812D764
_0812D5C0:
	ldr r6, [sp, #0x02C]
	ldr r0, [r6, #0x40]
	add r0, r8
	ldrb r3, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	adds r0, r6, #0x0
	adds r0, #0xAA
	ldrh r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r8, r1
	bge _0812D5EC
	ldr r0, _0812D5E8 @ =0x083BBDD0
	lsls r1, r3, #0x04
	adds r1, r1, r0
	movs r2, #0xE6
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x02]
	b _0812D644
_0812D5E8: .4byte 0x083BBDD0
_0812D5EC:
	ldr r4, [sp, #0x02C]
	adds r4, #0xAE
	cmp r1, r8
	bgt _0812D650
	ldrh r2, [r4, #0x00]
	adds r0, r1, r2
	cmp r8, r0
	bge _0812D650
	cmp r2, #0x00
	beq _0812D650
	ldr r0, _0812D61C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x32
	ldrb r1, [r1, #0x00]
	cmp r3, r1
	bne _0812D626
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bne _0812D620
	movs r4, #0x03
	mov r9, r4
	b _0812D632
_0812D61C: .4byte 0x03000FF4
_0812D620:
	movs r5, #0x01
	mov r9, r5
	b _0812D632
_0812D626:
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bne _0812D632
	movs r6, #0x02
	mov r9, r6
_0812D632:
	ldr r0, _0812D64C @ =0x083BE67C
	lsls r1, r3, #0x02
	adds r1, r1, r3
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r2, #0xED
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x11]
_0812D644:
	adds r0, r0, r1
	str r0, [sp, #0x030]
	b _0812D6A2
	.byte 0x00, 0x00
_0812D64C: .4byte 0x083BE67C
_0812D650:
	ldrh r0, [r5, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	cmp r0, r8
	bgt _0812D6A2
	ldr r4, [sp, #0x048]
	ldrh r4, [r4, #0x00]
	cmp r8, r4
	bge _0812D6A2
	ldr r0, [sp, #0x02C]
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812D6A2
	ldr r0, _0812D68C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x31
	ldrb r1, [r1, #0x00]
	cmp r3, r1
	bne _0812D690
	adds r0, #0x6D
	movs r5, #0x01
	mov r9, r5
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bne _0812D69C
	movs r6, #0x03
	mov r9, r6
	b _0812D69C
_0812D68C: .4byte 0x03000FF4
_0812D690:
	adds r0, #0x6D
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bne _0812D69C
	movs r0, #0x02
	mov r9, r0
_0812D69C:
	movs r1, #0xED
	lsls r1, r1, #0x01
	str r1, [sp, #0x030]
_0812D6A2:
	ldr r2, [sp, #0x02C]
	ldr r1, [r2, #0x58]
	mov r3, r8
	lsls r0, r3, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x0B
	mov r4, r10
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x11
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	adds r4, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r5, #0x00
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r6, [sp, #0x030]
	str r6, [sp, #0x008]
	movs r6, #0x02
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	movs r1, #0x1C
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r0, r9
	cmp r0, #0x03
	bne _0812D72C
	movs r1, #0x01
	add r8, r1
	add r10, r1
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xF0
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0E
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xF1
	b _0812D740
_0812D72C:
	movs r2, #0x01
	add r8, r2
	add r10, r2
	mov r3, r9
	cmp r3, #0x00
	beq _0812D758
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	mov r0, r9
	adds r0, #0xEF
_0812D740:
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x14
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D758:
	ldr r4, [sp, #0x048]
	ldrh r4, [r4, #0x00]
	cmp r8, r4
	blt _0812D764
	movs r5, #0x00
	mov r8, r5
_0812D764:
	ldr r6, [sp, #0x048]
	ldrh r0, [r6, #0x00]
	cmp r0, #0x05
	bhi _0812D776
	ldrh r0, [r6, #0x00]
	cmp r10, r0
	bge _0812D774
	b _0812D5C0
_0812D774:
	b _0812DAAE
_0812D776:
	mov r1, r10
	cmp r1, #0x05
	bgt _0812D77E
	b _0812D5C0
_0812D77E:
	b _0812DAAE
_0812D780:
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812D790
	b _0812D9B4
_0812D790:
	ldr r2, [sp, #0x02C]
	adds r2, #0xC0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	str r2, [sp, #0x050]
	cmp r0, #0x00
	bne _0812D7A2
	b _0812DAAE
_0812D7A2:
	ldr r2, [sp, #0x058]
	ldrb r0, [r2, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [sp, #0x02C]
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	subs r3, r1, r2
	mov r8, r3
	ldr r4, [sp, #0x02C]
	adds r4, #0xA8
	str r4, [sp, #0x048]
	cmp r3, #0x00
	bge _0812D7C6
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	subs r0, r0, r2
	mov r8, r0
_0812D7C6:
	movs r5, #0x00
	str r5, [sp, #0x034]
	mov r10, r5
	b _0812D996
_0812D7CE:
	ldr r6, [sp, #0x02C]
	ldr r0, [r6, #0x40]
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	adds r2, r0, #0x0
	ands r2, r1
	movs r1, #0x00
	mov r9, r1
	ldr r3, [sp, #0x050]
	ldrb r1, [r3, #0x00]
	ands r0, r1
	cmp r0, #0x00
	beq _0812D830
	ldr r0, _0812D808 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x31
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bne _0812D812
	adds r0, #0x6D
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bne _0812D80C
	movs r4, #0x03
	mov r9, r4
	b _0812D81E
	.byte 0x00, 0x00
_0812D808: .4byte 0x03000FF4
_0812D80C:
	movs r5, #0x01
	mov r9, r5
	b _0812D81E
_0812D812:
	adds r0, #0x6D
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bne _0812D81E
	movs r6, #0x02
	mov r9, r6
_0812D81E:
	ldr r0, [sp, #0x02C]
	ldr r1, [r0, #0x58]
	mov r2, r8
	lsls r0, r2, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	movs r6, #0xED
	lsls r6, r6, #0x01
	b _0812D882
_0812D830:
	ldr r0, _0812D850 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x32
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bne _0812D854
	adds r0, #0x6E
	movs r3, #0x01
	mov r9, r3
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bne _0812D860
	movs r4, #0x03
	mov r9, r4
	b _0812D860
_0812D850: .4byte 0x03000FF4
_0812D854:
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bne _0812D860
	movs r5, #0x02
	mov r9, r5
_0812D860:
	ldr r6, [sp, #0x02C]
	ldr r1, [r6, #0x58]
	mov r3, r8
	lsls r0, r3, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r1, _0812D90C @ =0x083BE67C
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r4, #0xED
	lsls r4, r4, #0x01
	adds r1, r4, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	adds r6, r1, #0x0
_0812D882:
	movs r0, #0x0B
	ldr r5, [sp, #0x034]
	adds r4, r5, #0x0
	muls r4, r0
	adds r0, r4, #0x4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x11
	adds r1, r3, #0x0
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	adds r4, #0x08
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r5, #0x00
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r6, #0x02
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	movs r1, #0x1C
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r0, r9
	cmp r0, #0x03
	bne _0812D910
	mov r1, r8
	adds r1, #0x01
	str r1, [sp, #0x05C]
	ldr r2, [sp, #0x034]
	adds r2, #0x01
	str r2, [sp, #0x060]
	mov r3, r10
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r0, #0xF0
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0E
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r5, r10
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xF1
	b _0812D92A
	.byte 0x00, 0x00
_0812D90C: .4byte 0x083BE67C
_0812D910:
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x05C]
	ldr r1, [sp, #0x034]
	adds r1, #0x01
	str r1, [sp, #0x060]
	mov r2, r9
	cmp r2, #0x00
	beq _0812D942
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	mov r0, r9
	adds r0, #0xEF
_0812D92A:
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x14
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D942:
	ldr r3, [sp, #0x02C]
	ldr r0, [r3, #0x40]
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812D982
	movs r0, #0x0B
	ldr r4, [sp, #0x034]
	adds r2, r4, #0x0
	muls r2, r0
	adds r2, #0x08
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x01
	str r0, [sp, #0x000]
	mov r5, r10
	str r5, [sp, #0x004]
	movs r0, #0xF7
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812D982:
	ldr r6, [sp, #0x05C]
	mov r8, r6
	ldr r0, [sp, #0x048]
	ldrh r0, [r0, #0x00]
	cmp r8, r0
	blt _0812D992
	movs r1, #0x00
	mov r8, r1
_0812D992:
	ldr r2, [sp, #0x060]
	str r2, [sp, #0x034]
_0812D996:
	ldr r3, [sp, #0x048]
	ldrh r0, [r3, #0x00]
	cmp r0, #0x05
	bhi _0812D9AA
	ldr r4, [sp, #0x034]
	ldrh r5, [r3, #0x00]
	cmp r4, r5
	bge _0812D9A8
	b _0812D7CE
_0812D9A8:
	b _0812DAAE
_0812D9AA:
	ldr r6, [sp, #0x034]
	cmp r6, #0x05
	bgt _0812D9B2
	b _0812D7CE
_0812D9B2:
	b _0812DAAE
_0812D9B4:
	ldr r1, [sp, #0x058]
	ldrb r0, [r1, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [sp, #0x02C]
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	subs r3, r1, r2
	mov r8, r3
	ldr r4, [sp, #0x02C]
	adds r4, #0xA8
	str r4, [sp, #0x048]
	cmp r3, #0x00
	bge _0812D9D8
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	subs r0, r0, r2
	mov r8, r0
_0812D9D8:
	movs r5, #0x00
	mov r9, r5
	b _0812DA94
_0812D9DE:
	ldr r6, [sp, #0x02C]
	ldr r0, [r6, #0x40]
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	ands r5, r0
	ldr r1, [r6, #0x58]
	mov r2, r8
	lsls r0, r2, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x0B
	mov r4, r9
	muls r4, r0
	adds r0, r4, #0x0
	adds r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	subs r0, #0x04
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x11
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	adds r4, #0x18
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r6, #0x00
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	ldr r0, _0812DAA4 @ =0x083BBDD0
	lsls r5, r5, #0x04
	adds r5, r5, r0
	movs r3, #0xE4
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	ldrb r5, [r5, #0x01]
	adds r0, r0, r5
	str r0, [sp, #0x008]
	movs r5, #0x02
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x1C
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r1, [sp, #0x02C]
	ldr r0, [r1, #0x40]
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812DA80
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0xF7
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0C
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812DA80:
	movs r2, #0x01
	add r8, r2
	ldr r3, [sp, #0x048]
	ldrh r3, [r3, #0x00]
	cmp r8, r3
	blt _0812DA90
	movs r4, #0x00
	mov r8, r4
_0812DA90:
	movs r5, #0x01
	add r9, r5
_0812DA94:
	ldr r6, [sp, #0x048]
	ldrh r0, [r6, #0x00]
	cmp r0, #0x05
	bhi _0812DAA8
	ldrh r0, [r6, #0x00]
	cmp r9, r0
	blt _0812D9DE
	b _0812DAAE
_0812DAA4: .4byte 0x083BBDD0
_0812DAA8:
	mov r1, r9
	cmp r1, #0x05
	ble _0812D9DE
_0812DAAE:
	ldr r2, _0812DB34 @ =0x03000FF4
	mov r8, r2
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldrh r1, [r0, #0x00]
	movs r0, #0x48
	str r0, [sp, #0x000]
	movs r0, #0x04
	str r0, [sp, #0x004]
	movs r6, #0x01
	negs r6, r6
	str r6, [sp, #0x008]
	movs r0, #0x07
	str r0, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r7, #0x0
	movs r3, #0xC0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r3, [sp, #0x04C]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0812DAE0
	b _0812DC5C
_0812DAE0:
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r0, [r0, #0x00]
	movs r3, #0x01
	ands r3, r0
	cmp r3, #0x00
	beq _0812DBD4
	ldr r1, [sp, #0x02C]
	adds r1, #0xC0
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	ands r0, r2
	str r1, [sp, #0x050]
	cmp r0, #0x00
	bne _0812DB00
	b _0812DD4C
_0812DB00:
	mov r4, r8
	ldr r0, [r4, #0x00]
	adds r1, r0, #0x0
	adds r1, #0xF2
	str r1, [sp, #0x024]
	adds r0, #0xBA
	add r1, sp, #0x024
	str r0, [r1, #0x04]
	movs r4, #0x7F
	adds r3, r4, #0x0
	ands r3, r2
	adds r5, r1, #0x0
	cmp r3, #0x00
	beq _0812DB38
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r1, #0xED
	lsls r1, r1, #0x01
	str r1, [sp, #0x008]
	movs r1, #0x02
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	b _0812DB70
_0812DB34: .4byte 0x03000FF4
_0812DB38:
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	ldr r2, _0812DBBC @ =0x083BE67C
	ldr r6, [sp, #0x058]
	ldrb r0, [r6, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	ldr r6, [sp, #0x02C]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	movs r2, #0xED
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
_0812DB70:
	adds r0, r7, #0x0
	movs r1, #0xC0
	movs r2, #0x2C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r3, [sp, #0x050]
	ldrb r0, [r3, #0x00]
	movs r3, #0x7F
	adds r2, r3, #0x0
	ands r2, r0
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldr r4, [sp, #0x058]
	ldrb r0, [r4, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r5, [sp, #0x02C]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ands r3, r0
	ldr r0, [r2, #0x00]
	adds r1, r0, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0812DBC0
	movs r0, #0x30
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	subs r0, #0x03
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x09
	movs r1, #0x00
	b _0812DD42
_0812DBBC: .4byte 0x083BE67C
_0812DBC0:
	ldrb r1, [r1, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	subs r0, #0x03
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x09
	b _0812DD42
_0812DBD4:
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	ldr r2, _0812DC48 @ =0x083BBDD0
	ldr r1, [sp, #0x058]
	ldrb r0, [r1, #0x00]
	movs r4, #0x7F
	adds r1, r4, #0x0
	ands r1, r0
	ldr r5, [sp, #0x02C]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x04
	adds r0, r0, r2
	movs r2, #0xE4
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ldrb r0, [r0, #0x01]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	movs r5, #0x02
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xC0
	movs r2, #0x2C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r1, [sp, #0x058]
	ldrb r0, [r1, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	ldr r3, [sp, #0x02C]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ands r4, r0
	adds r2, #0x8A
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _0812DC4C
	movs r0, #0x30
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x09
	movs r1, #0x00
	b _0812DD42
_0812DC48: .4byte 0x083BBDD0
_0812DC4C:
	ldrb r1, [r2, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x09
	b _0812DD42
_0812DC5C:
	ldr r4, [sp, #0x058]
	ldrb r0, [r4, #0x00]
	movs r1, #0x7F
	adds r3, r1, #0x0
	ands r3, r0
	ldr r5, [sp, #0x02C]
	ldr r0, [r5, #0x40]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	adds r2, r1, #0x0
	ands r2, r0
	adds r0, r5, #0x0
	adds r0, #0xAA
	adds r6, r3, #0x0
	ldrh r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r6, r1
	bcs _0812DCA0
	ldr r0, _0812DC9C @ =0x083BBDD0
	lsls r1, r2, #0x04
	adds r1, r1, r0
	movs r6, #0xE6
	lsls r6, r6, #0x01
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x02]
	adds r0, r0, r1
	str r0, [sp, #0x038]
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, #0x8A
	b _0812DD0A
	.byte 0x00, 0x00
_0812DC9C: .4byte 0x083BBDD0
_0812DCA0:
	ldr r4, [sp, #0x02C]
	adds r4, #0xAE
	cmp r1, r6
	bhi _0812DCD8
	ldrh r0, [r5, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	cmp r3, r0
	bge _0812DCD8
	cmp r1, #0x00
	beq _0812DCD8
	ldr r1, _0812DCD4 @ =0x083BE67C
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r3, #0xED
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	str r1, [sp, #0x038]
	mov r4, r8
	ldr r0, [r4, #0x00]
	adds r0, #0xF2
	b _0812DD0A
_0812DCD4: .4byte 0x083BE67C
_0812DCD8:
	ldrh r0, [r5, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	ldr r5, [sp, #0x058]
	ldrb r1, [r5, #0x00]
	movs r3, #0x7F
	ands r3, r1
	cmp r0, r3
	bgt _0812DD10
	ldr r0, [sp, #0x02C]
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r3, r0
	bcs _0812DD10
	ldr r0, [sp, #0x02C]
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812DD10
	movs r6, #0xED
	lsls r6, r6, #0x01
	str r6, [sp, #0x038]
	ldr r0, _0812DE28 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0xBA
_0812DD0A:
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x03C]
_0812DD10:
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x038]
	str r1, [sp, #0x008]
	movs r4, #0x02
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xC0
	movs r2, #0x2C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r0, #0x30
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	subs r0, #0x31
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x09
	ldr r1, [sp, #0x03C]
_0812DD42:
	adds r2, r7, #0x0
	movs r3, #0xC0
	bl sub_8121B5C
	adds r7, r0, #0x0
_0812DD4C:
	ldr r2, [sp, #0x058]
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812DE50
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812DD6E
	ldr r3, [sp, #0x04C]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0812DE5A
_0812DD6E:
	ldr r4, [sp, #0x02C]
	adds r4, #0xC2
	mov r8, r4
	ldrb r1, [r4, #0x00]
	movs r5, #0x68
	str r5, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	movs r6, #0x01
	negs r6, r6
	mov r9, r6
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x9C
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r6, #0x00
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x4C
	str r0, [sp, #0x008]
	movs r0, #0x01
	str r0, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xB3
	movs r2, #0x6D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r0, [sp, #0x02C]
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	mov r1, r8
	str r1, [sp, #0x054]
	ldr r2, [sp, #0x02C]
	adds r2, #0xB2
	mov r10, r2
	cmp r0, #0x01
	bls _0812DE06
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r5, #0x67
	str r5, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r4, #0x02
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA4
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r5, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	movs r3, #0x01
	str r3, [sp, #0x018]
	movs r1, #0xA4
	movs r2, #0x77
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812DE06:
	ldr r4, [sp, #0x04C]
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0812DE2C
	mov r5, r10
	ldrh r1, [r5, #0x00]
	ldr r6, [sp, #0x054]
	ldrb r0, [r6, #0x00]
	muls r1, r0
	movs r0, #0x68
	str r0, [sp, #0x000]
	movs r0, #0x04
	str r0, [sp, #0x004]
	mov r2, r9
	str r2, [sp, #0x008]
	str r2, [sp, #0x00C]
	b _0812DE44
_0812DE28: .4byte 0x03000FF4
_0812DE2C:
	mov r3, r10
	ldrh r1, [r3, #0x00]
	mov r4, r8
	ldrb r0, [r4, #0x00]
	muls r1, r0
	movs r5, #0x68
	str r5, [sp, #0x000]
	movs r0, #0x04
	str r0, [sp, #0x004]
	mov r6, r9
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
_0812DE44:
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0xBB
	bl sub_8121B5C
	adds r7, r0, #0x0
_0812DE50:
	ldr r1, [sp, #0x04C]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0812DE5A
	b _0812E0B8
_0812DE5A:
	ldr r0, [sp, #0x02C]
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812DE6A
	b _0812E0B8
_0812DE6A:
	ldr r2, [sp, #0x058]
	str r2, [sp, #0x040]
	ldrb r1, [r2, #0x00]
	movs r2, #0x80
	adds r0, r2, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	beq _0812DE80
	b _0812E0B8
_0812DE80:
	ldr r3, [sp, #0x02C]
	adds r3, #0xC0
	str r3, [sp, #0x044]
	ldrb r1, [r3, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0812DE92
	b _0812E074
_0812DE92:
	ldr r4, _0812DFA8 @ =0x03000FF4
	ldr r3, [r4, #0x00]
	ldr r6, [sp, #0x02C]
	adds r6, #0xC1
	mov r9, r6
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	add r1, sp, #0x020
	strb r0, [r1, #0x00]
	ldrb r2, [r6, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r3, r3, r0
	adds r3, #0x31
	ldrb r2, [r3, #0x00]
	mov r0, sp
	adds r0, #0x21
	strb r2, [r0, #0x00]
	add r0, sp, #0x01C
	movs r2, #0x02
	bl memcpy
	ldr r1, [sp, #0x044]
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	mov r10, r2
	mov r8, r10
	mov r3, r8
	ands r3, r0
	mov r8, r3
	cmp r3, #0x00
	bne _0812DFAC
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0xC0
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r5, #0x01
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xD8
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	mov r6, r8
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x70
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r0, _0812DFA8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x12]
	movs r6, #0x64
	str r6, [sp, #0x000]
	movs r5, #0x03
	str r5, [sp, #0x004]
	subs r4, #0x03
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x28
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _0812DFA8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x24]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x90
	bl sub_8121B5C
	adds r7, r0, #0x0
	mov r4, r9
	ldrb r1, [r4, #0x00]
	ldr r5, [sp, #0x044]
	ldrb r2, [r5, #0x00]
	mov r0, r10
	ands r0, r2
	add r0, sp
	adds r0, #0x1C
	ldrb r2, [r0, #0x00]
	ldr r6, [sp, #0x040]
	ldrb r0, [r6, #0x00]
	mov r3, r10
	ands r3, r0
	ldr r4, [sp, #0x02C]
	ldr r0, [r4, #0x40]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	mov r3, r10
	ands r3, r0
	movs r5, #0x01
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_8122330
	b _0812E072
	.byte 0x00, 0x00
_0812DFA8: .4byte 0x03000FF4
_0812DFAC:
	mov r6, r8
	cmp r6, #0x01
	bne _0812E074
	str r6, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0xC8
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xD0
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x70
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r0, _0812E0CC @ =0x03000FF4
	ldr r2, [r0, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x18]
	movs r6, #0x64
	str r6, [sp, #0x000]
	movs r5, #0x03
	str r5, [sp, #0x004]
	subs r4, #0x03
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x28
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r0, _0812E0CC @ =0x03000FF4
	ldr r2, [r0, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x1C]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x90
	bl sub_8121B5C
	adds r7, r0, #0x0
	mov r4, r9
	ldrb r1, [r4, #0x00]
	ldr r5, [sp, #0x044]
	ldrb r2, [r5, #0x00]
	mov r0, r10
	ands r0, r2
	add r0, sp
	adds r0, #0x1C
	ldrb r2, [r0, #0x00]
	ldr r6, [sp, #0x058]
	ldrb r0, [r6, #0x00]
	mov r3, r10
	ands r3, r0
	ldr r4, [sp, #0x02C]
	ldr r0, [r4, #0x40]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	mov r3, r10
	ands r3, r0
	mov r5, r8
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_8122618
_0812E072:
	adds r7, r0, #0x0
_0812E074:
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r5, #0x01
	str r5, [sp, #0x004]
	movs r0, #0xA7
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x1C
	movs r2, #0x46
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0xA9
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x6C
	movs r2, #0x46
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0812E0B8:
	adds r0, r7, #0x0
	add sp, #0x064
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812E0CC: .4byte 0x03000FF4
