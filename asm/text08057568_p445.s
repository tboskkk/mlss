	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809B558
sub_809B558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x98
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	ldr r2, _0809B59C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x01
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
	ldr r0, _0809B5A0 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0809B5A4 @ =0x0809B611
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809B59C: .4byte 0x000040C2
_0809B5A0: .4byte 0x0000015D
_0809B5A4: .4byte sub_809B610
	thumb_func_start sub_809B5A8
sub_809B5A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B5FA
	ldr r2, _0809B604 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x02
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
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809B5E0
	adds r1, #0xFF
_0809B5E0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809B5EA
	adds r2, #0xFF
_0809B5EA:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809B608 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, _0809B60C @ =0x0809B679
	str r0, [r4, #0x4C]
_0809B5FA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B604: .4byte 0x000040C2
_0809B608: .4byte 0x00001202
_0809B60C: .4byte sub_809B678
	thumb_func_start sub_809B610
sub_809B610:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B662
	ldr r2, _0809B66C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x02
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
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809B648
	adds r1, #0xFF
_0809B648:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809B652
	adds r2, #0xFF
_0809B652:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809B670 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, _0809B674 @ =0x0809B6D9
	str r0, [r4, #0x4C]
_0809B662:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B66C: .4byte 0x000040C2
_0809B670: .4byte 0x00001202
_0809B674: .4byte sub_809B6D8
	thumb_func_start sub_809B678
sub_809B678:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B69C
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B69C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B69C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B6C8
	ldr r2, _0809B6D0 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809B6D4 @ =0x0809B739
	str r0, [r4, #0x4C]
_0809B6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B6D0: .4byte 0x000040C2
_0809B6D4: .4byte sub_809B738
	thumb_func_start sub_809B6D8
sub_809B6D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B6FC
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B6FC
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B6FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B728
	ldr r2, _0809B730 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809B734 @ =0x0809B755
	str r0, [r4, #0x4C]
_0809B728:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B730: .4byte 0x000040C2
_0809B734: .4byte sub_809B754
