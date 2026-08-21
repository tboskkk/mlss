	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D68B4
sub_80D68B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080D695C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D68E0
	cmp r1, #0x04
	bne _080D6928
_080D68E0:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D68E8
	adds r0, #0xFF
_080D68E8:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6902
	adds r2, #0xFF
_080D6902:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080D6928:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D693C
	cmp r2, #0x04
	bne _080D69A0
_080D693C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6964
	ldr r2, _080D6960 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6970
	.byte 0x00, 0x00
_080D695C: .4byte 0x03000FD8
_080D6960: .4byte 0x00002002
_080D6964:
	ldr r2, _080D69D0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6970:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6986
	movs r2, #0x01
_080D6986:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D69A0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D69BA
	cmp r2, #0x04
	bne _080D69C4
_080D69BA:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D69C4:
	ldr r0, _080D69D4 @ =0x080D8D19
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D69D0: .4byte 0x0000204F
_080D69D4: .4byte sub_80D8D18
	thumb_func_start sub_80D69D8
sub_80D69D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080D6A8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r6, [r5, #0x4C]
	cmp r6, #0x00
	bne _080D6A82
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A12
	cmp r1, #0x04
	bne _080D6A42
_080D6A12:
	ldr r2, _080D6A90 @ =0x03001038
	ldr r0, _080D6A94 @ =0x0819832C
	ldr r1, _080D6A98 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r6, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6A42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6A54
	cmp r1, #0x04
	bne _080D6A70
_080D6A54:
	ldr r2, _080D6A9C @ =0x00002024
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
_080D6A70:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D6AA0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D6AA4 @ =0x080D6AA9
	mov r1, r8
	str r0, [r1, #0x4C]
_080D6A82:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D6A8C: .4byte 0x03000FD8
_080D6A90: .4byte 0x03001038
_080D6A94: .4byte 0x0819832C
_080D6A98: .4byte 0x08198220
_080D6A9C: .4byte 0x00002024
_080D6AA0: .4byte 0x00000FFF
_080D6AA4: .4byte sub_80D6AA8
	thumb_func_start sub_80D6AA8
sub_80D6AA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D6BC8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r1, r10
	subs r1, r1, r0
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080D6B18
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D6B18:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D6B28
	b _080D705C
_080D6B28:
	mov r1, r12
	cmp r1, #0x00
	bge _080D6B30
	movs r1, #0x00
_080D6B30:
	ldr r0, _080D6BCC @ =0x00007FFF
	cmp r1, r0
	ble _080D6B38
	adds r1, r0, #0x0
_080D6B38:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D6B4E
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D6B50
_080D6B4E:
	movs r2, #0x00
_080D6B50:
	movs r3, #0x7E
	adds r3, r3, r6
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r6
	mov r8, r4
	cmp r2, #0x00
	beq _080D6C34
	ldr r2, _080D6BC8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D6BD0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6B84
	movs r1, #0x4C
_080D6B78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6B78
_080D6B84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6B98
	movs r1, #0x4C
_080D6B8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6B8C
_080D6B98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6BAC
	movs r1, #0x4C
_080D6BA0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BA0
_080D6BAC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6C2C
	movs r1, #0x04
_080D6BB6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6BC0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6BC0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6BB6
	b _080D6C2C
_080D6BC8: .4byte 0x03000FD8
_080D6BCC: .4byte 0x00007FFF
_080D6BD0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6BE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6BDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BDA
_080D6BE6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6BFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6BF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6BF0
_080D6BFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6C12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6C06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6C06
_080D6C12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6C2C
	movs r1, #0x10
_080D6C1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6C26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6C26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6C1C
_080D6C2C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D6C34:
	mov r1, r10
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D6C40
	movs r1, #0x00
_080D6C40:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D6C4A
	adds r1, r0, #0x0
_080D6C4A:
	ldr r0, _080D6D44 @ =0x00007FFF
	cmp r2, r0
	ble _080D6C52
	adds r2, r0, #0x0
_080D6C52:
	cmp r2, r1
	bge _080D6C58
	adds r1, r2, #0x0
_080D6C58:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080D6C70
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D6C72
_080D6C70:
	movs r1, #0x00
_080D6C72:
	cmp r1, #0x00
	bne _080D6C78
	b _080D6DC4
_080D6C78:
	movs r4, #0x08
	negs r4, r4
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	adds r2, r4, #0x0
	bl sub_807E680
	ldr r0, _080D6D48 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D6C9C
	b _080D6DC4
_080D6C9C:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D6D4C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080D6DB2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6D50
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D6CFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6CF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6CF0
_080D6CFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6D12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D06
_080D6D12:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6D28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D1C
_080D6D28:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6DAE
	movs r1, #0x10
_080D6D32:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6D3C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6D3C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6D32
	b _080D6DAE
_080D6D44: .4byte 0x00007FFF
_080D6D48: .4byte 0x0300034C
_080D6D4C: .4byte 0x03000FD8
_080D6D50:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D6D68
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D5C
_080D6D68:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6D7E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D72:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D72
_080D6D7E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D6D94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6D88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6D88
_080D6D94:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6DAE
	movs r1, #0x10
_080D6D9E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6DA8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6DA8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6D9E
_080D6DAE:
	bl sub_807F448
_080D6DB2:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D6E94 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D6DC4:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D6DD0
	b _080D705C
_080D6DD0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D6E98 @ =0x00007FFF
	cmp r1, r0
	ble _080D6DDC
	adds r1, r0, #0x0
_080D6DDC:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D6DF4
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D6DF6
_080D6DF4:
	movs r2, #0x00
_080D6DF6:
	cmp r2, #0x00
	bne _080D6DFC
	b _080D6F08
_080D6DFC:
	ldr r3, _080D6E9C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D6E94 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6EA0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6E4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E40
_080D6E4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6E62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E56
_080D6E62:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6E78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6E6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6E6C
_080D6E78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6EFC
	movs r1, #0x10
_080D6E82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6E8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6E8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6E82
	b _080D6EFC
_080D6E94: .4byte 0x00000FFF
_080D6E98: .4byte 0x00007FFF
_080D6E9C: .4byte 0x03000FD8
_080D6EA0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6EB6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6EAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6EAA
_080D6EB6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6ECC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6EC0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6EC0
_080D6ECC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6EE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6ED6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6ED6
_080D6EE2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D6EFC
	movs r1, #0x10
_080D6EEC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6EF6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6EF6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6EEC
_080D6EFC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D705C
_080D6F08:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080D6F18
	b _080D705C
_080D6F18:
	ldr r0, _080D6FDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D6F2E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D6F2E
	b _080D705C
_080D6F2E:
	ldr r2, _080D6FE0 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D6F5E
	b _080D705C
_080D6F5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D6FE4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D6FE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6F92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6F86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6F86
_080D6F92:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D6FA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6F9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6F9C
_080D6FA8:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D6FBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6FB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6FB2
_080D6FBE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7044
	movs r1, #0x10
_080D6FC8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D6FD2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D6FD2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D6FC8
	b _080D7044
	.byte 0x00, 0x00
_080D6FDC: .4byte 0x0300034C
_080D6FE0: .4byte 0x03000FD8
_080D6FE4: .4byte 0x00000FFF
_080D6FE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D6FFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D6FF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D6FF2
_080D6FFE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D7014
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D7008:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D7008
_080D7014:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D702A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D701E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D701E
_080D702A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D7044
	movs r1, #0x10
_080D7034:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D703E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D703E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D7034
_080D7044:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x08
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	bl sub_807EAE4
_080D705C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D70D4
	ldr r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r1, #0x00
	bge _080D7072
	movs r1, #0x00
_080D7072:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D707C
	adds r1, r0, #0x0
_080D707C:
	ldr r0, _080D70C8 @ =0x00007FFF
	cmp r2, r0
	ble _080D7084
	adds r2, r0, #0x0
_080D7084:
	cmp r2, r1
	bge _080D708A
	adds r1, r2, #0x0
_080D708A:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D70A4
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D70A6
_080D70A4:
	movs r1, #0x00
_080D70A6:
	cmp r1, #0x00
	beq _080D70D4
	cmp r3, #0x01
	ble _080D70D4
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D70CC @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D70D0 @ =0x080D7689
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D71BC
	.byte 0x00, 0x00
_080D70C8: .4byte 0x00007FFF
_080D70CC: .4byte 0x00000FFF
_080D70D0: .4byte sub_80D7688
_080D70D4:
	mov r1, r10
	cmp r1, #0x00
	bge _080D70DC
	movs r1, #0x00
_080D70DC:
	ldr r0, _080D71CC @ =0x00007FFF
	cmp r1, r0
	ble _080D70E4
	adds r1, r0, #0x0
_080D70E4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D70FE
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D7100
_080D70FE:
	movs r2, #0x00
_080D7100:
	cmp r2, #0x00
	beq _080D712E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7116
	cmp r1, #0x04
	bne _080D712E
_080D7116:
	ldr r2, _080D71D0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D712E:
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D71BC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D715A
	cmp r1, #0x04
	bne _080D7176
_080D715A:
	ldr r2, _080D71D0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x03
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
_080D7176:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7188
	cmp r1, #0x04
	bne _080D71B6
_080D7188:
	ldr r2, _080D71D4 @ =0x03001038
	ldr r0, _080D71D8 @ =0x0819832C
	ldr r1, _080D71DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x06
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080D71B6:
	ldr r0, _080D71E0 @ =0x080D71E5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D71BC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D71CC: .4byte 0x00007FFF
_080D71D0: .4byte 0x00002024
_080D71D4: .4byte 0x03001038
_080D71D8: .4byte 0x0819832C
_080D71DC: .4byte 0x08198220
_080D71E0: .4byte sub_80D71E4
	thumb_func_start sub_80D71E4
sub_80D71E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D72C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D72BA
	ldr r0, _080D72C8 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7226
	cmp r1, #0x04
	bne _080D723E
_080D7226:
	ldr r2, _080D72CC @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D723E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D725C
	ldr r2, _080D72D0 @ =0x00002095
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D725C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D726E
	cmp r1, #0x04
	bne _080D72B6
_080D726E:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D7276
	adds r0, #0xFF
_080D7276:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x0A
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D7290
	adds r2, #0xFF
_080D7290:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080D72B6:
	ldr r0, _080D72D4 @ =0x080D72D9
	str r0, [r7, #0x4C]
_080D72BA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D72C4: .4byte 0x03000FD8
_080D72C8: .4byte 0x0000011F
_080D72CC: .4byte 0x00002066
_080D72D0: .4byte 0x00002095
_080D72D4: .4byte sub_80D72D8
	thumb_func_start sub_80D72D8
sub_80D72D8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D73F4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D73EA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0xE6
	strh r0, [r1, #0x00]
	ldr r0, _080D73F8 @ =0x0881848D
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D7364
	ldr r2, _080D73FC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D739A
_080D7364:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D736C
	adds r1, #0xFF
_080D736C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D7382
	adds r2, #0xFF
_080D7382:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080D7400 @ =0x000006C4
	str r5, [sp, #0x000]
	movs r3, #0x00
	bl sub_80DF024
_080D739A:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D73AC
	cmp r1, #0x04
	bne _080D73C8
_080D73AC:
	ldr r2, _080D7404 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D73C8:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D73E6
	ldr r2, _080D7408 @ =0x00002095
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D73E6:
	ldr r0, _080D740C @ =0x080D7411
	str r0, [r7, #0x4C]
_080D73EA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D73F4: .4byte 0x03000FD8
_080D73F8: .4byte 0x0881848D
_080D73FC: .4byte 0x00000111
_080D7400: .4byte 0x000006C4
_080D7404: .4byte 0x00002066
_080D7408: .4byte 0x00002095
_080D740C: .4byte sub_80D7410
