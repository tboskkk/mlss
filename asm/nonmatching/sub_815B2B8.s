	.syntax unified
	.text

	thumb_func_start sub_815B2B8
sub_815B2B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [r0, #0x14]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r5, _0815B3DC @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r5, r5, r0
	ldr r7, [r5, #0x00]
	ldr r2, _0815B3E0 @ =0x03000D48
	ldr r6, _0815B3E4 @ =0x0203FFB8
	ldr r0, [r6, #0x3C]
	ldr r3, _0815B3E8 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0815B3EC @ =0x03000D4C
	ldr r0, [r6, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	str r7, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x1C
	ldr r1, _0815B3F0 @ =0x00001888
	adds r1, r1, r4
	mov r10, r1
	ldr r2, _0815B3F4 @ =0x00001CA4
	adds r5, r4, r2
	ldr r1, [r1, #0x00]
	ldr r2, [r5, #0x00]
	adds r1, r1, r2
	asrs r1, r1, #0x08
	ldr r3, _0815B3F8 @ =0x0000188C
	adds r3, r3, r4
	mov r9, r3
	ldr r2, _0815B3FC @ =0x00001CA8
	adds r6, r4, r2
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	adds r2, r2, r3
	asrs r2, r2, #0x08
	bl sub_815FEF8
	movs r3, #0x84
	lsls r3, r3, #0x04
	adds r0, r4, r3
	ldr r1, _0815B400 @ =0x00001890
	adds r7, r4, r1
	ldr r1, [r7, #0x00]
	ldr r2, [r5, #0x00]
	adds r1, r1, r2
	asrs r1, r1, #0x08
	ldr r2, _0815B404 @ =0x00001894
	adds r2, r2, r4
	mov r8, r2
	ldr r2, [r2, #0x00]
	ldr r3, [r6, #0x00]
	adds r2, r2, r3
	asrs r2, r2, #0x08
	bl sub_815FEF8
	ldr r3, _0815B408 @ =0x00001064
	adds r4, r4, r3
	ldr r1, [r7, #0x00]
	ldr r0, [r5, #0x00]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0815B356
	adds r1, #0x03
_0815B356:
	asrs r3, r1, #0x0A
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0815B366
	adds r1, #0x03
_0815B366:
	asrs r2, r1, #0x0A
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	bl sub_815FEF8
	ldr r2, _0815B40C @ =0x02000014
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	adds r2, #0x02
	mov r3, r9
	ldr r0, [r3, #0x00]
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r1, _0815B410 @ =0x0200001C
	ldr r2, [r7, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	adds r1, #0x02
	mov r0, r8
	ldr r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r4, r0
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0815B3B0
	adds r0, #0x03
_0815B3B0:
	asrs r0, r0, #0x0A
	ldr r1, _0815B414 @ =0x02000010
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r4, r0
	cmp r0, #0x00
	bge _0815B3C0
	adds r0, #0x03
_0815B3C0:
	asrs r1, r0, #0x0A
	ldr r0, _0815B418 @ =0x02000012
	strh r1, [r0, #0x00]
	ldr r1, _0815B41C @ =0x02000050
	ldr r2, _0815B420 @ =0x00001F44
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0815B3DC: .4byte 0x0300034C
_0815B3E0: .4byte 0x03000D48
_0815B3E4: .4byte 0x0203FFB8
_0815B3E8: .4byte 0x00000A14
_0815B3EC: .4byte 0x03000D4C
_0815B3F0: .4byte 0x00001888
_0815B3F4: .4byte 0x00001CA4
_0815B3F8: .4byte 0x0000188C
_0815B3FC: .4byte 0x00001CA8
_0815B400: .4byte 0x00001890
_0815B404: .4byte 0x00001894
_0815B408: .4byte 0x00001064
_0815B40C: .4byte 0x02000014
_0815B410: .4byte 0x0200001C
_0815B414: .4byte 0x02000010
_0815B418: .4byte 0x02000012
_0815B41C: .4byte 0x02000050
_0815B420: .4byte 0x00001F44
