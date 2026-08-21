	.syntax unified
	.text

	thumb_func_start __modsi3
__modsi3:
	movs r3, #0x01
	cmp r1, #0x00
	beq _081DAC00
	bpl _081DAB46
	negs r1, r1
_081DAB46:
	push {r4}
	push {r0}
	cmp r0, #0x00
	bpl _081DAB50
	negs r0, r0
_081DAB50:
	cmp r0, r1
	bcc _081DABF4
	movs r4, #0x01
	lsls r4, r4, #0x1C
_081DAB58:
	cmp r1, r4
	bcs _081DAB66
	cmp r1, r0
	bcs _081DAB66
	lsls r1, r1, #0x04
	lsls r3, r3, #0x04
	b _081DAB58
_081DAB66:
	lsls r4, r4, #0x03
_081DAB68:
	cmp r1, r4
	bcs _081DAB76
	cmp r1, r0
	bcs _081DAB76
	lsls r1, r1, #0x01
	lsls r3, r3, #0x01
	b _081DAB68
_081DAB76:
	movs r2, #0x00
	cmp r0, r1
	bcc _081DAB7E
	subs r0, r0, r1
_081DAB7E:
	lsrs r4, r1, #0x01
	cmp r0, r4
	bcc _081DAB90
	subs r0, r0, r4
	mov r12, r3
	movs r4, #0x01
	rors r3, r4
	orrs r2, r3
	mov r3, r12
_081DAB90:
	lsrs r4, r1, #0x02
	cmp r0, r4
	bcc _081DABA2
	subs r0, r0, r4
	mov r12, r3
	movs r4, #0x02
	rors r3, r4
	orrs r2, r3
	mov r3, r12
_081DABA2:
	lsrs r4, r1, #0x03
	cmp r0, r4
	bcc _081DABB4
	subs r0, r0, r4
	mov r12, r3
	movs r4, #0x03
	rors r3, r4
	orrs r2, r3
	mov r3, r12
_081DABB4:
	mov r12, r3
	cmp r0, #0x00
	beq _081DABC2
	lsrs r3, r3, #0x04
	beq _081DABC2
	lsrs r1, r1, #0x04
	b _081DAB76
_081DABC2:
	movs r4, #0x0E
	lsls r4, r4, #0x1C
	ands r2, r4
	beq _081DABF4
	mov r3, r12
	movs r4, #0x03
	rors r3, r4
	tst r2, r3
	beq _081DABD8
	lsrs r4, r1, #0x03
	adds r0, r0, r4
_081DABD8:
	mov r3, r12
	movs r4, #0x02
	rors r3, r4
	tst r2, r3
	beq _081DABE6
	lsrs r4, r1, #0x02
	adds r0, r0, r4
_081DABE6:
	mov r3, r12
	movs r4, #0x01
	rors r3, r4
	tst r2, r3
	beq _081DABF4
	lsrs r4, r1, #0x01
	adds r0, r0, r4
_081DABF4:
	pop {r4}
	cmp r4, #0x00
	bpl _081DABFC
	negs r0, r0
_081DABFC:
	pop {r4}
	mov pc, lr
_081DAC00:
	push {lr}
	bl nullsub_1
	movs r0, #0x00
	pop {pc}
	.byte 0x00, 0x00
