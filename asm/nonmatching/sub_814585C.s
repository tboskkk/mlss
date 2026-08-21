	.syntax unified
	.text

	thumb_func_start sub_814585C
sub_814585C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r4, [sp, #0x01C]
	add r0, sp, #0x020
	ldrb r5, [r0, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x58
	str r4, [sp, #0x000]
	add r0, sp, #0x004
	strb r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A44C
	ldr r0, _081458A4 @ =0x00000242
	adds r3, r6, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081458A8
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081458AA
	.byte 0x00, 0x00
_081458A4: .4byte 0x00000242
_081458A8:
	movs r0, #0xFF
_081458AA:
	strb r0, [r6, #0x02]
	ldr r1, _081458C4 @ =0x08145B65
	ldr r0, [sp, #0x024]
	str r1, [r0, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [sp, #0x028]
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081458C4: .4byte sub_8145B64
