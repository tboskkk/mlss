	.syntax unified
	.text

	thumb_func_start sub_81DBBA0
sub_81DBBA0:
	push {r4, lr}
	adds r3, r1, #0x0
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x09
	lsrs r2, r1, #0x09
	lsls r1, r0, #0x01
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1F
	str r0, [r3, #0x04]
	cmp r1, #0x00
	bne _081DBBE4
	cmp r2, #0x00
	bne _081DBBC0
	movs r0, #0x02
	str r0, [r3, #0x00]
	b _081DBC18
_081DBBC0:
	adds r4, r1, #0x0
	subs r4, #0x7E
	str r4, [r3, #0x08]
	lsls r2, r2, #0x07
	movs r0, #0x03
	str r0, [r3, #0x00]
	ldr r1, _081DBBE0 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _081DBC00
	adds r0, r4, #0x0
_081DBBD4:
	lsls r2, r2, #0x01
	subs r0, #0x01
	cmp r2, r1
	bls _081DBBD4
	str r0, [r3, #0x08]
	b _081DBC00
_081DBBE0: .4byte 0x3FFFFFFF
_081DBBE4:
	cmp r1, #0xFF
	bne _081DBC04
	cmp r2, #0x00
	bne _081DBBF2
	movs r0, #0x04
	str r0, [r3, #0x00]
	b _081DBC18
_081DBBF2:
	movs r0, #0x80
	lsls r0, r0, #0x0D
	ands r0, r2
	cmp r0, #0x00
	beq _081DBBFE
	movs r0, #0x01
_081DBBFE:
	str r0, [r3, #0x00]
_081DBC00:
	str r2, [r3, #0x0C]
	b _081DBC18
_081DBC04:
	adds r0, r1, #0x0
	subs r0, #0x7F
	str r0, [r3, #0x08]
	movs r0, #0x03
	str r0, [r3, #0x00]
	lsls r0, r2, #0x07
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0x0C]
_081DBC18:
	pop {r4, pc}
	.byte 0x00, 0x00
