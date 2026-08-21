	.syntax unified
	.text

	thumb_func_start sub_81489E0
sub_81489E0:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081489FA
	movs r0, #0x00
	b _08148A30
_081489FA:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r6, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _08148A2E
	movs r1, #0x01
_08148A2E:
	adds r0, r1, #0x0
_08148A30:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r1}
	bx r1
