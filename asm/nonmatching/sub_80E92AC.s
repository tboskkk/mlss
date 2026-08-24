	push {r4, r5, lr}
	add sp, #-0x040
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r1, [sp, #0x008]
	movs r1, #0x06
	str r1, [sp, #0x00C]
	movs r1, #0x01
	str r1, [sp, #0x010]
	ldr r0, [r0, #0x04]
	ldr r1, _080E930C @ =0x000001B7
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	str r0, [sp, #0x014]
	add r0, sp, #0x018
	movs r1, #0x00
	movs r2, #0x20
	movs r3, #0x00
	bl sub_8199D78
	add r0, sp, #0x018
	movs r1, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8199D5C
	add r0, sp, #0x02C
	add r1, sp, #0x018
	movs r2, #0x14
	bl memcpy
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x03C]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x02C]
	ldr r1, [sp, #0x030]
	ldr r2, [sp, #0x034]
	ldr r3, [sp, #0x038]
	bl sub_80E8944
	add sp, #0x040
	pop {r4, r5}
	pop {r1}
	bx r1
_080E930C: .4byte 0x000001B7
