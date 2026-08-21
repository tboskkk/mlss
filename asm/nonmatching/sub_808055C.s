	.syntax unified
	.text

	thumb_func_start sub_808055C
sub_808055C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	bl sub_80E3DA4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080805D0
	ldr r6, _080805D8 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8085440
	bl sub_80E3D70
	ldr r0, [r6, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08080594
	movs r1, #0x03
	bl sub_8082D60
_08080594:
	ldr r4, [r6, #0x00]
	adds r4, r4, r5
	ldr r0, _080805DC @ =0x0000077C
	ldr r5, _080805E0 @ =0x082000C4
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldr r2, [r6, #0x00]
	movs r3, #0xAE
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldrb r3, [r1, #0x00]
	movs r1, #0x10
	str r1, [sp, #0x000]
	movs r1, #0x50
	str r1, [sp, #0x004]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r2, r6
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x008]
	movs r1, #0x09
	adds r2, r5, #0x0
	bl sub_8082D74
	str r0, [r4, #0x00]
	ldr r0, _080805E4 @ =0x080805E9
	str r0, [r7, #0x04]
_080805D0:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080805D8: .4byte 0x03000FD8
_080805DC: .4byte 0x0000077C
_080805E0: .4byte 0x082000C4
_080805E4: .4byte sub_80805E8
