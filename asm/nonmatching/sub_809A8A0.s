	.syntax unified
	.text

	thumb_func_start sub_809A8A0
sub_809A8A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A972
	ldr r2, _0809A984 @ =0x000040BE
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809A988 @ =0x000040C0
	mov r9, r0
	adds r0, r6, #0x0
	mov r1, r9
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	movs r2, #0x04
	mov r10, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r4, _0809A98C @ =0x0809AAF5
	str r4, [r7, #0x4C]
	adds r0, r7, #0x0
	bl _call_via_r4
	ldr r5, _0809A990 @ =0x083B88EC
	ldr r0, [r5, #0x00]
	str r0, [r7, #0x34]
	movs r0, #0x00
	strh r0, [r7, #0x20]
	adds r0, r6, #0x0
	mov r1, r9
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	str r4, [r7, #0x4C]
	adds r0, r7, #0x0
	bl _call_via_r4
	ldr r0, [r5, #0x48]
	str r0, [r7, #0x34]
	movs r0, #0x01
	strh r0, [r7, #0x20]
	ldr r0, _0809A994 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _0809A950
	adds r1, #0xFF
_0809A950:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _0809A95A
	adds r2, #0xFF
_0809A95A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _0809A964
	adds r3, #0xFF
_0809A964:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0809A998 @ =0x00002C7D
	bl sub_80DF024
	ldr r0, _0809A99C @ =0x0809AFB5
	str r0, [r6, #0x4C]
_0809A972:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A984: .4byte 0x000040BE
_0809A988: .4byte 0x000040C0
_0809A98C: .4byte sub_809AAF4
_0809A990: .4byte dword_83B88EC @ =0x083B88EC
_0809A994: .4byte 0x0000015D
_0809A998: .4byte 0x00002C7D
_0809A99C: .4byte sub_809AFB4
