	.syntax unified
	.text

	thumb_func_start sub_802E688
sub_802E688:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldrb r0, [r0, #0x02]
	lsrs r3, r0, #0x05
	movs r1, #0x01
	adds r0, r3, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0802E74A
	mov r0, r12
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x38]
	cmp r3, #0x02
	beq _0802E6CE
	cmp r3, #0x02
	bgt _0802E6BC
	cmp r3, #0x00
	beq _0802E6C6
	b _0802E6F8
_0802E6BC:
	cmp r3, #0x04
	beq _0802E6DC
	cmp r3, #0x06
	beq _0802E6E8
	b _0802E6F8
_0802E6C6:
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r2, r3
	b _0802E6F8
_0802E6CE:
	movs r0, #0x9E
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	subs r1, r1, r0
	b _0802E6F8
_0802E6DC:
	movs r0, #0x9F
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r0, [r0, #0x00]
	subs r2, r2, r0
	b _0802E6F8
_0802E6E8:
	ldr r0, _0802E734 @ =0xFFFFFF00
	adds r1, r1, r0
	movs r0, #0x9E
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	adds r1, r1, r0
_0802E6F8:
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldr r3, [r0, #0x00]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0802E70A
	ldr r1, _0802E738 @ =0x00000FFF
	adds r0, r0, r1
_0802E70A:
	lsls r0, r0, #0x04
	asrs r1, r0, #0x10
	cmp r2, #0x00
	bge _0802E716
	ldr r0, _0802E738 @ =0x00000FFF
	adds r2, r2, r0
_0802E716:
	lsls r2, r2, #0x04
	asrs r2, r2, #0x10
	adds r0, r3, #0x0
	bl get_coldef_ptr_by_xz
	cmp r5, #0x00
	bne _0802E73C
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x18
	bne _0802E74A
_0802E72E:
	movs r0, #0x01
	b _0802E74C
	.byte 0x00, 0x00
_0802E734: .4byte 0xFFFFFF00
_0802E738: .4byte 0x00000FFF
_0802E73C:
	ldrb r0, [r0, #0x00]
	movs r2, #0x78
	ands r2, r0
	cmp r2, #0x28
	beq _0802E72E
	cmp r2, #0x38
	beq _0802E72E
_0802E74A:
	movs r0, #0x00
_0802E74C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
