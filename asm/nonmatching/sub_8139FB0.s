	.syntax unified
	.text

	thumb_func_start sub_8139FB0
sub_8139FB0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x028]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0x0
	cmp r4, #0x00
	beq _0813A05A
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_8139D44
	cmp r4, #0x02
	beq _0813A038
	cmp r4, #0x02
	bgt _08139FE2
	cmp r4, #0x01
	beq _08139FEC
	b _0813A05E
_08139FE2:
	cmp r6, #0x03
	beq _08139FF2
	cmp r6, #0x04
	beq _0813A016
	b _0813A05E
_08139FEC:
	movs r1, #0x80
	lsls r1, r1, #0x02
	b _0813A03C
_08139FF2:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A05E
	b _0813A038
_0813A016:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813A05A
_0813A038:
	movs r1, #0x81
	lsls r1, r1, #0x02
_0813A03C:
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A05E
_0813A05A:
	movs r0, #0x00
	b _0813A060
_0813A05E:
	movs r0, #0x01
_0813A060:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
