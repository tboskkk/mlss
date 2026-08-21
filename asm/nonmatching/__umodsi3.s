	.syntax unified
	.text

	thumb_func_start __umodsi3
__umodsi3:
	cmp r1, #0x00
	beq _081DAD42
	movs r3, #0x01
	cmp r0, r1
	bcs _081DAC98
	mov pc, lr
_081DAC98:
	push {r4}
	movs r4, #0x01
	lsls r4, r4, #0x1C
_081DAC9E:
	cmp r1, r4
	bcs _081DACAC
	cmp r1, r0
	bcs _081DACAC
	lsls r1, r1, #0x04
	lsls r3, r3, #0x04
	b _081DAC9E
_081DACAC:
	lsls r4, r4, #0x03
_081DACAE:
	cmp r1, r4
	bcs _081DACBC
	cmp r1, r0
	bcs _081DACBC
	lsls r1, r1, #0x01
	lsls r3, r3, #0x01
	b _081DACAE
_081DACBC:
	movs r2, #0x00
	cmp r0, r1
	bcc _081DACC4
	subs r0, r0, r1
_081DACC4:
	lsrs r4, r1, #0x01
	cmp r0, r4
	bcc _081DACD6
	subs r0, r0, r4
	mov r12, r3
	movs r4, #0x01
	rors r3, r4
	orrs r2, r3
	mov r3, r12
_081DACD6:
	lsrs r4, r1, #0x02
	cmp r0, r4
	bcc _081DACE8
	subs r0, r0, r4
	mov r12, r3
	movs r4, #0x02
	rors r3, r4
	orrs r2, r3
	mov r3, r12
_081DACE8:
	lsrs r4, r1, #0x03
	cmp r0, r4
	bcc _081DACFA
	subs r0, r0, r4
	mov r12, r3
	movs r4, #0x03
	rors r3, r4
	orrs r2, r3
	mov r3, r12
_081DACFA:
	mov r12, r3
	cmp r0, #0x00
	beq _081DAD08
	lsrs r3, r3, #0x04
	beq _081DAD08
	lsrs r1, r1, #0x04
	b _081DACBC
_081DAD08:
	movs r4, #0x0E
	lsls r4, r4, #0x1C
	ands r2, r4
	bne _081DAD14
	pop {r4}
	mov pc, lr
_081DAD14:
	mov r3, r12
	movs r4, #0x03
	rors r3, r4
	tst r2, r3
	beq _081DAD22
	lsrs r4, r1, #0x03
	adds r0, r0, r4
_081DAD22:
	mov r3, r12
	movs r4, #0x02
	rors r3, r4
	tst r2, r3
	beq _081DAD30
	lsrs r4, r1, #0x02
	adds r0, r0, r4
_081DAD30:
	mov r3, r12
	movs r4, #0x01
	rors r3, r4
	tst r2, r3
	beq _081DAD3E
	lsrs r4, r1, #0x01
	adds r0, r0, r4
_081DAD3E:
	pop {r4}
	mov pc, lr
_081DAD42:
	push {lr}
	bl nullsub_1
	movs r0, #0x00
	pop {pc}
