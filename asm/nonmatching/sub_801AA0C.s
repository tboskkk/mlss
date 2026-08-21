	.syntax unified
	.text

	thumb_func_start sub_801AA0C
sub_801AA0C:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r7, r4, #0x0
	ldr r6, _0801AA34 @ =0x03000D18
	ldr r0, [r6, #0x08]
	lsrs r5, r0, #0x1C
	bl sub_801AEDC
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0801AA4E
	cmp r4, #0x03
	beq _0801AA52
	cmp r4, #0x03
	bgt _0801AA38
	cmp r4, #0x02
	beq _0801AA3E
	b _0801AA4E
	.byte 0x00, 0x00
_0801AA34: .4byte 0x03000D18
_0801AA38:
	cmp r7, #0x04
	beq _0801AA64
	b _0801AA4E
_0801AA3E:
	ldr r0, [r6, #0x08]
	lsls r0, r0, #0x04
	lsrs r0, r0, #0x08
	movs r1, #0x01
	ands r0, r1
	str r0, [r6, #0x0C]
	cmp r5, #0x01
	beq _0801AA68
_0801AA4E:
	movs r0, #0x01
	b _0801AA6A
_0801AA52:
	cmp r5, #0x02
	bne _0801AA4E
	ldr r0, [r6, #0x08]
	lsls r0, r0, #0x04
	lsrs r0, r0, #0x08
	ldr r1, [r6, #0x0C]
	cmp r1, r0
	beq _0801AA68
	b _0801AA4E
_0801AA64:
	cmp r5, #0x03
	bne _0801AA4E
_0801AA68:
	movs r0, #0x00
_0801AA6A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
