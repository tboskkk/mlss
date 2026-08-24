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
