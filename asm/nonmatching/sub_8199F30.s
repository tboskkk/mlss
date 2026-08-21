	.syntax unified
	.text

	thumb_func_start sub_8199F30
sub_8199F30:
	push {r4, r5, r6, r7, lr}
	ldr r1, _08199F88 @ =0x03001078
	ldr r3, [r1, #0x00]
	movs r0, #0x9C
	lsls r0, r0, #0x04
	adds r2, r3, r0
	ldr r4, [r2, #0x00]
	subs r0, r4, #0x1
	str r0, [r2, #0x00]
	adds r7, r1, #0x0
	cmp r0, #0x00
	beq _08199F4A
	b _0819A102
_08199F4A:
	movs r0, #0x9C
	lsls r0, r0, #0x02
	str r0, [r2, #0x00]
	ldr r1, _08199F8C @ =0x000009C4
	adds r0, r3, r1
	str r3, [r0, #0x00]
	movs r6, #0xE3
	adds r0, r4, #0x0
	adds r0, #0xE2
	movs r4, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08199FA4
	ldr r1, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r2, [r3, #0x04]
	subs r0, #0x01
	ands r0, r2
	orrs r1, r0
	lsrs r1, r1, #0x01
	ldr r5, _08199F90 @ =0x00000634
	adds r0, r3, r5
	ldr r0, [r0, #0x00]
	ands r2, r4
	cmp r2, #0x00
	beq _08199F98
	ldr r2, _08199F94 @ =0x9908B0DF
	eors r2, r0
	b _08199F9A
_08199F88: .4byte 0x03001078
_08199F8C: .4byte 0x000009C4
_08199F90: .4byte 0x00000634
_08199F94: .4byte 0x9908B0DF
_08199F98:
	adds r2, r0, #0x0
_08199F9A:
	eors r2, r1
	stm r3!, {r2}
	subs r6, #0x01
	cmp r6, #0x00
	beq _0819A016
_08199FA4:
	ldr r1, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r2, [r3, #0x04]
	subs r0, #0x01
	ands r0, r2
	orrs r1, r0
	lsrs r4, r1, #0x01
	ldr r1, _08199FCC @ =0x00000634
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _08199FD4
	ldr r2, _08199FD0 @ =0x9908B0DF
	eors r2, r1
	b _08199FD6
	.byte 0x00, 0x00
_08199FCC: .4byte 0x00000634
_08199FD0: .4byte 0x9908B0DF
_08199FD4:
	adds r2, r1, #0x0
_08199FD6:
	eors r2, r4
	adds r4, r3, #0x0
	stm r4!, {r2}
	ldr r1, [r3, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r2, [r4, #0x04]
	subs r0, #0x01
	ands r0, r2
	orrs r1, r0
	lsrs r5, r1, #0x01
	movs r1, #0xC7
	lsls r1, r1, #0x03
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _0819A008
	ldr r2, _0819A004 @ =0x9908B0DF
	eors r2, r1
	b _0819A00A
_0819A004: .4byte 0x9908B0DF
_0819A008:
	adds r2, r1, #0x0
_0819A00A:
	eors r2, r5
	str r2, [r4, #0x00]
	adds r3, #0x08
	subs r6, #0x02
	cmp r6, #0x00
	bne _08199FA4
_0819A016:
	movs r6, #0xC6
	lsls r6, r6, #0x01
_0819A01A:
	ldr r1, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r2, [r3, #0x04]
	subs r0, #0x01
	ands r0, r2
	orrs r1, r0
	lsrs r4, r1, #0x01
	ldr r5, _0819A040 @ =0xFFFFFC74
	adds r0, r3, r5
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _0819A048
	ldr r0, _0819A044 @ =0x9908B0DF
	eors r0, r1
	b _0819A04A
_0819A040: .4byte 0xFFFFFC74
_0819A044: .4byte 0x9908B0DF
_0819A048:
	adds r0, r1, #0x0
_0819A04A:
	eors r0, r4
	adds r4, r3, #0x0
	stm r4!, {r0}
	ldr r1, [r3, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r2, [r4, #0x04]
	subs r0, #0x01
	ands r0, r2
	orrs r1, r0
	lsrs r5, r1, #0x01
	ldr r1, _0819A078 @ =0xFFFFFC78
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _0819A080
	ldr r0, _0819A07C @ =0x9908B0DF
	eors r0, r1
	b _0819A082
	.byte 0x00, 0x00
_0819A078: .4byte 0xFFFFFC78
_0819A07C: .4byte 0x9908B0DF
_0819A080:
	adds r0, r1, #0x0
_0819A082:
	eors r0, r5
	str r0, [r4, #0x00]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldr r1, [r3, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r2, [r5, #0x04]
	subs r0, #0x01
	ands r0, r2
	orrs r1, r0
	lsrs r4, r1, #0x01
	ldr r1, _0819A0B0 @ =0xFFFFFC7C
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _0819A0B8
	ldr r0, _0819A0B4 @ =0x9908B0DF
	eors r0, r1
	b _0819A0BA
_0819A0B0: .4byte 0xFFFFFC7C
_0819A0B4: .4byte 0x9908B0DF
_0819A0B8:
	adds r0, r1, #0x0
_0819A0BA:
	eors r0, r4
	str r0, [r5, #0x00]
	adds r3, #0x0C
	subs r6, #0x03
	cmp r6, #0x00
	bne _0819A01A
	ldr r1, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r1, r0
	ldr r0, [r7, #0x00]
	ldr r2, [r0, #0x00]
	ldr r0, _0819A0F0 @ =0x7FFFFFFF
	ands r0, r2
	orrs r1, r0
	lsrs r1, r1, #0x01
	ldr r4, _0819A0F4 @ =0xFFFFFC74
	adds r0, r3, r4
	ldr r4, [r0, #0x00]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	beq _0819A0FC
	ldr r0, _0819A0F8 @ =0x9908B0DF
	eors r0, r4
	b _0819A0FE
	.byte 0x00, 0x00
_0819A0F0: .4byte 0x7FFFFFFF
_0819A0F4: .4byte 0xFFFFFC74
_0819A0F8: .4byte 0x9908B0DF
_0819A0FC:
	adds r0, r4, #0x0
_0819A0FE:
	eors r0, r1
	str r0, [r3, #0x00]
_0819A102:
	ldr r1, [r7, #0x00]
	ldr r5, _0819A12C @ =0x000009C4
	adds r1, r1, r5
	ldr r2, [r1, #0x00]
	ldm r2!, {r0}
	str r2, [r1, #0x00]
	lsrs r1, r0, #0x0B
	eors r0, r1
	lsls r1, r0, #0x07
	ldr r2, _0819A130 @ =0x9D2C5680
	ands r1, r2
	eors r0, r1
	lsls r1, r0, #0x0F
	ldr r2, _0819A134 @ =0xEFC60000
	ands r1, r2
	eors r0, r1
	lsrs r1, r0, #0x12
	eors r0, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0819A12C: .4byte 0x000009C4
_0819A130: .4byte 0x9D2C5680
_0819A134: .4byte 0xEFC60000
