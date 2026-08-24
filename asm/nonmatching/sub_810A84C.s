	.syntax unified
	.text

	thumb_func_start sub_810A84C
sub_810A84C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x01
	beq _0810A88C
	cmp r7, #0x01
	bgt _0810A870
	cmp r7, #0x00
	beq _0810A87C
	ldr r0, _0810A86C @ =0x03000FD8
	mov r9, r0
	b _0810A8A8
_0810A86C: .4byte 0x03000FD8
_0810A870:
	cmp r7, #0x02
	beq _0810A89C
	ldr r1, _0810A878 @ =0x03000FD8
	b _0810A8A6
_0810A878: .4byte 0x03000FD8
_0810A87C:
	ldr r1, _0810A884 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r4, _0810A888 @ =0x0000033F
	b _0810A8A2
_0810A884: .4byte 0x03000FD8
_0810A888: .4byte 0x0000033F
_0810A88C:
	ldr r1, _0810A898 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r0, r5
	b _0810A8A4
_0810A898: .4byte 0x03000FD8
_0810A89C:
	ldr r1, _0810A900 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r4, _0810A904 @ =0x00000341
_0810A8A2:
	adds r0, r0, r4
_0810A8A4:
	ldrb r4, [r0, #0x00]
_0810A8A6:
	mov r9, r1
_0810A8A8:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x05
	ble _0810A8E2
	mov r5, r9
	ldr r0, [r5, #0x00]
	ldr r5, _0810A908 @ =0x000002C5
	adds r1, r0, r5
	adds r1, r1, r7
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r5, #0x03
	adds r0, r0, r5
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r6, r6, r0
	cmp r6, #0x00
	bge _0810A8D4
	adds r6, r6, r4
_0810A8D4:
	subs r0, r6, #0x1
	cmp r0, r1
	ble _0810A8DC
	subs r6, r1, #0x1
_0810A8DC:
	cmp r6, #0x04
	bls _0810A8E2
	adds r6, r1, #0x0
_0810A8E2:
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r4, _0810A908 @ =0x000002C5
	adds r0, r0, r4
	adds r0, r0, r7
	strb r6, [r0, #0x00]
	cmp r2, #0x00
	beq _0810A90C
	adds r0, r3, #0x0
	adds r0, #0x09
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0810A910
	.byte 0x00, 0x00
_0810A900: .4byte 0x03000FD8
_0810A904: .4byte 0x00000341
_0810A908: .4byte 0x000002C5
_0810A90C:
	movs r5, #0x0B
	mov r8, r5
_0810A910:
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	ldr r1, _0810A978 @ =0x08201131
	adds r1, r7, r1
	ldrb r4, [r1, #0x00]
	lsls r4, r4, #0x03
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x04
	adds r4, r4, r0
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	movs r0, #0x0B
	adds r1, r6, #0x0
	muls r1, r0
	ldr r0, _0810A97C @ =0x08201134
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	subs r2, #0x18
	mov r5, r8
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	ldr r0, _0810A980 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_810A648
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810A978: .4byte byte_8201131 @ =0x08201131
_0810A97C: .4byte byte_8201134 @ =0x08201134
_0810A980: .4byte 0x00007001
