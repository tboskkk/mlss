	.syntax unified
	.text

	thumb_func_start sub_8059DDC
sub_8059DDC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _08059E4C @ =0x081E27DC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x6C]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _08059E50 @ =0x081E27E4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x74]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x6C]
	ldr r2, _08059E54 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x74]
	ldr r2, _08059E58 @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	adds r0, r5, #0x0
	bl sub_8059AF4
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8059D04
	adds r0, r5, #0x0
	bl sub_8059924
	ldr r0, [r5, #0x74]
	cmp r0, #0x00
	beq _08059E3A
	bl free_heap_8018D9C
_08059E3A:
	ldr r0, [r5, #0x6C]
	cmp r0, #0x00
	beq _08059E44
	bl free_heap_8018D9C
_08059E44:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08059E4C: .4byte 0x081E27DC
_08059E50: .4byte 0x081E27E4
_08059E54: .4byte 0x01000C00
_08059E58: .4byte 0x01000A00
