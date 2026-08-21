	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813C034
sub_813C034:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r4, r0, #0x0
	mov r9, r1
	str r2, [sp, #0x01C]
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813C05C
	ldr r0, _0813C058 @ =0x08139421
	ldr r1, [sp, #0x01C]
	b _0813C1A6
_0813C058: .4byte sub_8139420
_0813C05C:
	mov r2, r9
	adds r2, #0x58
	str r2, [sp, #0x020]
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	mov r10, r0
	add r5, sp, #0x014
	mov r0, r9
	mov r1, r10
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_813C1C0
	adds r0, r5, #0x0
	adds r1, r5, #0x0
	bl sub_813BCE4
	ldr r0, _0813C128 @ =0x03001038
	mov r8, r0
	ldr r4, _0813C12C @ =0x0819832C
	ldr r0, _0813C130 @ =0x08198220
	subs r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	mov r1, r9
	ldr r0, [r1, #0x0C]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r1, r9
	ldr r0, [r1, #0x10]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	add r1, sp, #0x004
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	ble _0813C0C0
	movs r0, #0x00
_0813C0C0:
	adds r0, r0, r7
	subs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	ble _0813C0CE
	movs r0, #0x00
_0813C0CE:
	adds r0, r0, r2
	subs r0, #0x10
	strh r0, [r1, #0x06]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0813C0DC
	movs r0, #0x00
_0813C0DC:
	adds r0, r0, r7
	adds r0, #0x10
	strh r0, [r1, #0x02]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	bge _0813C0EA
	movs r0, #0x00
_0813C0EA:
	adds r0, r0, r2
	adds r0, #0x10
	strh r0, [r1, #0x04]
	ldr r2, _0813C134 @ =0x00007FFF
	adds r0, r1, #0x0
	mov r1, r10
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813C182
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x5A
	bls _0813C138
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813C138
	adds r0, r5, #0x0
	adds r1, r5, #0x0
	bl sub_813BC6C
	b _0813C18A
_0813C128: .4byte 0x03001038
_0813C12C: .4byte 0x0819832C
_0813C130: .4byte 0x08198220
_0813C134: .4byte 0x00007FFF
_0813C138:
	ldr r6, [sp, #0x014]
	cmp r6, #0x00
	beq _0813C160
	lsls r4, r6, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0813C158
	negs r4, r4
_0813C158:
	str r4, [r5, #0x04]
	movs r0, #0x00
	str r0, [sp, #0x014]
	b _0813C18A
_0813C160:
	ldr r4, [r5, #0x04]
	lsls r4, r4, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0813C17C
	negs r4, r4
_0813C17C:
	str r4, [sp, #0x014]
	str r6, [r5, #0x04]
	b _0813C18A
_0813C182:
	adds r0, r5, #0x0
	adds r1, r5, #0x0
	bl sub_813BC6C
_0813C18A:
	ldr r2, [sp, #0x014]
	ldr r3, [r5, #0x04]
	mov r0, r9
	movs r1, #0x01
	bl sub_81378CC
	ldr r0, _0813C1B8 @ =0x0813980D
	ldr r2, [sp, #0x01C]
	str r0, [r2, #0x00]
	ldr r0, [sp, #0x020]
	movs r2, #0xA6
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldr r0, _0813C1BC @ =0x0813BF95
_0813C1A6:
	str r0, [r1, #0x00]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813C1B8: .4byte sub_813980C
_0813C1BC: .4byte sub_813BF94
	thumb_func_start sub_813C1C0
sub_813C1C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	mov r8, r1
	adds r6, r3, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r9, r2
	ldr r1, [r1, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r4, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r7, #0x10]
	subs r5, r1, r0
	cmp r4, #0x00
	bne _0813C1E8
	b _0813C312
_0813C1E8:
	cmp r5, #0x00
	beq _0813C2E2
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _0813C1F4
	negs r1, r4
_0813C1F4:
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0813C1FC
	negs r0, r5
_0813C1FC:
	cmp r1, r0
	ble _0813C230
	movs r0, #0x01
	negs r0, r0
	cmp r4, #0x00
	ble _0813C20A
	movs r0, #0x01
_0813C20A:
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r2, r4, #0x08
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	muls r0, r2
	str r0, [r6, #0x00]
	movs r0, #0x00
	b _0813C2BA
_0813C230:
	cmp r1, r0
	bge _0813C262
	movs r0, #0x01
	negs r0, r0
	cmp r5, #0x00
	ble _0813C23E
	movs r0, #0x01
_0813C23E:
	adds r5, r0, #0x0
	movs r0, #0x00
	str r0, [r6, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r2, r5, #0x08
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	b _0813C2B8
_0813C262:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x01
	ands r3, r0
	cmp r3, #0x00
	beq _0813C29C
	movs r2, #0x01
	negs r2, r2
	cmp r4, #0x00
	ble _0813C284
	movs r2, #0x01
_0813C284:
	lsls r2, r2, #0x08
	lsls r1, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r0, r7, r3
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r2
	str r0, [r6, #0x00]
	movs r0, #0x00
	b _0813C2BA
_0813C29C:
	movs r2, #0x01
	negs r2, r2
	cmp r5, #0x00
	ble _0813C2A6
	movs r2, #0x01
_0813C2A6:
	str r3, [r6, #0x00]
	lsls r2, r2, #0x08
	lsls r1, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r0, r7, r3
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
_0813C2B8:
	muls r0, r2
_0813C2BA:
	str r0, [r6, #0x04]
	mov r2, r9
	cmp r2, #0x00
	beq _0813C35C
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0813C2CC
	ldr r0, [r7, #0x0C]
	b _0813C2D0
_0813C2CC:
	mov r3, r8
	ldr r0, [r3, #0x0C]
_0813C2D0:
	str r0, [r6, #0x00]
	ldr r0, [r6, #0x04]
	cmp r0, #0x00
	bne _0813C2DC
	ldr r0, [r7, #0x10]
	b _0813C35A
_0813C2DC:
	mov r1, r8
	ldr r0, [r1, #0x10]
	b _0813C35A
_0813C2E2:
	movs r0, #0x01
	negs r0, r0
	cmp r4, #0x00
	ble _0813C2EC
	movs r0, #0x01
_0813C2EC:
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r2, r4, #0x08
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	muls r0, r2
	str r0, [r6, #0x00]
	str r5, [r6, #0x04]
	b _0813C344
_0813C312:
	cmp r5, #0x00
	beq _0813C344
	movs r0, #0x01
	negs r0, r0
	cmp r5, #0x00
	ble _0813C320
	movs r0, #0x01
_0813C320:
	adds r5, r0, #0x0
	str r4, [r6, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r2, r5, #0x08
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r0, [r1, r3]
	muls r0, r2
	str r0, [r6, #0x04]
_0813C344:
	mov r0, r9
	cmp r0, #0x00
	beq _0813C35C
	ldr r0, [r6, #0x00]
	mov r2, r8
	ldr r1, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r6, #0x00]
	ldr r0, [r6, #0x04]
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
_0813C35A:
	str r0, [r6, #0x04]
_0813C35C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
