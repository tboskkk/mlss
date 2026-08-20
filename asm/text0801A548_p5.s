	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801B768
sub_801B768:
	push {r4, lr}
	mov r12, r0
	ldrb r0, [r0, #0x1C]
	adds r0, #0x01
	mov r1, r12
	strb r0, [r1, #0x1C]
	ldr r3, _0801B7AC @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r3, r3, r4
	ldr r2, [r3, #0x00]
	ldrb r0, [r1, #0x1D]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrb r0, [r1, #0x1C]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	mov r0, r12
	adds r0, #0x20
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x0C
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x0A
	orrs r1, r0
	mov r4, r12
	ldrh r0, [r4, #0x1E]
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	str r2, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0801B7AC: .4byte 0x0300034C
	thumb_func_start sub_801B7B0
sub_801B7B0:
	push {r4, lr}
	cmp r1, #0x01
	beq _0801B7D4
	cmp r1, #0x01
	bgt _0801B7C0
	cmp r1, #0x00
	beq _0801B7CA
	b _0801B812
_0801B7C0:
	cmp r1, #0x02
	beq _0801B7E0
	cmp r1, #0x03
	beq _0801B800
	b _0801B812
_0801B7CA:
	ldr r1, _0801B7D0 @ =0x02000050
	movs r0, #0xFF
	b _0801B7E4
_0801B7D0: .4byte 0x02000050
_0801B7D4:
	ldr r1, _0801B7DC @ =0x02000050
	movs r0, #0xFF
	b _0801B804
	.byte 0x00, 0x00
_0801B7DC: .4byte 0x02000050
_0801B7E0:
	ldr r1, _0801B7F8 @ =0x02000050
	movs r0, #0xBF
_0801B7E4:
	strh r0, [r1, #0x00]
	ldr r4, _0801B7FC @ =0x02000054
	lsls r0, r2, #0x04
	adds r1, r3, #0x0
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0x00]
	b _0801B812
_0801B7F8: .4byte 0x02000050
_0801B7FC: .4byte 0x02000054
_0801B800:
	ldr r1, _0801B818 @ =0x02000050
	movs r0, #0xBF
_0801B804:
	strh r0, [r1, #0x00]
	ldr r4, _0801B81C @ =0x02000054
	lsls r0, r2, #0x04
	adds r1, r3, #0x0
	bl __divsi3
	strh r0, [r4, #0x00]
_0801B812:
	pop {r4}
	pop {r0}
	bx r0
_0801B818: .4byte 0x02000050
_0801B81C: .4byte 0x02000054
	thumb_func_start sub_801B820
sub_801B820:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x1E]
	adds r0, #0x01
	strh r0, [r4, #0x1E]
	adds r0, r4, #0x0
	adds r0, #0x20
	ldrb r1, [r0, #0x00]
	ldrh r2, [r4, #0x1E]
	ldrh r3, [r4, #0x1C]
	adds r0, r4, #0x0
	bl sub_801B7B0
	ldrh r0, [r4, #0x1E]
	ldrh r1, [r4, #0x1C]
	cmp r0, r1
	bcc _0801B852
	cmp r4, #0x00
	beq _0801B852
	ldr r0, _0801B858 @ =0x08CDBD98
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_0801B852:
	pop {r4}
	pop {r0}
	bx r0
_0801B858: .4byte 0x08CDBD98
	thumb_func_start sub_801B85C
sub_801B85C:
	push {lr}
	ldr r2, _0801B86C @ =0x08CDBD98
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B86C: .4byte 0x08CDBD98
	thumb_func_start sub_801B870
sub_801B870:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x010]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0x0
	bl process_add
	ldr r0, _0801B8AC @ =0x08CDBD98
	str r0, [r4, #0x18]
	cmp r5, #0x00
	bne _0801B8B0
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x01
	movs r3, #0x01
	bl sub_801B7B0
	bl sub_80187A8
	cmp r4, #0x00
	beq _0801B8BC
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_801B85C
	b _0801B8BC
_0801B8AC: .4byte 0x08CDBD98
_0801B8B0:
	movs r1, #0x00
	strh r5, [r4, #0x1C]
	adds r0, r4, #0x0
	adds r0, #0x20
	strb r6, [r0, #0x00]
	strh r1, [r4, #0x1E]
_0801B8BC:
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x82, 0x61, 0xFE, 0xF7, 0xB7, 0xF9, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x88, 0xBD, 0xCD, 0x08
	thumb_func_start time_update
time_update: @ 0801B8D8
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r0, #0x28
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801B9BA
	adds r0, r5, #0x0
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r7, r0, #0x0
	cmp r1, #0x00
	ble _0801B954
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, #0x0
	cmp r0, #0x3C
	bne _0801B9BA
	strb r3, [r6, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x23
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r2, #0x0
	cmp r0, #0x3C
	bne _0801B9BA
	strb r3, [r4, #0x00]
	subs r2, #0x01
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x64
	bne _0801B9BA
	strb r3, [r2, #0x00]
	movs r0, #0x3B
	strb r0, [r6, #0x00]
	strb r0, [r4, #0x00]
	movs r0, #0x63
	strb r0, [r2, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	strb r3, [r7, #0x00]
	b _0801B9BA
_0801B954:
	cmp r1, #0x00
	bge _0801B9BA
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0x23
	adds r2, r5, #0x0
	adds r2, #0x22
	cmp r0, #0x00
	bge _0801B99E
	movs r1, #0x3B
	strb r1, [r6, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x01
	strb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0801B99E
	strb r1, [r4, #0x00]
	ldrb r0, [r2, #0x00]
	subs r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0801B99E
	strb r3, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x25
	strb r3, [r0, #0x00]
	strb r3, [r2, #0x00]
	strb r3, [r4, #0x00]
	strb r3, [r6, #0x00]
_0801B99E:
	movs r0, #0x00
	ldsb r0, [r6, r0]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	adds r0, r0, r1
	movs r1, #0x00
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	cmp r0, #0x00
	bne _0801B9BA
	adds r1, r5, #0x0
	adds r1, #0x25
	strb r0, [r1, #0x00]
	strb r0, [r7, #0x00]
_0801B9BA:
	ldrh r1, [r5, #0x20]
	ldr r0, _0801BAE8 @ =0x0000FFFF
	cmp r1, r0
	bne _0801B9C4
	b _0801BBAE
_0801B9C4:
	adds r2, r5, #0x0
	adds r2, #0x28
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	mov r9, r2
	cmp r0, #0x00
	bne _0801B9D6
	b _0801BBAE
_0801B9D6:
	mov r2, sp
	mov r1, sp
	movs r0, #0x20
	strb r0, [r1, #0x05]
	strb r0, [r2, #0x02]
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0x22
	ldrb r3, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x24
	adds r4, r5, #0x0
	adds r4, #0x23
	adds r7, r5, #0x0
	adds r7, #0x25
	ldr r0, _0801BAEC @ =0x0819832C
	mov r12, r0
	ldr r2, _0801BAF0 @ =0x08198220
	movs r0, #0x26
	adds r0, r0, r5
	mov r10, r0
	movs r0, #0x27
	adds r0, r0, r5
	mov r8, r0
	cmp r3, #0x09
	bls _0801BA1C
_0801BA0A:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r3, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x09
	bhi _0801BA0A
_0801BA1C:
	mov r0, sp
	strb r1, [r0, #0x00]
	movs r1, #0x00
	cmp r3, #0x00
	beq _0801BA36
_0801BA26:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	subs r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801BA26
_0801BA36:
	mov r0, sp
	strb r1, [r0, #0x01]
	movs r1, #0x00
	ldrb r3, [r4, #0x00]
	cmp r3, #0x09
	bls _0801BA54
_0801BA42:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r3, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x09
	bhi _0801BA42
_0801BA54:
	mov r0, sp
	strb r1, [r0, #0x03]
	movs r1, #0x00
	cmp r3, #0x00
	beq _0801BA6E
_0801BA5E:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	subs r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801BA5E
_0801BA6E:
	mov r0, sp
	strb r1, [r0, #0x04]
	mov r1, r12
	subs r0, r1, r2
	ldr r3, _0801BAF4 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r1, #0x00
	ldsb r1, [r6, r1]
	movs r0, #0x64
	muls r0, r1
	movs r1, #0x3C
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	strb r3, [r7, #0x00]
	movs r1, #0x00
	cmp r3, #0x09
	bls _0801BAA8
_0801BA96:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r3, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x09
	bhi _0801BA96
_0801BAA8:
	mov r0, sp
	strb r1, [r0, #0x06]
	movs r1, #0x00
	cmp r3, #0x00
	beq _0801BAC2
_0801BAB2:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	subs r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801BAB2
_0801BAC2:
	mov r0, sp
	strb r1, [r0, #0x07]
	ldr r7, _0801BAF8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r2, r10
	ldrb r4, [r2, #0x00]
	movs r6, #0x00
	ldr r3, _0801BAFC @ =0x000001FF
	mov r10, r3
_0801BADC:
	cmp r6, #0x02
	beq _0801BAE4
	cmp r6, #0x05
	bne _0801BB00
_0801BAE4:
	ldr r1, _0801BAE8 @ =0x0000FFFF
	b _0801BB02
_0801BAE8: .4byte 0x0000FFFF
_0801BAEC: .4byte 0x0819832C
_0801BAF0: .4byte 0x08198220
_0801BAF4: .4byte 0x03001038
_0801BAF8: .4byte 0x0300034C
_0801BAFC: .4byte 0x000001FF
_0801BB00:
	movs r1, #0x00
_0801BB02:
	mov r7, r8
	ldrb r0, [r7, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldr r2, _0801BB54 @ =0xFFFF8000
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r12
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	mov r7, r10
	ands r0, r7
	strh r0, [r3, #0x02]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0C
	ldrh r0, [r5, #0x20]
	mov r3, sp
	adds r2, r3, r6
	lsrs r0, r0, #0x05
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	orrs r1, r0
	mov r7, r12
	strh r1, [r7, #0x04]
	mov r3, r12
	adds r3, #0x08
	adds r2, r6, #0x1
	adds r0, r4, #0x0
	adds r0, #0x08
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x02
	beq _0801BB50
	cmp r2, #0x05
	bne _0801BB5C
_0801BB50:
	ldr r1, _0801BB58 @ =0x0000FFFF
	b _0801BB5E
_0801BB54: .4byte 0xFFFF8000
_0801BB58: .4byte 0x0000FFFF
_0801BB5C:
	movs r1, #0x00
_0801BB5E:
	mov r7, r8
	ldrb r0, [r7, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldr r7, _0801BBC0 @ =0xFFFF8000
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	mov r1, r10
	ands r0, r1
	strh r0, [r3, #0x02]
	mov r7, r9
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0C
	ldrh r0, [r5, #0x20]
	add r2, sp
	lsrs r0, r0, #0x05
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #0x04]
	movs r0, #0x10
	add r12, r0
	adds r6, #0x02
	adds r0, r4, #0x0
	adds r0, #0x08
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0x07
	ble _0801BADC
	ldr r1, _0801BBC4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	mov r3, r12
	str r3, [r0, #0x00]
_0801BBAE:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801BBC0: .4byte 0xFFFF8000
_0801BBC4: .4byte 0x0300034C
	.byte 0x02, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0x26, 0x30, 0x01, 0x70, 0x01, 0x30, 0x01, 0x70, 0x28, 0x32
	.byte 0x10, 0x78, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_801BBE4
sub_801BBE4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, #0x22
	movs r4, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	ldr r2, _0801BC34 @ =0x03001038
	ldr r0, _0801BC38 @ =0x0819832C
	ldr r1, _0801BC3C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	movs r0, #0x64
	muls r0, r3
	movs r1, #0x3C
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x25
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x29
	strb r4, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x28
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0801BC34: .4byte 0x03001038
_0801BC38: .4byte 0x0819832C
_0801BC3C: .4byte 0x08198220
	thumb_func_start sub_801BC40
sub_801BC40:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	strh r4, [r6, #0x20]
	ldr r0, _0801BC8C @ =0x0000FFFF
	cmp r4, r0
	beq _0801BC6E
	ldr r0, _0801BC90 @ =0x081E23CD
	bl sub_80198B0
	adds r2, r0, #0x0
	ldr r0, [r6, #0x1C]
	ldr r1, _0801BC94 @ =0x06010000
	adds r1, r4, r1
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0801BC6E:
	adds r3, r6, #0x0
	adds r3, #0x28
	movs r0, #0x0F
	ands r5, r0
	lsls r2, r5, #0x02
	ldrb r1, [r3, #0x00]
	subs r0, #0x4C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801BC8C: .4byte 0x0000FFFF
_0801BC90: .4byte 0x081E23CD
_0801BC94: .4byte 0x06010000
