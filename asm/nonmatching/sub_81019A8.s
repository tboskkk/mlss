	.syntax unified
	.text

	thumb_func_start sub_81019A8
sub_81019A8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r0, _081019D8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _081019DC
	movs r1, #0x04
	ands r1, r0
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldrh r0, [r0, #0x14]
	str r0, [sp, #0x000]
	b _081019DE
	.byte 0x00, 0x00
_081019D8: .4byte 0x03000FD8
_081019DC:
	str r1, [sp, #0x000]
_081019DE:
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x20
	movs r3, #0xFF
	bl sub_807F708
	ldr r0, _08101A4C @ =0x084FB588
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, _08101A50 @ =0x089F808C
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r2, _08101A54 @ =0x06008000
	movs r3, #0xE4
	lsls r3, r3, #0x04
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r0, _08101A58 @ =0x00007002
	bl sub_8082AAC
	ldr r6, _08101A5C @ =0x00002003
	adds r0, r6, #0x0
	bl sub_8082AAC
	ldr r5, _08101A60 @ =0x00002050
	adds r0, r5, #0x0
	bl sub_8082AAC
	ldr r4, _08101A64 @ =0x0000401F
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r6, #0x0
	bl sub_8082A6C
	adds r0, r5, #0x0
	bl sub_8082A6C
	adds r0, r4, #0x0
	bl sub_8082A6C
	movs r0, #0x0C
	strh r0, [r7, #0x10]
	ldr r0, _08101A68 @ =0x08106C11
	str r0, [r7, #0x04]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08101A4C: .4byte 0x084FB588
_08101A50: .4byte 0x089F808C
_08101A54: .4byte 0x06008000
_08101A58: .4byte 0x00007002
_08101A5C: .4byte 0x00002003
_08101A60: .4byte 0x00002050
_08101A64: .4byte 0x0000401F
_08101A68: .4byte sub_8106C10
