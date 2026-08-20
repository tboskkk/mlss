	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E9330
sub_80E9330:
	push {lr}
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r3, [r0, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	asrs r0, r2
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E9380
	movs r0, #0x4C
	muls r0, r2
	adds r0, r3, r0
	adds r3, r0, #0x0
	adds r3, #0x42
	ldrb r2, [r3, #0x00]
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _080E936A
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
	b _080E9380
_080E936A:
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1C
	adds r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x03
	movs r1, #0x79
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
_080E9380:
	pop {r0}
	bx r0
	thumb_func_start sub_80E9384
sub_80E9384:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	movs r4, #0x00
	ldr r3, [r7, #0x00]
	b _080E9392
_080E938E:
	adds r4, r3, #0x0
	ldr r3, [r3, #0x00]
_080E9392:
	cmp r3, #0x00
	beq _080E93A0
	ldr r6, [r3, #0x04]
	cmp r6, r1
	bne _080E938E
	cmp r3, #0x00
	bne _080E93A2
_080E93A0:
	b _080E93A0
_080E93A2:
	cmp r4, #0x00
	beq _080E93AC
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	b _080E93B0
_080E93AC:
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x00]
_080E93B0:
	movs r4, #0x00
	ldr r2, [r7, #0x04]
	b _080E93BA
_080E93B6:
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
_080E93BA:
	cmp r2, #0x00
	beq _080E93C4
	ldr r0, [r2, #0x04]
	cmp r0, r1
	bls _080E93B6
_080E93C4:
	cmp r4, #0x00
	beq _080E93CC
	str r3, [r4, #0x00]
	b _080E93CE
_080E93CC:
	str r3, [r7, #0x04]
_080E93CE:
	str r2, [r3, #0x00]
	cmp r2, #0x00
	beq _080E93EE
	ldr r5, [r3, #0x08]
	adds r1, r6, r5
	ldr r0, [r2, #0x04]
	cmp r1, r0
	bne _080E93EE
	ldr r0, [r2, #0x08]
	adds r0, r5, r0
	str r0, [r3, #0x08]
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r7, #0x08]
	str r0, [r2, #0x00]
	str r2, [r7, #0x08]
_080E93EE:
	cmp r4, #0x00
	beq _080E940C
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	adds r0, r0, r1
	cmp r0, r6
	bne _080E940C
	ldr r0, [r3, #0x08]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	ldr r0, [r7, #0x08]
	str r0, [r3, #0x00]
	str r3, [r7, #0x08]
_080E940C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
