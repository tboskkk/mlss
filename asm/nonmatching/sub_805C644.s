	.syntax unified
	.text

	thumb_func_start sub_805C644
sub_805C644:
	push {r4, r5, lr}
	ldr r0, _0805C694 @ =0x03000DD0
	ldrb r1, [r0, #0x0B]
	movs r0, #0x1F
	ands r0, r1
	ldr r1, _0805C698 @ =0x083B8658
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	ldr r1, _0805C69C @ =0x04000014
	adds r5, r0, r1
	ldr r4, _0805C6A0 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	strh r2, [r5, #0x00]
	ldr r2, _0805C6A4 @ =0x04000016
	adds r0, r0, r2
	ldrh r2, [r1, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _0805C6A8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C6AC @ =0x040000B0
	ldr r1, _0805C6B0 @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C6B4 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C694: .4byte 0x03000DD0
_0805C698: .4byte dword_83B8658 @ =0x083B8658
_0805C69C: .4byte 0x04000014
_0805C6A0: .4byte 0x03000E0C
_0805C6A4: .4byte 0x04000016
_0805C6A8: .4byte 0x03000E08
_0805C6AC: .4byte 0x040000B0
_0805C6B0: .4byte 0x040000BA
_0805C6B4: .4byte 0xA6400001
