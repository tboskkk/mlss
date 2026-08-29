	.syntax unified
	.text

	thumb_func_start sub_81DC048
sub_81DC048:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	ldr r2, [r4, #0x00]
	cmp r2, #0x01
	bhi _081DC056
	movs r0, #0x01
_081DC056:
	cmp r0, #0x00
	bne _081DC068
	movs r0, #0x00
	ldr r3, [r1, #0x00]
	cmp r3, #0x01
	bhi _081DC064
	movs r0, #0x01
_081DC064:
	cmp r0, #0x00
	beq _081DC06C
_081DC068:
	movs r0, #0x01
	b _081DC12A
_081DC06C:
	movs r0, #0x00
	cmp r2, #0x04
	bne _081DC074
	movs r0, #0x01
_081DC074:
	cmp r0, #0x00
	beq _081DC08C
	movs r0, #0x00
	cmp r3, #0x04
	bne _081DC080
	movs r0, #0x01
_081DC080:
	cmp r0, #0x00
	beq _081DC08C
	ldr r0, [r1, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	b _081DC12A
_081DC08C:
	movs r2, #0x00
	ldr r0, [r4, #0x00]
	cmp r0, #0x04
	bne _081DC096
	movs r2, #0x01
_081DC096:
	cmp r2, #0x00
	bne _081DC0E4
	movs r2, #0x00
	cmp r3, #0x04
	bne _081DC0A2
	movs r2, #0x01
_081DC0A2:
	cmp r2, #0x00
	beq _081DC0B4
_081DC0A6:
	ldr r0, [r1, #0x04]
	movs r1, #0x01
	negs r1, r1
	cmp r0, #0x00
	beq _081DC0EE
	movs r1, #0x01
	b _081DC0EE
_081DC0B4:
	movs r2, #0x00
	cmp r0, #0x02
	bne _081DC0BC
	movs r2, #0x01
_081DC0BC:
	cmp r2, #0x00
	beq _081DC0CC
	movs r2, #0x00
	cmp r3, #0x02
	bne _081DC0C8
	movs r2, #0x01
_081DC0C8:
	cmp r2, #0x00
	bne _081DC128
_081DC0CC:
	movs r2, #0x00
	cmp r0, #0x02
	bne _081DC0D4
	movs r2, #0x01
_081DC0D4:
	cmp r2, #0x00
	bne _081DC0A6
	movs r0, #0x00
	cmp r3, #0x02
	bne _081DC0E0
	movs r0, #0x01
_081DC0E0:
	cmp r0, #0x00
	beq _081DC0F2
_081DC0E4:
	ldr r0, [r4, #0x04]
	movs r1, #0x01
	cmp r0, #0x00
	beq _081DC0EE
	subs r1, #0x02
_081DC0EE:
	adds r0, r1, #0x0
	b _081DC12A
_081DC0F2:
	ldr r3, [r4, #0x04]
	ldr r0, [r1, #0x04]
	cmp r3, r0
	beq _081DC104
_081DC0FA:
	movs r0, #0x01
	cmp r3, #0x00
	beq _081DC12A
	subs r0, #0x02
	b _081DC12A
_081DC104:
	ldr r2, [r4, #0x08]
	ldr r0, [r1, #0x08]
	cmp r2, r0
	bgt _081DC0FA
	cmp r2, r0
	bge _081DC11C
_081DC110:
	movs r0, #0x01
	negs r0, r0
	cmp r3, #0x00
	beq _081DC12A
	movs r0, #0x01
	b _081DC12A
_081DC11C:
	ldr r0, [r4, #0x0C]
	ldr r1, [r1, #0x0C]
	cmp r0, r1
	bhi _081DC0FA
	cmp r0, r1
	bcc _081DC110
_081DC128:
	movs r0, #0x00
_081DC12A:
	pop {r4, pc}
