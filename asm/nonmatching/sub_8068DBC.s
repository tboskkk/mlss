	.syntax unified
	.text

	thumb_func_start sub_8068DBC
sub_8068DBC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08068DE2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08068DE8 @ =0x08068AA9
	str r0, [r4, #0x4C]
_08068DE2:
	pop {r4}
	pop {r0}
	bx r0
_08068DE8: .4byte sub_8068AA8
