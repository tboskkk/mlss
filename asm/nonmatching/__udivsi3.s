	.syntax unified
	.text

	thumb_func_start __udivsi3
__udivsi3:
	cmp r1, #0x00
	beq _081DAC82
	movs r3, #0x01
	movs r2, #0x00
	push {r4}
	cmp r0, r1
	bcc _081DAC7C
	movs r4, #0x01
	lsls r4, r4, #0x1C
_081DAC26:
	cmp r1, r4
	bcs _081DAC34
	cmp r1, r0
	bcs _081DAC34
	lsls r1, r1, #0x04
	lsls r3, r3, #0x04
	b _081DAC26
_081DAC34:
	lsls r4, r4, #0x03
_081DAC36:
	cmp r1, r4
	bcs _081DAC44
	cmp r1, r0
	bcs _081DAC44
	lsls r1, r1, #0x01
	lsls r3, r3, #0x01
	b _081DAC36
_081DAC44:
	cmp r0, r1
	bcc _081DAC4C
	subs r0, r0, r1
	orrs r2, r3
_081DAC4C:
	lsrs r4, r1, #0x01
	cmp r0, r4
	bcc _081DAC58
	subs r0, r0, r4
	lsrs r4, r3, #0x01
	orrs r2, r4
_081DAC58:
	lsrs r4, r1, #0x02
	cmp r0, r4
	bcc _081DAC64
	subs r0, r0, r4
	lsrs r4, r3, #0x02
	orrs r2, r4
_081DAC64:
	lsrs r4, r1, #0x03
	cmp r0, r4
	bcc _081DAC70
	subs r0, r0, r4
	lsrs r4, r3, #0x03
	orrs r2, r4
_081DAC70:
	cmp r0, #0x00
	beq _081DAC7C
	lsrs r3, r3, #0x04
	beq _081DAC7C
	lsrs r1, r1, #0x04
	b _081DAC44
_081DAC7C:
	adds r0, r2, #0x0
	pop {r4}
	mov pc, lr
_081DAC82:
	push {lr}
	bl nullsub_1
	movs r0, #0x00
	pop {pc}
