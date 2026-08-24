	.syntax unified
	.text

	thumb_func_start sub_805A618
sub_805A618:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, _0805A680 @ =0x02000010
	ldrh r2, [r4, #0x30]
	ldr r1, _0805A684 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A688 @ =0x02000014
	ldrh r0, [r4, #0x32]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r3, #0x02
	ldrh r2, [r4, #0x34]
	movs r1, #0xFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A68C @ =0x02000016
	ldrh r0, [r4, #0x36]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_805A6EC
	adds r0, r4, #0x0
	bl sub_805A900
	adds r0, r4, #0x0
	bl sub_805A7C0
	ldr r0, [r4, #0x38]
	ldr r1, _0805A690 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, _0805A694 @ =0x0300034C
	ldr r1, _0805A698 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805A6A0
	ldr r5, _0805A69C @ =0x08A53B30
	b _0805A6A2
	.byte 0x00, 0x00
_0805A680: .4byte 0x02000010
_0805A684: .4byte 0x000001FF
_0805A688: .4byte 0x02000014
_0805A68C: .4byte 0x02000016
_0805A690: .4byte 0x0600D000
_0805A694: .4byte 0x0300034C
_0805A698: .4byte 0x00000888
_0805A69C: .4byte 0x08A53B30
_0805A6A0:
	ldr r5, _0805A6D4 @ =0x08A4FCCC
_0805A6A2:
	ldr r3, _0805A6D8 @ =0x083AFFD8
	ldr r2, _0805A6DC @ =0x083AFC5C
	ldrh r1, [r4, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x02]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r5, r0
	ldr r1, _0805A6E0 @ =0x02000080
	movs r2, #0x40
	bl CpuFastSet
	ldr r1, _0805A6E4 @ =0x0300034C
	ldr r0, _0805A6E8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A6D4: .4byte 0x08A4FCCC
_0805A6D8: .4byte 0x083AFFD8
_0805A6DC: .4byte 0x083AFC5C
_0805A6E0: .4byte 0x02000080
_0805A6E4: .4byte 0x0300034C
_0805A6E8: .4byte 0x00007FFF
