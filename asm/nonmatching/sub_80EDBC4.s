	.syntax unified
	.text

	thumb_func_start sub_80EDBC4
sub_80EDBC4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	str r0, [sp, #0x030]
	adds r5, r1, #0x0
	str r2, [sp, #0x034]
	adds r4, r3, #0x0
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x04
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EDBF0
	ldr r0, [r4, #0x08]
	lsls r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	lsls r0, r0, #0x04
	str r0, [r4, #0x0C]
_080EDBF0:
	ldr r0, [r4, #0x04]
	cmp r0, #0x01
	beq _080EDC34
	cmp r0, #0x01
	bgt _080EDC00
	cmp r0, #0x00
	beq _080EDC06
	b _080EDC92
_080EDC00:
	cmp r0, #0x02
	beq _080EDC62
	b _080EDC92
_080EDC06:
	ldr r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EDC22
	ldr r3, [r5, #0x0C]
	cmp r3, #0x00
	bge _080EDC1C
	adds r3, #0xFF
_080EDC1C:
	asrs r3, r3, #0x08
	mov r8, r3
	b _080EDC26
_080EDC22:
	movs r0, #0x00
	mov r8, r0
_080EDC26:
	ldr r7, [r4, #0x08]
	ldr r6, [r4, #0x0C]
	movs r0, #0x01
	mov r10, r0
	movs r0, #0x00
	mov r9, r0
	b _080EDC90
_080EDC34:
	ldr r6, [r4, #0x08]
	mov r8, r6
	ldr r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EDC52
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080EDC4E
	adds r0, #0xFF
_080EDC4E:
	asrs r7, r0, #0x08
	b _080EDC54
_080EDC52:
	movs r7, #0x00
_080EDC54:
	ldr r6, [r4, #0x0C]
	movs r0, #0x00
	mov r10, r0
	movs r0, #0x01
	mov r9, r0
	movs r0, #0x00
	b _080EDC90
_080EDC62:
	ldr r6, [r4, #0x08]
	mov r8, r6
	ldr r7, [r4, #0x0C]
	ldr r0, [r4, #0x00]
	lsrs r0, r0, #0x01
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080EDC86
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080EDC82
	adds r1, #0xFF
_080EDC82:
	asrs r6, r1, #0x08
	b _080EDC88
_080EDC86:
	movs r6, #0x00
_080EDC88:
	movs r0, #0x00
	mov r10, r0
	mov r9, r0
	movs r0, #0x01
_080EDC90:
	str r0, [sp, #0x038]
_080EDC92:
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x02
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080EDCC4
	ldr r1, [r4, #0x14]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080EDCB0
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080EDCB2
_080EDCB0:
	lsls r0, r1, #0x08
_080EDCB2:
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x14]
	cmp r1, #0x00
	beq _080EDCC4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	bl sub_804794C
_080EDCC4:
	ldr r2, [r4, #0x00]
	asrs r0, r2, #0x02
	movs r1, #0x03
	ands r0, r1
	adds r0, #0x03
	mov r12, r0
	asrs r3, r2, #0x01
	movs r1, #0x01
	ands r3, r1
	str r7, [sp, #0x000]
	str r6, [sp, #0x004]
	mov r6, r10
	lsls r0, r6, #0x08
	str r0, [sp, #0x008]
	mov r6, r9
	lsls r0, r6, #0x08
	str r0, [sp, #0x00C]
	ldr r6, [sp, #0x038]
	lsls r0, r6, #0x08
	str r0, [sp, #0x010]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	str r0, [sp, #0x01C]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x020]
	ldrh r0, [r4, #0x14]
	str r0, [sp, #0x024]
	ands r2, r1
	cmp r2, #0x00
	beq _080EDD08
	str r1, [sp, #0x028]
	b _080EDD0E
_080EDD08:
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x028]
_080EDD0E:
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x02C]
	adds r0, r5, #0x0
	mov r1, r12
	adds r2, r3, #0x0
	mov r3, r8
	bl sub_8045F04
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EDD2A
	movs r0, #0x01
	b _080EDD38
_080EDD2A:
	ldr r0, [sp, #0x030]
	adds r1, r5, #0x0
	ldr r2, [sp, #0x034]
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080EDD38:
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
