	.syntax unified
	.text

	thumb_func_start sub_8112C50
sub_8112C50:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08112CD0
	ldr r0, [r5, #0x28]
	ldr r4, _08112CD8 @ =0x00000113
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	adds r1, #0x07
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	ldr r4, _08112CDC @ =0x000027F5
	cmp r0, #0x00
	beq _08112C9C
	adds r4, #0x0E
_08112C9C:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08112CA4
	adds r1, #0xFF
_08112CA4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08112CAE
	adds r2, #0xFF
_08112CAE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08112CB8
	adds r3, #0xFF
_08112CB8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_80DF024
	ldr r0, _08112CE0 @ =0x08112CE5
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_08112CD0:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08112CD8: .4byte 0x00000113
_08112CDC: .4byte 0x000027F5
_08112CE0: .4byte sub_8112CE4
