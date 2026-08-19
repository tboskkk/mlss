	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81DD6B0
sub_81DD6B0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r2, _081DD6E8 @ =0x08212804
	movs r0, #0x0C
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	adds r0, #0x08
	bl sub_816168C
	ldr r0, [r4, #0x08]
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	bne _081DD6EC
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _081DD6EC
	str r4, [r5, #0x04]
	str r4, [r5, #0x00]
	str r0, [r4, #0x00]
	str r4, [r4, #0x04]
	b _081DD6FA
	.byte 0x00, 0x00
_081DD6E8: .4byte 0x08212804
_081DD6EC:
	ldr r0, [r5, #0x04]
	str r4, [r0, #0x04]
	ldr r0, [r5, #0x04]
	str r0, [r4, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x04]
	str r4, [r5, #0x04]
_081DD6FA:
	ldr r0, [r5, #0x08]
	adds r0, #0x01
	str r0, [r5, #0x08]
	adds r0, r6, #0x0
	movs r1, #0x02
	bl sub_816166C
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_81DD710
sub_81DD710:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _081DD764 @ =0x08CDD0D0
	str r0, [r5, #0x0C]
	ldr r4, [r5, #0x00]
	cmp r4, #0x00
	beq _081DD748
_081DD720:
	ldr r2, [r4, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r3, #0x08
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x0C]
	movs r1, #0x02
	bl _call_via_r2
	cmp r4, #0x00
	beq _081DD742
	ldr r0, _081DD768 @ =0x08CDD0B8
	str r0, [r4, #0x08]
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_081DD742:
	ldr r4, [r4, #0x04]
	cmp r4, #0x00
	bne _081DD720
_081DD748:
	movs r0, #0x00
	str r0, [r5, #0x04]
	str r0, [r5, #0x00]
	str r0, [r5, #0x08]
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _081DD75E
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_081DD75E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081DD764: .4byte 0x08CDD0D0
_081DD768: .4byte 0x08CDD0B8
