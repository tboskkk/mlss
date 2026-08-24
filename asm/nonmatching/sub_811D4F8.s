	.syntax unified
	.text

	thumb_func_start sub_811D4F8
sub_811D4F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x050
	mov r10, r0
	adds r7, r1, #0x0
	ldr r0, _0811D5AC @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldr r4, _0811D5B0 @ =0x0000019F
	add r4, r10
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	add r1, sp, #0x020
	strb r0, [r1, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r3, r0
	adds r0, #0x31
	ldrb r2, [r0, #0x00]
	mov r0, sp
	adds r0, #0x21
	strb r2, [r0, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r3, r3, r0
	adds r3, #0x33
	ldrb r2, [r3, #0x00]
	mov r0, sp
	adds r0, #0x22
	strb r2, [r0, #0x00]
	add r0, sp, #0x01C
	movs r2, #0x03
	bl memcpy
	add r1, sp, #0x024
	mov r3, r10
	adds r3, #0xDE
	str r3, [sp, #0x024]
	movs r0, #0x86
	lsls r0, r0, #0x01
	add r0, r10
	str r0, [r1, #0x04]
	movs r0, #0x9C
	lsls r0, r0, #0x01
	add r0, r10
	str r0, [r1, #0x08]
	movs r0, #0xD3
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0811D5FC
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	cmp r1, #0x00
	bne _0811D5B8
	ldr r2, _0811D5B4 @ =0x083BE67C
	movs r0, #0xD2
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	adds r0, r3, r0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	movs r2, #0xED
	lsls r2, r2, #0x01
	adds r1, r2, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	adds r5, r1, #0x0
	b _0811D5CA
	.byte 0x00, 0x00
_0811D5AC: .4byte 0x03000FF4
_0811D5B0: .4byte 0x0000019F
_0811D5B4: .4byte 0x083BE67C
_0811D5B8:
	cmp r1, #0x01
	bne _0811D5C2
	movs r5, #0xED
	lsls r5, r5, #0x01
	b _0811D5CA
_0811D5C2:
	cmp r1, #0x02
	bne _0811D5CA
	movs r5, #0xEF
	lsls r5, r5, #0x01
_0811D5CA:
	movs r0, #0xD4
	lsls r0, r0, #0x01
	add r0, r10
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	movs r0, #0xD6
	lsls r0, r0, #0x01
	add r0, r10
	ldr r2, [r0, #0x00]
	lsls r2, r2, #0x08
	asrs r2, r2, #0x10
	movs r3, #0x00
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	bl sub_8122A20
	adds r7, r0, #0x0
_0811D5FC:
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	cmp r1, #0x01
	beq _0811D660
	cmp r1, #0x01
	bgt _0811D616
	cmp r1, #0x00
	beq _0811D61C
	b _0811D6DC
_0811D616:
	cmp r1, #0x02
	beq _0811D6A4
	b _0811D6DC
_0811D61C:
	ldr r0, _0811D640 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldr r0, _0811D644 @ =0x0000019F
	add r0, r10
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r1, r2, #0x0
	adds r1, #0x32
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0811D648
	movs r3, #0xFF
	str r3, [sp, #0x030]
	movs r0, #0xFF
	b _0811D6DA
_0811D640: .4byte 0x03000FF4
_0811D644: .4byte 0x0000019F
_0811D648:
	ldr r2, _0811D65C @ =0x083BE67C
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x06]
	str r1, [sp, #0x030]
	ldrb r0, [r0, #0x0A]
	b _0811D6DA
_0811D65C: .4byte 0x083BE67C
_0811D660:
	ldr r0, _0811D684 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldr r0, _0811D688 @ =0x0000019F
	add r0, r10
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r1, r2, #0x0
	adds r1, #0x31
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0811D68C
	movs r2, #0xFF
	str r2, [sp, #0x030]
	b _0811D6C2
	.byte 0x00, 0x00
_0811D684: .4byte 0x03000FF4
_0811D688: .4byte 0x0000019F
_0811D68C:
	ldr r2, _0811D6A0 @ =0x083BD844
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x06]
	str r1, [sp, #0x030]
	ldrb r0, [r0, #0x0A]
	b _0811D6DA
_0811D6A0: .4byte 0x083BD844
_0811D6A4:
	movs r2, #0xFF
	str r2, [sp, #0x030]
	ldr r0, _0811D6C8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldr r0, _0811D6CC @ =0x0000019F
	add r0, r10
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x33
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _0811D6D0
_0811D6C2:
	movs r3, #0xFF
	str r3, [sp, #0x034]
	b _0811D6DC
_0811D6C8: .4byte 0x03000FF4
_0811D6CC: .4byte 0x0000019F
_0811D6D0:
	ldr r1, _0811D718 @ =0x083BEBB8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrb r0, [r0, #0x04]
_0811D6DA:
	str r0, [sp, #0x034]
_0811D6DC:
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r2, [r0, #0x00]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	beq _0811D71C
	movs r0, #0x02
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r1, #0x7F
	ands r1, r2
	lsls r1, r1, #0x13
	movs r2, #0x98
	lsls r2, r2, #0x12
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x60
	movs r2, #0x00
	b _0811D7EC
_0811D718: .4byte 0x083BEBB8
_0811D71C:
	ldr r3, _0811D830 @ =0x03000FC0
	mov r8, r3
	ldr r0, [r3, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	mov r9, r1
	add r0, r9
	movs r1, #0x00
	ldr r2, _0811D834 @ =0x00000222
	bl sub_80E98C0
	adds r4, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	add r0, r9
	movs r5, #0x88
	lsls r5, r5, #0x02
	movs r1, #0x00
	adds r2, r5, #0x0
	bl sub_80E98C0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x15
	movs r2, #0x20
	subs r2, r2, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	subs r2, r2, r0
	movs r4, #0x02
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x98
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x60
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r3, r8
	ldr r0, [r3, #0x00]
	add r0, r9
	movs r1, #0x00
	adds r2, r5, #0x0
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811D7C0
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r1, #0x00
	ldr r2, _0811D834 @ =0x00000222
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x14
	movs r2, #0x30
	subs r2, r2, r0
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x9A
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x60
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811D7C0:
	mov r3, r8
	ldr r0, [r3, #0x00]
	add r0, r9
	movs r1, #0x00
	ldr r2, _0811D834 @ =0x00000222
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811D7F4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x9C
	lsls r0, r0, #0x02
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x60
	movs r2, #0x38
_0811D7EC:
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811D7F4:
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r2, [r0, #0x00]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _0811D80A
	b _0811DC90
_0811D80A:
	movs r0, #0xD2
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r5, [r0, #0x00]
	ldr r0, _0811D838 @ =0x000001A5
	add r0, r10
	ldrb r4, [r0, #0x00]
	adds r3, r5, r4
	movs r1, #0x7F
	ands r1, r2
	ldr r0, _0811D83C @ =0x000001A1
	add r0, r10
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bge _0811D840
	mov r9, r3
	b _0811D846
	.byte 0x00, 0x00
_0811D830: .4byte 0x03000FC0
_0811D834: .4byte 0x00000222
_0811D838: .4byte 0x000001A5
_0811D83C: .4byte 0x000001A1
_0811D840:
	subs r0, r0, r5
	subs r4, r4, r0
	mov r9, r4
_0811D846:
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	mov r8, r1
	ands r1, r0
	ldr r0, _0811D8B4 @ =0x000001A1
	add r0, r10
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bls _0811D8A2
	movs r0, #0x00
	movs r4, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r6, #0x67
	str r6, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r5, #0x02
	str r5, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x98
	movs r2, #0x0F
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r0, #0x01
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r6, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r4, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x98
	movs r2, #0x59
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811D8A2:
	movs r2, #0x00
	str r2, [sp, #0x038]
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r1, [r0, #0x00]
	mov r0, r8
	b _0811DA64
	.byte 0x00, 0x00
_0811D8B4: .4byte 0x000001A1
_0811D8B8:
	ldr r3, [sp, #0x038]
	cmp r3, #0x05
	ble _0811D8C0
	b _0811DA7C
_0811D8C0:
	movs r0, #0x00
	mov r8, r0
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	cmp r1, #0x00
	bne _0811D926
	ldr r1, _0811D914 @ =0x083BE67C
	mov r0, r10
	adds r0, #0xDE
	add r0, r9
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r0, r1
	movs r3, #0xED
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	str r1, [sp, #0x03C]
	ldr r0, _0811D918 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x32
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bne _0811D91C
	adds r0, #0x6E
	movs r1, #0x01
	mov r8, r1
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bne _0811D9A2
	movs r2, #0x03
	mov r8, r2
	b _0811D9A2
	.byte 0x00, 0x00
_0811D914: .4byte 0x083BE67C
_0811D918: .4byte 0x03000FF4
_0811D91C:
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	bne _0811D9A2
	b _0811D99E
_0811D926:
	cmp r1, #0x01
	bne _0811D95C
	movs r0, #0xED
	lsls r0, r0, #0x01
	str r0, [sp, #0x03C]
	movs r1, #0x86
	lsls r1, r1, #0x01
	add r1, r10
	add r1, r9
	ldr r0, _0811D954 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x31
	ldrb r1, [r1, #0x00]
	ldrb r2, [r2, #0x00]
	cmp r1, r2
	bne _0811D958
	adds r0, #0x6D
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _0811D986
	b _0811D990
	.byte 0x00, 0x00
_0811D954: .4byte 0x03000FF4
_0811D958:
	adds r0, #0x6D
	b _0811D998
_0811D95C:
	cmp r1, #0x02
	bne _0811D9A2
	movs r0, #0xEF
	lsls r0, r0, #0x01
	str r0, [sp, #0x03C]
	movs r1, #0x9C
	lsls r1, r1, #0x01
	add r1, r10
	add r1, r9
	ldr r0, _0811D98C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x33
	ldrb r1, [r1, #0x00]
	ldrb r2, [r2, #0x00]
	cmp r1, r2
	bne _0811D996
	adds r0, #0x6F
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0811D990
_0811D986:
	movs r1, #0x03
	mov r8, r1
	b _0811D9A2
_0811D98C: .4byte 0x03000FF4
_0811D990:
	movs r2, #0x01
	mov r8, r2
	b _0811D9A2
_0811D996:
	adds r0, #0x6F
_0811D998:
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0811D9A2
_0811D99E:
	movs r3, #0x02
	mov r8, r3
_0811D9A2:
	movs r0, #0x0B
	ldr r1, [sp, #0x038]
	muls r0, r1
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r2, [sp, #0x03C]
	str r2, [sp, #0x008]
	movs r5, #0x02
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x64
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r3, r8
	cmp r3, #0x03
	bne _0811DA08
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	ldr r1, [sp, #0x038]
	adds r1, #0x01
	str r1, [sp, #0x04C]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xF0
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x56
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xF1
	b _0811DA20
_0811DA08:
	movs r2, #0x01
	negs r2, r2
	add r9, r2
	ldr r3, [sp, #0x038]
	adds r3, #0x01
	str r3, [sp, #0x04C]
	mov r0, r8
	cmp r0, #0x00
	beq _0811DA38
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, #0xEF
_0811DA20:
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x5C
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811DA38:
	mov r1, r9
	cmp r1, #0x00
	bge _0811DA56
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, _0811DB64 @ =0x000001A1
	add r0, r10
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	mov r9, r0
_0811DA56:
	ldr r2, [sp, #0x04C]
	str r2, [sp, #0x038]
	movs r0, #0xCF
	lsls r0, r0, #0x01
	add r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
_0811DA64:
	ands r0, r1
	ldr r1, _0811DB64 @ =0x000001A1
	add r1, r10
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	bls _0811DA74
	b _0811D8B8
_0811DA74:
	ldrb r1, [r1, #0x00]
	cmp r2, r1
	bge _0811DA7C
	b _0811D8C0
_0811DA7C:
	movs r3, #0xCF
	lsls r3, r3, #0x01
	add r3, r10
	str r3, [sp, #0x040]
	ldrb r0, [r3, #0x00]
	movs r1, #0x7F
	mov r9, r1
	mov r2, r9
	ands r2, r0
	mov r9, r2
	cmp r2, #0x00
	bne _0811DB70
	movs r5, #0x01
	str r5, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0xC0
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r2, [sp, #0x014]
	str r2, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xD8
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	mov r3, r9
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x70
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r0, _0811DB68 @ =0x03000FF4
	mov r8, r0
	ldr r2, [r0, #0x00]
	ldr r1, _0811DB6C @ =0x0000019F
	add r1, r10
	str r1, [sp, #0x044]
	ldrb r1, [r1, #0x00]
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
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r0, [sp, #0x044]
	ldrb r1, [r0, #0x00]
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
	ldr r2, [sp, #0x044]
	ldrb r1, [r2, #0x00]
	ldr r3, [sp, #0x040]
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r2
	mov r2, sp
	adds r2, r2, r0
	adds r2, #0x1C
	ldrb r2, [r2, #0x00]
	lsls r0, r0, #0x02
	add r0, sp
	adds r0, #0x24
	movs r3, #0xD2
	lsls r3, r3, #0x01
	add r3, r10
	ldrb r3, [r3, #0x00]
	ldr r0, [r0, #0x00]
	adds r0, r0, r3
	ldrb r3, [r0, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_8122330
	b _0811DDF2
	.byte 0x00, 0x00
_0811DB64: .4byte 0x000001A1
_0811DB68: .4byte 0x03000FF4
_0811DB6C: .4byte 0x0000019F
_0811DB70:
	mov r1, r9
	cmp r1, #0x01
	bne _0811DC50
	str r1, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0xC8
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	movs r5, #0x00
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	mov r2, r9
	str r2, [sp, #0x000]
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
	ldr r3, _0811DC48 @ =0x03000FF4
	mov r9, r3
	ldr r2, [r3, #0x00]
	ldr r0, _0811DC4C @ =0x0000019F
	add r0, r10
	str r0, [sp, #0x048]
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x18]
	movs r2, #0x64
	mov r8, r2
	str r2, [sp, #0x000]
	movs r6, #0x03
	str r6, [sp, #0x004]
	subs r4, #0x03
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x28
	bl sub_8121B5C
	adds r7, r0, #0x0
	mov r3, r9
	ldr r2, [r3, #0x00]
	ldr r0, [sp, #0x048]
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x1C]
	mov r2, r8
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x90
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r3, [sp, #0x048]
	ldrb r1, [r3, #0x00]
	ldr r0, [sp, #0x040]
	ldrb r2, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r2
	mov r2, sp
	adds r2, r2, r0
	adds r2, #0x1C
	ldrb r2, [r2, #0x00]
	lsls r0, r0, #0x02
	add r0, sp
	adds r0, #0x24
	movs r3, #0xD2
	lsls r3, r3, #0x01
	add r3, r10
	ldrb r3, [r3, #0x00]
	ldr r0, [r0, #0x00]
	adds r0, r0, r3
	ldrb r3, [r0, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_8122618
	b _0811DDF2
	.byte 0x00, 0x00
_0811DC48: .4byte 0x03000FF4
_0811DC4C: .4byte 0x0000019F
_0811DC50:
	mov r1, sp
	add r1, r9
	adds r1, #0x1C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _0811DC5E
	b _0811DDF4
_0811DC5E:
	ldr r3, _0811DC8C @ =0x083BEBB8
	lsls r0, r0, #0x03
	adds r0, r0, r3
	ldrb r1, [r0, #0x04]
	mov r2, r9
	lsls r0, r2, #0x02
	add r0, sp
	adds r0, #0x24
	movs r2, #0xD2
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r2, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r3
	ldrb r2, [r0, #0x04]
	adds r0, r7, #0x0
	bl sub_812290C
	b _0811DDF2
	.byte 0x00, 0x00
_0811DC8C: .4byte 0x083BEBB8
_0811DC90:
	lsls r0, r2, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _0811DD28
	movs r5, #0x01
	str r5, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0xC0
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xD8
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x70
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r3, _0811DD20 @ =0x03000FF4
	mov r8, r3
	ldr r2, [r3, #0x00]
	ldr r0, _0811DD24 @ =0x0000019F
	add r0, r10
	mov r9, r0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x10]
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
	mov r1, r8
	ldr r2, [r1, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x22]
	b _0811DDAE
	.byte 0x00, 0x00
_0811DD20: .4byte 0x03000FF4
_0811DD24: .4byte 0x0000019F
_0811DD28:
	cmp r5, #0x01
	bne _0811DDC2
	str r5, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0xC8
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x08
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0xD0
	str r0, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x70
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r0, _0811DE08 @ =0x03000FF4
	mov r8, r0
	ldr r2, [r0, #0x00]
	ldr r1, _0811DE0C @ =0x0000019F
	add r1, r10
	mov r9, r1
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x16]
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
	mov r3, r8
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x1A]
_0811DDAE:
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x09
	adds r2, r7, #0x0
	movs r3, #0x90
	bl sub_8121B5C
	adds r7, r0, #0x0
_0811DDC2:
	ldr r1, [sp, #0x030]
	cmp r1, #0x63
	bls _0811DDDC
	cmp r1, #0xFF
	beq _0811DDDC
	ldr r0, _0811DE0C @ =0x0000019F
	add r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	ldr r2, [sp, #0x030]
	bl sub_8122248
	adds r7, r0, #0x0
_0811DDDC:
	ldr r2, [sp, #0x034]
	cmp r2, #0x63
	bls _0811DDF4
	cmp r2, #0xFF
	beq _0811DDF4
	ldr r0, _0811DE0C @ =0x0000019F
	add r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8122248
_0811DDF2:
	adds r7, r0, #0x0
_0811DDF4:
	adds r0, r7, #0x0
	add sp, #0x050
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811DE08: .4byte 0x03000FF4
_0811DE0C: .4byte 0x0000019F
