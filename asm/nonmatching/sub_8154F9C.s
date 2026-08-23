	.syntax unified
	.text

	thumb_func_start sub_8154F9C
sub_8154F9C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r0, r7, #0x0
	bl sub_8151CDC
	ldr r0, [r6, #0x00]
	cmp r0, #0x04
	bls _08154FB2
	b _0815523C
_08154FB2:
	lsls r0, r0, #0x02
	ldr r1, _08154FBC @ =lbl_08154FC0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08154FBC: .4byte lbl_08154FC0
lbl_08154FC0:
	.4byte _08154FD4
	.4byte _08155056
	.4byte _081550B4
	.4byte _0815510C
	.4byte _081551C8
_08154FD4:
	ldr r1, [pc, #84] @ (0x815502c)
	adds r0, r7, r1
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #16
	lsrs r3, r0, #16
	cmp r3, #0
	beq.n _0815503C
	movs r2, #128 @ 0x80
	lsls r2, r2, #18
	ldrh r0, [r2, #0]
	movs r3, #128 @ 0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldrh r0, [r2, #0]
	movs r3, #128 @ 0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #44] @ (0x8155030)
	movs r0, #63 @ 0x3f
	strh r0, [r1, #0]
	adds r1, #2
	movs r0, #31
	strh r0, [r1, #0]
	adds r1, #6
	ldr r2, [pc, #32] @ (0x8155034)
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, [pc, #28] @ (0x8155038)
	adds r0, r3, #0
	strh r0, [r1, #0]
	subs r1, #18
	movs r0, #0
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #160 @ 0xa0
	strh r0, [r1, #0]
	b.n _08155050
	adds r4, r0, #3
	movs r0, r0
	lsls r0, r1, #1
	lsls r0, r0, #8
	subs r7, #68 @ 0x44
	movs r0, r0
	asrs r0, r1, #32
	movs r0, r0
_0815503C:
	movs r2, #128 @ 0x80
	lsls r2, r2, #18
	ldrh r1, [r2, #0]
	ldr r0, [pc, #296] @ (0x815516c)
	ands r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #292] @ (0x8155170)
	strh r3, [r0, #0]
	adds r0, #4
	strh r3, [r0, #0]
_08155050:
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_08155056:
	movs r2, #128 @ 0x80
	lsls r2, r2, #18
	ldrh r0, [r2, #0]
	movs r3, #218 @ 0xda
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	movs r1, #229 @ 0xe5
	lsls r1, r1, #5
	adds r0, r7, r1
	ldr r5, [r0, #0]
	movs r4, #1
	negs r4, r4
	str r4, [sp, #0]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #4
	ldr r1, [pc, #248] @ (0x8155174)
	movs r2, #1
	adds r3, r4, #0
	bl sub_8020DD0
	str r0, [r5, #4]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #27
	adds r2, r4, #0
	movs r3, #0
	bl sub_801E150
	ldr r0, [r5, #4]
	bl sprite_show_8020CBC
	ldr r1, [r5, #4]
	ldr r0, [r5, #12]
	asrs r0, r0, #8
	strh r0, [r1, #0]
	ldr r1, [r5, #4]
	ldr r0, [r5, #16]
	asrs r0, r0, #8
	strh r0, [r1, #2]
	movs r0, #1
	strh r0, [r5, #8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_081550B4:
	movs r2, #229 @ 0xe5
	lsls r2, r2, #5
	adds r0, r7, r2
	ldr r0, [r0, #0]
	bl sub_8154C9C
	adds r1, r0, #0
	cmp r1, #3
	beq.n _081550C8
	b.n _0815523C
_081550C8:
	ldr r0, [pc, #172] @ (0x8155178)
	ldrh r0, [r0, #0]
	ands r1, r0
	str r1, [r6, #36] @ 0x24
	ldr r0, [pc, #168] @ (0x815517c)
	ldr r4, [r0, #0]
	ldr r3, [pc, #168] @ (0x8155180)
	adds r4, r4, r3
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	ldr r1, [pc, #164] @ (0x8155184)
	adds r0, r0, r1
	movs r1, #50 @ 0x32
	bl __divsi3
	str r0, [r6, #24]
	ldr r0, [r4, #0]
	ldr r0, [r0, #8]
	ldr r2, [pc, #152] @ (0x8155188)
	adds r0, r0, r2
	movs r1, #50 @ 0x32
	bl __divsi3
	str r0, [r6, #28]
	movs r0, #160 @ 0xa0
	lsls r0, r0, #8
	str r0, [r6, #16]
	ldr r0, [pc, #140] @ (0x815518c)
	str r0, [r6, #32]
	movs r0, #30
	str r0, [r6, #12]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_0815510C:
	movs r3, #229 @ 0xe5
	lsls r3, r3, #5
	adds r0, r7, r3
	ldr r0, [r0, #0]
	bl sub_8154C9C
	cmp r0, #2
	beq.n _081551C2
	ldr r0, [r6, #16]
	movs r1, #200 @ 0xc8
	lsls r1, r1, #6
	cmp r0, r1
	bgt.n _08155128
	str r1, [r6, #16]
_08155128:
	ldr r0, [pc, #100] @ (0x8155190)
	adds r4, r7, r0
	ldr r0, [r4, #0]
	ldr r1, [pc, #100] @ (0x8155194)
	adds r5, r7, r1
	ldr r1, [r5, #0]
	adds r1, #4
	bl sub_8150C68
	ldr r2, [r4, #0]
	ldr r0, [r2, #12]
	ldr r1, [r6, #24]
	adds r0, r0, r1
	str r0, [r2, #12]
	ldr r2, [r4, #0]
	ldr r0, [r2, #16]
	ldr r1, [r6, #28]
	adds r0, r0, r1
	str r0, [r2, #16]
	ldr r0, [r6, #16]
	ldr r1, [r6, #32]
	subs r0, r0, r1
	str r0, [r6, #16]
	ldr r0, [r4, #0]
	ldr r0, [r0, #12]
	asrs r1, r0, #8
	cmp r1, #10
	ble.n _08155198
	ldr r0, [r5, #0]
	movs r1, #0
	bl sub_815FA70
	b.n _0815523C
	movs r0, r0
_0815516C:
	.byte 0xFF, 0xFB, 0x00, 0x00, 0x50, 0x00, 0x00, 0x02, 0x05, 0x50, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x02
	.byte 0x18, 0x10, 0x00, 0x03, 0x9C, 0x1C, 0x00, 0x00, 0x00, 0x88, 0xFF, 0xFF, 0x00, 0xB0, 0xFF, 0xFF
	.byte 0x33, 0x02, 0x00, 0x00, 0xB4, 0x1C, 0x00, 0x00, 0x98, 0x1C, 0x00, 0x00
_08155198:
	.byte 0x04, 0x29, 0x04, 0xDD, 0x28, 0x68, 0x04, 0x21, 0x0A, 0xF0, 0x66, 0xFC, 0x4A, 0xE0, 0x05, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x04, 0xDD, 0x28, 0x68, 0x05, 0x21, 0x0A, 0xF0, 0x5D, 0xFC, 0x41, 0xE0
	.byte 0x28, 0x68, 0x06, 0x21, 0x0A, 0xF0, 0x58, 0xFC, 0x3C, 0xE0
_081551C2:
	.byte 0x30, 0x68, 0x01, 0x30, 0x30, 0x60
_081551C8:
	.byte 0x38, 0x1C, 0x00, 0x21, 0xFD, 0xF7, 0x80, 0xFB, 0x71, 0x68, 0x08, 0x22, 0x88, 0x5E, 0x30, 0x18
	.byte 0xCA, 0x68, 0x03, 0x21, 0x85, 0xF0, 0x48, 0xFC, 0xF9, 0x23, 0x5B, 0x01, 0xF8, 0x18, 0x00, 0x78
	.byte 0x00, 0x28, 0x17, 0xD1, 0x08, 0x49, 0x78, 0x18, 0x00, 0x68, 0xFB, 0xF7, 0x1B, 0xFE, 0x07, 0x4A
	.byte 0x50, 0x20, 0x01, 0x21, 0x00, 0x23, 0xC3, 0xF6, 0xF5, 0xFD, 0x02, 0xF0, 0x79, 0xFF, 0x04, 0x4A
	.byte 0xB9, 0x18, 0x08, 0x60, 0x16, 0xE0, 0x00, 0x00, 0xB4, 0x1C, 0x00, 0x00, 0xA0, 0x26, 0x21, 0x08
	.byte 0xAC, 0x1C, 0x00, 0x00, 0x0A, 0x4A, 0x0C, 0x20, 0x01, 0x21, 0x00, 0x23, 0xC3, 0xF6, 0xE2, 0xFD
	.byte 0x04, 0x1C, 0x02, 0xF0, 0xB5, 0xFF, 0x07, 0x48, 0x60, 0x60, 0x00, 0x20, 0xA0, 0x60, 0x06, 0x4B
	.byte 0xF8, 0x18, 0x04, 0x60
_0815523C:
	movs r0, #0x01
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xB0, 0x26, 0x21, 0x08, 0x50, 0xC5, 0xCD, 0x08, 0xAC, 0x1C, 0x00, 0x00
