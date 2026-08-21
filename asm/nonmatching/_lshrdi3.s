	.syntax unified
	.text

	thumb_func_start _lshrdi3
_lshrdi3:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r0, #0x0
	cmp r2, #0x00
	beq _081DC740
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0x00
	bgt _081DC72C
	movs r4, #0x00
	negs r0, r0
	adds r3, r6, #0x0
	lsrs r3, r0
	b _081DC73C
_081DC72C:
	adds r1, r6, #0x0
	lsls r1, r0
	adds r4, r6, #0x0
	lsrs r4, r2
	adds r0, r5, #0x0
	lsrs r0, r2
	adds r3, r0, #0x0
	orrs r3, r1
_081DC73C:
	adds r1, r4, #0x0
	adds r0, r3, #0x0
_081DC740:
	pop {r4, r5, r6, pc}
	.byte 0x00, 0x00
