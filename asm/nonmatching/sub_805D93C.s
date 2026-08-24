	.syntax unified
	.text

	thumb_func_start sub_805D93C
sub_805D93C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _0805D9BC @ =0x086FFC20
	mov r9, r5
	ldr r1, _0805D9C0 @ =0x03000DD0
	ldrb r6, [r1, #0x04]
	ldr r2, _0805D9C4 @ =0x083AAC4C
	lsls r1, r6, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r7, _0805D9C8 @ =0x000007FF
	mov r12, r2
_0805D968:
	ldr r1, [r2, #0x00]
	lsls r0, r3, #0x01
	adds r1, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r7
	bls _0805D968
	lsls r0, r6, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r4, r5, r0
	movs r3, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x05
	ldr r5, _0805D9C8 @ =0x000007FF
_0805D996:
	ldr r1, [r2, #0x00]
	lsls r0, r3, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _0805D996
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D9BC: .4byte dword_86FFC20 @ =0x086FFC20
_0805D9C0: .4byte 0x03000DD0
_0805D9C4: .4byte dword_83AAC4C @ =0x083AAC4C
_0805D9C8: .4byte 0x000007FF
