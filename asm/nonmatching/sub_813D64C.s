	.syntax unified
	.text

	thumb_func_start sub_813D64C
sub_813D64C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8139030
	adds r0, r4, #0x0
	movs r1, #0x0B
	bl sub_8138FD4
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	bl sub_8138944
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r2, _0813D6A0 @ =0x0813CDB9
	str r2, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, _0813D6A4 @ =0x08139421
	str r1, [r0, #0x00]
	adds r3, #0x0C
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
_0813D6A0: .4byte sub_813CDB8
_0813D6A4: .4byte sub_8139420
