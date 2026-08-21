	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810A648
sub_810A648:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	ldr r0, _0810A6C0 @ =0x03000FD8
	mov r10, r0
	ldr r1, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	mov r9, r2
	adds r0, r1, r2
	ldr r5, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	ldr r0, [r1, #0x74]
	cmp r2, r0
	bne _0810A676
	adds r4, #0x01
_0810A676:
	cmp r5, #0x00
	bne _0810A6C4
	ldr r1, [sp, #0x02C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x80
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	str r5, [r0, #0x00]
	b _0810A718
_0810A6C0: .4byte 0x03000FD8
_0810A6C4:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0810A6D6
	adds r0, r2, #0x0
	bl sub_807BC90
_0810A6D6:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r4
	beq _0810A718
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810A718:
	lsls r6, r6, #0x08
	lsls r7, r7, #0x08
	mov r2, r8
	lsls r2, r2, #0x08
	mov r8, r2
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	adds r3, r5, #0x0
	adds r3, #0x88
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r1, r6
	bne _0810A742
	ldr r0, [r3, #0x00]
	cmp r0, r7
	bne _0810A742
	ldr r0, [r2, #0x00]
	cmp r0, r8
	beq _0810A778
_0810A742:
	str r6, [r4, #0x00]
	str r7, [r3, #0x00]
	mov r0, r8
	str r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x05
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	cmp r4, #0x00
	bne _0810A778
	ldr r0, _0810A788 @ =0x0810D1A5
	adds r1, r5, #0x0
	bl sub_807FF48
_0810A778:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A788: .4byte sub_810D1A4
	thumb_func_start sub_810A78C
sub_810A78C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x10
	ble _0810A7B4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A7A0
	adds r0, #0xFF
_0810A7A0:
	asrs r0, r0, #0x08
	adds r6, r0, #0x0
	adds r6, #0x20
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _0810A7AE
	adds r0, #0xFF
_0810A7AE:
	asrs r5, r0, #0x08
	movs r2, #0x04
	b _0810A832
_0810A7B4:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _0810A7F8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A7CA
	adds r0, #0xFF
_0810A7CA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r6, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	bge _0810A7E0
	adds r1, #0xFF
_0810A7E0:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r5, r1, r0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	bge _0810A7F0
	adds r0, #0xFF
_0810A7F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	b _0810A832
_0810A7F8:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A800
	adds r0, #0xFF
_0810A800:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r6, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	bge _0810A816
	adds r1, #0xFF
_0810A816:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r5, r1, r0
	adds r0, r4, #0x0
	bl sub_8083E78
	adds r1, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	bge _0810A82E
	adds r0, #0xFF
_0810A82E:
	asrs r0, r0, #0x08
	adds r2, r0, r1
_0810A832:
	ldr r0, _0810A848 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r3, r7, #0x0
	bl sub_810A648
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A848: .4byte 0x00007001
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
_0810A978: .4byte 0x08201131
_0810A97C: .4byte 0x08201134
_0810A980: .4byte 0x00007001
