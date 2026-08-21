	.syntax unified
	.text

	thumb_func_start sub_809B114
sub_809B114:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0809B13C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B160
	cmp r1, r2
	bne _0809B144
	ldr r2, _0809B140 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x02
	b _0809B14A
_0809B13C: .4byte 0x03000FD8
_0809B140: .4byte 0x000040BF
_0809B144:
	ldr r2, _0809B194 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x05
_0809B14A:
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0809B160:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B168
	adds r1, #0xFF
_0809B168:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B172
	adds r2, #0xFF
_0809B172:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B17C
	adds r3, #0xFF
_0809B17C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B198 @ =0x000011E6
	bl sub_80DF024
	ldr r0, _0809B19C @ =0x0809B479
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B194: .4byte 0x000040BF
_0809B198: .4byte 0x000011E6
_0809B19C: .4byte sub_809B478
