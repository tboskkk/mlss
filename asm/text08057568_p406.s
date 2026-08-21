	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807C3E8
sub_807C3E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x01C
	movs r0, #0x00
	mov r9, r0
	ldr r0, _0807C43C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x1B
	lsrs r6, r0, #0x1B
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	bne _0807C40E
	b _0807C538
_0807C40E:
	ldr r7, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807C440
	mov r9, r4
	ldr r0, [r1, #0x34]
	str r0, [sp, #0x018]
	adds r0, r1, #0x0
	bl sub_80841B8
	adds r5, r0, #0x0
	movs r3, #0x00
	mov r8, r3
	cmp r5, #0x00
	bne _0807C42E
	b _0807C530
_0807C42E:
	ldrb r2, [r4, #0x0C]
	movs r3, #0x1F
	movs r0, #0x1F
	ands r0, r2
	cmp r0, #0x00
	beq _0807C48E
	b _0807C470
_0807C43C: .4byte 0x03000FD8
_0807C440:
	mov r0, r9
	cmp r0, #0x00
	beq _0807C450
	str r7, [r0, #0x00]
	ldr r1, _0807C44C @ =0x03000FD8
	b _0807C45C
_0807C44C: .4byte 0x03000FD8
_0807C450:
	ldr r1, _0807C46C @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r7, [r0, #0x00]
_0807C45C:
	ldr r1, [r1, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	b _0807C530
_0807C46C: .4byte 0x03000FD8
_0807C470:
	adds r1, r6, #0x0
	ands r1, r3
	movs r3, #0x20
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0C]
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_807F920
	subs r6, #0x01
	b _0807C496
_0807C48E:
	ldr r0, [sp, #0x018]
	adds r1, r5, #0x0
	bl sub_807F9A8
_0807C496:
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	beq _0807C522
_0807C49C:
	ldrb r1, [r4, #0x1B]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0807C51C
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _0807C4B2
	adds r0, #0xFF
_0807C4B2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bge _0807C4BE
	adds r0, #0xFF
_0807C4BE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _0807C4CA
	adds r0, #0xFF
_0807C4CA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r1, [sp, #0x000]
	add r1, sp, #0x00C
	add r2, sp, #0x010
	add r3, sp, #0x014
	bl sub_8082C58
	ldrb r1, [r4, #0x1B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldrb r0, [r4, #0x1B]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x008]
	add r0, sp, #0x018
	adds r1, r5, #0x0
	bl sub_807C564
	mov r3, r8
	cmp r3, #0x00
	bne _0807C51C
	ldr r0, _0807C560 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r0, #0x01
	mov r8, r0
_0807C51C:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0807C49C
_0807C522:
	mov r2, r8
	cmp r2, #0x00
	beq _0807C530
	ldr r0, _0807C560 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0807C530:
	adds r4, r7, #0x0
	cmp r4, #0x00
	beq _0807C538
	b _0807C40E
_0807C538:
	ldr r0, _0807C55C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r0, #0x1F
	ands r6, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x07]
	add sp, #0x01C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807C55C: .4byte 0x03000FD8
_0807C560: .4byte 0x03000D74
	thumb_func_start sub_807C564
sub_807C564:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r12, r2
	mov r9, r3
	ldr r0, [sp, #0x028]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0x40
	negs r0, r0
	cmp r12, r0
	bge _0807C58A
	b _0807C6BE
_0807C58A:
	cmp r9, r0
	bge _0807C590
	b _0807C6BE
_0807C590:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r12, r0
	ble _0807C59A
	b _0807C6BE
_0807C59A:
	cmp r3, #0xE0
	ble _0807C5A0
	b _0807C6BE
_0807C5A0:
	ldr r0, _0807C614 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807C618 @ =0x000037E8
	adds r3, r0, r1
	ldr r0, [sp, #0x02C]
	cmp r0, #0x00
	bne _0807C620
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BA
	b _0807C6BE
_0807C5BA:
	movs r4, #0xC0
	lsls r4, r4, #0x04
_0807C5BE:
	ldr r2, [r6, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r9
	movs r1, #0xFF
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	mov r7, r8
	orrs r0, r7
	strh r0, [r2, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	add r0, r12
	ldr r7, _0807C61C @ =0x000001FF
	adds r1, r7, #0x0
	ands r0, r1
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x04]
	ldrh r0, [r3, #0x00]
	adds r1, r4, #0x0
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r1, [sp, #0x024]
	orrs r0, r1
	str r0, [r2, #0x08]
	movs r0, #0x00
	strh r0, [r2, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C5BE
	b _0807C6BE
_0807C614: .4byte 0x03000FDC
_0807C618: .4byte 0x000037E8
_0807C61C: .4byte 0x000001FF
_0807C620:
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C6BE
	ldr r2, _0807C668 @ =0x000001FF
	mov r10, r2
_0807C62E:
	ldr r7, [r6, #0x00]
	str r7, [sp, #0x000]
	ldrh r0, [r3, #0x00]
	mov r2, r9
	adds r1, r0, r2
	movs r0, #0xFF
	ands r1, r0
	adds r3, #0x02
	ldrh r2, [r3, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r2
	adds r4, r7, #0x0
	cmp r0, #0x00
	beq _0807C66C
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	b _0807C68C
	.byte 0x00, 0x00
_0807C668: .4byte 0x000001FF
_0807C66C:
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r4, #0x00]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	mov r1, r12
	subs r0, r1, r0
	mov r2, r10
	ands r0, r2
	adds r3, #0x02
	ldrh r1, [r3, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x05
	adds r2, r7, #0x0
	eors r1, r2
_0807C68C:
	orrs r0, r1
	strh r0, [r4, #0x02]
	adds r3, #0x02
	ldrh r0, [r3, #0x00]
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x04]
	ldrh r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x04
	ands r1, r0
	adds r3, #0x02
	lsls r0, r1, #0x14
	ldr r2, [sp, #0x024]
	orrs r0, r2
	str r0, [r4, #0x08]
	movs r0, #0x00
	strh r0, [r4, #0x06]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x10]
	str r0, [r6, #0x00]
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807C62E
_0807C6BE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807C6D0
sub_807C6D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	adds r7, r0, #0x0
	ldr r2, _0807C878 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0x03
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _0807C6F0
	b _0807CC14
_0807C6F0:
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	str r0, [sp, #0x01C]
	ldr r3, [r3, #0x78]
	str r3, [sp, #0x020]
	cmp r3, #0x00
	bne _0807C702
	b _0807CC00
_0807C702:
	ldr r1, [sp, #0x020]
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	bne _0807C70C
	b _0807CBF2
_0807C70C:
	ldrb r1, [r0, #0x12]
	movs r3, #0x20
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807C71A
	b _0807CBF2
_0807C71A:
	ldr r2, [sp, #0x020]
	adds r2, #0x79
	mov r8, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C72C
	b _0807CBF2
_0807C72C:
	ldr r4, [sp, #0x020]
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	bne _0807C736
	b _0807C880
_0807C736:
	ldrb r1, [r2, #0x0C]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0807C742
	b _0807CBF2
_0807C742:
	ldr r6, [r2, #0x08]
	cmp r6, #0x00
	bne _0807C74A
	b _0807CBF2
_0807C74A:
	ldr r0, [r6, #0x0C]
	cmp r0, #0x00
	bge _0807C752
	b _0807C86E
_0807C752:
	ldr r0, [r6, #0x04]
	cmp r0, #0x00
	bge _0807C75A
	adds r0, #0xFF
_0807C75A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r6, #0x08]
	cmp r0, #0x00
	bge _0807C766
	adds r0, #0xFF
_0807C766:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r4, _0807C878 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	add r1, sp, #0x004
	add r2, sp, #0x008
	add r3, sp, #0x00C
	bl sub_8082C58
	ldr r3, [sp, #0x004]
	movs r0, #0x40
	negs r0, r0
	cmp r3, r0
	blt _0807C86E
	ldr r2, [sp, #0x008]
	cmp r2, r0
	blt _0807C86E
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r3, r0
	bgt _0807C86E
	cmp r2, #0xE0
	bgt _0807C86E
	ldr r1, [r4, #0x00]
	ldr r0, [sp, #0x020]
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x01
	adds r1, r1, r4
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	mov r12, r1
	ldrh r5, [r1, #0x00]
	movs r0, #0x02
	add r12, r0
	subs r5, #0x01
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807C86E
	mov r9, r2
	mov r8, r3
	movs r2, #0xFF
	mov r10, r2
	subs r0, r1, r5
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C812
	mov r4, r12
	ldrh r0, [r4, #0x00]
	add r0, r9
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r4, #0x04]
	add r0, r8
	ldr r2, _0807C87C @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	movs r4, #0x0A
	add r12, r4
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807C86E
_0807C812:
	mov r1, r12
	ldrh r0, [r1, #0x00]
	add r0, r9
	mov r2, r10
	ands r0, r2
	ldrh r1, [r1, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	mov r4, r12
	ldrh r0, [r4, #0x04]
	add r0, r8
	ldr r1, _0807C87C @ =0x000001FF
	adds r3, r1, #0x0
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r7, #0x04]
	adds r2, r7, #0x0
	adds r2, #0x08
	adds r4, #0x0A
	mov r1, r12
	ldrh r0, [r1, #0x0A]
	add r0, r9
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldrh r0, [r4, #0x04]
	add r0, r8
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r2, #0x04]
	adds r7, #0x10
	movs r2, #0x14
	add r12, r2
	subs r5, #0x02
	movs r4, #0x01
	negs r4, r4
	cmp r5, r4
	bne _0807C812
_0807C86E:
	ldr r6, [r6, #0x00]
	cmp r6, #0x00
	beq _0807C876
	b _0807C74A
_0807C876:
	b _0807CBF2
_0807C878: .4byte 0x03000FD8
_0807C87C: .4byte 0x000001FF
_0807C880:
	ldr r1, [sp, #0x020]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bge _0807C88A
	b _0807CBF2
_0807C88A:
	ldr r1, [r1, #0x38]
	cmp r1, #0x00
	bge _0807C892
	adds r1, #0xFF
_0807C892:
	asrs r1, r1, #0x08
	ldr r0, [sp, #0x020]
	adds r0, #0xC7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	str r1, [sp, #0x010]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807C8AC
	adds r0, #0xFF
_0807C8AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r2, [sp, #0x000]
	add r1, sp, #0x010
	add r2, sp, #0x014
	add r3, sp, #0x018
	bl sub_8082C58
	ldr r6, [sp, #0x010]
	movs r0, #0x40
	negs r0, r0
	cmp r6, r0
	bge _0807C8D4
	b _0807CBF2
_0807C8D4:
	ldr r4, [sp, #0x014]
	cmp r4, r0
	bge _0807C8DC
	b _0807CBF2
_0807C8DC:
	movs r0, #0x98
	lsls r0, r0, #0x01
	cmp r6, r0
	ble _0807C8E6
	b _0807CBF2
_0807C8E6:
	cmp r4, #0xE0
	ble _0807C8EC
	b _0807CBF2
_0807C8EC:
	ldr r1, [r5, #0x00]
	ldr r0, [sp, #0x020]
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	lsls r0, r0, #0x02
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	ldrh r0, [r5, #0x00]
	mov r9, r0
	adds r5, #0x02
	ldr r1, [sp, #0x020]
	ldr r2, [r1, #0x40]
	cmp r2, #0x00
	beq _0807C920
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _0807C9D0
_0807C920:
	movs r1, #0x01
	negs r1, r1
	add r9, r1
	cmp r9, r1
	bne _0807C92C
	b _0807CBF2
_0807C92C:
	mov r8, r4
	movs r2, #0xFF
	mov r10, r2
	mov r4, r9
	subs r0, r1, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807C970
	ldrh r0, [r5, #0x00]
	add r0, r8
	mov r2, r10
	ands r0, r2
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r6
	ldr r4, _0807C9CC @ =0x000001FF
	adds r1, r4, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r5, #0x0A
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	cmp r9, r0
	bne _0807C970
	b _0807CBF2
_0807C970:
	ldrh r0, [r5, #0x00]
	add r0, r8
	mov r1, r10
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r6
	ldr r2, _0807C9CC @ =0x000001FF
	adds r3, r2, #0x0
	ands r0, r3
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r2, r7, #0x0
	adds r2, #0x08
	adds r4, r5, #0x0
	adds r4, #0x0A
	ldrh r0, [r5, #0x0A]
	add r0, r8
	mov r1, r10
	ands r0, r1
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldrh r0, [r4, #0x04]
	adds r0, r0, r6
	ands r0, r3
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldrh r0, [r4, #0x08]
	strh r0, [r2, #0x04]
	adds r7, #0x10
	adds r5, #0x14
	movs r2, #0x02
	negs r2, r2
	add r9, r2
	movs r4, #0x01
	negs r4, r4
	cmp r9, r4
	bne _0807C970
	b _0807CBF2
_0807C9CC: .4byte 0x000001FF
_0807C9D0:
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807C9D8
	adds r0, #0x7F
_0807C9D8:
	asrs r0, r0, #0x07
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	str r0, [sp, #0x024]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x024]
	cmp r2, r0
	ble _0807C9F0
	str r0, [sp, #0x024]
_0807C9F0:
	ldr r2, _0807CA60 @ =0x0300034C
	ldr r4, _0807CA64 @ =0x00000888
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	mov r1, sp
	ldrh r1, [r1, #0x24]
	strh r1, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r3, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r3, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r2, sp
	ldrh r2, [r2, #0x24]
	strh r2, [r0, #0x1E]
	mov r4, r9
	cmp r4, #0x01
	bne _0807CA6C
	ldr r1, [sp, #0x014]
	ldrh r0, [r5, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r1, [sp, #0x010]
	ldrh r0, [r5, #0x04]
	adds r0, r0, r1
	ldr r2, _0807CA68 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x09
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	subs r4, #0x01
	str r4, [sp, #0x02C]
	b _0807CBEE
	.byte 0x00, 0x00
_0807CA60: .4byte 0x0300034C
_0807CA64: .4byte 0x00000888
_0807CA68: .4byte 0x000001FF
_0807CA6C:
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	ldr r1, [sp, #0x01C]
	subs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r9, r0
	bne _0807CA7E
	b _0807CBEE
_0807CA7E:
	ldr r1, _0807CC28 @ =0x0819832C
	ldr r0, _0807CC2C @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x028]
	movs r2, #0x01
	negs r2, r2
	mov r4, r9
	subs r0, r2, r4
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0807CB04
	movs r2, #0x00
	ldsh r4, [r5, r2]
	movs r0, #0x04
	ldsh r6, [r5, r0]
	cmp r4, #0x00
	beq _0807CAB4
	ldr r1, _0807CC30 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r4, r0, #0x0
_0807CAB4:
	cmp r6, #0x00
	beq _0807CACA
	ldr r1, _0807CC30 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r6, r0, #0x0
_0807CACA:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r1, #0xFF
	ands r0, r1
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r2, _0807CC34 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r4, [sp, #0x01C]
	lsls r1, r4, #0x09
	orrs r0, r1
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r7, #0x08
	adds r5, #0x0A
	movs r0, #0x01
	negs r0, r0
	add r9, r0
	cmp r9, r0
	beq _0807CBEE
_0807CB04:
	movs r1, #0x00
	ldsh r4, [r5, r1]
	movs r2, #0x04
	ldsh r6, [r5, r2]
	cmp r4, #0x00
	beq _0807CB22
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r4, r0, #0x0
_0807CB22:
	cmp r6, #0x00
	beq _0807CB38
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	bl _call_via_r2
	adds r6, r0, #0x0
_0807CB38:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r2, #0xFF
	ands r0, r2
	ldrh r1, [r5, #0x02]
	orrs r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x01
	orrs r0, r4
	strh r0, [r7, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r1, _0807CC34 @ =0x000001FF
	ands r0, r1
	ldrh r1, [r5, #0x06]
	orrs r0, r1
	ldr r2, [sp, #0x01C]
	lsls r2, r2, #0x09
	mov r10, r2
	orrs r0, r2
	strh r0, [r7, #0x02]
	ldrh r0, [r5, #0x08]
	strh r0, [r7, #0x04]
	adds r3, r7, #0x0
	adds r3, #0x08
	movs r4, #0x0A
	adds r4, r4, r5
	mov r8, r4
	movs r0, #0x0A
	ldsh r4, [r5, r0]
	mov r1, r8
	movs r2, #0x04
	ldsh r6, [r1, r2]
	cmp r4, #0x00
	beq _0807CB94
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r4, #0x08
	ldr r1, [sp, #0x024]
	str r3, [sp, #0x030]
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r3, [sp, #0x030]
_0807CB94:
	cmp r6, #0x00
	beq _0807CBAE
	ldr r0, _0807CC30 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x024]
	str r3, [sp, #0x030]
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r3, [sp, #0x030]
_0807CBAE:
	ldr r0, [sp, #0x014]
	adds r0, r0, r4
	movs r2, #0xFF
	ands r0, r2
	mov r4, r8
	ldrh r1, [r4, #0x02]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	orrs r0, r1
	strh r0, [r7, #0x08]
	ldr r0, [sp, #0x010]
	adds r0, r0, r6
	ldr r2, _0807CC34 @ =0x000001FF
	ands r0, r2
	ldrh r1, [r4, #0x06]
	orrs r0, r1
	mov r4, r10
	orrs r0, r4
	strh r0, [r3, #0x02]
	mov r1, r8
	ldrh r0, [r1, #0x08]
	strh r0, [r3, #0x04]
	adds r7, #0x10
	adds r5, #0x14
	movs r2, #0x02
	negs r2, r2
	add r9, r2
	movs r4, #0x01
	negs r4, r4
	cmp r9, r4
	bne _0807CB04
_0807CBEE:
	ldr r0, [sp, #0x02C]
	str r0, [sp, #0x01C]
_0807CBF2:
	ldr r1, [sp, #0x020]
	ldr r1, [r1, #0x00]
	str r1, [sp, #0x020]
	ldr r5, _0807CC38 @ =0x03000FD8
	cmp r1, #0x00
	beq _0807CC00
	b _0807C702
_0807CC00:
	ldr r2, [r5, #0x00]
	movs r0, #0x1F
	ldr r4, [sp, #0x01C]
	ands r4, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x07]
_0807CC14:
	adds r0, r7, #0x0
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CC28: .4byte 0x0819832C
_0807CC2C: .4byte 0x08198220
_0807CC30: .4byte 0x03001038
_0807CC34: .4byte 0x000001FF
_0807CC38: .4byte 0x03000FD8
	thumb_func_start sub_807CC3C
sub_807CC3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, [sp, #0x02C]
	ldr r1, [sp, #0x034]
	mov r8, r1
	cmp r0, #0x01
	bne _0807CC66
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x000]
	mov r0, r9
	ldr r1, [sp, #0x004]
	bl sub_807CE0C
	b _0807CCF4
_0807CC66:
	ldr r4, _0807CD04 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r2, _0807CD08 @ =0x0807F8C5
	ldr r7, [r1, #0x3C]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r7, #0x00]
	str r2, [r7, #0x04]
	movs r5, #0x00
	strh r5, [r7, #0x10]
	str r7, [r1, #0x48]
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, [r6, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CD0C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r0, r8
	cmp r0, #0x00
	beq _0807CCBC
	movs r0, #0x01
	mov r1, r8
	strb r0, [r1, #0x00]
_0807CCBC:
	mov r0, r8
	str r0, [r6, #0x0C]
	ldr r0, [sp, #0x004]
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r6, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x10
	lsls r0, r0, #0x08
	str r0, [r6, #0x08]
	ldr r0, _0807CD10 @ =0x0000FD9A
	strh r0, [r6, #0x12]
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r6, #0x18]
	movs r0, #0x0E
	strh r0, [r6, #0x16]
	ldr r0, _0807CD14 @ =0x0807CD19
	str r0, [r7, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r6, [r7, #0x0C]
	adds r0, r7, #0x0
_0807CCF4:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CD04: .4byte 0x03000FD8
_0807CD08: .4byte sub_807F8C4
_0807CD0C: .4byte 0x03001034
_0807CD10: .4byte 0x0000FD9A
_0807CD14: .4byte sub_807CD18
	thumb_func_start sub_807CD18
sub_807CD18:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CD2E
	adds r0, #0xFF
_0807CD2E:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CD54
	adds r1, #0xFF
_0807CD54:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CD5C
	adds r0, #0xFF
_0807CD5C:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CD94 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CD8C
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CD98 @ =0x0807CD9D
	str r0, [r6, #0x04]
_0807CD8C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CD94: .4byte 0x03000FD8
_0807CD98: .4byte sub_807CD9C
	thumb_func_start sub_807CD9C
sub_807CD9C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CDAE
	adds r1, #0xFF
_0807CDAE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CDB8
	adds r2, #0xFF
_0807CDB8:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CE08 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CE00
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CDEC
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CDEC:
	cmp r4, #0x00
	beq _0807CDFE
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CDFE:
	str r2, [r5, #0x04]
_0807CE00:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CE08: .4byte 0x03000FD8
	thumb_func_start sub_807CE0C
sub_807CE0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r7, [sp, #0x02C]
	ldr r6, _0807CEAC @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r2, _0807CEB0 @ =0x0807F869
	ldr r5, [r1, #0x3C]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r5, #0x00]
	str r2, [r5, #0x04]
	movs r0, #0x00
	mov r8, r0
	mov r0, r8
	strh r0, [r5, #0x10]
	str r5, [r1, #0x48]
	ldr r0, [r6, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CEB4 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	mov r1, r8
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	subs r0, #0x0C
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, _0807CEB8 @ =0x0000FF34
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	ldr r0, _0807CEBC @ =0x0000FE9A
	strh r0, [r4, #0x12]
	strh r7, [r4, #0x18]
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807CEC0 @ =0x0807CEC5
	str r0, [r5, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r5, #0x08]
	str r4, [r5, #0x0C]
	adds r0, r5, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807CEAC: .4byte 0x03000FD8
_0807CEB0: .4byte sub_807F868
_0807CEB4: .4byte 0x03001034
_0807CEB8: .4byte 0x0000FF34
_0807CEBC: .4byte 0x0000FE9A
_0807CEC0: .4byte sub_807CEC4
	thumb_func_start sub_807CEC4
sub_807CEC4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x0C]
	movs r0, #0x10
	ldsh r1, [r4, r0]
	movs r0, #0xFA
	muls r0, r1
	cmp r0, #0x00
	bge _0807CEDA
	adds r0, #0xFF
_0807CEDA:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x12]
	adds r0, #0x3D
	strh r0, [r4, #0x12]
	movs r1, #0x10
	ldsh r0, [r4, r1]
	ldr r1, [r4, #0x04]
	adds r1, r1, r0
	str r1, [r4, #0x04]
	movs r0, #0x12
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	ldr r5, [r6, #0x08]
	cmp r1, #0x00
	bge _0807CF00
	adds r1, #0xFF
_0807CF00:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _0807CF08
	adds r0, #0xFF
_0807CF08:
	asrs r2, r0, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_807F7BC
	ldr r0, _0807CF40 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807CF38
	movs r0, #0x18
	strh r0, [r4, #0x16]
	ldr r0, _0807CF44 @ =0x0807CF49
	str r0, [r6, #0x04]
_0807CF38:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CF40: .4byte 0x03000FD8
_0807CF44: .4byte sub_807CF48
	thumb_func_start sub_807CF48
sub_807CF48:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807CF5A
	adds r1, #0xFF
_0807CF5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807CF64
	adds r2, #0xFF
_0807CF64:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r3, _0807CFB4 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bne _0807CFAC
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807CF98
	movs r0, #0x00
	strb r0, [r1, #0x00]
_0807CF98:
	cmp r4, #0x00
	beq _0807CFAA
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807CFAA:
	str r2, [r5, #0x04]
_0807CFAC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807CFB4: .4byte 0x03000FD8
	thumb_func_start sub_807CFB8
sub_807CFB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r8, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, _0807D06C @ =0x03001034
	mov r9, r0
	ldr r0, _0807D070 @ =0x08198154
	ldr r1, _0807D074 @ =0x081980D8
	subs r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D078 @ =0x084FB588
	ldr r4, _0807D07C @ =0x0300034C
	ldr r1, _0807D080 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x1A
	cmp r0, #0x00
	beq _0807CFF0
	movs r1, #0x1C
_0807CFF0:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D084 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D088 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	movs r6, #0x00
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r5, _0807D08C @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldr r3, _0807D090 @ =0x0807F835
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x48]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	strh r6, [r1, #0x10]
	str r1, [r2, #0x48]
	adds r7, r1, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	mov r2, r9
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r6, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r2, r8
	cmp r2, #0x09
	bhi _0807D094
	ldr r0, [sp, #0x004]
	adds r0, #0x04
	b _0807D098
	.byte 0x00, 0x00
_0807D06C: .4byte 0x03001034
_0807D070: .4byte 0x08198154
_0807D074: .4byte 0x081980D8
_0807D078: .4byte 0x084FB588
_0807D07C: .4byte 0x0300034C
_0807D080: .4byte 0x00000888
_0807D084: .4byte 0x089F808C
_0807D088: .4byte 0x02000440
_0807D08C: .4byte 0x03000FD8
_0807D090: .4byte sub_807F834
_0807D094:
	ldr r0, [sp, #0x004]
	adds r0, #0x08
_0807D098:
	str r0, [r4, #0x04]
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	movs r0, #0xFF
	lsls r0, r0, #0x08
	strh r0, [r4, #0x12]
	movs r0, #0x0A
	strh r0, [r4, #0x16]
	mov r0, r8
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r4, [r7, #0x0C]
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807D0CC
sub_807D0CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldrh r0, [r4, #0x12]
	subs r0, #0xB4
	movs r7, #0x00
	strh r0, [r4, #0x12]
	movs r0, #0x12
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r2, r0, r1
	str r2, [r4, #0x08]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807D0F6
	adds r1, #0xFF
_0807D0F6:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0807D100
	adds r0, #0xFF
_0807D100:
	asrs r2, r0, #0x08
	movs r3, #0x16
	ldsh r0, [r4, r3]
	lsls r3, r0, #0x01
	adds r3, r3, r0
	lsls r3, r3, #0x02
	str r7, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807D154
	ldr r3, _0807D150 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0807D128
	adds r1, #0xFF
_0807D128:
	asrs r1, r1, #0x08
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bgt _0807D146
	cmp r4, #0x00
	beq _0807D144
	ldr r0, [r3, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x00]
	str r4, [r0, #0x00]
_0807D144:
	str r7, [r5, #0x04]
_0807D146:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D150: .4byte 0x03000FD8
	thumb_func_start sub_807D154
sub_807D154:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	mov r8, r3
	cmp r3, #0x00
	bgt _0807D16E
	b _0807D29A
_0807D16E:
	cmp r3, #0xFF
	ble _0807D1C8
	adds r4, r7, #0x0
	adds r2, r5, #0x0
	movs r5, #0xFF
	mov r0, r9
	ands r5, r0
	ldr r0, _0807D1BC @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r12, r0
	movs r3, #0x0F
	ldr r7, _0807D1C0 @ =0x000001FF
	ldr r6, _0807D1C4 @ =0xFFFF8000
	adds r0, r6, #0x0
	orrs r5, r0
	movs r6, #0xE0
	lsls r6, r6, #0x08
_0807D196:
	adds r0, r4, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	ands r2, r7
	strh r5, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r6
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r4, r4, #0x04
	cmp r4, #0x00
	bne _0807D196
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r1, [r0, #0x00]
	b _0807D29A
_0807D1BC: .4byte 0x0300034C
_0807D1C0: .4byte 0x000001FF
_0807D1C4: .4byte 0xFFFF8000
_0807D1C8:
	ldr r0, _0807D2AC @ =0x0300034C
	mov r10, r0
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r10
	ldr r6, [r0, #0x00]
	ldr r0, _0807D2B0 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r3, r3, #0x1B
	str r3, [sp, #0x000]
	ldr r2, _0807D2B4 @ =0x03001038
	ldr r0, _0807D2B8 @ =0x0819832C
	ldr r1, _0807D2BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	mov r1, r8
	bl _call_via_r2
	ldr r1, _0807D2C0 @ =0x00000888
	add r1, r10
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0A
	ldr r3, [sp, #0x000]
	lsls r2, r3, #0x05
	mov r3, r10
	adds r3, #0x80
	adds r2, r2, r3
	adds r1, r1, r2
	ldrh r2, [r1, #0x06]
	movs r2, #0x00
	strh r0, [r1, #0x06]
	ldrh r0, [r1, #0x0E]
	strh r2, [r1, #0x0E]
	ldrh r0, [r1, #0x16]
	strh r2, [r1, #0x16]
	ldrh r0, [r1, #0x1E]
	mov r0, r8
	strh r0, [r1, #0x1E]
	movs r1, #0x08
	negs r1, r1
	add r9, r1
	movs r0, #0xFF
	mov r3, r9
	ands r3, r0
	mov r9, r3
	subs r5, #0x04
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	beq _0807D254
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_810D260
	adds r5, r0, #0x0
_0807D254:
	mov r12, r10
	movs r0, #0x0F
	mov r10, r0
	ldr r1, _0807D2C4 @ =0x000001FF
	mov r8, r1
	ldr r3, _0807D2C8 @ =0xFFFF8300
	adds r0, r3, #0x0
	mov r4, r9
	orrs r4, r0
	ldr r0, [sp, #0x000]
	lsls r2, r0, #0x09
	ldr r1, _0807D2CC @ =0xFFFFE000
	adds r3, r1, #0x0
_0807D26E:
	adds r1, r7, #0x0
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0x49
	subs r5, #0x08
	mov r0, r8
	ands r5, r0
	strh r4, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r2
	strh r0, [r6, #0x02]
	orrs r1, r3
	strh r1, [r6, #0x04]
	adds r6, #0x08
	lsrs r7, r7, #0x04
	cmp r7, #0x00
	bne _0807D26E
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r6, [r0, #0x00]
_0807D29A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D2AC: .4byte 0x0300034C
_0807D2B0: .4byte 0x03000FD8
_0807D2B4: .4byte 0x03001038
_0807D2B8: .4byte 0x0819832C
_0807D2BC: .4byte 0x08198220
_0807D2C0: .4byte 0x00000888
_0807D2C4: .4byte 0x000001FF
_0807D2C8: .4byte 0xFFFF8300
_0807D2CC: .4byte 0xFFFFE000
	thumb_func_start sub_807D2D0
sub_807D2D0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, _0807D324 @ =0x0807D531
	movs r0, #0x03
	bl sub_8018B78
	ldr r3, _0807D328 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0807D32C @ =0x02000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D330 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	ldr r0, _0807D334 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x3C]
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x3C]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r3, #0x00
	b _0807D33C
_0807D324: .4byte sub_807D530
_0807D328: .4byte 0x04000208
_0807D32C: .4byte 0x02000004
_0807D330: .4byte 0x04000200
_0807D334: .4byte 0x03000FD8
_0807D338:
	adds r3, r1, #0x0
	ldr r1, [r3, #0x00]
_0807D33C:
	cmp r1, #0x00
	beq _0807D348
	movs r7, #0x10
	ldsh r0, [r1, r7]
	cmp r4, r0
	bge _0807D338
_0807D348:
	str r1, [r2, #0x00]
	cmp r3, #0x00
	beq _0807D358
	str r2, [r3, #0x00]
_0807D350:
	cmp r5, #0x00
	beq _0807D36C
	str r5, [r2, #0x04]
	b _0807D370
_0807D358:
	ldr r0, _0807D368 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	b _0807D350
	.byte 0x00, 0x00
_0807D368: .4byte 0x03000FD8
_0807D36C:
	ldr r0, _0807D37C @ =0x0807F7B9
	str r0, [r2, #0x04]
_0807D370:
	str r6, [r2, #0x0C]
	strh r4, [r2, #0x10]
	adds r0, r2, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807D37C: .4byte 0x0807F7B9
	thumb_func_start sub_807D380
sub_807D380:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _0807D3C4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D39C
	str r1, [sp, #0x000]
	bl _call_via_r0
	ldr r1, [sp, #0x000]
_0807D39C:
	ldr r0, [r1, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x50
	movs r6, #0x00
	ldr r4, [r0, #0x50]
	cmp r4, #0x00
	beq _0807D402
_0807D3AA:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D3C8
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D3C8
	adds r6, r4, #0x0
	b _0807D3FC
	.byte 0x00, 0x00
_0807D3C4: .4byte 0x03000FD8
_0807D3C8:
	cmp r6, #0x00
	beq _0807D3D8
	str r5, [r6, #0x00]
	ldr r1, _0807D3D4 @ =0x03000FD8
	b _0807D3F4
	.byte 0x00, 0x00
_0807D3D4: .4byte 0x03000FD8
_0807D3D8:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D3E8
	str r5, [r7, #0x00]
	ldr r1, _0807D3E4 @ =0x03000FD8
	b _0807D3F4
_0807D3E4: .4byte 0x03000FD8
_0807D3E8:
	ldr r1, _0807D448 @ =0x03000FD8
_0807D3EA:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D3EA
	str r5, [r6, #0x00]
_0807D3F4:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D3FC:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D3AA
_0807D402:
	ldr r1, _0807D448 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807D41A
	str r1, [sp, #0x000]
	bl sub_8085328
	ldr r1, [sp, #0x000]
_0807D41A:
	ldr r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807D512
	adds r7, r0, #0x0
	movs r6, #0x00
	adds r4, r1, #0x0
_0807D42E:
	ldr r5, [r4, #0x00]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	beq _0807D44C
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0807D44C
	adds r6, r4, #0x0
	b _0807D480
	.byte 0x00, 0x00
_0807D448: .4byte 0x03000FD8
_0807D44C:
	cmp r6, #0x00
	beq _0807D45C
	str r5, [r6, #0x00]
	ldr r1, _0807D458 @ =0x03000FD8
	b _0807D478
	.byte 0x00, 0x00
_0807D458: .4byte 0x03000FD8
_0807D45C:
	ldr r0, [r7, #0x00]
	cmp r0, r4
	bne _0807D46C
	str r5, [r7, #0x00]
	ldr r1, _0807D468 @ =0x03000FD8
	b _0807D478
_0807D468: .4byte 0x03000FD8
_0807D46C:
	ldr r1, _0807D4D4 @ =0x03000FD8
_0807D46E:
	adds r6, r0, #0x0
	ldr r0, [r6, #0x00]
	cmp r0, r4
	bne _0807D46E
	str r5, [r6, #0x00]
_0807D478:
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x3C]
	str r0, [r4, #0x00]
	str r4, [r1, #0x3C]
_0807D480:
	adds r4, r5, #0x0
	cmp r4, #0x00
	bne _0807D42E
	ldr r0, _0807D4D4 @ =0x03000FD8
	ldr r6, [r0, #0x00]
	movs r2, #0x95
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	beq _0807D4E4
	ldr r3, _0807D4D8 @ =0x04000208
	strh r4, [r3, #0x00]
	ldr r2, _0807D4DC @ =0x04000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #0x08
	movs r1, #0x20
	orrs r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _0807D4E0 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r5, [r0, #0x00]
	b _0807D512
	.byte 0x00, 0x00
_0807D4D4: .4byte 0x03000FD8
_0807D4D8: .4byte 0x04000208
_0807D4DC: .4byte 0x04000004
_0807D4E0: .4byte 0x04000200
_0807D4E4:
	movs r0, #0x03
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _0807D51C @ =0x04000208
	strh r5, [r3, #0x00]
	ldr r2, _0807D520 @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D524 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0807D528 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0807D52C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_0807D512:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D51C: .4byte 0x04000208
_0807D520: .4byte 0x02000004
_0807D524: .4byte 0x0000FFDF
_0807D528: .4byte 0x04000200
_0807D52C: .4byte 0x0000FFFB
	thumb_func_start sub_807D530
sub_807D530:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r2, #0x10
	ldsh r6, [r4, r2]
	ldr r7, _0807D5C0 @ =0x0807F7A5
	ldr r3, _0807D5C4 @ =0x04000208
	mov r10, r3
	ldr r5, _0807D5C8 @ =0x04000004
	ldr r0, _0807D5CC @ =0x04000200
	mov r8, r0
	movs r1, #0x04
	mov r9, r1
_0807D55A:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0807D566
	adds r0, r4, #0x0
	bl _call_via_r1
_0807D566:
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0807D5D8
	movs r3, #0x10
	ldsh r2, [r1, r3]
	cmp r6, r2
	bge _0807D5D4
	ldr r0, _0807D5BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r1, [r0, #0x00]
	lsls r4, r2, #0x08
_0807D582:
	bl _call_via_r7
	cmp r0, #0x00
	beq _0807D582
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r1, [r5, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	movs r0, #0x20
	orrs r4, r0
	ldrh r0, [r5, #0x00]
	orrs r4, r0
	strh r4, [r5, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x00]
	mov r3, r9
	orrs r0, r3
	strh r0, [r2, #0x00]
	ldr r1, _0807D5D0 @ =0x04000202
	ldrh r0, [r1, #0x00]
	orrs r0, r3
	strh r0, [r1, #0x00]
	movs r0, #0x01
	mov r1, r10
	strh r0, [r1, #0x00]
	b _0807D5D8
_0807D5BC: .4byte 0x03000FD8
_0807D5C0: .4byte 0x0807F7A5
_0807D5C4: .4byte 0x04000208
_0807D5C8: .4byte 0x04000004
_0807D5CC: .4byte 0x04000200
_0807D5D0: .4byte 0x04000202
_0807D5D4:
	adds r4, r1, #0x0
	b _0807D55A
_0807D5D8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807D5E8
sub_807D5E8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r5, [sp, #0x020]
	ldr r7, [sp, #0x024]
	cmp r6, #0x00
	bge _0807D5FA
	b _0807D772
_0807D5FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807D602
	adds r0, #0xFF
_0807D602:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r3, r3, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807D61A
	adds r0, #0xFF
_0807D61A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r5, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0807D632
	adds r0, #0xFF
_0807D632:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r7, r0
	cmp r2, #0x03
	bne _0807D648
	b _0807D744
_0807D648:
	cmp r2, #0x03
	ble _0807D652
	cmp r2, #0x04
	beq _0807D684
	b _0807D772
_0807D652:
	cmp r2, #0x00
	bge _0807D658
	b _0807D772
_0807D658:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D668
	movs r0, #0x01
	b _0807D66A
_0807D668:
	movs r0, #0x00
_0807D66A:
	str r0, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D772
_0807D684:
	ldr r0, _0807D6C0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x12]
	mov r12, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	mov r1, r12
	orrs r0, r1
	strh r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D6C4
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D6DE
_0807D6C0: .4byte 0x03000FD8
_0807D6C4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0xBE
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D6DE:
	ldr r2, _0807D724 @ =0x03001034
	ldr r0, _0807D728 @ =0x08198154
	ldr r1, _0807D72C @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D730 @ =0x084FB588
	ldr r4, _0807D734 @ =0x0300034C
	ldr r1, _0807D738 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D700
	movs r1, #0x24
_0807D700:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D73C @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D740 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D772
_0807D724: .4byte 0x03001034
_0807D728: .4byte 0x08198154
_0807D72C: .4byte 0x081980D8
_0807D730: .4byte 0x084FB588
_0807D734: .4byte 0x0300034C
_0807D738: .4byte 0x00000888
_0807D73C: .4byte 0x089F808C
_0807D740: .4byte 0x02000440
_0807D744:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D762
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D772
_0807D762:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	adds r2, r5, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D772:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807D77C
sub_807D77C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r0, #0xB8
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	adds r0, #0xBA
	ldrh r4, [r0, #0x00]
	adds r0, #0x02
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r1
	adds r6, r5, #0x0
	adds r6, #0xBE
	movs r1, #0x00
	ldsh r0, [r6, r1]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0xC0
	movs r2, #0x00
	ldsh r7, [r0, r2]
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x28]
	mov r10, r0
	cmp r4, #0x00
	bge _0807D7C0
	b _0807D8F4
_0807D7C0:
	adds r0, r5, #0x0
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	mov r12, r1
	mov r3, r12
	ands r3, r0
	cmp r3, #0x00
	beq _0807D7D4
	b _0807D8F4
_0807D7D4:
	ldr r2, [sp, #0x010]
	cmp r2, #0x03
	beq _0807D8C8
	cmp r2, #0x03
	ble _0807D7E4
	cmp r2, #0x04
	beq _0807D814
	b _0807D8F4
_0807D7E4:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0807D7EC
	b _0807D8F4
_0807D7EC:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D7FE
	mov r2, r12
	str r2, [sp, #0x000]
	b _0807D800
_0807D7FE:
	str r3, [sp, #0x000]
_0807D800:
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D8F4
_0807D814:
	ldr r0, _0807D848 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	ldrh r1, [r2, #0x12]
	orrs r0, r1
	strh r0, [r2, #0x12]
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D84C
	mov r0, r12
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D860
_0807D848: .4byte 0x03000FD8
_0807D84C:
	str r3, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D860:
	ldr r2, _0807D8A8 @ =0x03001034
	ldr r0, _0807D8AC @ =0x08198154
	ldr r1, _0807D8B0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D8B4 @ =0x084FB588
	ldr r4, _0807D8B8 @ =0x0300034C
	ldr r1, _0807D8BC @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D882
	movs r1, #0x24
_0807D882:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D8C0 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D8C4 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D8F4
	.byte 0x00, 0x00
_0807D8A8: .4byte 0x03001034
_0807D8AC: .4byte 0x08198154
_0807D8B0: .4byte 0x081980D8
_0807D8B4: .4byte 0x084FB588
_0807D8B8: .4byte 0x0300034C
_0807D8BC: .4byte 0x00000888
_0807D8C0: .4byte 0x089F808C
_0807D8C4: .4byte 0x02000440
_0807D8C8:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D8E6
	mov r2, r12
	str r2, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D8F4
_0807D8E6:
	str r3, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D8F4:
	adds r0, r5, #0x0
	adds r0, #0x78
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bne _0807D902
	b _0807DA4A
_0807D902:
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0807D90E
	b _0807DA4A
_0807D90E:
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bge _0807D9A4
	ldr r1, _0807D950 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r3, [r4, #0x0C]
	movs r0, #0x80
	ands r0, r3
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0807D95C
	mov r0, r10
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807D95C
	movs r0, #0x7F
	ands r0, r3
	strb r0, [r4, #0x0C]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807D954
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x74]
	b _0807D958
_0807D950: .4byte 0x03000FD8
_0807D954:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x70]
_0807D958:
	ldr r0, _0807D99C @ =0x0807F53D
	str r0, [r1, #0x54]
_0807D95C:
	ldr r3, _0807D9A0 @ =0x0807F649
	ldr r2, [r2, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	movs r1, #0x00
	ldsh r2, [r6, r1]
	adds r2, #0x01
	ldr r0, [sp, #0x00C]
	subs r2, r0, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0807DA38
	.byte 0x00, 0x00
_0807D99C: .4byte sub_807F53C
_0807D9A0: .4byte sub_807F648
_0807D9A4:
	ldr r4, _0807DA00 @ =0x00000111
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0807D9C0
	str r5, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_80DF024
_0807D9C0:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _0807DA4A
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807DA0C
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x09]
	ldr r3, _0807DA04 @ =0x0807F681
	ldr r0, _0807DA08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	strh r6, [r0, #0x10]
	str r0, [r2, #0x4C]
	str r5, [r0, #0x08]
	movs r1, #0x0C
	strh r1, [r0, #0x10]
	b _0807DA14
_0807DA00: .4byte 0x00000111
_0807DA04: .4byte sub_807F680
_0807DA08: .4byte 0x03000FD8
_0807DA0C:
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x08]
_0807DA14:
	lsls r0, r4, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807DA2A
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DA2A:
	ldr r2, _0807DA5C @ =0x00000111
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807DA38:
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807DA4A:
	ldr r1, [sp, #0x010]
	cmp r1, #0x04
	bhi _0807DA9A
	lsls r0, r1, #0x02
	ldr r1, _0807DA60 @ =0x0807DA64
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807DA5C: .4byte 0x00000111
_0807DA60: .4byte 0x0807DA64
	.byte 0x9A, 0xDA, 0x07, 0x08, 0x78, 0xDA, 0x07, 0x08, 0x8A, 0xDA, 0x07, 0x08, 0x9A, 0xDA, 0x07, 0x08
	.byte 0x9A, 0xDA, 0x07, 0x08, 0x20, 0x22, 0x52, 0x42, 0x13, 0x23, 0x5B, 0x42, 0x04, 0x20, 0x29, 0x1C
	.byte 0x01, 0xF0, 0x2E, 0xF8, 0x07, 0xE0, 0x20, 0x22, 0x52, 0x42, 0x13, 0x23, 0x5B, 0x42, 0x05, 0x20
	.byte 0x29, 0x1C, 0x01, 0xF0, 0x25, 0xF8
_0807DA9A:
	ldr r0, [sp, #0x014]
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1F
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	lsls r1, r0, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x014]
	strb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB4
	movs r0, #0x00
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_807DAD4
sub_807DAD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	cmp r1, #0x02
	beq _0807DBB4
	cmp r1, #0x02
	bgt _0807DAEE
	cmp r1, #0x01
	beq _0807DB80
	b _0807DC7C
_0807DAEE:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0807DB00
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _0807DB40
	b _0807DC7C
_0807DB00:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB28
	ldr r2, _0807DB24 @ =0x00002028
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA4
	lsls r0, r0, #0x01
	b _0807DBD4
_0807DB24: .4byte 0x00002028
_0807DB28:
	ldr r2, _0807DB3C @ =0x00002057
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA6
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB3C: .4byte 0x00002057
_0807DB40:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB68
	ldr r2, _0807DB64 @ =0x00002029
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xE7
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB64: .4byte 0x00002029
_0807DB68:
	ldr r2, _0807DB78 @ =0x00002058
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DB7C @ =0x0000014B
	b _0807DBD4
_0807DB78: .4byte 0x00002058
_0807DB7C: .4byte 0x0000014B
_0807DB80:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB9C
	ldr r2, _0807DB98 @ =0x0000202A
	b _0807DBC8
	.byte 0x00, 0x00
_0807DB98: .4byte 0x0000202A
_0807DB9C:
	ldr r2, _0807DBB0 @ =0x00002059
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DBB0: .4byte 0x00002059
_0807DBB4:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DBE4
	ldr r2, _0807DBDC @ =0x0000202C
_0807DBC8:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DBE0 @ =0x00000149
_0807DBD4:
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	b _0807DBFA
_0807DBDC: .4byte 0x0000202C
_0807DBE0: .4byte 0x00000149
_0807DBE4:
	ldr r2, _0807DC68 @ =0x0000205B
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_0807DBFA:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r3, #0x00
	strh r3, [r0, #0x00]
	ldr r4, _0807DC6C @ =0x0807F649
	ldr r6, _0807DC70 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r4, [r1, #0x04]
	strh r3, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DC7C
	mov r0, r8
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bne _0807DC7C
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r0, #0x00
	ldsh r1, [r7, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DC74
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x74]
	b _0807DC78
_0807DC68: .4byte 0x0000205B
_0807DC6C: .4byte sub_807F648
_0807DC70: .4byte 0x03000FD8
_0807DC74:
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
_0807DC78:
	ldr r0, _0807DC88 @ =0x0807F53D
	str r0, [r1, #0x54]
_0807DC7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DC88: .4byte sub_807F53C
	thumb_func_start sub_807DC8C
sub_807DC8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0807DCCC
	ldr r0, _0807DCC8 @ =0x00000111
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807DD38
	movs r0, #0x24
	bl sub_8082898
	b _0807DD32
_0807DCC8: .4byte 0x00000111
_0807DCCC:
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DCEC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DCF8
_0807DCEC:
	ldr r2, _0807DD24 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DCF8:
	ldr r2, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807DD2E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0807DD28
	movs r0, #0x47
	bl play_sfx_80195B4
	b _0807DD2E
_0807DD24: .4byte 0x0000204D
_0807DD28:
	movs r0, #0x47
	bl play_sfx_80195B4
_0807DD2E:
	movs r0, #0x00
	str r0, [r5, #0x04]
_0807DD32:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_807DD38
sub_807DD38:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	movs r0, #0x00
	str r0, [r4, #0x4C]
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	bne _0807DD78
	ldr r2, _0807DD74 @ =0x00002028
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _0807DD8C
	.byte 0x00, 0x00
_0807DD74: .4byte 0x00002028
_0807DD78:
	ldr r2, _0807DDDC @ =0x00002057
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x71
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_0807DD8C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807DDA0
	adds r0, #0xFF
_0807DDA0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x16
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807DDAE
	adds r2, #0xFF
_0807DDAE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807DDB8
	adds r3, #0xFF
_0807DDB8:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x80
	bl sub_80880C4
	ldr r0, _0807DDE0 @ =0x0807F5B9
	str r0, [r6, #0x04]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DDDC: .4byte 0x00002057
_0807DDE0: .4byte sub_807F5B8
	thumb_func_start sub_807DDE4
sub_807DDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, [r4, #0x4C]
	ldr r0, _0807DE5C @ =0x08086961
	mov r8, r4
	cmp r1, r0
	bne _0807DE02
	ldr r0, [r4, #0x30]
	mov r8, r0
_0807DE02:
	adds r0, r7, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	lsls r1, r5, #0x02
	mov r0, r8
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE26
	b _0807DFD6
_0807DE26:
	mov r0, r8
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE3E
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE3E
	b _0807DFD6
_0807DE3E:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0807DE60
	movs r0, #0x10
	b _0807DE6A
	.byte 0x00, 0x00
_0807DE5C: .4byte sub_8086960
_0807DE60:
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DE72
	movs r0, #0x08
_0807DE6A:
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	b _0807DFD6
_0807DE72:
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_80875E0
	str r0, [sp, #0x000]
	cmp r0, #0x00
	bne _0807DE82
	b _0807DFD6
_0807DE82:
	cmp r8, r4
	beq _0807DE8C
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x54]
_0807DE8C:
	cmp r5, #0x00
	bne _0807DE92
	b _0807DFC4
_0807DE92:
	cmp r6, #0x00
	bne _0807DE98
	b _0807DFC4
_0807DE98:
	cmp r5, #0x01
	beq _0807DEFA
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _0807DEB2
	b _0807DFD6
_0807DEB2:
	cmp r6, #0x00
	bne _0807DEF4
	movs r5, #0x00
	ldr r1, _0807DED8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x54]
	mov r9, r1
	cmp r2, #0x00
	beq _0807DEF4
	mov r0, r9
	movs r3, #0x00
_0807DEC8:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DEEC
	cmp r5, #0x00
	beq _0807DEDC
	str r1, [r5, #0x34]
	b _0807DEE0
	.byte 0x00, 0x00
_0807DED8: .4byte 0x03000FD8
_0807DEDC:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DEE0:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DEF4
_0807DEEC:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DEC8
_0807DEF4:
	cmp r6, #0x00
	ble _0807DFD6
	b _0807DFC4
_0807DEFA:
	ldr r2, _0807DF54 @ =0x03000FD8
	mov r9, r2
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	movs r3, #0x02
	mov r10, r3
	cmp r7, r0
	bne _0807DF10
	movs r0, #0x01
	mov r10, r0
_0807DF10:
	ldrb r0, [r1, #0x0D]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	bne _0807DFD6
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _0807DFD6
	cmp r6, #0x00
	bne _0807DF8A
	movs r5, #0x00
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x54]
	cmp r2, #0x00
	beq _0807DF70
	mov r0, r9
	movs r3, #0x00
_0807DF46:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DF68
	cmp r5, #0x00
	beq _0807DF58
	str r1, [r5, #0x34]
	b _0807DF5C
_0807DF54: .4byte 0x03000FD8
_0807DF58:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DF5C:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DF70
_0807DF68:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DF46
_0807DF70:
	mov r0, r9
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0D]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	orrs r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0D]
_0807DF8A:
	cmp r6, #0x00
	bgt _0807DFC4
	ldr r2, [sp, #0x000]
	cmp r2, #0x03
	bne _0807DFD6
	adds r1, r7, #0x0
	adds r1, #0x94
	ldr r0, [r1, #0x00]
	movs r2, #0x30
	negs r2, r2
	cmp r0, r2
	ble _0807DFA4
	str r2, [r1, #0x00]
_0807DFA4:
	ldr r0, [r1, #0x00]
	negs r0, r0
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r7, #0x0
	adds r2, #0xB2
	strh r1, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DFD6
_0807DFC4:
	mov r0, r8
	ldr r3, [r0, #0x58]
	cmp r3, #0x00
	beq _0807DFD6
	ldr r1, [r7, #0x28]
	adds r1, #0x08
	ldr r2, [sp, #0x000]
	bl _call_via_r3
_0807DFD6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807DFE8
sub_807DFE8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x07
	ands r0, r2
	cmp r0, #0x00
	beq _0807E07C
	ldr r1, [r4, #0x4C]
	ldr r0, _0807E058 @ =0x08086961
	adds r5, r4, #0x0
	cmp r1, r0
	bne _0807E008
	ldr r5, [r4, #0x30]
_0807E008:
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1B
	adds r0, r5, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0807E07C
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl sub_80875E0
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _0807E07C
	cmp r5, r4
	beq _0807E02E
	movs r0, #0x00
	str r0, [r5, #0x54]
_0807E02E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r7
	cmp r0, #0x00
	bne _0807E07C
	movs r5, #0x00
	ldr r2, _0807E05C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x54]
	cmp r1, #0x00
	beq _0807E078
	adds r0, r2, #0x0
	movs r3, #0x00
_0807E04A:
	ldr r2, [r1, #0x34]
	cmp r1, r4
	bne _0807E070
	cmp r5, #0x00
	beq _0807E060
	str r2, [r5, #0x34]
	b _0807E064
_0807E058: .4byte sub_8086960
_0807E05C: .4byte 0x03000FD8
_0807E060:
	ldr r0, [r0, #0x00]
	str r2, [r0, #0x54]
_0807E064:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807E078
_0807E070:
	adds r5, r1, #0x0
	adds r1, r2, #0x0
	cmp r1, #0x00
	bne _0807E04A
_0807E078:
	movs r0, #0x01
	b _0807E07E
_0807E07C:
	movs r0, #0x00
_0807E07E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_807E084
sub_807E084:
	push {r4, r5, r6, lr}
	ldr r3, _0807E0DC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
	ldr r0, [r3, #0x00]
	ldr r5, [r0, #0x54]
	cmp r5, #0x00
	beq _0807E154
_0807E09C:
	ldr r6, [r5, #0x34]
	ldr r0, _0807E0DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807E0F6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0807E0F6
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	beq _0807E0CE
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0807E0E0
_0807E0CE:
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
	b _0807E0F6
	.byte 0x00, 0x00
_0807E0DC: .4byte 0x03000FD8
_0807E0E0:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807DFE8
	cmp r0, #0x00
	bne _0807E0F6
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
_0807E0F6:
	ldr r0, _0807E134 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807E14E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0807E14E
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	beq _0807E126
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0807E138
_0807E126:
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
	b _0807E14E
	.byte 0x00, 0x00
_0807E134: .4byte 0x03000FD8
_0807E138:
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807DFE8
	cmp r0, #0x00
	bne _0807E14E
	adds r1, r4, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	bl sub_807DDE4
_0807E14E:
	adds r5, r6, #0x0
	cmp r5, #0x00
	bne _0807E09C
_0807E154:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x86, 0xB0, 0x03, 0x1C
	.byte 0x89, 0x46, 0x16, 0x48, 0x88, 0x21, 0x09, 0x01, 0x40, 0x18, 0x07, 0x68, 0x18, 0x1C, 0x49, 0x30
	.byte 0x00, 0x21, 0x41, 0x56, 0x02, 0x91, 0x02, 0x38, 0x00, 0x22, 0x82, 0x56, 0x03, 0x92, 0x02, 0x38
	.byte 0x00, 0x25, 0x45, 0x57, 0x01, 0x38, 0x00, 0x24, 0x04, 0x57, 0x28, 0x1B, 0x82, 0x46, 0x18, 0x1C
	.byte 0x48, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x1A, 0x04, 0x91, 0x18, 0x1C, 0x46, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x1A, 0x05, 0x92, 0x98, 0x68, 0x41, 0x7C, 0x40, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x05, 0xD0, 0x68, 0x42, 0x01, 0x90, 0x03, 0xE0, 0x00, 0x00, 0x4C, 0x03
	.byte 0x00, 0x03, 0x01, 0x94, 0x99, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x01, 0x98
	.byte 0x40, 0x18, 0x01, 0x90, 0xD9, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x02, 0x98
	.byte 0x40, 0x18, 0x02, 0x90, 0x18, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x01, 0x12, 0x03, 0x98
	.byte 0x40, 0x18, 0x03, 0x90, 0x2E, 0x48, 0x00, 0x68, 0x93, 0x21, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68
	.byte 0x02, 0xAA, 0x03, 0xAB, 0x00, 0x21, 0x88, 0x46, 0x00, 0x91, 0x01, 0xA9, 0x04, 0xF0, 0x1F, 0xFD
	.byte 0x52, 0x46, 0x08, 0x2A, 0x5B, 0xDC, 0x05, 0x9B, 0x20, 0x2B, 0x58, 0xDC, 0x25, 0x49, 0x25, 0x4A
	.byte 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F, 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31
	.byte 0x40, 0x18, 0x24, 0x18, 0x21, 0x4E, 0x21, 0x4D, 0x22, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19
	.byte 0x80, 0x20, 0x00, 0x01, 0x51, 0x46, 0x5C, 0xF1, 0x0E, 0xFC, 0xE1, 0x88, 0xE0, 0x80, 0xE0, 0x89
	.byte 0x40, 0x46, 0xE0, 0x81, 0xE0, 0x8A, 0x41, 0x46, 0xE1, 0x82, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20
	.byte 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0xFF, 0xFB, 0xE1, 0x8B, 0xE0, 0x83, 0x08, 0x20, 0x52, 0x46
	.byte 0x80, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B, 0x1B, 0x1A, 0x12, 0x48, 0x03, 0x40
	.byte 0x01, 0x93, 0x20, 0x20, 0x05, 0x99, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x02, 0x99
	.byte 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x0C, 0x4A, 0x15, 0x1C, 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80
	.byte 0x48, 0x46, 0x42, 0x02, 0x1A, 0x43, 0x80, 0x23, 0xDB, 0x01, 0x03, 0xE1, 0x00, 0x00, 0xD8, 0x0F
	.byte 0x00, 0x03, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x85, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x10, 0x2B, 0x54, 0xDC, 0x23, 0x49, 0x23, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x1F, 0x4E, 0x1F, 0x4D
	.byte 0x20, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x00, 0x01, 0x51, 0x46, 0x5C, 0xF1
	.byte 0xB2, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89, 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82
	.byte 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0xA4, 0xFB, 0xE1, 0x8B
	.byte 0xE0, 0x83, 0x10, 0x20, 0x51, 0x46, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B
	.byte 0x1B, 0x1A, 0x10, 0x48, 0x03, 0x40, 0x01, 0x93, 0x40, 0x20, 0x05, 0x9A, 0x80, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x02, 0x99, 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x0B, 0x48, 0x05, 0x1C
	.byte 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80, 0x48, 0x46, 0x42, 0x02, 0x1A, 0x43, 0x80, 0x23, 0xDB, 0x01
	.byte 0xA8, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x87, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x20, 0x2B, 0x4C, 0xDC, 0x1F, 0x49, 0x1F, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x1B, 0x4E, 0x1B, 0x4D
	.byte 0x1C, 0x48, 0x2D, 0x1A, 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x40, 0x01, 0x51, 0x46, 0x5C, 0xF1
	.byte 0x5A, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89, 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82
	.byte 0x32, 0x68, 0x52, 0x19, 0x80, 0x20, 0x80, 0x01, 0x05, 0x99, 0x5C, 0xF1, 0x4C, 0xFB, 0xE1, 0x8B
	.byte 0xE0, 0x83, 0x20, 0x20, 0x51, 0x46, 0x40, 0x1A, 0xC1, 0x0F, 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B
	.byte 0x1B, 0x1A, 0x0C, 0x48, 0x03, 0x40, 0x01, 0x93, 0x40, 0x20, 0x05, 0x9A, 0x80, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x02, 0x99, 0x09, 0x1A, 0xFF, 0x24, 0x21, 0x40, 0x07, 0x48, 0x05, 0x1C
	.byte 0x51, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83
	.byte 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x87, 0xFF, 0xFF, 0x53, 0x46
	.byte 0x40, 0x2B, 0x6E, 0xDC, 0x2E, 0x49, 0x2E, 0x4A, 0x88, 0x18, 0x04, 0x78, 0x24, 0x07, 0xE4, 0x0F
	.byte 0xA4, 0x02, 0x4B, 0x46, 0x58, 0x01, 0x80, 0x31, 0x40, 0x18, 0x24, 0x18, 0x2A, 0x48, 0x80, 0x46
	.byte 0x2A, 0x4D, 0x2A, 0x48, 0x2D, 0x1A, 0x41, 0x46, 0x0A, 0x68, 0x52, 0x19, 0x80, 0x26, 0xB6, 0x01
	.byte 0x30, 0x1C, 0x51, 0x46, 0x5C, 0xF1, 0x07, 0xFB, 0xE1, 0x88, 0x00, 0x21, 0xE0, 0x80, 0xE0, 0x89
	.byte 0xE1, 0x81, 0xE0, 0x8A, 0xE1, 0x82, 0x43, 0x46, 0x1A, 0x68, 0x52, 0x19, 0x30, 0x1C, 0x05, 0x99
	.byte 0x5C, 0xF1, 0xF9, 0xFA, 0xE1, 0x8B, 0xE0, 0x83, 0x40, 0x22, 0x51, 0x46, 0x50, 0x1A, 0xC1, 0x0F
	.byte 0x40, 0x18, 0x40, 0x10, 0x01, 0x9B, 0x1B, 0x1A, 0x1A, 0x48, 0x03, 0x40, 0x01, 0x93, 0x05, 0x98
	.byte 0x12, 0x1A, 0xD0, 0x0F, 0x12, 0x18, 0x52, 0x10, 0x02, 0x99, 0x89, 0x1A, 0xFF, 0x24, 0x21, 0x40
	.byte 0xE0, 0x22, 0xD2, 0x00, 0x15, 0x1C, 0x08, 0x1C, 0x28, 0x43, 0x38, 0x80, 0x48, 0x46, 0x42, 0x02
	.byte 0x1A, 0x43, 0x10, 0x4B, 0x18, 0x1C, 0x02, 0x43, 0x7A, 0x80, 0x0F, 0x4B, 0x18, 0x1C, 0xB8, 0x80
	.byte 0x04, 0x98, 0x09, 0x1A, 0x21, 0x40, 0x02, 0x91, 0x29, 0x43, 0x39, 0x81, 0x7A, 0x81, 0x01, 0x21
	.byte 0x49, 0x42, 0x89, 0x44, 0x0A, 0x4A, 0x10, 0x1C, 0xB8, 0x81, 0x13, 0xE0, 0x00, 0x00, 0x4C, 0x03
	.byte 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82
	.byte 0x19, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0xB0, 0xBB, 0x00, 0x00, 0xB0, 0xCB
	.byte 0x00, 0x00, 0x10, 0x3F, 0x08, 0x48, 0x88, 0x23, 0x1B, 0x01, 0xC0, 0x18, 0x39, 0x1C, 0x10, 0x31
	.byte 0x01, 0x60, 0x48, 0x46, 0x06, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03
	thumb_func_start sub_807E534
sub_807E534:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	ldr r6, _0807E584 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0807E554
	b _0807E656
_0807E554:
	movs r7, #0x92
	lsls r7, r7, #0x02
	adds r0, r2, r7
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0807E588
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r4, [r0, #0x34]
	movs r1, #0x01
	bl sub_81165CC
	ldr r0, [r6, #0x00]
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x34]
	b _0807E5DA
_0807E584: .4byte 0x03000FD8
_0807E588:
	ldr r0, [r6, #0x00]
	movs r4, #0x92
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0807E656
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r10
	lsls r0, r1, #0x08
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	movs r1, #0xFF
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	bl sub_81151E4
_0807E5DA:
	ldr r4, _0807E674 @ =0x03000FD8
	mov r8, r4
	ldr r3, [r4, #0x00]
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r3, r3, r6
	ldr r0, [r3, #0x00]
	adds r0, #0x4A
	movs r1, #0x00
	mov r9, r1
	mov r4, r10
	strh r4, [r0, #0x00]
	ldr r2, _0807E668 @ =0x03001038
	ldr r0, _0807E66C @ =0x0819832C
	ldr r1, _0807E670 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, [r3, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x4A
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x05
	ldrh r1, [r1, #0x34]
	bl _call_via_r2
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	ldr r5, [r0, #0x00]
	adds r5, r5, r6
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x1C]
	ldr r2, _0807E678 @ =0x02000080
	ldrh r4, [r0, #0x36]
	str r4, [sp, #0x000]
	ldr r4, [r5, #0x00]
	ldrh r4, [r4, #0x30]
	str r4, [sp, #0x004]
	mov r4, r9
	str r4, [sp, #0x008]
	bl sub_8116488
	ldr r3, _0807E67C @ =0x0300034C
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	ldr r1, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	ldrh r1, [r1, #0x36]
	orrs r0, r1
	strh r0, [r3, #0x02]
	ldr r0, [r2, #0x00]
	bl sub_8116610
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0C]
_0807E656:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807E668: .4byte 0x03001038
_0807E66C: .4byte 0x0819832C
_0807E670: .4byte 0x08198220
_0807E674: .4byte 0x03000FD8
_0807E678: .4byte 0x02000080
_0807E67C: .4byte 0x0300034C
	thumb_func_start sub_807E680
sub_807E680:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r9, r2
	mov r10, r3
	ldr r7, [sp, #0x030]
	ldr r0, _0807E6D0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E6E2
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _0807E6D8
	ldr r0, _0807E6D4 @ =0x00FFFFFF
	ands r5, r0
	b _0807E6E2
	.byte 0x00, 0x00
_0807E6D0: .4byte 0x03000FD8
_0807E6D4: .4byte 0x00FFFFFF
_0807E6D8:
	movs r5, #0x02
	negs r5, r5
	cmp r1, #0x40
	bne _0807E6E2
	adds r5, #0x01
_0807E6E2:
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807E78C
	cmp r5, #0x01
	bne _0807E6F2
	movs r1, #0x00
	b _0807E6F8
_0807E6F2:
	cmp r5, #0x02
	bne _0807E6F8
	movs r1, #0x01
_0807E6F8:
	movs r2, #0x01
	negs r2, r2
	cmp r1, r2
	beq _0807E78C
	cmp r4, #0x00
	bne _0807E770
	ldr r0, _0807E76C @ =0x000020B1
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r2, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r2
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1F]
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r3, #0x08]
	ldrb r1, [r1, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	movs r2, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0xFF
	strh r0, [r4, #0x0E]
	b _0807E78C
_0807E76C: .4byte 0x000020B1
_0807E770:
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _0807E78C
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
_0807E78C:
	movs r0, #0x02
	negs r0, r0
	ldr r2, _0807E800 @ =0x03000FD8
	cmp r5, r0
	beq _0807E7BE
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	ldr r1, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1, #0x00]
_0807E7BE:
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0807E7CC
	b _0807EA0E
_0807E7CC:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E812
	ldrb r0, [r2, #0x0A]
	movs r2, #0xC0
	ands r2, r0
	cmp r2, #0x80
	bne _0807E808
	ldr r0, _0807E804 @ =0x00FFFFFF
	ands r5, r0
	b _0807E812
_0807E800: .4byte 0x03000FD8
_0807E804: .4byte 0x00FFFFFF
_0807E808:
	cmp r2, #0x40
	beq _0807E80E
	b _0807EA0E
_0807E80E:
	movs r5, #0x01
	negs r5, r5
_0807E812:
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807E8D4
	mov r0, r9
	mov r1, r10
	bl sub_8199480
	cmp r0, #0x00
	bge _0807E828
	adds r0, #0x0F
_0807E828:
	asrs r0, r0, #0x04
	adds r0, #0x05
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	movs r0, #0x07
	ands r7, r0
	cmp r6, #0x00
	bne _0807E844
	ldr r0, _0807E840 @ =0x000020B2
	adds r1, r7, #0x0
	b _0807E9A8
_0807E840: .4byte 0x000020B2
_0807E844:
	ldrh r1, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r4, _0807E8AC @ =0x000020B2
	cmp r1, r4
	beq _0807E8B0
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
	str r4, [sp, #0x000]
	b _0807E8C0
	.byte 0x00, 0x00
_0807E8AC: .4byte 0x000020B2
_0807E8B0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r7
	bne _0807E8BC
	b _0807E9E2
_0807E8BC:
	movs r0, #0x00
	str r0, [sp, #0x000]
_0807E8C0:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	b _0807E9E2
_0807E8D4:
	movs r3, #0x00
	cmp r5, #0x60
	beq _0807E97A
	cmp r5, #0x60
	bgt _0807E916
	cmp r5, #0x10
	beq _0807E966
	cmp r5, #0x10
	bgt _0807E8FE
	cmp r5, #0x01
	beq _0807E94E
	cmp r5, #0x01
	bgt _0807E8F4
	cmp r5, #0x00
	beq _0807E95E
	b _0807E99C
_0807E8F4:
	cmp r5, #0x02
	beq _0807E952
	cmp r5, #0x03
	beq _0807E956
	b _0807E99C
_0807E8FE:
	cmp r5, #0x30
	beq _0807E982
	cmp r5, #0x30
	bgt _0807E90C
	cmp r5, #0x20
	beq _0807E96E
	b _0807E99C
_0807E90C:
	cmp r5, #0x40
	beq _0807E962
	cmp r5, #0x50
	beq _0807E972
	b _0807E99C
_0807E916:
	cmp r5, #0xB0
	beq _0807E996
	cmp r5, #0xB0
	bgt _0807E936
	cmp r5, #0x80
	beq _0807E96A
	cmp r5, #0x80
	bgt _0807E92C
	cmp r5, #0x70
	beq _0807E98E
	b _0807E99C
_0807E92C:
	cmp r5, #0x90
	beq _0807E97E
	cmp r5, #0xA0
	beq _0807E986
	b _0807E99C
_0807E936:
	cmp r5, #0xD0
	beq _0807E98A
	cmp r5, #0xD0
	bgt _0807E944
	cmp r5, #0xC0
	beq _0807E976
	b _0807E99C
_0807E944:
	cmp r5, #0xE0
	beq _0807E992
	cmp r5, #0xF0
	beq _0807E99A
	b _0807E99C
_0807E94E:
	movs r3, #0x02
	b _0807E99C
_0807E952:
	movs r3, #0x03
	b _0807E99C
_0807E956:
	lsls r1, r7, #0x01
	movs r0, #0x1A
	subs r3, r0, r1
	b _0807E99E
_0807E95E:
	movs r3, #0x0A
	b _0807E99C
_0807E962:
	movs r3, #0x0B
	b _0807E99C
_0807E966:
	movs r3, #0x0C
	b _0807E99C
_0807E96A:
	movs r3, #0x0D
	b _0807E99C
_0807E96E:
	movs r3, #0x0E
	b _0807E99C
_0807E972:
	movs r3, #0x0F
	b _0807E99C
_0807E976:
	movs r3, #0x10
	b _0807E99C
_0807E97A:
	movs r3, #0x11
	b _0807E99C
_0807E97E:
	movs r3, #0x12
	b _0807E99C
_0807E982:
	movs r3, #0x13
	b _0807E99C
_0807E986:
	movs r3, #0x14
	b _0807E99C
_0807E98A:
	movs r3, #0x15
	b _0807E99C
_0807E98E:
	movs r3, #0x16
	b _0807E99C
_0807E992:
	movs r3, #0x17
	b _0807E99C
_0807E996:
	movs r3, #0x18
	b _0807E99C
_0807E99A:
	movs r3, #0x19
_0807E99C:
	lsls r1, r7, #0x01
_0807E99E:
	adds r3, r3, r1
	cmp r6, #0x00
	bne _0807E9C0
	ldr r0, _0807E9BC @ =0x00002083
	adds r1, r3, #0x0
_0807E9A8:
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r6, r0, #0x0
	bl sub_807BC90
	movs r0, #0x00
	strh r0, [r6, #0x0E]
	b _0807E9E2
_0807E9BC: .4byte 0x00002083
_0807E9C0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	beq _0807E9E2
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
_0807E9E2:
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	add r0, r9
	strh r0, [r6, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	add r0, r10
	strh r0, [r6, #0x02]
	ldr r0, _0807EA20 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r6, [r1, #0x00]
_0807EA0E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807EA20: .4byte 0x03000FD8
	thumb_func_start sub_807EA24
sub_807EA24:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _0807EAE0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EA82
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EA82:
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EADA
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807EAE0: .4byte 0x03000FD8
	thumb_func_start sub_807EAE4
sub_807EAE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x08C
	mov r9, r0
	adds r7, r1, #0x0
	str r2, [sp, #0x080]
	str r3, [sp, #0x084]
	ldr r0, _0807EBAC @ =0x03000FD8
	mov r10, r0
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x28]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	mov r0, r9
	cmp r0, #0x06
	bne _0807EB22
	ldrb r1, [r6, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0807EB22
	b _0807EF40
_0807EB22:
	ldr r1, _0807EBB0 @ =0x0820002C
	add r0, sp, #0x010
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x018
	ldr r1, _0807EBB4 @ =0x08200034
	adds r0, r5, #0x0
	movs r2, #0x10
	bl memcpy
	add r1, sp, #0x028
	mov r8, r1
	ldr r1, _0807EBB8 @ =0x08200044
	mov r0, r8
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x030
	ldr r1, _0807EBBC @ =0x0820004C
	adds r0, r4, #0x0
	movs r2, #0x50
	bl memcpy
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0807EB5A
	adds r0, #0xFF
_0807EB5A:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x084]
	subs r0, r0, r1
	adds r0, #0x40
	str r0, [sp, #0x088]
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0807EB6C
	adds r1, #0xFF
_0807EB6C:
	asrs r1, r1, #0x08
	ldr r0, [sp, #0x080]
	adds r0, r0, r1
	str r0, [sp, #0x080]
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0807EB7C
	adds r0, #0xFF
_0807EB7C:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x084]
	mov r0, r8
	add r0, r9
	ldrb r5, [r0, #0x00]
	mov r2, r10
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r1, sp, #0x080
	add r2, sp, #0x084
	add r3, sp, #0x088
	movs r4, #0x00
	str r4, [sp, #0x000]
	bl sub_8082C58
	ldr r1, [sp, #0x080]
	cmp r1, r5
	bge _0807EBC0
	str r5, [sp, #0x080]
	b _0807EBCA
_0807EBAC: .4byte 0x03000FD8
_0807EBB0: .4byte 0x0820002C
_0807EBB4: .4byte 0x08200034
_0807EBB8: .4byte 0x08200044
_0807EBBC: .4byte 0x0820004C
_0807EBC0:
	movs r0, #0xF0
	subs r0, r0, r5
	cmp r0, r1
	bge _0807EBCA
	str r0, [sp, #0x080]
_0807EBCA:
	ldr r0, [sp, #0x084]
	cmp r0, #0x1B
	bgt _0807EBD4
	movs r0, #0x1C
	str r0, [sp, #0x084]
_0807EBD4:
	ldrh r4, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r4, r0
	ldr r2, _0807ECEC @ =0x03001038
	ldr r0, _0807ECF0 @ =0x08198350
	ldr r1, _0807ECF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0807ECF8 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r5, r0, r1
	ldrb r0, [r5, #0x00]
	movs r1, #0x05
	bl _call_via_r2
	mov r2, r9
	lsls r7, r2, #0x01
	lsls r0, r0, #0x04
	adds r0, r7, r0
	add r0, sp
	adds r0, #0x30
	ldrh r0, [r0, #0x00]
	cmp r4, r0
	beq _0807EC6E
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x04
	adds r0, r7, r0
	add r0, sp
	adds r0, #0x30
	ldrh r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
_0807EC6E:
	mov r0, sp
	add r0, r9
	adds r0, #0x10
	ldrb r1, [r0, #0x00]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	ldr r0, [sp, #0x080]
	strh r0, [r6, #0x00]
	ldr r0, [sp, #0x084]
	strh r0, [r6, #0x02]
	ldr r0, [sp, #0x088]
	strh r0, [r6, #0x0E]
	ldrb r1, [r6, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r6, #0x12]
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x18
	ldrh r0, [r0, #0x00]
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	mov r0, r9
	cmp r0, #0x02
	beq _0807ECBE
	b _0807EF40
_0807ECBE:
	ldr r3, _0807ECFC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r3, [r3, #0x00]
	ldrb r1, [r3, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0xC0
	beq _0807ECD8
	b _0807EF40
_0807ECD8:
	ldrb r0, [r3, #0x0E]
	cmp r0, #0x07
	bls _0807ECE0
	b _0807EF40
_0807ECE0:
	lsls r0, r0, #0x02
	ldr r1, _0807ED00 @ =0x0807ED04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807ECEC: .4byte 0x03001038
_0807ECF0: .4byte 0x08198350
_0807ECF4: .4byte 0x08198220
_0807ECF8: .4byte 0x0300034C
_0807ECFC: .4byte 0x03000FD8
_0807ED00: .4byte 0x0807ED04
	.byte 0x24, 0xED, 0x07, 0x08, 0x70, 0xED, 0x07, 0x08, 0xD0, 0xED, 0x07, 0x08, 0x08, 0xEE, 0x07, 0x08
	.byte 0x3C, 0xEE, 0x07, 0x08, 0xA0, 0xEE, 0x07, 0x08, 0xD8, 0xEE, 0x07, 0x08, 0x10, 0xEF, 0x07, 0x08
	.byte 0x11, 0x49, 0x88, 0x46, 0x0B, 0x68, 0xDC, 0x7A, 0xA0, 0x09, 0x19, 0x7B, 0x0F, 0x25, 0x29, 0x40
	.byte 0x89, 0x00, 0x01, 0x43, 0x01, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26
	.byte 0x30, 0x1C, 0x20, 0x40, 0x10, 0x43, 0xD8, 0x72, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x7B, 0x10, 0x20
	.byte 0x40, 0x42, 0x10, 0x40, 0x08, 0x43, 0x18, 0x73, 0x42, 0x46, 0x13, 0x68, 0x9A, 0x68, 0x91, 0x03
	.byte 0x89, 0x0E, 0x02, 0x20, 0x40, 0x42, 0x24, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0x15, 0x48, 0x80, 0x46
	.byte 0x03, 0x68, 0xDC, 0x7A, 0xA0, 0x09, 0x19, 0x7B, 0x0F, 0x25, 0x29, 0x40, 0x89, 0x00, 0x01, 0x43
	.byte 0x02, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26, 0x30, 0x1C, 0x20, 0x40
	.byte 0x10, 0x43, 0xD8, 0x72, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x7B, 0x10, 0x20, 0x40, 0x42, 0x10, 0x40
	.byte 0x08, 0x43, 0x18, 0x73, 0x41, 0x46, 0x0B, 0x68, 0x9A, 0x68, 0x91, 0x03, 0x89, 0x0E, 0x03, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x31, 0x40, 0x09, 0x03, 0x03, 0x48, 0x10, 0x40, 0x08, 0x43, 0x98, 0x60
	.byte 0xBC, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xFF, 0x0F, 0xFC, 0xFF, 0x0B, 0x48, 0x02, 0x68
	.byte 0x93, 0x89, 0x99, 0x05, 0x89, 0x0E, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01, 0x08, 0x48, 0x18, 0x40
	.byte 0x08, 0x43, 0x90, 0x81, 0x93, 0x7A, 0x99, 0x08, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x89, 0x00
	.byte 0x03, 0x20, 0x18, 0x40, 0x08, 0x43, 0x90, 0x72, 0xA0, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0F, 0xFC, 0xFF, 0xFF, 0x0B, 0x4C, 0x23, 0x68, 0x5A, 0x7B, 0x91, 0x08, 0x01, 0x20, 0x01, 0x43
	.byte 0x89, 0x00, 0x03, 0x20, 0x10, 0x40, 0x08, 0x43, 0x58, 0x73, 0x23, 0x68, 0xDA, 0x7A, 0x91, 0x06
	.byte 0x89, 0x0E, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x3E, 0x38, 0x10, 0x40, 0x08, 0x43, 0xD8, 0x72
	.byte 0x84, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x16, 0x4A, 0x90, 0x46, 0x13, 0x68, 0x1F, 0x1C
	.byte 0x47, 0x37, 0x3C, 0x78, 0xA0, 0x09, 0x48, 0x33, 0x19, 0x78, 0x0F, 0x25, 0x29, 0x40, 0x89, 0x00
	.byte 0x01, 0x43, 0x01, 0x20, 0x01, 0x43, 0x03, 0x22, 0x0A, 0x40, 0x92, 0x01, 0x3F, 0x26, 0x30, 0x1C
	.byte 0x20, 0x40, 0x10, 0x43, 0x38, 0x70, 0x89, 0x08, 0x29, 0x40, 0x1A, 0x78, 0x10, 0x20, 0x40, 0x42
	.byte 0x10, 0x40, 0x08, 0x43, 0x18, 0x70, 0x40, 0x46, 0x03, 0x68, 0x5A, 0x6C, 0x91, 0x03, 0x89, 0x0E
	.byte 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x31, 0x40, 0x09, 0x03, 0x03, 0x48, 0x10, 0x40, 0x08, 0x43
	.byte 0x58, 0x64, 0x53, 0xE0, 0xF4, 0x0F, 0x00, 0x03, 0xFF, 0x0F, 0xFC, 0xFF, 0x0B, 0x48, 0x02, 0x68
	.byte 0x14, 0x1C, 0x48, 0x34, 0x23, 0x88, 0x99, 0x05, 0x89, 0x0E, 0x01, 0x20, 0x01, 0x43, 0x09, 0x01
	.byte 0x07, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x80, 0x46, 0x32, 0x13, 0x78, 0x99, 0x08, 0x02, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x89, 0x00, 0x03, 0x20, 0x35, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
	.byte 0x0F, 0xFC, 0xFF, 0xFF, 0x0B, 0x48, 0x02, 0x68, 0x14, 0x1C, 0x48, 0x34, 0x23, 0x88, 0x99, 0x05
	.byte 0x89, 0x0E, 0x02, 0x20, 0x01, 0x43, 0x09, 0x01, 0x07, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x80
	.byte 0x46, 0x32, 0x13, 0x78, 0x99, 0x08, 0x03, 0x20, 0x40, 0x42, 0x01, 0x40, 0x89, 0x00, 0x03, 0x20
	.byte 0x19, 0xE0, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0x0F, 0xFC, 0xFF, 0xFF, 0x0F, 0x4C, 0x22, 0x68
	.byte 0x49, 0x32, 0x13, 0x78, 0x99, 0x08, 0x01, 0x20, 0x01, 0x43, 0x89, 0x00, 0x03, 0x20, 0x18, 0x40
	.byte 0x08, 0x43, 0x10, 0x70, 0x22, 0x68, 0x47, 0x32, 0x13, 0x78, 0x99, 0x06, 0x89, 0x0E, 0x02, 0x20
	.byte 0x40, 0x42, 0x01, 0x40, 0x3E, 0x38, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70
_0807EF40:
	add sp, #0x08C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xF4, 0x0F, 0x00, 0x03
	thumb_func_start sub_807EF54
sub_807EF54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	ldr r6, _0807EFC0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807EF6E
	b _0807F39C
_0807EF6E:
	ldr r1, _0807EFC4 @ =0x0820009C
	mov r0, sp
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x008
	ldr r1, _0807EFC8 @ =0x082000A4
	adds r0, r5, #0x0
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x010
	ldr r1, _0807EFCC @ =0x082000AC
	adds r0, r4, #0x0
	movs r2, #0x08
	bl memcpy
	movs r7, #0x00
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r9, r5
	mov r8, r4
	cmp r1, r0
	bne _0807F014
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0807EFE8
	cmp r0, #0x01
	bgt _0807EFD0
	cmp r0, #0x00
	beq _0807EFDA
	b _0807F076
	.byte 0x00, 0x00
_0807EFC0: .4byte 0x03000FD8
_0807EFC4: .4byte 0x0820009C
_0807EFC8: .4byte 0x082000A4
_0807EFCC: .4byte 0x082000AC
_0807EFD0:
	cmp r0, #0x03
	beq _0807EFF4
	cmp r0, #0x06
	beq _0807F004
	b _0807F076
_0807EFDA:
	mov r1, sp
	ldr r6, _0807EFE4 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x00]
	b _0807F06C
_0807EFE4: .4byte 0x00001CD8
_0807EFE8:
	mov r0, sp
	ldrb r0, [r0, #0x01]
	ldr r1, _0807EFF0 @ =0x00001CD8
	b _0807F06C
_0807EFF0: .4byte 0x00001CD8
_0807EFF4:
	mov r0, sp
	ldrb r0, [r0, #0x02]
	ldr r2, _0807F000 @ =0x00001CD8
	adds r0, r0, r2
	b _0807F06E
	.byte 0x00, 0x00
_0807F000: .4byte 0x00001CD8
_0807F004:
	mov r0, sp
	ldrb r0, [r0, #0x03]
	ldr r3, _0807F010 @ =0x00001CD8
	adds r0, r0, r3
	b _0807F06E
	.byte 0x00, 0x00
_0807F010: .4byte 0x00001CD8
_0807F014:
	ldr r5, _0807F028 @ =0x0000034D
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0807F044
	cmp r0, #0x03
	bgt _0807F02C
	cmp r0, #0x00
	beq _0807F036
	b _0807F076
_0807F028: .4byte 0x0000034D
_0807F02C:
	cmp r0, #0x04
	beq _0807F054
	cmp r0, #0x06
	beq _0807F064
	b _0807F076
_0807F036:
	mov r1, sp
	ldr r6, _0807F040 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x04]
	b _0807F06C
_0807F040: .4byte 0x00001CD8
_0807F044:
	mov r1, sp
	ldr r2, _0807F050 @ =0x00001CD8
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x05]
	b _0807F06C
	.byte 0x00, 0x00
_0807F050: .4byte 0x00001CD8
_0807F054:
	mov r1, sp
	ldr r3, _0807F060 @ =0x00001CD8
	adds r0, r3, #0x0
	ldrb r1, [r1, #0x06]
	b _0807F06C
	.byte 0x00, 0x00
_0807F060: .4byte 0x00001CD8
_0807F064:
	mov r1, sp
	ldr r5, _0807F0BC @ =0x00001CD8
	adds r0, r5, #0x0
	ldrb r1, [r1, #0x07]
_0807F06C:
	adds r0, r0, r1
_0807F06E:
	bl sub_80E9B8C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0807F076:
	ldr r0, _0807F0C0 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _0807F0C4 @ =0x0000022F
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807F090
	b _0807F39C
_0807F090:
	ldr r0, _0807F0C8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807F0A6
	b _0807F228
_0807F0A6:
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	cmp r1, #0x01
	beq _0807F134
	cmp r1, #0x01
	bgt _0807F0CC
	cmp r1, #0x00
	beq _0807F0D8
	b _0807F39C
_0807F0BC: .4byte 0x00001CD8
_0807F0C0: .4byte 0x03000FC0
_0807F0C4: .4byte 0x0000022F
_0807F0C8: .4byte 0x03000FD8
_0807F0CC:
	cmp r1, #0x03
	beq _0807F190
	cmp r1, #0x06
	bne _0807F0D6
	b _0807F1DC
_0807F0D6:
	b _0807F39C
_0807F0D8:
	mov r6, r8
	ldrb r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0807F0E2
	b _0807F39C
_0807F0E2:
	ldr r0, _0807F12C @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x01
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F0F8
	b _0807F39C
_0807F0F8:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F10E
	b _0807F39C
_0807F10E:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, r7
	ble _0807F118
	b _0807F39C
_0807F118:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F130 @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	b _0807F39E
	.byte 0x00, 0x00
_0807F12C: .4byte 0x03000FF4
_0807F130: .4byte 0xFFFC0FFF
_0807F134:
	mov r3, r8
	ldrb r0, [r3, #0x01]
	cmp r0, #0x00
	bne _0807F13E
	b _0807F39C
_0807F13E:
	ldr r0, _0807F188 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x02
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F154
	b _0807F39C
_0807F154:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F16A
	b _0807F39C
_0807F16A:
	mov r1, r9
	ldrb r0, [r1, #0x01]
	cmp r0, r7
	ble _0807F174
	b _0807F39C
_0807F174:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F18C @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x01]
	b _0807F39E
	.byte 0x00, 0x00
_0807F188: .4byte 0x03000FF4
_0807F18C: .4byte 0xFFFC0FFF
_0807F190:
	mov r3, r8
	ldrb r0, [r3, #0x02]
	cmp r0, #0x00
	bne _0807F19A
	b _0807F39C
_0807F19A:
	ldr r0, _0807F1D8 @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r5, [r3, #0x0A]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1AE
	b _0807F39C
_0807F1AE:
	ldrh r0, [r3, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1BC
	b _0807F39C
_0807F1BC:
	mov r6, r9
	ldrb r0, [r6, #0x02]
	cmp r0, r7
	ble _0807F1C6
	b _0807F39C
_0807F1C6:
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x0A]
	mov r1, r8
	ldrb r0, [r1, #0x02]
	b _0807F39E
	.byte 0x00, 0x00
_0807F1D8: .4byte 0x03000FF4
_0807F1DC:
	mov r2, r8
	ldrb r0, [r2, #0x03]
	cmp r0, #0x00
	bne _0807F1E6
	b _0807F39C
_0807F1E6:
	ldr r0, _0807F224 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldrb r4, [r2, #0x0B]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0807F1FC
	b _0807F39C
_0807F1FC:
	ldrb r0, [r2, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	beq _0807F208
	b _0807F39C
_0807F208:
	mov r5, r9
	ldrb r0, [r5, #0x03]
	cmp r0, r7
	ble _0807F212
	b _0807F39C
_0807F212:
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, #0x0B]
	mov r6, r8
	ldrb r0, [r6, #0x03]
	b _0807F39E
_0807F224: .4byte 0x03000FF4
_0807F228:
	ldr r1, _0807F23C @ =0x0000034D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x03
	beq _0807F2B0
	cmp r1, #0x03
	bgt _0807F240
	cmp r1, #0x00
	beq _0807F24C
	b _0807F39C
_0807F23C: .4byte 0x0000034D
_0807F240:
	cmp r1, #0x04
	beq _0807F300
	cmp r1, #0x06
	bne _0807F24A
	b _0807F350
_0807F24A:
	b _0807F39C
_0807F24C:
	mov r2, r8
	ldrb r0, [r2, #0x04]
	cmp r0, #0x00
	bne _0807F256
	b _0807F39C
_0807F256:
	ldr r0, _0807F2A8 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r6, [r0, #0x44]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r4, #0x01
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F26E
	b _0807F39C
_0807F26E:
	mov r0, r12
	adds r0, #0x47
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x06
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r2
	ands r0, r4
	cmp r0, #0x00
	beq _0807F28A
	b _0807F39C
_0807F28A:
	mov r5, r9
	ldrb r0, [r5, #0x04]
	cmp r0, r7
	ble _0807F294
	b _0807F39C
_0807F294:
	orrs r3, r4
	lsls r0, r3, #0x0C
	ldr r1, _0807F2AC @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	mov r6, r12
	str r1, [r6, #0x44]
	mov r1, r8
	ldrb r0, [r1, #0x04]
	b _0807F39E
_0807F2A8: .4byte 0x03000FF4
_0807F2AC: .4byte 0xFFFC0FFF
_0807F2B0:
	mov r2, r8
	ldrb r0, [r2, #0x05]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F2FC @ =0x03000FF4
	ldr r3, [r0, #0x00]
	movs r5, #0x46
	adds r5, r5, r3
	mov r12, r5
	ldrb r5, [r5, #0x00]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r3, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	mov r6, r9
	ldrb r0, [r6, #0x05]
	cmp r0, r7
	bgt _0807F39C
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	mov r0, r12
	strb r1, [r0, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x05]
	b _0807F39E
	.byte 0x00, 0x00
_0807F2FC: .4byte 0x03000FF4
_0807F300:
	mov r2, r8
	ldrb r0, [r2, #0x06]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F34C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r3, #0x46
	adds r3, r3, r2
	mov r12, r3
	ldrb r4, [r3, #0x00]
	lsrs r1, r4, #0x02
	movs r3, #0x02
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x06]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	lsls r0, r1, #0x02
	movs r1, #0x03
	ands r1, r4
	orrs r1, r0
	mov r6, r12
	strb r1, [r6, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x06]
	b _0807F39E
_0807F34C: .4byte 0x03000FF4
_0807F350:
	mov r2, r8
	ldrb r0, [r2, #0x07]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F398 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r6, r2, #0x0
	adds r6, #0x47
	ldrb r4, [r6, #0x00]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x49
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x07]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6, #0x00]
	mov r6, r8
	ldrb r0, [r6, #0x07]
	b _0807F39E
_0807F398: .4byte 0x03000FF4
_0807F39C:
	movs r0, #0x00
_0807F39E:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_807F3AC
sub_807F3AC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r5, [r4, #0x28]
	cmp r5, #0x00
	beq _0807F43C
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bne _0807F3C4
	adds r4, r5, #0x0
	adds r4, #0x08
_0807F3C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0807F3CC
	adds r0, #0xFF
_0807F3CC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807F3E4
	adds r0, #0xFF
_0807F3E4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC5
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_810E03C
	adds r1, r4, #0x0
	adds r1, #0xB8
	ldr r0, _0807F434 @ =0x00000193
	strh r0, [r1, #0x00]
	ldr r1, _0807F438 @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807F43C
	adds r0, r5, #0x0
	adds r0, #0x08
	bl sub_8086700
	movs r0, #0x01
	negs r0, r0
	b _0807F43E
	.byte 0x00, 0x00
_0807F434: .4byte 0x00000193
_0807F438: .4byte 0x00000111
_0807F43C:
	movs r0, #0x00
_0807F43E:
	add sp, #0x00C
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_807F448
sub_807F448:
	push {r4, lr}
	ldr r4, _0807F478 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807F472
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_81165CC
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0807F472:
	pop {r4}
	pop {r0}
	bx r0
_0807F478: .4byte 0x03000FD8
