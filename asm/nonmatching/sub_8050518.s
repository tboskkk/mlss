	.syntax unified
	.text

	thumb_func_start sub_8050518
sub_8050518:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	adds r2, r5, #0x0
	bl sub_8047C68
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0805054E
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x70
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r3, [r1, #0x04]
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
_0805054E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
