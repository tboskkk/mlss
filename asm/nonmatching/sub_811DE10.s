	.syntax unified
	.text

	thumb_func_start sub_811DE10
sub_811DE10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x01C]
	adds r7, r1, #0x0
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r0, #0x02
	mov r10, r0
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	movs r2, #0x05
	mov r8, r2
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x10
	movs r2, #0x80
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	movs r0, #0x68
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	mov r2, r8
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x18
	movs r2, #0x8D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r5, _0811E250 @ =0x03000FC0
	ldr r0, [r5, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	mov r9, r3
	add r0, r9
	ldr r2, _0811E254 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811DEFC
	ldr r0, [r5, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x81
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	adds r4, r0, #0x0
	ldr r0, [r5, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, _0811E258 @ =0x00000205
	movs r1, #0x00
	bl sub_80E98C0
	adds r0, #0x05
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r6, [sp, #0x000]
	mov r3, r10
	str r3, [sp, #0x004]
	movs r0, #0xF8
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	str r3, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x30
	movs r2, #0x80
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r1, #0x68
	str r1, [sp, #0x008]
	mov r2, r10
	str r2, [sp, #0x00C]
	mov r3, r8
	str r3, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x38
	movs r2, #0x8D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811DEFC:
	ldr r0, [r5, #0x00]
	add r0, r9
	ldr r1, [sp, #0x01C]
	movs r2, #0xDE
	lsls r2, r2, #0x01
	adds r1, r1, r2
	mov r9, r1
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r2, r3, #0x0
	ldrb r1, [r1, #0x00]
	adds r2, r2, r1
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811DF72
	str r6, [sp, #0x000]
	mov r2, r10
	str r2, [sp, #0x004]
	mov r3, r9
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x14
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r2, [sp, #0x00C]
	mov r2, r8
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x50
	movs r2, #0x80
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	movs r3, #0x01
	str r3, [sp, #0x004]
	movs r0, #0x68
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	mov r2, r8
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x58
	movs r2, #0x8D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811DF72:
	ldr r4, _0811E25C @ =0x03000FF4
	ldr r1, [r4, #0x00]
	mov r3, r9
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, #0x30
	ldrb r1, [r1, #0x00]
	movs r0, #0x18
	mov r8, r0
	str r0, [sp, #0x000]
	mov r2, r10
	str r2, [sp, #0x004]
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0x90
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x0E]
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0x68
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x12]
	movs r0, #0x2C
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x49
	str r1, [sp, #0x008]
	movs r2, #0x01
	str r2, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	movs r1, #0x80
	movs r2, #0x32
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r3, #0x01
	str r3, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	movs r0, #0xC0
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x48
	movs r2, #0x28
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x14]
	movs r0, #0x40
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0x68
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x18]
	movs r0, #0x44
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0x88
	bl sub_8121B5C
	adds r7, r0, #0x0
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x49
	str r1, [sp, #0x008]
	movs r2, #0x01
	str r2, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	movs r1, #0x80
	movs r2, #0x4A
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r3, #0x01
	str r3, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	movs r0, #0xC8
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x48
	movs r2, #0x40
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x1C]
	mov r0, r8
	str r0, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r3, #0x01
	str r3, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	movs r0, #0xD0
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA8
	movs r2, #0x18
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x24]
	movs r0, #0x28
	str r0, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r3, #0x01
	str r3, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	movs r0, #0xD8
	str r0, [sp, #0x008]
	mov r1, r10
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA8
	movs r2, #0x28
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x20]
	movs r0, #0x38
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r1, #0x01
	str r1, [sp, #0x000]
	mov r2, r10
	str r2, [sp, #0x004]
	movs r0, #0xE0
	str r0, [sp, #0x008]
	str r2, [sp, #0x00C]
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA8
	movs r2, #0x38
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r1, [r2, #0x28]
	movs r0, #0x48
	str r0, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x08
	adds r2, r7, #0x0
	movs r3, #0xC8
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r1, #0x01
	str r1, [sp, #0x000]
	mov r2, r10
	str r2, [sp, #0x004]
	movs r0, #0xE8
	str r0, [sp, #0x008]
	str r2, [sp, #0x00C]
	str r2, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0xA8
	movs r2, #0x48
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r2, [r4, #0x00]
	mov r3, r9
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldr r1, [r2, #0x04]
	lsls r1, r1, #0x08
	lsrs r1, r1, #0x08
	movs r0, #0x68
	str r0, [sp, #0x000]
	movs r2, #0x06
	str r2, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r7, #0x0
	movs r3, #0xB0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r1, [r4, #0x00]
	mov r3, r9
	ldrb r4, [r3, #0x00]
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	adds r1, r1, r0
	mov r8, r1
	adds r1, #0x30
	ldrb r0, [r1, #0x00]
	cmp r0, #0x63
	bne _0811E26C
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x4D
	str r0, [sp, #0x008]
	mov r0, r10
	str r0, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r6, [sp, #0x014]
	str r6, [sp, #0x018]
	adds r0, r7, #0x0
	b _0811E260
	.byte 0x00, 0x00
_0811E250: .4byte 0x03000FC0
_0811E254: .4byte 0x00000203
_0811E258: .4byte 0x00000205
_0811E25C: .4byte 0x03000FF4
_0811E260:
	movs r1, #0xD8
	movs r2, #0x8A
	movs r3, #0x00
	bl sub_8122A20
	b _0811E2AC
_0811E26C:
	ldr r3, _0811E400 @ =0x083BAEAC
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	lsls r2, r0, #0x01
	adds r2, r2, r0
	lsls r0, r4, #0x03
	adds r0, r0, r4
	lsls r1, r0, #0x05
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrh r2, [r0, #0x06]
	ldrb r1, [r0, #0x08]
	lsls r1, r1, #0x10
	orrs r1, r2
	mov r2, r8
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x08
	subs r1, r1, r0
	movs r0, #0x80
	str r0, [sp, #0x000]
	movs r3, #0x06
	str r3, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r7, #0x0
	movs r3, #0xB0
	bl sub_8121B5C
_0811E2AC:
	adds r7, r0, #0x0
	ldr r0, _0811E404 @ =0x03000FF4
	mov r10, r0
	ldr r1, [r0, #0x00]
	ldr r2, [sp, #0x01C]
	movs r3, #0xDE
	lsls r3, r3, #0x01
	adds r2, r2, r3
	mov r9, r2
	ldrb r2, [r2, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, #0x32
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0811E358
	ldr r0, _0811E408 @ =0x03000FC0
	mov r8, r0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0811E40C @ =0x00000222
	movs r1, #0x00
	bl sub_80E98C0
	adds r4, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r2, #0x88
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r1, r4, #0x01
	adds r1, r1, r4
	lsls r1, r1, #0x01
	movs r2, #0x6C
	subs r2, r2, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0x02
	adds r1, r1, r0
	subs r2, r2, r1
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r6, _0811E410 @ =0x083BE67C
	mov r0, r10
	ldr r1, [r0, #0x00]
	mov r0, r9
	ldrb r3, [r0, #0x00]
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, #0x32
	ldrb r1, [r1, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r6
	movs r3, #0xED
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	ldrb r0, [r0, #0x11]
	adds r1, r1, r0
	str r1, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811E358:
	mov r0, r10
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, #0x31
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0811E3B2
	ldr r0, _0811E408 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0811E40C @ =0x00000222
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x01
	movs r2, #0x72
	subs r2, r2, r1
	movs r1, #0x00
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r0, #0xED
	lsls r0, r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811E3B2:
	mov r2, r10
	ldr r1, [r2, #0x00]
	mov r3, r9
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r1, #0x33
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0811E3EE
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r1, #0xEF
	lsls r1, r1, #0x01
	str r1, [sp, #0x008]
	movs r1, #0x02
	str r1, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x0D
	movs r2, #0x77
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811E3EE:
	adds r0, r7, #0x0
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0811E400: .4byte dword_83BAEAC @ =0x083BAEAC
_0811E404: .4byte 0x03000FF4
_0811E408: .4byte 0x03000FC0
_0811E40C: .4byte 0x00000222
_0811E410: .4byte byte_83BE67C @ =0x083BE67C
