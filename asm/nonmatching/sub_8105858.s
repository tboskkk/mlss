	.syntax unified
	.text

	thumb_func_start sub_8105858
sub_8105858:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _08105888 @ =0x03000FD8
	movs r0, #0xE9
	lsls r0, r0, #0x02
	mov r12, r0
	mov r8, r5
	movs r7, #0xE6
	lsls r7, r7, #0x02
	movs r6, #0x00
_0810586E:
	ldr r0, [r5, #0x00]
	mov r1, r12
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x02
	adds r0, r0, r7
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r2, #0x02
	bne _0810588C
	strb r6, [r3, #0x00]
	b _08105890
	.byte 0x00, 0x00
_08105888: .4byte 0x03000FD8
_0810588C:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
_08105890:
	cmp r4, #0x00
	beq _0810586E
	mov r2, r8
	ldr r1, [r2, #0x00]
	movs r3, #0xE9
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0810590C
	ldr r2, _081058EC @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bhi _081058CA
	ldr r1, _081058F0 @ =0x083BA8FC
	ldr r0, _081058F4 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r2, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	cmp r4, r0
	bne _081058CA
	ldr r0, _081058F8 @ =0x083BA910
	adds r0, r2, r0
	ldr r4, [r0, #0x00]
_081058CA:
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08105900
	ldr r1, _081058FC @ =0x000003A5
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x20]
	b _0810590C
_081058EC: .4byte 0x0000033E
_081058F0: .4byte dword_83BA8FC @ =0x083BA8FC
_081058F4: .4byte 0x0300034C
_081058F8: .4byte dword_83BA910 @ =0x083BA910
_081058FC: .4byte 0x000003A5
_08105900:
	ldr r3, _08105918 @ =0x000003A5
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x00]
_0810590C:
	adds r0, r4, #0x0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08105918: .4byte 0x000003A5
