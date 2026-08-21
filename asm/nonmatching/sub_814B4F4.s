	.syntax unified
	.text

	thumb_func_start sub_814B4F4
sub_814B4F4:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x004
	movs r2, #0x24
	movs r3, #0x0A
	bl sub_8139CAC
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x30
	bl sub_80FBB50
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814B526
	movs r1, #0x01
_0814B526:
	adds r0, r1, #0x0
	add sp, #0x014
	pop {r4, r5}
	pop {r1}
	bx r1
