	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8083934
sub_8083934:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x044]
	ldr r0, [sp, #0x048]
	ldr r4, [sp, #0x04C]
	ldr r6, [sp, #0x050]
	mov r10, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x018]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
	cmp r6, #0x00
	bne _08083970
	movs r0, #0x03
	bl sub_81980C8
	ldr r0, [r0, #0x00]
	mov r10, r0
_08083970:
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x018]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x09
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x01C]
	ands r0, r1
	str r0, [sp, #0x01C]
	movs r6, #0x01
	movs r1, #0x0A
	mov r9, r1
	cmp r5, #0x09
	ble _080839AC
_0808399A:
	adds r6, #0x01
	mov r2, r9
	lsls r0, r2, #0x02
	add r0, r9
	lsls r0, r0, #0x01
	mov r9, r0
	subs r0, #0x01
	cmp r0, r5
	blt _0808399A
_080839AC:
	cmp r4, #0x00
	beq _080839DC
	cmp r4, #0x01
	bne _080839C8
	lsls r0, r6, #0x03
	subs r0, r0, r6
	subs r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _080839C4 @ =0xFFFF0000
	adds r0, r0, r1
	b _080839DA
	.byte 0x00, 0x00
_080839C4: .4byte 0xFFFF0000
_080839C8:
	cmp r4, #0x02
	bne _080839DC
	lsls r0, r6, #0x03
	subs r0, r0, r6
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r0, r7, r0
	lsls r0, r0, #0x10
_080839DA:
	lsrs r7, r0, #0x10
_080839DC:
	subs r6, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _08083A6E
	ldr r1, _08083A80 @ =0x0819832C
	ldr r0, _08083A84 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x020]
_080839EE:
	adds r2, r7, #0x7
	mov r8, r2
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x03
	cmp r8, r0
	bgt _08083A6E
	lsls r0, r5, #0x02
	adds r0, r0, r5
	lsls r5, r0, #0x01
	ldr r0, _08083A88 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r0, [sp, #0x020]
	adds r2, r2, r0
	adds r0, r5, #0x0
	mov r1, r9
	bl _call_via_r2
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x30
	adds r1, r3, #0x0
	cmp r3, #0x00
	bge _08083A20
	adds r1, r4, #0x0
	adds r1, #0x37
_08083A20:
	asrs r1, r1, #0x03
	lsls r1, r1, #0x02
	add r1, r10
	movs r0, #0x07
	ands r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x04]
	lsrs r1, r0
	movs r0, #0x0F
	ands r1, r0
	movs r2, #0x06
	subs r2, r2, r1
	lsrs r2, r2, #0x01
	adds r2, r7, r2
	mov r1, r10
	str r1, [sp, #0x000]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	ldr r3, [sp, #0x018]
	bl sub_8199E48
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	mov r0, r9
	muls r0, r4
	subs r5, r5, r0
	subs r6, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _080839EE
_08083A6E:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083A80: .4byte 0x0819832C
_08083A84: .4byte 0x08198220
_08083A88: .4byte 0x03001038
	thumb_func_start sub_8083A8C
sub_8083A8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08083AAA
	b _08083C60
_08083AAA:
	ldr r3, [r2, #0x28]
	cmp r3, #0x00
	bne _08083AB2
	b _08083C60
_08083AB2:
	ldr r6, [r2, #0x08]
	cmp r6, #0x00
	bne _08083ABA
	b _08083C60
_08083ABA:
	ldrb r0, [r6, #0x1E]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x01
	bne _08083B5C
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r12, r0
	cmp r1, r12
	bne _08083AD8
	movs r5, #0x00
_08083AD8:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08083AE2
	movs r5, #0x4D
_08083AE2:
	ldr r1, _08083B54 @ =0x0838F776
	lsls r0, r5, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r5, [r0, r1]
	cmp r5, #0x00
	bge _08083AF2
	b _08083C60
_08083AF2:
	lsls r0, r4, #0x03
	adds r0, r0, r4
	ldr r3, _08083B58 @ =0x0838F426
	adds r0, r0, r3
	adds r3, r5, r0
	movs r0, #0x44
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x45
	adds r1, r1, r2
	mov r9, r1
	movs r0, #0x46
	adds r0, r0, r2
	mov r10, r0
	adds r1, r2, #0x0
	adds r1, #0x47
	str r1, [sp, #0x000]
	adds r0, r2, #0x0
	adds r0, #0x48
	str r0, [sp, #0x004]
	adds r2, #0x49
	str r2, [sp, #0x008]
	cmp r4, #0x00
	bne _08083BD8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r6, #0x0
	adds r1, #0x23
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08083BD8
	cmp r0, r12
	beq _08083BD8
	adds r7, r1, #0x0
	ldr r2, _08083B58 @ =0x0838F426
	adds r1, r5, r2
	adds r2, r1, #0x0
_08083B3C:
	adds r1, #0x09
	adds r2, #0x09
	adds r4, #0x01
	adds r3, r2, #0x0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, r7
	beq _08083BD8
	cmp r0, r12
	bne _08083B3C
	b _08083BD8
	.byte 0x00, 0x00
_08083B54: .4byte 0x0838F776
_08083B58: .4byte 0x0838F426
_08083B5C:
	cmp r1, #0x03
	beq _08083B62
	b _08083C60
_08083B62:
	ldr r1, _08083C58 @ =0x0838F44C
	ldrh r0, [r6, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r5, [r0, r3]
	cmp r5, #0x00
	bge _08083B74
	b _08083C60
_08083B74:
	lsls r0, r4, #0x03
	adds r0, r0, r4
	ldr r1, _08083C5C @ =0x0838EC7C
	adds r0, r0, r1
	adds r3, r5, r0
	movs r0, #0x44
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x45
	adds r1, r1, r2
	mov r9, r1
	movs r0, #0x46
	adds r0, r0, r2
	mov r10, r0
	adds r1, r2, #0x0
	adds r1, #0x47
	str r1, [sp, #0x000]
	adds r0, r2, #0x0
	adds r0, #0x48
	str r0, [sp, #0x004]
	adds r2, #0x49
	str r2, [sp, #0x008]
	cmp r4, #0x00
	bne _08083BD8
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r6, #0x0
	adds r1, #0x23
	ldrb r2, [r1, #0x00]
	cmp r0, r2
	beq _08083BD8
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08083BD8
	adds r7, r2, #0x0
	mov r12, r1
	ldr r2, _08083C5C @ =0x0838EC7C
	adds r1, r5, r2
	adds r2, r1, #0x0
_08083BC4:
	adds r1, #0x09
	adds r2, #0x09
	adds r4, #0x01
	adds r3, r2, #0x0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, r7
	beq _08083BD8
	cmp r0, r12
	bne _08083BC4
_08083BD8:
	movs r5, #0x04
	ldsh r1, [r6, r5]
	movs r0, #0x06
	ldsh r2, [r6, r0]
	movs r0, #0x01
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083BEC
	adds r0, #0xFF
_08083BEC:
	asrs r0, r0, #0x08
	mov r5, r8
	strb r0, [r5, #0x00]
	movs r0, #0x02
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083BFE
	adds r0, #0xFF
_08083BFE:
	asrs r0, r0, #0x08
	mov r5, r9
	strb r0, [r5, #0x00]
	movs r0, #0x03
	ldsb r0, [r3, r0]
	muls r0, r2
	cmp r0, #0x00
	bge _08083C10
	adds r0, #0xFF
_08083C10:
	asrs r0, r0, #0x08
	mov r5, r10
	strb r0, [r5, #0x00]
	movs r0, #0x04
	ldsb r0, [r3, r0]
	muls r0, r2
	cmp r0, #0x00
	bge _08083C22
	adds r0, #0xFF
_08083C22:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x000]
	strb r0, [r2, #0x00]
	movs r0, #0x05
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083C34
	adds r0, #0xFF
_08083C34:
	asrs r0, r0, #0x08
	ldr r5, [sp, #0x004]
	strb r0, [r5, #0x00]
	movs r0, #0x06
	ldsb r0, [r3, r0]
	muls r0, r1
	cmp r0, #0x00
	bge _08083C46
	adds r0, #0xFF
_08083C46:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x008]
	strb r0, [r1, #0x00]
	movs r0, #0x08
	ldsb r0, [r3, r0]
	cmp r0, #0x00
	bne _08083C60
	adds r0, r4, #0x1
	b _08083C64
_08083C58: .4byte 0x0838F44C
_08083C5C: .4byte 0x0838EC7C
_08083C60:
	movs r0, #0x01
	negs r0, r0
_08083C64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8083C74
sub_8083C74:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08083D58 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08083C8A
	b _08083DF0
_08083C8A:
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r4, #0x0D
	ldr r0, _08083D5C @ =0x03000D74
	ldr r5, [r0, #0x00]
	ldrh r1, [r5, #0x26]
	ldr r6, _08083D60 @ =0x0000FFFF
	mov r8, r0
	ldr r0, _08083D64 @ =0x03001034
	mov r12, r0
	ldr r3, _08083D68 @ =0x08198154
	ldr r7, _08083D6C @ =0x081980D8
	cmp r1, r6
	beq _08083CBE
	adds r2, r6, #0x0
	adds r1, r5, #0x0
	adds r1, #0x26
_08083CB0:
	subs r1, #0x02
	subs r4, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	beq _08083CBE
	cmp r4, #0x00
	bne _08083CB0
_08083CBE:
	subs r0, r4, #0x1
	cmp r0, #0x0B
	bhi _08083DBE
	mov r1, r8
	ldr r2, [r1, #0x00]
	lsls r1, r4, #0x01
	adds r0, r2, #0x0
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r1, [r2, #0x26]
	strh r1, [r0, #0x00]
	subs r0, r3, r7
	mov r2, r12
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083D70 @ =0x02000420
	lsls r1, r4, #0x05
	ldr r2, _08083D74 @ =0x02000280
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08083D78 @ =0x0300034C
	movs r3, #0x01
	lsls r3, r4
	ldrh r1, [r2, #0x00]
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _08083D2C
	movs r6, #0x20
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r4, _08083D7C @ =0x0000DFFF
_08083D0A:
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08083D26
	ldrh r1, [r2, #0x14]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08083D26
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #0x14]
_08083D26:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _08083D0A
_08083D2C:
	ldr r7, _08083D58 @ =0x03000FD8
	movs r6, #0x00
	movs r5, #0x00
_08083D32:
	ldr r0, [r7, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r2, r6, r0
	ldrb r1, [r2, #0x01]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08083D80
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08083D80
	lsls r1, r5, #0x18
	b _08083DAA
_08083D58: .4byte 0x03000FD8
_08083D5C: .4byte 0x03000D74
_08083D60: .4byte 0x0000FFFF
_08083D64: .4byte 0x03001034
_08083D68: .4byte 0x08198154
_08083D6C: .4byte 0x081980D8
_08083D70: .4byte 0x02000420
_08083D74: .4byte 0x02000280
_08083D78: .4byte 0x0300034C
_08083D7C: .4byte 0x0000DFFF
_08083D80:
	adds r1, r6, #0x0
	adds r1, #0x1C
	adds r4, r5, #0x1
	ldr r0, [r7, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r2, r1, r0
	ldrb r1, [r2, #0x01]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08083DB6
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08083DB6
	lsls r1, r4, #0x18
_08083DAA:
	lsrs r1, r1, #0x18
	adds r0, r3, #0x0
	movs r2, #0x00
	bl sub_8115048
	b _08083DBE
_08083DB6:
	adds r6, #0x38
	adds r5, #0x02
	cmp r5, #0x07
	ble _08083D32
_08083DBE:
	ldr r0, _08083DFC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldr r2, _08083E00 @ =0x03001034
	ldr r0, _08083E04 @ =0x08198154
	ldr r1, _08083E08 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083E0C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08083E10 @ =0x00003C90
	adds r0, r0, r1
	ldr r1, _08083E14 @ =0x02000420
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08083E18 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_08083DF0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083DFC: .4byte 0x03000D74
_08083E00: .4byte 0x03001034
_08083E04: .4byte 0x08198154
_08083E08: .4byte 0x081980D8
_08083E0C: .4byte 0x03000FDC
_08083E10: .4byte 0x00003C90
_08083E14: .4byte 0x02000420
_08083E18: .4byte 0x0300034C
	thumb_func_start sub_8083E1C
sub_8083E1C:
	push {lr}
	ldr r2, _08083E54 @ =0x03001034
	ldr r0, _08083E58 @ =0x08198154
	ldr r1, _08083E5C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083E60 @ =0x02000420
	ldr r1, _08083E64 @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _08083E68 @ =0x00003C90
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _08083E6C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, _08083E70 @ =0x0000FFFF
	strh r0, [r1, #0x26]
	ldr r0, _08083E74 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0C]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083E54: .4byte 0x03001034
_08083E58: .4byte 0x08198154
_08083E5C: .4byte 0x081980D8
_08083E60: .4byte 0x02000420
_08083E64: .4byte 0x03000FDC
_08083E68: .4byte 0x00003C90
_08083E6C: .4byte 0x03000D74
_08083E70: .4byte 0x0000FFFF
_08083E74: .4byte 0x03000FD8
