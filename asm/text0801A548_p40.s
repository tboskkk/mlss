	.include "asm/macros.inc"

	.syntax unified
	.text

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
