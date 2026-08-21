	.syntax unified
	.text

	thumb_func_start sub_802EC64
sub_802EC64:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r1, [r4, #0x00]
	ldr r3, _0802ECE4 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r1, [r6, #0x00]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	bne _0802ED68
	cmp r7, #0x00
	bne _0802ED48
	ldr r3, [r6, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802ECE8
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	b _0802ECEA
	.byte 0x00, 0x00
_0802ECE4: .4byte 0x00000351
_0802ECE8:
	ldr r1, [r3, #0x14]
_0802ECEA:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0802ECFA
	adds r0, #0xFF
_0802ECFA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x78
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0802ED0A
	adds r0, #0xFF
_0802ED0A:
	asrs r4, r0, #0x08
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0802ED28
	ldr r2, _0802ED24 @ =0x0000028D
	adds r0, r5, r2
	b _0802ED2C
	.byte 0x00, 0x00
_0802ED24: .4byte 0x0000028D
_0802ED28:
	ldr r1, _0802ED44 @ =0x0000028F
	adds r0, r5, r1
_0802ED2C:
	ldrb r0, [r0, #0x00]
	subs r0, r4, r0
	str r0, [sp, #0x000]
	movs r0, #0xC0
	lsls r0, r0, #0x04
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8028AFC
	b _0802ED5E
_0802ED44: .4byte 0x0000028F
_0802ED48:
	adds r0, r5, #0x0
	adds r0, #0xFA
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1B
	movs r0, #0x01
	eors r1, r0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_80284B0
_0802ED5E:
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x04
	b _0802EDB2
_0802ED68:
	movs r2, #0x01
	cmp r7, #0x00
	bne _0802ED70
	movs r2, #0x10
_0802ED70:
	ldr r0, _0802EDBC @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8027030
	ldr r1, [r4, #0x00]
	ldr r3, _0802EDC0 @ =0x0000020D
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF9
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x11
_0802EDB2:
	strb r0, [r1, #0x00]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802EDBC: .4byte 0x0000FFFF
_0802EDC0: .4byte 0x0000020D
