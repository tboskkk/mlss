	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r7, r5, #0x0
	adds r7, #0xC4
	ldrb r2, [r7, #0x00]
	movs r4, #0x80
	adds r0, r4, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0812B9C0
	b _0812BD80
_0812B9C0:
	ldr r0, [r5, #0x3C]
	ldrh r1, [r0, #0x02]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812B9CE
	b _0812BCDE
_0812B9CE:
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrh r0, [r1, #0x00]
	str r0, [sp, #0x00C]
	movs r3, #0x00
	str r3, [sp, #0x010]
	movs r4, #0x7F
	mov r12, r4
	ands r4, r2
	adds r0, r5, #0x0
	adds r0, #0xAA
	adds r6, r4, #0x0
	ldrh r2, [r0, #0x00]
	mov r8, r1
	mov r9, r0
	cmp r6, r2
	bcs _0812BA34
	ldr r3, _0812BA30 @ =0x03000FF4
	ldr r2, [r3, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	adds r2, #0x8A
	ldrb r0, [r0, #0x00]
	adds r2, r2, r0
	adds r4, r5, #0x0
	adds r4, #0xC2
	ldrb r0, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	subs r0, r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldrb r1, [r7, #0x00]
	mov r0, r12
	ands r0, r1
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	adds r2, #0x8A
	ldrb r1, [r1, #0x00]
	adds r2, r2, r1
	ldrb r0, [r2, #0x00]
	mov r12, r3
	mov r10, r4
	cmp r0, #0x00
	beq _0812BA28
	b _0812BB8C
_0812BA28:
	movs r0, #0x01
	str r0, [sp, #0x010]
	b _0812BB8C
	.byte 0x00, 0x00
_0812BA30: .4byte 0x03000FF4
_0812BA34:
	adds r3, r5, #0x0
	adds r3, #0xAE
	cmp r2, r6
	bhi _0812BAD8
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r0, r1
	cmp r4, r0
	bge _0812BAD8
	cmp r1, #0x00
	beq _0812BAD8
	ldr r3, _0812BAD4 @ =0x03000FF4
	ldr r2, [r3, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	adds r2, #0xF2
	ldrb r0, [r0, #0x00]
	adds r2, r2, r0
	adds r4, r5, #0x0
	adds r4, #0xC2
	ldrb r0, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	subs r0, r0, r1
	strb r0, [r2, #0x00]
	ldr r6, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	mov r1, r12
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xF2
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r12, r3
	mov r10, r4
	cmp r0, #0x00
	beq _0812BACE
	cmp r0, #0x02
	bne _0812BA9A
	adds r0, r6, #0x0
	adds r0, #0x32
	ldrb r2, [r0, #0x00]
	cmp r2, r1
	bne _0812BA9A
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	beq _0812BACE
_0812BA9A:
	mov r3, r12
	ldr r2, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xF2
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0812BB8C
	adds r0, r2, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _0812BACE
	adds r0, r2, #0x0
	adds r0, #0x6E
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	bne _0812BB8C
_0812BACE:
	movs r4, #0x02
	str r4, [sp, #0x010]
	b _0812BB8C
_0812BAD4: .4byte 0x03000FF4
_0812BAD8:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r1, r1, r0
	adds r2, r5, #0x0
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	movs r4, #0x7F
	adds r3, r4, #0x0
	ands r3, r0
	adds r7, r2, #0x0
	ldr r2, _0812BC60 @ =0x03000FF4
	mov r12, r2
	movs r0, #0xC2
	adds r0, r0, r5
	mov r10, r0
	cmp r1, r3
	bgt _0812BB8C
	mov r1, r8
	ldrh r1, [r1, #0x00]
	cmp r3, r1
	bcs _0812BB8C
	adds r0, r5, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812BB8C
	mov r0, r12
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r3
	adds r2, #0xBA
	ldrb r0, [r0, #0x00]
	adds r2, r2, r0
	ldrb r0, [r2, #0x00]
	mov r3, r10
	ldrb r1, [r3, #0x00]
	subs r0, r0, r1
	strb r0, [r2, #0x00]
	mov r0, r12
	ldr r6, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xBA
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812BB88
	cmp r0, #0x02
	bne _0812BB58
	adds r0, r6, #0x0
	adds r0, #0x31
	ldrb r2, [r0, #0x00]
	cmp r2, r1
	bne _0812BB58
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	beq _0812BB88
_0812BB58:
	mov r1, r12
	ldr r2, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xBA
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0812BB8C
	adds r0, r2, #0x0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _0812BB88
	adds r0, r2, #0x0
	adds r0, #0x6D
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	bne _0812BB8C
_0812BB88:
	movs r2, #0x03
	str r2, [sp, #0x010]
_0812BB8C:
	mov r3, r12
	ldr r0, [r3, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x88
	adds r3, r5, #0x0
	adds r3, #0xB2
	mov r4, r10
	ldrb r1, [r4, #0x00]
	ldrh r0, [r3, #0x00]
	adds r4, r0, #0x0
	muls r4, r1
	adds r0, r4, #0x0
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0812BC64 @ =0x0000270F
	cmp r0, r1
	bls _0812BBB6
	strh r1, [r2, #0x00]
_0812BBB6:
	movs r0, #0x00
	strh r0, [r3, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x67
	bl play_sfx_80195B4
	ldr r2, [sp, #0x010]
	cmp r2, #0x00
	beq _0812BC4E
	mov r3, r9
	str r3, [sp, #0x000]
	adds r0, r5, #0x0
	adds r0, #0xAE
	str r0, [sp, #0x004]
	subs r0, #0x02
	str r0, [sp, #0x008]
	adds r0, #0x18
	ldrb r0, [r0, #0x00]
	movs r3, #0x7F
	ands r3, r0
	mov r6, r8
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	adds r7, r2, #0x0
	subs r7, #0x01
	cmp r3, r0
	bge _0812BC12
_0812BBEE:
	ldr r0, [r5, #0x40]
	adds r0, r0, r3
	ldrb r1, [r0, #0x01]
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x54]
	lsls r2, r3, #0x01
	adds r1, r2, r1
	ldrh r0, [r1, #0x02]
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x58]
	adds r2, r2, r0
	ldrh r0, [r2, #0x02]
	strh r0, [r2, #0x00]
	adds r3, #0x01
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	cmp r3, r0
	blt _0812BBEE
_0812BC12:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	ldr r1, [r5, #0x40]
	adds r0, r0, r1
	subs r0, #0x01
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r1, [r5, #0x54]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	subs r0, #0x02
	ldr r1, _0812BC68 @ =0x0000FFFF
	adds r2, r1, #0x0
	strh r2, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r1, [r5, #0x58]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	subs r0, #0x02
	strh r2, [r0, #0x00]
	lsls r0, r7, #0x02
	add r0, sp
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
_0812BC4E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0812BC6C
	ldr r0, [r5, #0x2C]
	bl sprite_hide_8021F20
	movs r0, #0x02
	b _0812BFA2
_0812BC60: .4byte 0x03000FF4
_0812BC64: .4byte 0x0000270F
_0812BC68: .4byte 0x0000FFFF
_0812BC6C:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x07
	bne _0812BC86
	cmp r0, #0x06
	bne _0812BC86
	adds r0, r5, #0x0
	adds r0, #0xC4
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r4, r0, #0x0
	b _0812BCBC
_0812BC86:
	adds r2, r5, #0x0
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	movs r1, #0x7F
	ands r1, r0
	strb r1, [r2, #0x00]
	mov r4, r8
	ldrh r1, [r4, #0x00]
	subs r0, r1, #0x1
	adds r4, r5, #0x0
	adds r4, #0xC5
	ldrb r3, [r2, #0x00]
	cmp r0, r3
	bge _0812BCBC
	adds r1, r0, #0x0
	strb r1, [r2, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	cmp r0, #0x05
	bgt _0812BCBC
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	ldrb r3, [r4, #0x00]
	cmp r0, r3
	bcs _0812BCBC
	strb r1, [r4, #0x00]
_0812BCBC:
	movs r2, #0x01
	mov r0, r10
	strb r2, [r0, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r3, [r5, #0x2C]
	ldrb r1, [r4, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r3, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xB8
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
_0812BCDE:
	ldr r2, [r5, #0x3C]
	ldrh r1, [r2, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812BD2A
	adds r2, r5, #0x0
	adds r2, #0xC4
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xC2
	movs r2, #0x01
	strb r2, [r0, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r3, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r3, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xB8
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	b _0812BFA0
_0812BD2A:
	ldrh r1, [r2, #0x06]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0812BD52
	adds r2, r5, #0x0
	adds r2, #0xC2
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xC3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bls _0812BD74
	movs r0, #0x01
	strb r0, [r2, #0x00]
	b _0812BD74
_0812BD52:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812BD5C
	b _0812BFA0
_0812BD5C:
	adds r1, r5, #0x0
	adds r1, #0xC2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0812BD74
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
_0812BD74:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	b _0812BFA0
_0812BD80:
	ldr r3, [r5, #0x3C]
	ldrh r1, [r3, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812BD9A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	movs r0, #0x02
	b _0812BFA2
_0812BD9A:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812BDA4
	b _0812BED4
_0812BDA4:
	adds r1, r5, #0x0
	adds r1, #0xC2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldrb r4, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAA
	adds r2, r4, #0x0
	ldrh r1, [r0, #0x00]
	mov r9, r0
	cmp r2, r1
	bcs _0812BDD8
	ldr r0, _0812BDD4 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r4
	adds r1, #0x8A
	ldrb r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xC3
	strb r0, [r1, #0x00]
	b _0812BE90
_0812BDD4: .4byte 0x03000FF4
_0812BDD8:
	adds r3, r5, #0x0
	adds r3, #0xAE
	cmp r1, r2
	bhi _0812BE24
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r0, r1
	cmp r4, r0
	bge _0812BE24
	cmp r1, #0x00
	beq _0812BE24
	ldr r6, _0812BE20 @ =0x03000FF4
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x40]
	adds r1, r1, r4
	adds r0, r2, #0x0
	adds r0, #0xF2
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	adds r3, #0x15
	strb r4, [r3, #0x00]
	adds r2, #0x32
	ldrb r1, [r7, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0812BE1A
	subs r0, r4, #0x1
	strb r0, [r3, #0x00]
_0812BE1A:
	ldr r1, [r6, #0x00]
	adds r1, #0x6E
	b _0812BE7C
_0812BE20: .4byte 0x03000FF4
_0812BE24:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r3, [r1, #0x00]
	adds r7, r1, #0x0
	cmp r0, r3
	bgt _0812BEA0
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r3, r0
	bcs _0812BEA0
	adds r0, r5, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812BEA0
	ldr r6, _0812BED0 @ =0x03000FF4
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x40]
	adds r1, r1, r3
	adds r0, r2, #0x0
	adds r0, #0xBA
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xC3
	strb r4, [r3, #0x00]
	adds r2, #0x31
	ldrb r1, [r7, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0812BE78
	subs r0, r4, #0x1
	strb r0, [r3, #0x00]
_0812BE78:
	ldr r1, [r6, #0x00]
	adds r1, #0x6D
_0812BE7C:
	ldrb r2, [r7, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	ldrb r1, [r1, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	bne _0812BE90
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
_0812BE90:
	ldrb r0, [r7, #0x00]
	ldr r1, [r5, #0x58]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
_0812BEA0:
	ldrb r1, [r7, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r7, #0x00]
	ldr r1, [r5, #0x2C]
	movs r2, #0x00
	movs r0, #0xA4
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x72
	strh r0, [r1, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xBA
	strb r2, [r0, #0x00]
	subs r0, #0x02
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0812BFA0
_0812BED0: .4byte 0x03000FF4
_0812BED4:
	ldrh r1, [r3, #0x06]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _0812BF2E
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _0812BEF6
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	mov r8, r1
	b _0812BF00
_0812BEF6:
	subs r0, r2, #0x1
	strb r0, [r7, #0x00]
	movs r3, #0xA8
	adds r3, r3, r5
	mov r8, r3
_0812BF00:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	cmp r0, #0x06
	bhi _0812BF1E
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	ldrh r2, [r4, #0x00]
	subs r0, r2, #0x1
	cmp r1, r0
	bne _0812BF1E
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xC5
	b _0812BF62
_0812BF1E:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0812BF78
	subs r0, r1, #0x1
	b _0812BF76
_0812BF2E:
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812BFA0
	ldrb r2, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	mov r8, r1
	cmp r2, r0
	bne _0812BF4A
	strb r3, [r7, #0x00]
	b _0812BF4E
_0812BF4A:
	adds r0, r2, #0x1
	strb r0, [r7, #0x00]
_0812BF4E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	cmp r0, #0x06
	bhi _0812BF68
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0812BF68
	adds r0, #0x01
_0812BF62:
	strb r1, [r0, #0x00]
	adds r4, r0, #0x0
	b _0812BF78
_0812BF68:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x05
	beq _0812BF78
	adds r0, r1, #0x1
_0812BF76:
	strb r0, [r4, #0x00]
_0812BF78:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r4, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r2, #0x02]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	bl sub_812F1E4
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_0812BFA0:
	movs r0, #0x00
_0812BFA2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
