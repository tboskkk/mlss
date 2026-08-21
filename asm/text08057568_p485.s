	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_812B9A0
sub_812B9A0:
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
	thumb_func_start sub_812BFB4
sub_812BFB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r7, r5, #0x0
	adds r7, #0xC4
	ldrb r2, [r7, #0x00]
	movs r0, #0x80
	mov r9, r0
	ands r0, r2
	cmp r0, #0x00
	bne _0812BFD2
	b _0812C0EA
_0812BFD2:
	ldr r0, [r5, #0x3C]
	ldrh r1, [r0, #0x02]
	movs r3, #0x01
	mov r8, r3
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812C052
	adds r0, r5, #0x0
	adds r0, #0xBB
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x70
	movs r0, #0x1C
	strh r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC5
	ldrb r0, [r6, #0x00]
	movs r4, #0x0B
	muls r0, r4
	adds r0, #0x18
	adds r2, r5, #0x0
	adds r2, #0x72
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x78
	movs r2, #0xC0
	strh r2, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x7A
	movs r0, #0x2C
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strh r2, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x18
	adds r2, r5, #0x0
	adds r2, #0x76
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	movs r3, #0xA0
	lsls r3, r3, #0x04
	movs r2, #0x03
	bl sub_801B748
	movs r0, #0xE0
	lsls r0, r0, #0x05
	str r0, [r5, #0x68]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r5, #0x6C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r5, #0x2C]
	bl sprite_hide_8021F20
_0812C052:
	ldr r2, [r5, #0x3C]
	ldrh r1, [r2, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812C09A
	ldrb r1, [r7, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xC2
	mov r3, r8
	strb r3, [r0, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r2, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xB8
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	b _0812C33A
_0812C09A:
	ldrh r1, [r2, #0x06]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0812C0C4
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
	bhi _0812C0BE
	b _0812C292
_0812C0BE:
	mov r0, r8
	strb r0, [r2, #0x00]
	b _0812C292
_0812C0C4:
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _0812C0CE
	b _0812C33A
_0812C0CE:
	adds r1, r5, #0x0
	adds r1, #0xC2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0812C0E0
	b _0812C292
_0812C0E0:
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	b _0812C292
_0812C0EA:
	ldr r3, [r5, #0x3C]
	ldrh r1, [r3, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812C104
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	movs r0, #0x02
	b _0812C33C
_0812C104:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812C1F4
	ldrb r0, [r7, #0x00]
	ldr r1, [r5, #0x58]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r6, [r0, #0x00]
	ldr r2, _0812C1D8 @ =0x03001038
	ldr r0, _0812C1DC @ =0x0819832C
	ldr r1, _0812C1E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r4, _0812C1E4 @ =0x03000FF4
	ldr r0, [r4, #0x00]
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, [r4, #0x00]
	ldrb r0, [r7, #0x00]
	movs r3, #0x7F
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x8A
	adds r1, r1, r4
	mov r12, r1
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x63
	beq _0812C1E8
	adds r0, r4, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r6, r0
	bhi _0812C1E8
	adds r1, r5, #0x0
	adds r1, #0xC2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	cmp r2, #0x63
	bls _0812C16E
	movs r2, #0x63
_0812C16E:
	ldrb r0, [r7, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	mov r3, r12
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0812C198
	adds r1, r0, #0x0
	adds r0, r1, r2
	cmp r0, #0x63
	ble _0812C198
	movs r0, #0x63
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0812C198:
	adds r0, r5, #0x0
	adds r0, #0xC3
	strb r2, [r0, #0x00]
	subs r0, #0x11
	movs r3, #0x00
	strh r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xC4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0xA4
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x72
	strh r0, [r1, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xBA
	strb r3, [r0, #0x00]
	subs r0, #0x02
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0812C33A
	.byte 0x00, 0x00
_0812C1D8: .4byte 0x03001038
_0812C1DC: .4byte 0x0819832C
_0812C1E0: .4byte 0x08198220
_0812C1E4: .4byte 0x03000FF4
_0812C1E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	b _0812C33A
_0812C1F4:
	ldrh r1, [r3, #0x06]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	beq _0812C2A4
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _0812C216
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	adds r2, r1, #0x0
	b _0812C21E
_0812C216:
	subs r0, r2, #0x1
	strb r0, [r7, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA8
_0812C21E:
	ldrh r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC4
	cmp r0, #0x06
	bhi _0812C23E
	ldrb r1, [r6, #0x00]
	adds r2, r0, #0x0
	subs r0, r2, #0x1
	cmp r1, r0
	bne _0812C23E
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xC5
	strb r1, [r0, #0x00]
	adds r1, r0, #0x0
	b _0812C24E
_0812C23E:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	adds r1, r0, #0x0
	cmp r2, #0x00
	beq _0812C24E
	subs r0, r2, #0x1
	strb r0, [r1, #0x00]
_0812C24E:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r1, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	movs r4, #0x00
	strh r0, [r2, #0x02]
	ldr r3, _0812C2A0 @ =0x083BBDD0
	ldrb r0, [r6, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r1, r1, #0x04
	adds r1, r1, r3
	ldrb r2, [r1, #0x03]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_812EF44
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_0812C292:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	b _0812C33A
	.byte 0x00, 0x00
_0812C2A0: .4byte 0x083BBDD0
_0812C2A4:
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812C33A
	ldrb r3, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	adds r2, r1, #0x0
	cmp r3, r0
	bne _0812C2C0
	strb r4, [r7, #0x00]
	b _0812C2C4
_0812C2C0:
	adds r0, r3, #0x1
	strb r0, [r7, #0x00]
_0812C2C4:
	ldrh r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC4
	cmp r0, #0x06
	bhi _0812C2DE
	ldrb r1, [r6, #0x00]
	cmp r1, #0x00
	bne _0812C2DE
	adds r0, r5, #0x0
	adds r0, #0xC5
	strb r1, [r0, #0x00]
	adds r1, r0, #0x0
	b _0812C2EE
_0812C2DE:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	adds r1, r0, #0x0
	cmp r2, #0x05
	beq _0812C2EE
	adds r0, r2, #0x1
	strb r0, [r1, #0x00]
_0812C2EE:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r1, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	movs r4, #0x00
	strh r0, [r2, #0x02]
	ldr r3, _0812C34C @ =0x083BBDD0
	ldrb r0, [r6, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r1, r1, #0x04
	adds r1, r1, r3
	ldrb r2, [r1, #0x03]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_812EF44
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0x5F
	bl play_sfx_80195B4
_0812C33A:
	movs r0, #0x00
_0812C33C:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812C34C: .4byte 0x083BBDD0
	thumb_func_start sub_812C350
sub_812C350:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [r5, #0x14]
	mov r9, r0
	ldr r1, _0812C3D8 @ =0x03000FF4
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0xF2
	str r1, [sp, #0x004]
	adds r0, #0xBA
	str r0, [sp, #0x008]
	movs r2, #0xC0
	adds r2, r2, r5
	mov r10, r2
	ldrb r4, [r2, #0x00]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0x00
	bne _0812C384
	bl _0812CB64
_0812C384:
	movs r6, #0xC6
	adds r6, r6, r5
	mov r8, r6
	ldrb r2, [r6, #0x00]
	movs r0, #0x80
	ands r0, r2
	mov r1, r8
	str r1, [sp, #0x010]
	cmp r0, #0x00
	bne _0812C39A
	b _0812C6D4
_0812C39A:
	ldr r0, [r5, #0x3C]
	ldrh r1, [r0, #0x02]
	movs r6, #0x01
	mov r10, r6
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	bne _0812C3AC
	b _0812C54E
_0812C3AC:
	movs r6, #0x7F
	adds r0, r6, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0812C3EE
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0812C3DC
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0812C410
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	adds r1, r5, #0x0
	adds r1, #0xBC
	b _0812C416
_0812C3D8: .4byte 0x03000FF4
_0812C3DC:
	adds r1, r6, #0x0
	ands r1, r2
	cmp r1, #0x02
	beq _0812C410
	adds r0, r5, #0x0
	adds r0, #0xBC
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
	b _0812C41A
_0812C3EE:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0812C420
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0812C410
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	adds r1, r5, #0x0
	adds r1, #0xBC
	b _0812C416
_0812C410:
	adds r1, r5, #0x0
	adds r1, #0xBC
	movs r0, #0xFF
_0812C416:
	strb r0, [r1, #0x00]
	adds r3, r1, #0x0
_0812C41A:
	adds r7, r5, #0x0
	adds r7, #0xC4
	b _0812C476
_0812C420:
	adds r4, r6, #0x0
	ands r4, r2
	ldr r3, _0812C45C @ =0x083BE67C
	adds r2, r5, #0x0
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x11]
	adds r0, r1, #0x1
	asrs r0, r0, #0x01
	adds r7, r2, #0x0
	cmp r4, r0
	beq _0812C46C
	cmp r1, #0x03
	bne _0812C460
	adds r0, r5, #0x0
	adds r0, #0xBC
	strb r4, [r0, #0x00]
	adds r3, r0, #0x0
	b _0812C476
_0812C45C: .4byte 0x083BE67C
_0812C460:
	subs r1, #0x01
	adds r0, r5, #0x0
	adds r0, #0xBC
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
	b _0812C476
_0812C46C:
	adds r1, r5, #0x0
	adds r1, #0xBC
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r3, r1, #0x0
_0812C476:
	adds r1, r5, #0x0
	adds r1, #0xBB
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x70
	movs r0, #0x1C
	strh r0, [r2, #0x00]
	adds r1, #0x0A
	ldrb r0, [r1, #0x00]
	movs r4, #0x0B
	mov r8, r4
	mov r6, r8
	muls r6, r0
	adds r0, r6, #0x0
	adds r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0x72
	strh r0, [r6, #0x00]
	ldrb r0, [r3, #0x00]
	mov r9, r2
	adds r4, r1, #0x0
	cmp r0, #0xFF
	beq _0812C4F4
	subs r1, #0x4D
	movs r0, #0x10
	strh r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x7A
	movs r0, #0x48
	strh r0, [r3, #0x00]
	subs r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, _0812C4E8 @ =0x03001038
	ldr r0, _0812C4EC @ =0x0819832C
	ldr r1, _0812C4F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r6, #0x00
	ldsh r1, [r3, r6]
	adds r0, r0, r1
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x76
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0812C524
_0812C4E8: .4byte 0x03001038
_0812C4EC: .4byte 0x0819832C
_0812C4F0: .4byte 0x08198220
_0812C4F4:
	adds r0, r5, #0x0
	adds r0, #0x78
	movs r1, #0xC0
	strh r1, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r0, #0x2C
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strh r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x76
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
_0812C524:
	ldr r0, [r5, #0x28]
	movs r3, #0xA0
	lsls r3, r3, #0x04
	mov r1, r9
	movs r2, #0x03
	bl sub_801B748
	movs r0, #0xE0
	lsls r0, r0, #0x05
	str r0, [r5, #0x68]
	ldrb r1, [r4, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r5, #0x6C]
	ldr r0, [r5, #0x2C]
	bl sprite_hide_8021F20
	bl _0812CD32
_0812C54E:
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812C5C8
	adds r1, r5, #0x0
	adds r1, #0xBC
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	subs r1, #0x01
	movs r0, #0x01
	strb r0, [r1, #0x00]
	subs r1, #0x4B
	movs r0, #0x1C
	strh r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC5
	ldrb r0, [r6, #0x00]
	movs r4, #0x0B
	muls r0, r4
	adds r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0x72
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x78
	movs r2, #0xC0
	strh r2, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x7A
	movs r0, #0x2C
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strh r2, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0x76
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	movs r3, #0xA0
	lsls r3, r3, #0x04
	movs r2, #0x03
	bl sub_801B748
	movs r0, #0xE0
	lsls r0, r0, #0x05
	str r0, [r5, #0x68]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r5, #0x6C]
	ldr r0, [r5, #0x2C]
	bl sprite_hide_8021F20
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	b _0812CCF8
_0812C5C8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0812C5F2
	movs r1, #0x7F
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0812C5DC
	b _0812CCF2
_0812C5DC:
	subs r0, r2, #0x1
	mov r2, r8
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x2C]
	ands r1, r0
	lsls r0, r1, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x18
	strh r0, [r2, #0x00]
	b _0812CCF2
_0812C5F2:
	movs r0, #0x10
	ands r0, r1
	adds r7, r5, #0x0
	adds r7, #0xC4
	cmp r0, #0x00
	bne _0812C600
	b _0812CD32
_0812C600:
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0812C63E
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0812C62C
	adds r0, r3, #0x0
	ands r0, r2
	cmp r0, #0x01
	bne _0812C624
	b _0812C8B4
_0812C624:
	adds r0, r2, #0x1
	mov r4, r8
	strb r0, [r4, #0x00]
	b _0812C6C2
_0812C62C:
	adds r0, r3, #0x0
	ands r0, r2
	cmp r0, #0x02
	bne _0812C636
	b _0812C8B4
_0812C636:
	adds r0, r2, #0x1
	mov r6, r8
	strb r0, [r6, #0x00]
	b _0812C6C2
_0812C63E:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r4, [r0, #0x00]
	movs r0, #0x50
	ands r0, r4
	ldr r1, _0812C68C @ =0x083BE67C
	mov r9, r1
	ldr r6, [r5, #0x40]
	cmp r0, #0x00
	bne _0812C690
	ldrb r1, [r7, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r1, [r0, #0x11]
	lsls r0, r4, #0x1D
	lsrs r0, r0, #0x1F
	asrs r1, r0
	mov r4, r10
	ands r1, r4
	cmp r1, #0x00
	beq _0812C690
	adds r0, r3, #0x0
	ands r0, r2
	cmp r0, #0x01
	bne _0812C684
	b _0812C8B4
_0812C684:
	adds r0, r2, #0x1
	mov r6, r8
	strb r0, [r6, #0x00]
	b _0812C6C2
_0812C68C: .4byte 0x083BE67C
_0812C690:
	ldr r0, [sp, #0x010]
	ldrb r4, [r0, #0x00]
	movs r3, #0x7F
	adds r2, r3, #0x0
	ands r2, r4
	ldrb r1, [r7, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x11]
	adds r0, #0x01
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _0812C6BC
	b _0812C8B4
_0812C6BC:
	adds r0, r4, #0x1
	ldr r1, [sp, #0x010]
	strb r0, [r1, #0x00]
_0812C6C2:
	ldr r2, [r5, #0x2C]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x18
	strh r0, [r2, #0x00]
	b _0812C8B4
_0812C6D4:
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r6, [r1, #0x00]
	movs r0, #0x80
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x00C]
	adds r7, r1, #0x0
	cmp r0, #0x00
	bne _0812C6EC
	b _0812C8C0
_0812C6EC:
	ldr r0, [r5, #0x3C]
	mov r12, r0
	ldrh r3, [r0, #0x02]
	movs r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	beq _0812C744
	movs r0, #0x7F
	ands r0, r6
	strb r0, [r7, #0x00]
	ldr r2, _0812C740 @ =0x0200000A
	adds r0, r5, #0x0
	adds r0, #0xC1
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	lsls r1, r1, #0x01
	subs r0, #0x45
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	b _0812C79C
_0812C740: .4byte 0x0200000A
_0812C744:
	movs r0, #0x01
	mov r10, r0
	movs r1, #0x01
	ands r1, r3
	cmp r1, #0x00
	bne _0812C752
	b _0812C87A
_0812C752:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	beq _0812C7AC
	movs r0, #0x7F
	ands r0, r6
	strb r0, [r7, #0x00]
	ldr r2, _0812C7A8 @ =0x0200000A
	adds r0, r5, #0x0
	adds r0, #0xC1
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	lsls r1, r1, #0x01
	subs r0, #0x45
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xB8
	mov r2, r10
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
_0812C79C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	b _0812CD32
_0812C7A8: .4byte 0x0200000A
_0812C7AC:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r0, #0x50
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	bne _0812C868
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0812C868
	ldr r2, _0812C864 @ =0x083BE67C
	adds r1, r3, #0x0
	ands r1, r6
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x11]
	mov r2, r8
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1F
	asrs r1, r0
	movs r4, #0x01
	ands r1, r4
	cmp r1, #0x00
	bne _0812C868
	adds r1, r5, #0x0
	adds r1, #0xBC
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xBB
	mov r6, r10
	strb r6, [r0, #0x00]
	subs r1, #0x4C
	movs r0, #0x1C
	strh r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC5
	ldrb r0, [r6, #0x00]
	movs r4, #0x0B
	muls r0, r4
	adds r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0x72
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x78
	movs r2, #0xC0
	strh r2, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x7A
	movs r0, #0x2C
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strh r2, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0x76
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	movs r3, #0xA0
	lsls r3, r3, #0x04
	movs r2, #0x03
	bl sub_801B748
	movs r0, #0xE0
	lsls r0, r0, #0x05
	str r0, [r5, #0x68]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r5, #0x6C]
	ldr r0, [r5, #0x2C]
	bl sprite_hide_8021F20
	b _0812CCBC
	.byte 0x00, 0x00
_0812C864: .4byte 0x083BE67C
_0812C868:
	movs r0, #0x80
	ldr r1, [sp, #0x010]
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x18
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	b _0812CCB4
_0812C87A:
	mov r4, r12
	ldrh r3, [r4, #0x06]
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0x00
	beq _0812C898
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0812C8B4
	mov r6, r8
	strb r1, [r6, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x18
	b _0812C8B2
_0812C898:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0812C8A2
	b _0812CD32
_0812C8A2:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _0812C8B4
	mov r1, r10
	mov r0, r8
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x56
_0812C8B2:
	strh r0, [r1, #0x00]
_0812C8B4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	b _0812CD32
_0812C8C0:
	ldr r0, [r5, #0x3C]
	ldrh r1, [r0, #0x02]
	movs r6, #0x02
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812C930
	movs r0, #0x7F
	ands r0, r4
	mov r2, r10
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x2C]
	mov r4, r10
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x2B
	strh r0, [r2, #0x02]
	ldr r1, _0812C9C4 @ =0x0200000C
	adds r0, r5, #0x0
	adds r0, #0x80
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	orrs r0, r6
	strh r0, [r1, #0x00]
	ldr r2, _0812C9C8 @ =0x0200000A
	adds r0, r5, #0x0
	adds r0, #0xC1
	ldrb r1, [r0, #0x00]
	adds r1, #0x06
	lsls r1, r1, #0x01
	subs r0, #0x45
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	orrs r0, r6
	strh r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB8
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
_0812C930:
	ldr r2, [r5, #0x3C]
	ldrh r1, [r2, #0x02]
	movs r4, #0x01
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812C9DC
	mov r1, r10
	ldrb r0, [r1, #0x00]
	movs r2, #0x7F
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x04
	ldrb r3, [r7, #0x00]
	ldr r0, [r5, #0x40]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ands r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	beq _0812C9D0
	ldr r0, [r5, #0x58]
	lsls r1, r3, #0x01
	adds r1, r1, r0
	ldr r2, _0812C9CC @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r0, #0x88
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	bhi _0812C9D0
	mov r0, sp
	ldrb r1, [r0, #0x0C]
	mov r0, r8
	strb r1, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r7, #0x00]
	ldr r2, [r5, #0x2C]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, #0x18
	strh r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x7E
	strh r0, [r1, #0x02]
	ldr r2, _0812C9C8 @ =0x0200000A
	adds r0, r5, #0x0
	adds r0, #0xC1
	ldrb r1, [r0, #0x00]
	adds r1, #0x06
	lsls r1, r1, #0x01
	subs r0, #0x45
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	orrs r0, r6
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	strb r4, [r0, #0x00]
	adds r0, #0x01
	strb r4, [r0, #0x00]
	b _0812CCBC
	.byte 0x00, 0x00
_0812C9C4: .4byte 0x0200000C
_0812C9C8: .4byte 0x0200000A
_0812C9CC: .4byte 0x03000FF4
_0812C9D0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	b _0812CD32
_0812C9DC:
	ldrh r1, [r2, #0x06]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	beq _0812CA5A
	ldrb r0, [r7, #0x00]
	cmp r0, #0x00
	bne _0812C9FE
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	adds r2, r1, #0x0
	b _0812CA06
_0812C9FE:
	subs r0, #0x01
	strb r0, [r7, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA8
_0812CA06:
	ldrh r0, [r2, #0x00]
	cmp r0, #0x06
	bhi _0812CA22
	ldrb r1, [r7, #0x00]
	adds r2, r0, #0x0
	subs r0, r2, #0x1
	cmp r1, r0
	bne _0812CA22
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xC5
	strb r1, [r0, #0x00]
	adds r4, r0, #0x0
	b _0812CA32
_0812CA22:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0812CA32
	subs r0, r1, #0x1
	strb r0, [r4, #0x00]
_0812CA32:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r4, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r4, #0x7F
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0812CAC8
	b _0812CAF8
_0812CA5A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812CA64
	b _0812CD32
_0812CA64:
	ldrb r3, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	adds r2, r1, #0x0
	cmp r3, r0
	bne _0812CA78
	strb r4, [r7, #0x00]
	b _0812CA7C
_0812CA78:
	adds r0, r3, #0x1
	strb r0, [r7, #0x00]
_0812CA7C:
	ldrh r0, [r2, #0x00]
	cmp r0, #0x06
	bhi _0812CA92
	ldrb r1, [r7, #0x00]
	cmp r1, #0x00
	bne _0812CA92
	adds r0, r5, #0x0
	adds r0, #0xC5
	strb r1, [r0, #0x00]
	adds r4, r0, #0x0
	b _0812CAA2
_0812CA92:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x05
	beq _0812CAA2
	adds r0, r1, #0x1
	strb r0, [r4, #0x00]
_0812CAA2:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r4, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x0C
	strh r0, [r2, #0x02]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r4, #0x7F
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812CAF8
_0812CAC8:
	adds r3, r5, #0x0
	adds r3, #0xB6
	movs r0, #0x03
	strh r0, [r3, #0x00]
	ldr r2, _0812CAF4 @ =0x083BD844
	ldrb r0, [r7, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x0E]
	adds r1, r5, #0x0
	adds r1, #0xB4
	strh r0, [r1, #0x00]
	b _0812CB3C
_0812CAF4: .4byte 0x083BD844
_0812CAF8:
	ldr r3, _0812CB60 @ =0x083BE67C
	ldrb r0, [r7, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x11]
	adds r2, r5, #0x0
	adds r2, #0xB6
	strh r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0E]
	adds r1, r5, #0x0
	adds r1, #0xB4
	strh r0, [r1, #0x00]
	adds r3, r2, #0x0
_0812CB3C:
	ldrb r2, [r1, #0x00]
	ldrb r3, [r3, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_812EF44
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	b _0812CD32
_0812CB60: .4byte 0x083BE67C
_0812CB64:
	.byte 0xEB, 0x6B, 0x59, 0x88, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x06, 0xD0, 0x01, 0x21, 0x49, 0x42
	.byte 0x61, 0x20, 0xEC, 0xF6, 0x1D, 0xFD, 0x02, 0x20, 0x05, 0xE1, 0x01, 0x26, 0x01, 0x22, 0x0A, 0x40
	.byte 0x00, 0x2A, 0x00, 0xD1, 0xA0, 0xE0, 0x20, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xAC, 0x30
	.byte 0x01, 0xE0, 0x28, 0x1C, 0xAE, 0x30, 0x01, 0x88, 0x28, 0x1C, 0xA8, 0x30, 0x01, 0x80, 0x18, 0x30
	.byte 0x01, 0x78, 0x06, 0x1C, 0x00, 0x29, 0x01, 0xD0, 0x68, 0x6C, 0x00, 0xE0, 0xA8, 0x6C, 0x28, 0x64
	.byte 0x30, 0x78, 0x00, 0x28, 0x01, 0xD0, 0xE8, 0x6C, 0x00, 0xE0, 0x28, 0x6D, 0xA8, 0x65, 0x2C, 0x1C
	.byte 0xC4, 0x34, 0x00, 0x20, 0x20, 0x70, 0x2B, 0x1C, 0xC5, 0x33, 0x18, 0x70, 0x31, 0x78, 0x80, 0x20
	.byte 0x08, 0x43, 0x30, 0x70, 0xE9, 0x6A, 0x24, 0x20, 0x08, 0x80, 0xEA, 0x6A, 0x19, 0x78, 0x0B, 0x20
	.byte 0x48, 0x43, 0x0C, 0x30, 0x50, 0x80, 0x18, 0x49, 0x28, 0x1C, 0x82, 0x30, 0x00, 0x88, 0xC0, 0x0A
	.byte 0x00, 0x02, 0x02, 0x22, 0x10, 0x43, 0x08, 0x80, 0x14, 0x4B, 0x28, 0x1C, 0xC1, 0x30, 0x01, 0x78
	.byte 0x04, 0x31, 0x49, 0x00, 0x45, 0x38, 0x40, 0x18, 0x00, 0x88, 0xC0, 0x0A, 0x00, 0x02, 0x10, 0x43
	.byte 0x18, 0x80, 0x31, 0x78, 0x7F, 0x26, 0x30, 0x1C, 0x08, 0x40, 0x27, 0x1C, 0x00, 0x28, 0x19, 0xD0
	.byte 0x2B, 0x1C, 0xB6, 0x33, 0x03, 0x20, 0x18, 0x80, 0x09, 0x4A, 0x38, 0x78, 0x31, 0x1C, 0x01, 0x40
	.byte 0x28, 0x6C, 0x40, 0x18, 0x01, 0x78, 0x88, 0x00, 0x40, 0x18, 0x80, 0x00, 0x80, 0x18, 0x80, 0x7B
	.byte 0x29, 0x1C, 0xB4, 0x31, 0x08, 0x80, 0x23, 0xE0, 0x0C, 0x00, 0x00, 0x02, 0x0A, 0x00, 0x00, 0x02
	.byte 0x44, 0xD8, 0x3B, 0x08, 0x1B, 0x4B, 0x38, 0x78, 0x31, 0x1C, 0x01, 0x40, 0x28, 0x6C, 0x40, 0x18
	.byte 0x01, 0x78, 0x88, 0x00, 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x40, 0x7C, 0x2A, 0x1C, 0xB6, 0x32
	.byte 0x10, 0x80, 0x38, 0x78, 0x31, 0x1C, 0x01, 0x40, 0x28, 0x6C, 0x40, 0x18, 0x01, 0x78, 0x88, 0x00
	.byte 0x40, 0x18, 0x80, 0x00, 0xC0, 0x18, 0x80, 0x7B, 0x29, 0x1C, 0xB4, 0x31, 0x08, 0x80, 0x13, 0x1C
	.byte 0x0A, 0x78, 0x1B, 0x78, 0x00, 0x20, 0x00, 0x90, 0x28, 0x1C, 0x00, 0x21, 0x02, 0xF0, 0x50, 0xF9
	.byte 0x29, 0x1C, 0xB0, 0x31, 0x00, 0x22, 0x08, 0x80, 0x28, 0x1C, 0xBA, 0x30, 0x02, 0x70, 0x02, 0x38
_0812CCB4:
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_0812CCBC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0812CD32
	.byte 0x7C, 0xE6, 0x3B, 0x08, 0xD9, 0x88, 0x40, 0x20, 0x08, 0x40, 0x00, 0x28, 0x15, 0xD0, 0x20, 0x06
	.byte 0x00, 0x0E, 0x01, 0x28, 0x09, 0xD1, 0x51, 0x46, 0x0A, 0x70, 0xE8, 0x6A, 0x2B, 0x21, 0x41, 0x80
	.byte 0x28, 0x1C, 0xB8, 0x30, 0x06, 0x70, 0x01, 0x30, 0x06, 0x70
_0812CCF2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
_0812CCF8:
	bl play_sfx_80195B4
	adds r7, r5, #0x0
	adds r7, #0xC4
	b _0812CD32
	.byte 0x80, 0x20, 0x08, 0x40, 0x2F, 0x1C, 0xC4, 0x37, 0x00, 0x28, 0x11, 0xD0, 0x20, 0x06, 0x00, 0x28
	.byte 0x09, 0xD1, 0x52, 0x46, 0x16, 0x70, 0xE8, 0x6A, 0x43, 0x21, 0x41, 0x80, 0x28, 0x1C, 0xB8, 0x30
	.byte 0x06, 0x70, 0x01, 0x30, 0x06, 0x70, 0x01, 0x21, 0x49, 0x42, 0x5F, 0x20, 0xEC, 0xF6, 0x41, 0xFC
_0812CD32:
	ldrb r1, [r7, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812CD88
	ldr r0, [r5, #0x3C]
	ldrh r1, [r0, #0x02]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812CD88
	adds r3, r5, #0x0
	adds r3, #0xC1
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	eors r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _0812CD9C @ =0x0200000A
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xC0
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	subs r0, #0x06
	subs r1, r1, r0
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	adds r0, #0x7C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_0812CD88:
	movs r0, #0x00
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812CD9C: .4byte 0x0200000A
	thumb_func_start sub_812CDA0
sub_812CDA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r1, #0xC0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x2C]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x2C]
	bl sprite_show_8020CBC
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812CDF2
	adds r0, r7, #0x0
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812CE08
_0812CDF2:
	ldr r1, [r7, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	b _0812CE1E
_0812CE08:
	ldr r1, [r7, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x2B
_0812CE1E:
	strh r0, [r2, #0x02]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	mov r10, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x1F]
	movs r3, #0x3F
	mov r9, r3
	mov r0, r9
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r7, #0x2C]
	ldr r1, _0812CF44 @ =0xFFFFEFFF
	strh r1, [r0, #0x0E]
	ldr r2, [r7, #0x2C]
	ldrb r1, [r2, #0x10]
	subs r3, #0x7E
	mov r8, r3
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x2C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r6, #0x03
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x2C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r5, #0x21
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x30]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x06
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r7, #0x30]
	movs r0, #0xC0
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	movs r0, #0x2C
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x30]
	ldr r2, _0812CF44 @ =0xFFFFEFFF
	strh r2, [r0, #0x0E]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x04
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x0D
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	mov r3, r10
	ands r3, r0
	strb r3, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x1F]
	mov r2, r9
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0x10]
	mov r3, r8
	ands r3, r0
	strb r3, [r1, #0x10]
	ldr r0, [r7, #0x30]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r6, r1
	strb r6, [r0, #0x00]
	ldr r0, [r7, #0x30]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r5, r1
	strb r5, [r0, #0x00]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0812CF48 @ =0x03000D48
	ldr r0, _0812CF4C @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r3, _0812CF50 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0812CF44: .4byte 0xFFFFEFFF
_0812CF48: .4byte 0x03000D48
_0812CF4C: .4byte 0x0203FFB8
_0812CF50: .4byte 0x00000A14
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
	thumb_func_start sub_812E0D0
sub_812E0D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r7, r0, #0x0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x02C]
	adds r0, r7, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	mov r9, r0
	cmp r0, #0x01
	beq _0812E0F2
	bl _0812ED12
_0812E0F2:
	ldr r1, _0812E198 @ =0x083C0D48
	ldr r0, _0812E19C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r2, r2, r0
	mov r8, r2
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r1, _0812E1A0 @ =0x083C0D70
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x020]
	ldr r1, _0812E1A4 @ =0x083C0D5C
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r1, _0812E1A8 @ =0x083C0D84
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x028]
	add r4, sp, #0x01C
	add r0, sp, #0x00C
	adds r1, r4, #0x0
	movs r2, #0x10
	bl memcpy
	adds r0, r7, #0x0
	adds r0, #0xB9
	ldrb r1, [r0, #0x00]
	str r0, [sp, #0x030]
	cmp r1, #0x01
	bne _0812E146
	b _0812E35C
_0812E146:
	ldr r0, _0812E1AC @ =0x03001034
	ldr r1, [r7, #0x5C]
	movs r2, #0xA2
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E162
	b _0812E25C
_0812E162:
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r6, #0x7F
	ands r6, r1
	adds r1, r7, #0x0
	adds r1, #0xAA
	adds r5, r6, #0x0
	ldrh r3, [r1, #0x00]
	mov r10, r0
	cmp r5, r3
	bcs _0812E1B4
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E1B0 @ =0x083BBDD0
	ldr r1, [r7, #0x40]
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x04
	adds r3, #0x0C
	adds r2, r2, r3
	mov r3, r8
	ldrb r1, [r3, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	b _0812E2E8
_0812E198: .4byte 0x083C0D48
_0812E19C: .4byte 0x0300034C
_0812E1A0: .4byte 0x083C0D70
_0812E1A4: .4byte 0x083C0D5C
_0812E1A8: .4byte 0x083C0D84
_0812E1AC: .4byte 0x03001034
_0812E1B0: .4byte 0x083BBDD0
_0812E1B4:
	adds r4, r7, #0x0
	adds r4, #0xAE
	cmp r3, r5
	bhi _0812E1F8
	ldrh r0, [r1, #0x00]
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	cmp r6, r0
	bge _0812E1F8
	cmp r2, #0x00
	beq _0812E1F8
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E1F4 @ =0x083BE67C
	ldr r1, [r7, #0x40]
	adds r1, r1, r6
	ldrb r2, [r1, #0x00]
	lsls r1, r2, #0x02
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	mov r5, r8
	ldrb r2, [r5, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	b _0812E2F0
	.byte 0x00, 0x00
_0812E1F4: .4byte 0x083BE67C
_0812E1F8:
	ldrh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	mov r2, r10
	ldrb r1, [r2, #0x00]
	movs r2, #0x7F
	ands r2, r1
	cmp r0, r2
	ble _0812E20C
	b _0812E33C
_0812E20C:
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bcc _0812E218
	b _0812E33C
_0812E218:
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0812E224
	b _0812E33C
_0812E224:
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E254 @ =0x083BD844
	ldr r1, [r7, #0x40]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r2, r3
	ldr r1, _0812E258 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	movs r1, #0x01
	str r1, [sp, #0x004]
	b _0812E2F0
	.byte 0x00, 0x00
_0812E254: .4byte 0x083BD844
_0812E258: .4byte 0x0300034C
_0812E25C:
	adds r0, r7, #0x0
	adds r0, #0xBE
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812E300
	adds r0, r7, #0x0
	adds r0, #0xC0
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E33C
	movs r4, #0x7F
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812E2BC
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E2B8 @ =0x083BD844
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	lsls r1, r2, #0x02
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	mov r4, r8
	ldrb r2, [r4, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r5, r9
	str r5, [sp, #0x004]
	b _0812E2F0
_0812E2B8: .4byte 0x083BD844
_0812E2BC:
	ldr r0, [r7, #0x5C]
	ldr r3, _0812E2FC @ =0x083BE67C
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r2, r4, #0x0
	ands r2, r1
	lsls r1, r2, #0x02
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	mov r3, r8
	ldrb r2, [r3, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
_0812E2E8:
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r4, r9
	str r4, [sp, #0x004]
_0812E2F0:
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x06
	bl sub_8083860
	b _0812E33C
_0812E2FC: .4byte 0x083BE67C
_0812E300:
	ldr r0, [r7, #0x5C]
	ldr r4, _0812E3B0 @ =0x083BBDD0
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	movs r2, #0x7F
	adds r3, r2, #0x0
	ands r3, r1
	ldr r1, [r7, #0x40]
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	ands r2, r1
	lsls r2, r2, #0x04
	adds r4, #0x0C
	adds r2, r2, r4
	mov r5, r8
	ldrb r1, [r5, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x04]
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x06
	bl sub_8083860
_0812E33C:
	ldr r0, [r7, #0x5C]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xA2
	lsls r2, r2, #0x04
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0812E35C:
	ldr r3, [sp, #0x030]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x02
	bne _0812E366
	b _0812E838
_0812E366:
	ldr r0, _0812E3B4 @ =0x03001034
	ldr r1, [r7, #0x60]
	movs r2, #0xC6
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E382
	b _0812E4D2
_0812E382:
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	subs r5, r1, r2
	movs r4, #0xA8
	adds r4, r4, r7
	mov r8, r4
	cmp r5, #0x00
	bge _0812E3A4
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	subs r5, r0, r2
_0812E3A4:
	movs r0, #0x00
	mov r9, r0
	ldr r1, _0812E3B8 @ =0x03000C0C
	mov r10, r1
	b _0812E4B0
	.byte 0x00, 0x00
_0812E3B0: .4byte 0x083BBDD0
_0812E3B4: .4byte 0x03001034
_0812E3B8: .4byte 0x03000C0C
_0812E3BC:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	movs r6, #0x7F
	ands r6, r0
	movs r2, #0x01
	mov r12, r2
	adds r0, r7, #0x0
	adds r0, #0xAA
	ldrh r2, [r0, #0x00]
	adds r1, r0, #0x0
	cmp r5, r2
	bge _0812E400
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E3FC @ =0x083BBDD0
	lsls r2, r6, #0x04
	adds r1, #0x0C
	adds r2, r2, r1
	mov r4, r10
	ldrb r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	b _0812E438
	.byte 0x00, 0x00
_0812E3FC: .4byte 0x083BBDD0
_0812E400:
	adds r4, r7, #0x0
	adds r4, #0xAE
	cmp r2, r5
	bgt _0812E450
	ldrh r3, [r4, #0x00]
	adds r0, r2, r3
	cmp r5, r0
	bge _0812E450
	cmp r3, #0x00
	beq _0812E450
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, _0812E44C @ =0x083BE67C
	lsls r1, r6, #0x02
	adds r1, r1, r6
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r4, r10
	ldrb r2, [r4, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
_0812E438:
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	mov r1, r12
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
	b _0812E4A0
	.byte 0x00, 0x00
_0812E44C: .4byte 0x083BE67C
_0812E450:
	ldrh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r0, r0, r1
	cmp r0, r5
	bgt _0812E4A0
	mov r2, r8
	ldrh r2, [r2, #0x00]
	cmp r5, r2
	bge _0812E4A0
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E4A0
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, _0812E4C4 @ =0x083BD844
	lsls r1, r6, #0x02
	adds r1, r1, r6
	lsls r1, r1, #0x02
	adds r1, r1, r2
	mov r4, r10
	ldrb r2, [r4, #0x00]
	ldr r1, [r1, #0x00]
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	mov r1, r12
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
_0812E4A0:
	adds r5, #0x01
	mov r2, r8
	ldrh r2, [r2, #0x00]
	cmp r5, r2
	blt _0812E4AC
	movs r5, #0x00
_0812E4AC:
	movs r3, #0x01
	add r9, r3
_0812E4B0:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	cmp r0, #0x05
	bhi _0812E4C8
	ldrh r0, [r4, #0x00]
	cmp r9, r0
	bge _0812E4C0
	b _0812E3BC
_0812E4C0:
	b _0812E818
	.byte 0x00, 0x00
_0812E4C4: .4byte 0x083BD844
_0812E4C8:
	mov r1, r9
	cmp r1, #0x05
	bgt _0812E4D0
	b _0812E3BC
_0812E4D0:
	b _0812E818
_0812E4D2:
	adds r5, r7, #0x0
	adds r5, #0xBE
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0812E4E2
	b _0812E740
_0812E4E2:
	adds r2, r7, #0x0
	adds r2, #0xC0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	str r2, [sp, #0x038]
	cmp r0, #0x00
	bne _0812E4F4
	b _0812E662
_0812E4F4:
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r0, [r1, #0x00]
	movs r3, #0x7F
	ands r3, r0
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r4, [r0, #0x00]
	subs r5, r3, r4
	mov r10, r1
	movs r2, #0xA8
	adds r2, r2, r7
	mov r8, r2
	cmp r5, #0x00
	bge _0812E518
	ldrh r0, [r2, #0x00]
	adds r0, r0, r3
	subs r5, r0, r4
_0812E518:
	movs r3, #0x00
	mov r9, r3
	adds r4, r7, #0x0
	adds r4, #0xC1
	str r4, [sp, #0x03C]
	b _0812E63A
_0812E524:
	ldr r0, [r7, #0x40]
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	movs r3, #0x7F
	adds r4, r3, #0x0
	ands r4, r0
	movs r6, #0x09
	ldr r0, [sp, #0x038]
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0812E5BC
	ldr r0, [r7, #0x58]
	lsls r1, r5, #0x01
	adds r1, r1, r0
	ldrh r2, [r1, #0x00]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E55A
	adds r0, r3, #0x0
	ands r0, r1
	cmp r5, r0
	bne _0812E574
_0812E55A:
	ldr r0, _0812E5B0 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bhi _0812E574
	adds r0, r1, #0x0
	adds r0, #0xBA
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _0812E576
_0812E574:
	movs r6, #0x0B
_0812E576:
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E5B4 @ =0x083BD844
	lsls r2, r4, #0x02
	adds r2, r2, r4
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, _0812E5B8 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
	b _0812E62A
	.byte 0x00, 0x00
_0812E5B0: .4byte 0x03000FF4
_0812E5B4: .4byte 0x083BD844
_0812E5B8: .4byte 0x0300034C
_0812E5BC:
	ldr r0, [r7, #0x58]
	lsls r1, r5, #0x01
	adds r1, r1, r0
	ldrh r2, [r1, #0x00]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E5D8
	adds r0, r3, #0x0
	ands r0, r1
	cmp r5, r0
	bne _0812E5F2
_0812E5D8:
	ldr r0, _0812E64C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bhi _0812E5F2
	adds r0, r1, #0x0
	adds r0, #0xF2
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _0812E5F4
_0812E5F2:
	movs r6, #0x0B
_0812E5F4:
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	mov r3, r9
	muls r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E650 @ =0x083BE67C
	lsls r2, r4, #0x02
	adds r2, r2, r4
	lsls r2, r2, #0x02
	adds r2, r2, r1
	ldr r1, _0812E654 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
_0812E62A:
	adds r5, #0x01
	mov r0, r8
	ldrh r0, [r0, #0x00]
	cmp r5, r0
	blt _0812E636
	movs r5, #0x00
_0812E636:
	movs r1, #0x01
	add r9, r1
_0812E63A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	cmp r0, #0x05
	bhi _0812E658
	ldrh r3, [r2, #0x00]
	cmp r9, r3
	bge _0812E64A
	b _0812E524
_0812E64A:
	b _0812E6A2
_0812E64C: .4byte 0x03000FF4
_0812E650: .4byte 0x083BE67C
_0812E654: .4byte 0x0300034C
_0812E658:
	mov r4, r9
	cmp r4, #0x05
	bgt _0812E660
	b _0812E524
_0812E660:
	b _0812E6A2
_0812E662:
	ldr r0, [r7, #0x60]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x3C]
	str r1, [sp, #0x000]
	movs r4, #0x09
	str r4, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x1C
	movs r3, #0x1F
	bl sub_8083860
	ldr r0, [r7, #0x60]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x40]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x1C
	movs r3, #0x37
	bl sub_8083860
	adds r5, r7, #0x0
	adds r5, #0xC1
	str r5, [sp, #0x03C]
_0812E6A2:
	ldr r0, [sp, #0x038]
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	cmp r0, #0x00
	beq _0812E6EC
	ldr r0, _0812E6E0 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldr r3, [sp, #0x03C]
	ldrb r1, [r3, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x31
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _0812E6C8
	b _0812E818
_0812E6C8:
	ldr r0, [r7, #0x60]
	ldr r3, _0812E6E4 @ =0x083BD844
	ldrb r1, [r2, #0x00]
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r2, r3
	ldr r1, _0812E6E8 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	b _0812E714
_0812E6E0: .4byte 0x03000FF4
_0812E6E4: .4byte 0x083BD844
_0812E6E8: .4byte 0x0300034C
_0812E6EC:
	ldr r0, [r7, #0x60]
	ldr r4, _0812E734 @ =0x083BE67C
	ldr r1, _0812E738 @ =0x03000FF4
	ldr r2, [r1, #0x00]
	ldr r5, [sp, #0x03C]
	ldrb r3, [r5, #0x00]
	lsls r1, r3, #0x04
	subs r1, r1, r3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	adds r2, #0x32
	ldrb r1, [r2, #0x00]
	lsls r2, r1, #0x02
	adds r2, r2, r1
	lsls r2, r2, #0x02
	adds r2, r2, r4
	ldr r1, _0812E73C @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
_0812E714:
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x0D
	movs r3, #0x4D
	bl sub_8083860
	b _0812E818
	.byte 0x00, 0x00
_0812E734: .4byte 0x083BE67C
_0812E738: .4byte 0x03000FF4
_0812E73C: .4byte 0x0300034C
_0812E740:
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r0, [r1, #0x00]
	movs r3, #0x7F
	ands r3, r0
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r5, [r0, #0x00]
	subs r4, r3, r5
	mov r10, r1
	movs r0, #0xA8
	adds r0, r0, r7
	mov r8, r0
	cmp r4, #0x00
	bge _0812E764
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	subs r4, r0, r5
_0812E764:
	movs r6, #0x00
	b _0812E7F8
_0812E768:
	ldr r0, [r7, #0x40]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r5, #0x7F
	adds r2, r5, #0x0
	ands r2, r0
	movs r1, #0x09
	mov r9, r1
	ldr r1, [r7, #0x58]
	lsls r0, r4, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812E794
	adds r0, r5, #0x0
	ands r0, r1
	cmp r4, r0
	bne _0812E7AE
_0812E794:
	ldr r0, _0812E808 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r3, r0
	bhi _0812E7AE
	adds r0, r1, #0x0
	adds r0, #0x8A
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x63
	bne _0812E7B2
_0812E7AE:
	movs r1, #0x0B
	mov r9, r1
_0812E7B2:
	ldr r0, [r7, #0x60]
	movs r1, #0x0B
	adds r3, r6, #0x0
	muls r3, r1
	adds r3, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0812E80C @ =0x083BBDD0
	lsls r2, r2, #0x04
	adds r1, #0x0C
	adds r2, r2, r1
	ldr r1, _0812E810 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r1, r1, r5
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	movs r1, #0x12
	movs r2, #0x18
	bl sub_8083860
	adds r4, #0x01
	mov r2, r8
	ldrh r2, [r2, #0x00]
	cmp r4, r2
	blt _0812E7F6
	movs r4, #0x00
_0812E7F6:
	adds r6, #0x01
_0812E7F8:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	cmp r0, #0x05
	bhi _0812E814
	ldrh r5, [r3, #0x00]
	cmp r6, r5
	blt _0812E768
	b _0812E818
_0812E808: .4byte 0x03000FF4
_0812E80C: .4byte 0x083BBDD0
_0812E810: .4byte 0x0300034C
_0812E814:
	cmp r6, #0x05
	ble _0812E768
_0812E818:
	ldr r0, [r7, #0x60]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xC6
	lsls r2, r2, #0x05
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0812E838:
	ldr r3, [sp, #0x030]
	ldrb r0, [r3, #0x00]
	cmp r0, #0x01
	bne _0812E842
	b _0812EF0C
_0812E842:
	ldr r0, _0812E878 @ =0x03001034
	ldr r1, [r7, #0x64]
	movs r2, #0xD0
	lsls r2, r2, #0x04
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	adds r0, r7, #0x0
	adds r0, #0xBA
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812E87C
	cmp r0, #0x01
	beq _0812E862
	b _0812ECF0
_0812E862:
	ldr r0, [r7, #0x64]
	adds r1, r7, #0x0
	adds r1, #0xBE
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x20]
	b _0812E8A8
	.byte 0x00, 0x00
_0812E878: .4byte 0x03001034
_0812E87C:
	adds r0, r7, #0x0
	adds r0, #0xBD
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0812E8BA
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0812E896
	b _0812ECF0
_0812E896:
	ldr r0, [r7, #0x64]
	adds r1, r7, #0x0
	adds r1, #0xBE
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x0C]
_0812E8A8:
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
	b _0812ECF0
_0812E8BA:
	adds r5, r7, #0x0
	adds r5, #0xBE
	ldrb r1, [r5, #0x00]
	movs r0, #0x01
	ands r0, r1
	str r5, [sp, #0x034]
	cmp r0, #0x00
	bne _0812E8CC
	b _0812ECC4
_0812E8CC:
	adds r0, r7, #0x0
	adds r0, #0xC6
	ldrb r1, [r0, #0x00]
	movs r4, #0x80
	mov r9, r4
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _0812E8E0
	b _0812EAC0
_0812E8E0:
	movs r0, #0x00
	mov r8, r0
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r2, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xC0
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, #0x04
	movs r6, #0x7F
	ands r1, r6
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	mov r9, r1
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
	ldrb r1, [r4, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	str r4, [sp, #0x038]
	cmp r0, #0x00
	beq _0812E9BA
	ldr r2, [sp, #0x02C]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0812E978
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0812E95A
	ldr r0, [r7, #0x64]
	movs r4, #0x01
	mov r8, r4
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x34]
	str r1, [sp, #0x000]
	mov r5, r9
	str r5, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	b _0812E9B2
_0812E95A:
	ldr r0, [r7, #0x64]
	movs r1, #0x01
	mov r8, r1
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0x000]
	mov r2, r9
	str r2, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	b _0812E9B2
_0812E978:
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x34]
	str r1, [sp, #0x000]
	mov r3, r9
	str r3, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	movs r3, #0x12
	bl sub_8083860
	ldr r0, [r7, #0x64]
	movs r4, #0x02
	mov r8, r4
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0x000]
	mov r5, r9
	str r5, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x41
_0812E9B2:
	movs r3, #0x12
	bl sub_8083860
	b _0812EA82
_0812E9BA:
	ldr r3, _0812EABC @ =0x083BE67C
	adds r2, r7, #0x0
	adds r2, #0xC4
	ldrb r0, [r2, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x11]
	movs r0, #0x01
	ands r0, r1
	mov r10, r2
	cmp r0, #0x00
	beq _0812EA18
	ldr r1, [sp, #0x02C]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x54
	ands r0, r1
	cmp r0, #0x04
	beq _0812EA18
	ldr r0, [r7, #0x64]
	movs r3, #0x01
	mov r8, r3
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x34]
	str r1, [sp, #0x000]
	mov r4, r9
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	movs r3, #0x12
	bl sub_8083860
_0812EA18:
	ldr r3, _0812EABC @ =0x083BE67C
	mov r5, r10
	ldrb r0, [r5, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r1, [r0, #0x11]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812EA82
	ldr r1, [sp, #0x02C]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x54
	ands r0, r1
	cmp r0, #0x00
	beq _0812EA82
	ldr r0, [r7, #0x64]
	mov r3, r8
	lsls r2, r3, #0x05
	subs r2, r2, r3
	lsls r2, r2, #0x11
	movs r4, #0xC0
	lsls r4, r4, #0x0A
	adds r2, r2, r4
	lsrs r2, r2, #0x10
	movs r5, #0x01
	add r8, r5
	ldr r3, [sp, #0x034]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x38]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r3, #0x12
	bl sub_8083860
_0812EA82:
	ldr r0, [r7, #0x64]
	mov r4, r8
	lsls r2, r4, #0x05
	subs r2, r2, r4
	lsls r2, r2, #0x11
	movs r5, #0xC0
	lsls r5, r5, #0x0A
	adds r2, r2, r5
	lsrs r2, r2, #0x10
	ldr r3, [sp, #0x034]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r4, [r1, #0x00]
	ldr r5, [sp, #0x038]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, #0x05
	movs r3, #0x7F
	ands r1, r3
	lsls r1, r1, #0x02
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	b _0812ECB4
_0812EABC: .4byte 0x083BE67C
_0812EAC0:
	movs r0, #0xC4
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0, #0x00]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812EB22
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r4, #0x05
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x2C]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x03
	movs r3, #0x12
	bl sub_8083860
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x30]
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x42
	b _0812ECB4
_0812EB22:
	ldr r5, _0812EBF0 @ =0x03000FF4
	ldr r2, [r5, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xC1
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	add r4, sp, #0x020
	strb r0, [r4, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x31
	ldrb r1, [r2, #0x00]
	mov r0, sp
	adds r0, #0x21
	strb r1, [r0, #0x00]
	add r0, sp, #0x01C
	adds r1, r4, #0x0
	movs r2, #0x02
	bl memcpy
	ldr r3, [r5, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	adds r0, #0x32
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _0812EBF4 @ =0x083BE67C
	adds r0, r0, r1
	ldrb r0, [r0, #0x0A]
	add r1, sp, #0x024
	strb r0, [r1, #0x00]
	ldr r2, _0812EBF8 @ =0x083BD844
	mov r10, r2
	ldrb r2, [r6, #0x00]
	lsls r0, r2, #0x04
	subs r0, r0, r2
	lsls r0, r0, #0x02
	adds r3, r3, r0
	adds r3, #0x31
	ldrb r2, [r3, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r2, [r0, #0x0A]
	mov r0, sp
	adds r0, #0x25
	strb r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x02
	bl memcpy
	adds r1, r7, #0x0
	adds r1, #0xC0
	ldrb r2, [r1, #0x00]
	mov r0, r9
	ands r0, r2
	str r1, [sp, #0x038]
	mov r9, r4
	cmp r0, #0x00
	beq _0812EC66
	movs r5, #0xFF
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0812EBFC
	mov r4, r8
	ldrb r0, [r4, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, _0812EBF4 @ =0x083BE67C
	adds r1, r0, r2
	ldrb r0, [r1, #0x11]
	ldrb r6, [r6, #0x00]
	asrs r0, r6
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0812EC1C
	ldrb r5, [r1, #0x0A]
	b _0812EC1C
_0812EBF0: .4byte 0x03000FF4
_0812EBF4: .4byte 0x083BE67C
_0812EBF8: .4byte 0x083BD844
_0812EBFC:
	cmp r0, #0x01
	bne _0812EC1C
	mov r4, r8
	ldrb r0, [r4, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r10
	ldrb r5, [r0, #0x0A]
_0812EC1C:
	cmp r5, #0x63
	bhi _0812EC66
	ldr r0, _0812ECBC @ =0x083BF370
	lsls r1, r5, #0x03
	adds r2, r1, r0
	ldrb r0, [r2, #0x04]
	movs r3, #0x6B
	cmp r0, #0x00
	beq _0812EC30
	movs r3, #0x80
_0812EC30:
	ldr r0, [sp, #0x038]
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	add r0, r9
	ldrb r0, [r0, #0x00]
	cmp r5, r0
	beq _0812EC66
	ldr r0, [r7, #0x64]
	ldr r1, _0812ECC0 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	adds r2, r3, #0x0
	movs r3, #0x12
	bl sub_8083860
_0812EC66:
	ldr r5, [sp, #0x038]
	ldrb r0, [r5, #0x00]
	movs r4, #0x7F
	ands r4, r0
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x1C
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0812ECF0
	add r4, r9
	ldrb r0, [r4, #0x00]
	cmp r0, #0x63
	bhi _0812ECF0
	ldr r0, _0812ECBC @ =0x083BF370
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x03
	adds r2, r1, r0
	ldrb r0, [r2, #0x04]
	movs r3, #0x03
	cmp r0, #0x00
	beq _0812EC94
	movs r3, #0x18
_0812EC94:
	ldr r0, [r7, #0x64]
	ldr r1, _0812ECC0 @ =0x0300034C
	movs r4, #0x8C
	lsls r4, r4, #0x04
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	adds r2, r3, #0x0
_0812ECB4:
	movs r3, #0x12
	bl sub_8083860
	b _0812ECF0
_0812ECBC: .4byte 0x083BF370
_0812ECC0: .4byte 0x0300034C
_0812ECC4:
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0812ECF0
	ldr r0, [r7, #0x64]
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x02
	add r1, sp
	adds r1, #0x0C
	ldr r1, [r1, #0x00]
	ldr r1, [r1, #0x08]
	str r1, [sp, #0x000]
	movs r1, #0x05
	str r1, [sp, #0x004]
	movs r1, #0x1A
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8083860
_0812ECF0:
	ldr r0, [r7, #0x64]
	ldr r1, [r7, #0x24]
	ldr r1, [r1, #0x28]
	ldr r1, [r1, #0x04]
	movs r5, #0xCA
	lsls r5, r5, #0x01
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	movs r2, #0xD0
	lsls r2, r2, #0x04
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	b _0812EF0C
_0812ED12:
	.byte 0x48, 0x46, 0x02, 0x28, 0x43, 0xD1, 0x20, 0x4D, 0xF9, 0x6D, 0xA2, 0x22, 0x12, 0x01, 0x2B, 0x68
	.byte 0x00, 0x20, 0xAB, 0xF0, 0xA6, 0xFE, 0x78, 0x6B, 0x79, 0x6A, 0x89, 0x6A, 0x4A, 0x68, 0xCA, 0x24
	.byte 0x64, 0x00, 0x12, 0x19, 0xF9, 0x6D, 0x12, 0x68, 0x89, 0x1A, 0xBA, 0xF7, 0x22, 0xFB, 0x39, 0x6E
	.byte 0xC6, 0x22, 0x52, 0x01, 0x2B, 0x68, 0x00, 0x20, 0xAB, 0xF0, 0x93, 0xFE, 0x78, 0x6B, 0x79, 0x6A
	.byte 0x89, 0x6A, 0x4A, 0x68, 0x12, 0x19, 0x39, 0x6E, 0x12, 0x68, 0x89, 0x1A, 0xBA, 0xF7, 0x11, 0xFB
	.byte 0x79, 0x6E, 0xD0, 0x22, 0x12, 0x01, 0x2B, 0x68, 0x00, 0x20, 0xAB, 0xF0, 0x82, 0xFE, 0x78, 0x6B
	.byte 0x79, 0x6A, 0x89, 0x6A, 0x4A, 0x68, 0x12, 0x19, 0x79, 0x6E, 0x12, 0x68, 0x89, 0x1A, 0xBA, 0xF7
	.byte 0x00, 0xFB, 0xB9, 0x6B, 0x80, 0x22, 0x12, 0x01, 0x2B, 0x68, 0x00, 0x20, 0xAB, 0xF0, 0x71, 0xFE
	.byte 0x39, 0x1C, 0xB9, 0x31, 0x0C, 0x91, 0xB8, 0xE0, 0x00, 0x00, 0x34, 0x10, 0x00, 0x03, 0x3A, 0x1C
	.byte 0xB9, 0x32, 0x0C, 0x92, 0x4B, 0x46, 0x03, 0x2B, 0x00, 0xD0, 0xAE, 0xE0, 0x78, 0x6B, 0xA2, 0x24
	.byte 0x24, 0x01, 0x21, 0x1C, 0xBA, 0xF7, 0x2D, 0xFB, 0x01, 0x1C, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68
	.byte 0xCA, 0x25, 0x6D, 0x00, 0x40, 0x19, 0x00, 0x68, 0x09, 0x18, 0xF9, 0x65, 0x56, 0x4E, 0x33, 0x68
	.byte 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x4D, 0xFE, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19
	.byte 0xF9, 0x6D, 0x00, 0x68, 0x09, 0x1A, 0x33, 0x68, 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x41, 0xFE
	.byte 0x78, 0x6A, 0x80, 0x6A, 0x41, 0x68, 0x49, 0x19, 0xF8, 0x6D, 0x09, 0x68, 0x40, 0x1A, 0xF9, 0xF7
	.byte 0x1A, 0xF8, 0xE0, 0x24, 0x24, 0x02, 0xA0, 0x46, 0x41, 0x46, 0x08, 0x43, 0x00, 0x04, 0x00, 0x0C
	.byte 0xB9, 0x6B, 0x4A, 0x46, 0x00, 0x92, 0x01, 0x90, 0x01, 0x23, 0x99, 0x46, 0x02, 0x93, 0x08, 0x1C
	.byte 0x10, 0x21, 0x88, 0x22, 0x1B, 0x23, 0xF8, 0xF7, 0xC4, 0xFF, 0x78, 0x6B, 0xC6, 0x24, 0x64, 0x01
	.byte 0x21, 0x1C, 0xBA, 0xF7, 0xEE, 0xFA, 0x01, 0x1C, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19
	.byte 0x00, 0x68, 0x09, 0x18, 0x39, 0x66, 0x33, 0x68, 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x11, 0xFE
	.byte 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19, 0x39, 0x6E, 0x00, 0x68, 0x09, 0x1A, 0x33, 0x68
	.byte 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0x05, 0xFE, 0x78, 0x6A, 0x80, 0x6A, 0x41, 0x68, 0x49, 0x19
	.byte 0x38, 0x6E, 0x09, 0x68, 0x40, 0x1A, 0xF8, 0xF7, 0xDE, 0xFF, 0x44, 0x46, 0x20, 0x43, 0x00, 0x04
	.byte 0x00, 0x0C, 0xBA, 0x6B, 0x0B, 0x21, 0x00, 0x91, 0x01, 0x90, 0x48, 0x46, 0x02, 0x90, 0x10, 0x1C
	.byte 0x10, 0x21, 0x08, 0x22, 0x12, 0x23, 0xF8, 0xF7, 0x8C, 0xFF, 0x78, 0x6B, 0xD0, 0x24, 0x24, 0x01
	.byte 0x21, 0x1C, 0xBA, 0xF7, 0xB6, 0xFA, 0x01, 0x1C, 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19
	.byte 0x00, 0x68, 0x09, 0x18, 0x79, 0x66, 0x33, 0x68, 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0xD9, 0xFD
	.byte 0x78, 0x6A, 0x80, 0x6A, 0x40, 0x68, 0x40, 0x19, 0x79, 0x6E, 0x00, 0x68, 0x09, 0x1A, 0x33, 0x68
	.byte 0x00, 0x20, 0x22, 0x1C, 0xAB, 0xF0, 0xCD, 0xFD, 0x78, 0x6A, 0x80, 0x6A, 0x41, 0x68, 0x49, 0x19
	.byte 0x78, 0x6E, 0x09, 0x68, 0x40, 0x1A, 0xF8, 0xF7, 0xA6, 0xFF, 0x41, 0x46, 0x08, 0x43, 0x00, 0x04
	.byte 0x00, 0x0C, 0xBA, 0x6B, 0x04, 0x21, 0x00, 0x91, 0x01, 0x90, 0x4B, 0x46, 0x02, 0x93, 0x10, 0x1C
	.byte 0x10, 0x21, 0x68, 0x22, 0x1A, 0x23, 0xF8, 0xF7, 0x54, 0xFF
_0812EF0C:
	ldr r2, [sp, #0x030]
	ldrb r0, [r2, #0x00]
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _0812EF1A
	cmp r1, #0x02
	bne _0812EF2C
_0812EF1A:
	adds r1, r7, #0x0
	adds r1, #0xB8
	movs r0, #0x00
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	b _0812EF32
	.byte 0x00, 0x00, 0x34, 0x10, 0x00, 0x03
_0812EF2C:
	adds r0, #0x01
	ldr r4, [sp, #0x030]
	strb r0, [r4, #0x00]
_0812EF32:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_812EF44
sub_812EF44:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	ldr r0, [sp, #0x034]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r10, r2
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	cmp r1, #0x03
	bne _0812EFA0
	ldr r2, _0812EF90 @ =0x03001038
	ldr r0, _0812EF94 @ =0x0819832C
	ldr r1, _0812EF98 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0812EF9C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x28]
	adds r1, #0x64
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0812EFB0
_0812EF90: .4byte 0x03001038
_0812EF94: .4byte 0x0819832C
_0812EF98: .4byte 0x08198220
_0812EF9C: .4byte 0x03000FF4
_0812EFA0:
	ldr r0, _0812EFF0 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	lsrs r1, r3, #0x19
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r3, [r2, #0x28]
_0812EFB0:
	ldr r0, _0812EFF4 @ =0x083C06A6
	add r0, r10
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bhi _0812F05C
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	beq _0812F018
	ldr r1, [sp, #0x000]
	cmp r1, #0x00
	beq _0812F008
	ldr r6, _0812EFF8 @ =0x03001038
	ldr r5, _0812EFFC @ =0x0819832C
	ldr r0, _0812F000 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	adds r0, r1, #0x0
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldr r0, _0812F004 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	muls r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x64
	b _0812F170
	.byte 0x00, 0x00
_0812EFF0: .4byte 0x03000FF4
_0812EFF4: .4byte 0x083C06A6
_0812EFF8: .4byte 0x03001038
_0812EFFC: .4byte 0x0819832C
_0812F000: .4byte 0x08198220
_0812F004: .4byte 0x083C06AC
_0812F008:
	ldr r0, _0812F014 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	b _0812F1C6
	.byte 0x00, 0x00
_0812F014: .4byte 0x083C06AC
_0812F018:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _0812F050
	ldr r2, _0812F040 @ =0x03001038
	ldr r0, _0812F044 @ =0x0819832C
	ldr r1, _0812F048 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0812F04C @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	ldr r4, [sp, #0x000]
	muls r0, r4
	movs r1, #0x64
	bl _call_via_r2
	subs r0, r4, r0
	b _0812F1C2
	.byte 0x00, 0x00
_0812F040: .4byte 0x03001038
_0812F044: .4byte 0x0819832C
_0812F048: .4byte 0x08198220
_0812F04C: .4byte 0x083C06AC
_0812F050:
	ldr r0, _0812F058 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	b _0812F1C6
_0812F058: .4byte 0x083C06AC
_0812F05C:
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _0812F094 @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x08
	mov r8, r0
	movs r0, #0x00
	str r0, [sp, #0x008]
	mov r1, r10
	lsls r0, r1, #0x02
	ldr r1, _0812F098 @ =0x083C072C
	add r0, r10
	lsls r7, r0, #0x02
	subs r1, #0x04
	adds r1, r1, r7
	mov r9, r1
	ldr r0, _0812F09C @ =0x0819832C
	ldr r2, _0812F0A0 @ =0x08198220
	subs r0, r0, r2
	str r0, [sp, #0x00C]
_0812F088:
	ldr r4, [sp, #0x008]
	cmp r4, #0x00
	beq _0812F0A4
	mov r0, r9
	ldr r1, [r0, #0x00]
	b _0812F0AC
_0812F094: .4byte 0x083C06AC
_0812F098: .4byte 0x083C072C
_0812F09C: .4byte 0x0819832C
_0812F0A0: .4byte 0x08198220
_0812F0A4:
	ldr r0, _0812F0FC @ =0x083C06AC
	add r0, r10
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x08
_0812F0AC:
	ldr r0, _0812F100 @ =0x083C072C
	ldr r4, _0812F104 @ =0x03001038
	ldr r2, [r4, #0x00]
	ldr r4, [sp, #0x00C]
	adds r2, r2, r4
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	subs r0, r0, r1
	ldr r1, _0812F108 @ =0x083C06B4
	adds r6, r7, r1
	ldr r1, [r6, #0x00]
	str r3, [sp, #0x010]
	bl _call_via_r2
	adds r5, r0, #0x0
	ldr r0, _0812F10C @ =0x08198350
	ldr r1, _0812F110 @ =0x08198220
	subs r0, r0, r1
	ldr r1, _0812F104 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	ldr r0, [r4, #0x00]
	ldr r1, [r6, #0x00]
	bl _call_via_r2
	ldr r3, [sp, #0x010]
	cmp r0, #0x00
	beq _0812F0E6
	adds r5, #0x01
_0812F0E6:
	cmp r5, r3
	bcc _0812F114
	ldr r0, [r6, #0x00]
	muls r0, r3
	add r8, r0
	movs r0, #0xC8
	lsls r0, r0, #0x06
	cmp r8, r0
	bls _0812F138
_0812F0F8:
	mov r8, r0
	b _0812F138
_0812F0FC: .4byte 0x083C06AC
_0812F100: .4byte 0x083C072C
_0812F104: .4byte 0x03001038
_0812F108: .4byte 0x083C06B4
_0812F10C: .4byte 0x08198350
_0812F110: .4byte 0x08198220
_0812F114:
	ldr r0, [r6, #0x00]
	muls r0, r5
	add r8, r0
	subs r0, r3, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0xC8
	lsls r0, r0, #0x06
	cmp r8, r0
	bhi _0812F0F8
	adds r7, #0x04
	movs r2, #0x04
	add r9, r2
	ldr r4, [sp, #0x008]
	adds r4, #0x01
	str r4, [sp, #0x008]
	cmp r4, #0x04
	ble _0812F088
_0812F138:
	ldr r0, _0812F180 @ =0xFFFFFF00
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r2, [sp, #0x004]
	cmp r2, #0x00
	beq _0812F198
	ldr r4, [sp, #0x000]
	cmp r4, #0x00
	beq _0812F190
	ldr r6, _0812F184 @ =0x03001038
	ldr r5, _0812F188 @ =0x0819832C
	ldr r0, _0812F18C @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	adds r0, r4, #0x0
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	mov r0, r8
	muls r0, r4
	lsls r0, r0, #0x01
	movs r1, #0xC8
	lsls r1, r1, #0x07
_0812F170:
	bl _call_via_r2
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0x0
	b _0812F1C6
	.byte 0x00, 0x00
_0812F180: .4byte 0xFFFFFF00
_0812F184: .4byte 0x03001038
_0812F188: .4byte 0x0819832C
_0812F18C: .4byte 0x08198220
_0812F190:
	mov r1, r8
	lsrs r0, r1, #0x08
	lsls r0, r0, #0x11
	b _0812F1C4
_0812F198:
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	bne _0812F1A4
	mov r4, r8
	lsls r0, r4, #0x08
	b _0812F1C4
_0812F1A4:
	ldr r2, _0812F1D8 @ =0x03001038
	ldr r0, _0812F1DC @ =0x0819832C
	ldr r1, _0812F1E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, [sp, #0x000]
	mov r0, r8
	muls r0, r1
	movs r1, #0xC8
	lsls r1, r1, #0x07
	bl _call_via_r2
	ldr r2, [sp, #0x000]
	subs r0, r2, r0
_0812F1C2:
	lsls r0, r0, #0x10
_0812F1C4:
	lsrs r0, r0, #0x10
_0812F1C6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812F1D8: .4byte 0x03001038
_0812F1DC: .4byte 0x0819832C
_0812F1E0: .4byte 0x08198220
	thumb_func_start sub_812F1E4
sub_812F1E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0xC4
	ldrb r0, [r6, #0x00]
	movs r7, #0x7F
	adds r2, r7, #0x0
	ands r2, r0
	adds r3, r4, #0x0
	adds r3, #0xAA
	adds r1, r2, #0x0
	ldrh r0, [r3, #0x00]
	cmp r1, r0
	bcs _0812F22C
	adds r3, #0x0C
	movs r0, #0x03
	strh r0, [r3, #0x00]
	ldr r2, _0812F228 @ =0x083BBDD0
	ldrb r0, [r6, #0x00]
	adds r1, r7, #0x0
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	adds r1, r4, #0x0
	adds r1, #0xB4
	strh r0, [r1, #0x00]
	adds r5, r3, #0x0
	adds r3, r1, #0x0
	b _0812F2D4
_0812F228: .4byte 0x083BBDD0
_0812F22C:
	adds r5, r4, #0x0
	adds r5, #0xAE
	cmp r0, r1
	bhi _0812F280
	ldrh r0, [r3, #0x00]
	ldrh r1, [r5, #0x00]
	adds r0, r0, r1
	cmp r2, r0
	bge _0812F280
	cmp r1, #0x00
	beq _0812F280
	ldr r3, _0812F27C @ =0x083BE67C
	ldr r0, [r4, #0x40]
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x11]
	adds r2, r4, #0x0
	adds r2, #0xB6
	strh r0, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	adds r1, r7, #0x0
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r3
	ldrb r0, [r0, #0x0E]
	adds r1, r4, #0x0
	adds r1, #0xB4
	strh r0, [r1, #0x00]
	adds r5, r2, #0x0
	adds r3, r1, #0x0
	b _0812F2D4
_0812F27C: .4byte 0x083BE67C
_0812F280:
	adds r0, r4, #0x0
	adds r0, #0xAA
	ldrh r0, [r0, #0x00]
	ldrh r1, [r5, #0x00]
	adds r0, r0, r1
	adds r6, r4, #0x0
	adds r6, #0xC4
	ldrb r1, [r6, #0x00]
	movs r7, #0x7F
	adds r2, r7, #0x0
	ands r2, r1
	adds r5, r4, #0x0
	adds r5, #0xB6
	adds r3, r4, #0x0
	adds r3, #0xB4
	cmp r0, r2
	bgt _0812F2D4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bcs _0812F2D4
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F2D4
	movs r0, #0x03
	strh r0, [r5, #0x00]
	ldr r2, _0812F2F4 @ =0x083BD844
	ldrb r0, [r6, #0x00]
	adds r1, r7, #0x0
	ands r1, r0
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x0E]
	strh r0, [r3, #0x00]
_0812F2D4:
	ldrb r2, [r3, #0x00]
	ldrb r3, [r5, #0x00]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_812EF44
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812F2F4: .4byte 0x083BD844
	thumb_func_start sub_812F2F8
sub_812F2F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x004]
	ldr r1, [r6, #0x40]
	ldr r2, _0812F3C8 @ =0x05000040
	add r0, sp, #0x004
	bl CpuSet
	str r4, [sp, #0x004]
	ldr r1, [r6, #0x54]
	ldr r5, _0812F3CC @ =0x05000080
	add r0, sp, #0x004
	adds r2, r5, #0x0
	bl CpuSet
	str r4, [sp, #0x004]
	ldr r1, [r6, #0x58]
	add r0, sp, #0x004
	adds r2, r5, #0x0
	bl CpuSet
	ldr r0, [r6, #0x40]
	movs r1, #0x03
	movs r2, #0x00
	bl sub_8116B48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r6, #0x0
	adds r7, #0xAA
	strh r0, [r7, #0x00]
	ldrh r0, [r7, #0x00]
	ldr r1, [r6, #0x40]
	adds r1, r1, r0
	str r1, [r6, #0x48]
	movs r0, #0x00
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r6, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r1, [r6, #0x48]
	adds r1, r1, r0
	str r1, [r6, #0x44]
	movs r0, #0x01
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r6, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	ldrh r2, [r7, #0x00]
	adds r1, r1, r2
	adds r0, r0, r1
	adds r1, r6, #0x0
	adds r1, #0xA8
	strh r0, [r1, #0x00]
	movs r5, #0x00
	cmp r5, r0
	blt _0812F38E
	b _0812F490
_0812F38E:
	mov r8, r7
	movs r7, #0x00
	ldr r0, _0812F3D0 @ =0x083BBDD0
	mov r10, r0
	ldr r1, _0812F3D4 @ =0x083BD844
	mov r9, r1
_0812F39A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	cmp r5, r0
	bge _0812F3D8
	ldr r2, [r6, #0x54]
	adds r2, r7, r2
	ldr r1, [r6, #0x40]
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrh r0, [r0, #0x0A]
	strh r0, [r2, #0x00]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrh r1, [r0, #0x0A]
	ldrb r2, [r0, #0x03]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x03
	b _0812F41C
_0812F3C8: .4byte 0x05000040
_0812F3CC: .4byte 0x05000080
_0812F3D0: .4byte 0x083BBDD0
_0812F3D4: .4byte 0x083BD844
_0812F3D8:
	adds r2, r6, #0x0
	adds r2, #0xAE
	cmp r0, r5
	bgt _0812F430
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	cmp r5, r0
	bge _0812F430
	cmp r1, #0x00
	beq _0812F430
	ldr r3, [r6, #0x54]
	adds r3, r7, r3
	ldr r2, [r6, #0x40]
	adds r2, r2, r5
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, _0812F42C @ =0x083BE67C
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	strh r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, _0812F42C @ =0x083BE67C
	adds r0, r0, r2
	ldrh r1, [r0, #0x04]
	ldrb r2, [r0, #0x0E]
	ldrb r3, [r0, #0x11]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
_0812F41C:
	bl sub_812EF44
	ldr r1, [r6, #0x58]
	adds r1, r7, r1
	strh r0, [r1, #0x00]
	adds r4, r6, #0x0
	adds r4, #0xA8
	b _0812F486
_0812F42C: .4byte 0x083BE67C
_0812F430:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r1, r1, r0
	adds r4, r6, #0x0
	adds r4, #0xA8
	cmp r1, r5
	bgt _0812F486
	ldrh r1, [r4, #0x00]
	cmp r5, r1
	bge _0812F486
	adds r0, r6, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F486
	ldr r3, [r6, #0x54]
	adds r3, r7, r3
	ldr r2, [r6, #0x40]
	adds r2, r2, r5
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r0, [r0, #0x04]
	strh r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r1, [r0, #0x04]
	ldrb r2, [r0, #0x0E]
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x03
	bl sub_812EF44
	ldr r1, [r6, #0x58]
	adds r1, r7, r1
	strh r0, [r1, #0x00]
_0812F486:
	adds r7, #0x02
	adds r5, #0x01
	ldrh r4, [r4, #0x00]
	cmp r5, r4
	blt _0812F39A
_0812F490:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_812F4A0
sub_812F4A0:
	push {r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x14]
	ldr r0, _0812F4FC @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r7, r0, r1
	ldr r5, [r7, #0x00]
	ldrb r0, [r6, #0x00]
	cmp r0, #0x03
	bls _0812F4F6
	adds r0, r6, #0x0
	adds r0, #0xB8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0812F4C4
	adds r0, r6, #0x0
	bl sub_812E0D0
_0812F4C4:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0812F500 @ =0x03000D48
	ldr r4, _0812F504 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0812F508 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0812F50C @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_812CF54
	adds r5, r0, #0x0
	str r5, [r7, #0x00]
_0812F4F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0812F4FC: .4byte 0x0300034C
_0812F500: .4byte 0x03000D48
_0812F504: .4byte 0x0203FFB8
_0812F508: .4byte 0x00000A14
_0812F50C: .4byte 0x03000D4C
