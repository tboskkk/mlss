	push {r4, r5, r6, lr}
	ldr r2, [r0, #0x0C]
	ldr r6, [r0, #0x04]
	movs r5, #0x00
	movs r1, #0x00
	ldr r3, [r0, #0x00]
	cmp r3, #0x01
	bhi _081DBAFA
	movs r1, #0x01
_081DBAFA:
	cmp r1, #0x00
	beq _081DBB08
	movs r5, #0xFF
	movs r0, #0x80
	lsls r0, r0, #0x0D
	orrs r2, r0
	b _081DBB6E
_081DBB08:
	movs r1, #0x00
	cmp r3, #0x04
	bne _081DBB10
	movs r1, #0x01
_081DBB10:
	cmp r1, #0x00
	bne _081DBB44
	movs r1, #0x00
	cmp r3, #0x02
	bne _081DBB1C
	movs r1, #0x01
_081DBB1C:
	cmp r1, #0x00
	beq _081DBB24
	movs r2, #0x00
	b _081DBB6E
_081DBB24:
	cmp r2, #0x00
	beq _081DBB6E
	ldr r0, [r0, #0x08]
	movs r3, #0x7E
	negs r3, r3
	cmp r0, r3
	bge _081DBB40
	subs r0, r3, r0
	cmp r0, #0x19
	ble _081DBB3C
	movs r2, #0x00
	b _081DBB6C
_081DBB3C:
	lsrs r2, r0
	b _081DBB6C
_081DBB40:
	cmp r0, #0x7F
	ble _081DBB4A
_081DBB44:
	movs r5, #0xFF
	movs r2, #0x00
	b _081DBB6E
_081DBB4A:
	adds r5, r0, #0x0
	adds r5, #0x7F
	movs r0, #0x7F
	ands r0, r2
	cmp r0, #0x40
	bne _081DBB62
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _081DBB64
	adds r2, #0x40
	b _081DBB64
_081DBB62:
	adds r2, #0x3F
_081DBB64:
	cmp r2, #0x00
	bge _081DBB6C
	lsrs r2, r2, #0x01
	adds r5, #0x01
_081DBB6C:
	lsrs r2, r2, #0x07
_081DBB6E:
	ldr r0, _081DBB90 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _081DBB94 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xFF
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _081DBB98 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1F
	ldr r0, _081DBB9C @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0x0
	pop {r4, r5, r6, pc}
_081DBB90: .4byte 0x007FFFFF
_081DBB94: .4byte 0xFF800000
_081DBB98: .4byte 0x807FFFFF
_081DBB9C: .4byte 0x7FFFFFFF
