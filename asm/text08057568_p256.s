	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start _call_via_r0
_call_via_r0: @ 081DAA68
	bx r0
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r1
_call_via_r1: @ 081DAA6C
	bx r1
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r2
_call_via_r2: @ 081DAA70
	bx r2
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r3
_call_via_r3: @ 081DAA74
	bx r3
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r4
_call_via_r4: @ 081DAA78
	bx r4
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r5
_call_via_r5: @ 081DAA7C
	bx r5
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r6
_call_via_r6: @ 081DAA80
	bx r6
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r7
_call_via_r7: @ 081DAA84
	bx r7
	.byte 0xC0, 0x46
	thumb_func_start _call_via_r8
_call_via_r8: @ 081DAA88
	bx r8
	.byte 0xC0, 0x46
	thumb_func_start sub_81DAA8C
sub_81DAA8C:
	bx r9
	.byte 0xC0, 0x46, 0x50, 0x47, 0xC0, 0x46, 0x58, 0x47, 0xC0, 0x46
	thumb_func_start sub_81DAA98
sub_81DAA98:
	bx r12
	.byte 0xC0, 0x46, 0x68, 0x47, 0xC0, 0x46, 0x70, 0x47, 0xC0, 0x46
	thumb_func_start __divsi3
__divsi3:
	cmp r1, #0x00
	beq _081DAB2C
	push {r4}
	adds r4, r0, #0x0
	eors r4, r1
	mov r12, r4
	movs r3, #0x01
	movs r2, #0x00
	cmp r1, #0x00
	bpl _081DAABA
	negs r1, r1
_081DAABA:
	cmp r0, #0x00
	bpl _081DAAC0
	negs r0, r0
_081DAAC0:
	cmp r0, r1
	bcc _081DAB1E
	movs r4, #0x01
	lsls r4, r4, #0x1C
_081DAAC8:
	cmp r1, r4
	bcs _081DAAD6
	cmp r1, r0
	bcs _081DAAD6
	lsls r1, r1, #0x04
	lsls r3, r3, #0x04
	b _081DAAC8
_081DAAD6:
	lsls r4, r4, #0x03
_081DAAD8:
	cmp r1, r4
	bcs _081DAAE6
	cmp r1, r0
	bcs _081DAAE6
	lsls r1, r1, #0x01
	lsls r3, r3, #0x01
	b _081DAAD8
_081DAAE6:
	cmp r0, r1
	bcc _081DAAEE
	subs r0, r0, r1
	orrs r2, r3
_081DAAEE:
	lsrs r4, r1, #0x01
	cmp r0, r4
	bcc _081DAAFA
	subs r0, r0, r4
	lsrs r4, r3, #0x01
	orrs r2, r4
_081DAAFA:
	lsrs r4, r1, #0x02
	cmp r0, r4
	bcc _081DAB06
	subs r0, r0, r4
	lsrs r4, r3, #0x02
	orrs r2, r4
_081DAB06:
	lsrs r4, r1, #0x03
	cmp r0, r4
	bcc _081DAB12
	subs r0, r0, r4
	lsrs r4, r3, #0x03
	orrs r2, r4
_081DAB12:
	cmp r0, #0x00
	beq _081DAB1E
	lsrs r3, r3, #0x04
	beq _081DAB1E
	lsrs r1, r1, #0x04
	b _081DAAE6
_081DAB1E:
	adds r0, r2, #0x0
	mov r4, r12
	cmp r4, #0x00
	bpl _081DAB28
	negs r0, r0
_081DAB28:
	pop {r4}
	mov pc, lr
_081DAB2C:
	push {lr}
	bl nullsub_1
	movs r0, #0x00
	pop {pc}
	.byte 0x00, 0x00
