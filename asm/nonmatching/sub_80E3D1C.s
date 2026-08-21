	.syntax unified
	.text

	thumb_func_start sub_80E3D1C
sub_80E3D1C:
	push {lr}
	add sp, #-0x010
	ldr r0, _080E3D60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	cmp r0, #0x00
	beq _080E3D34
	ldrh r2, [r0, #0x0A]
_080E3D34:
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	ldr r1, _080E3D64 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r3, #0x10
	bl sub_81151E4
	ldr r0, _080E3D68 @ =0x0300034C
	ldr r1, _080E3D6C @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	add sp, #0x010
	pop {r0}
	bx r0
_080E3D60: .4byte 0x03000FD8
_080E3D64: .4byte 0x0000FFFF
_080E3D68: .4byte 0x0300034C
_080E3D6C: .4byte 0x00000884
