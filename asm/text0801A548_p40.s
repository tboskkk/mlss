	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801ABE8
sub_801ABE8:
	push {r4, r5, lr}
	adds r3, r2, #0x0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, _0801AC2C @ =0x0300034C
	ldr r1, _0801AC30 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801AC68
	cmp r4, #0x00
	beq _0801AC38
	ldr r2, _0801AC34 @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	ands r3, r1
	lsls r3, r3, #0x02
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	strh r5, [r2, #0x02]
	strh r4, [r2, #0x04]
	b _0801AC68
	.byte 0x00, 0x00
_0801AC2C: .4byte 0x0300034C
_0801AC30: .4byte 0x00000888
_0801AC34: .4byte 0x03000D28
_0801AC38:
	ldr r1, _0801AC70 @ =0x0000088B
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801AC56
	ldr r2, _0801AC74 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801AC56:
	ldr r2, _0801AC78 @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	strh r5, [r2, #0x04]
_0801AC68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801AC70: .4byte 0x0000088B
_0801AC74: .4byte 0x03000D18
_0801AC78: .4byte 0x03000D28
	thumb_func_start sub_801AC7C
sub_801AC7C:
	push {r4, lr}
	ldr r2, _0801ACA0 @ =0x0300034C
	ldr r1, _0801ACA4 @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801AD30
	ldr r3, _0801ACA8 @ =0x03000D28
	ldrb r4, [r3, #0x00]
	lsls r0, r4, #0x1E
	lsrs r1, r0, #0x1E
	cmp r1, #0x01
	beq _0801ACAC
	cmp r1, #0x02
	beq _0801ACF0
	b _0801AD30
_0801ACA0: .4byte 0x0300034C
_0801ACA4: .4byte 0x00000888
_0801ACA8: .4byte 0x03000D28
_0801ACAC:
	ldrh r0, [r3, #0x04]
	subs r0, #0x01
	strh r0, [r3, #0x04]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0801AD30
	ldr r4, _0801ACE8 @ =0x0000088B
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	ands r1, r0
	cmp r1, #0x00
	beq _0801ACD4
	ldr r2, _0801ACEC @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801ACD4:
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r3, #0x04]
	b _0801AD30
_0801ACE8: .4byte 0x0000088B
_0801ACEC: .4byte 0x03000D18
_0801ACF0:
	ldrh r0, [r3, #0x04]
	cmp r0, #0x00
	beq _0801AD30
	subs r0, #0x01
	strh r0, [r3, #0x04]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0801AD30
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	bne _0801AD18
	ldr r2, _0801AD14 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	b _0801AD26
_0801AD14: .4byte 0x03000D18
_0801AD18:
	ldr r2, _0801AD38 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
_0801AD26:
	strb r0, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	strb r0, [r3, #0x00]
_0801AD30:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801AD38: .4byte 0x03000D18
	thumb_func_start sub_801AD3C
sub_801AD3C:
	push {lr}
	ldr r0, _0801AD70 @ =0x0300034C
	ldr r1, _0801AD74 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801AD6A
	ldr r2, _0801AD78 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0801AD7C @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0801AD6A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801AD70: .4byte 0x0300034C
_0801AD74: .4byte 0x00000888
_0801AD78: .4byte 0x03000D18
_0801AD7C: .4byte 0x03000D28
	thumb_func_start sub_801AD80
sub_801AD80:
	push {lr}
	ldr r0, _0801ADB0 @ =0x0300034C
	ldr r1, _0801ADB4 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801ADAA
	ldr r2, _0801ADB8 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0801ADBC @ =0x03000D28
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0801ADAA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801ADB0: .4byte 0x0300034C
_0801ADB4: .4byte 0x00000888
_0801ADB8: .4byte 0x03000D18
_0801ADBC: .4byte 0x03000D28
	thumb_func_start sub_801ADC0
sub_801ADC0:
	push {lr}
	ldr r2, _0801AE08 @ =0x0300034C
	ldr r1, _0801AE0C @ =0x00000888
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801AE02
	ldr r1, _0801AE10 @ =0x0000088B
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801ADF0
	ldr r2, _0801AE14 @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801ADF0:
	ldr r2, _0801AE18 @ =0x03000D28
	movs r0, #0x00
	strh r0, [r2, #0x04]
	ldrb r1, [r2, #0x00]
	subs r0, #0x04
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_0801AE02:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801AE08: .4byte 0x0300034C
_0801AE0C: .4byte 0x00000888
_0801AE10: .4byte 0x0000088B
_0801AE14: .4byte 0x03000D18
_0801AE18: .4byte 0x03000D28
	thumb_func_start sub_801AE1C
sub_801AE1C:
	push {lr}
	add sp, #-0x004
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r1, _0801AE34 @ =0x03000D28
	ldr r2, _0801AE38 @ =0x05000002
	mov r0, sp
	bl CpuSet
	add sp, #0x004
	pop {r0}
	bx r0
_0801AE34: .4byte 0x03000D28
_0801AE38: .4byte 0x05000002
	thumb_func_start sub_801AE3C
sub_801AE3C:
	push {r4, r5, lr}
	ldr r3, _0801AE84 @ =0x04000208
	movs r4, #0x00
	strh r4, [r3, #0x00]
	ldr r2, _0801AE88 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0801AE8C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r5, #0x01
	strh r5, [r3, #0x00]
	strh r4, [r3, #0x00]
	subs r2, #0xD8
	ldrh r1, [r2, #0x00]
	ldr r0, _0801AE90 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2, #0x00]
	strh r5, [r3, #0x00]
	ldr r0, _0801AE94 @ =0x0400010E
	strh r4, [r0, #0x00]
	ldr r1, _0801AE98 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _0801AE9C @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0801AE84: .4byte 0x04000208
_0801AE88: .4byte 0x04000200
_0801AE8C: .4byte 0x0000FFBF
_0801AE90: .4byte 0x0000FF7F
_0801AE94: .4byte 0x0400010E
_0801AE98: .4byte 0x0400010C
_0801AE9C: .4byte 0x03000D18
	thumb_func_start sub_801AEA0
sub_801AEA0:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _0801AEB8 @ =0x03000D18
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _0801AECA
	cmp r0, #0x01
	bgt _0801AEBC
	cmp r0, #0x00
	beq _0801AEC6
	b _0801AED4
_0801AEB8: .4byte 0x03000D18
_0801AEBC:
	cmp r0, #0x02
	beq _0801AECE
	cmp r0, #0x03
	beq _0801AED2
	b _0801AED4
_0801AEC6:
	adds r2, r1, #0x0
	b _0801AED4
_0801AECA:
	lsls r2, r1, #0x02
	b _0801AED4
_0801AECE:
	lsls r2, r1, #0x04
	b _0801AED4
_0801AED2:
	lsls r2, r1, #0x06
_0801AED4:
	adds r0, r2, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
