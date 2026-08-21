	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805A230
sub_805A230:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x024]
	mov r8, r0
	ldr r3, [sp, #0x028]
	mov r9, r3
	ldr r4, [sp, #0x02C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _0805A340 @ =0x08CDC2A8
	str r0, [r7, #0x18]
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r7, r1
	str r4, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r2, _0805A344 @ =0x081E27EC
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x38]
	movs r4, #0x80
	lsls r4, r4, #0x04
	ldr r2, _0805A348 @ =0x081E27F4
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x3C]
	ldr r2, _0805A34C @ =0x081E27FC
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x44]
	ldr r2, _0805A350 @ =0x081E2804
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x40]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x38]
	ldr r2, _0805A354 @ =0x01000800
	mov r10, r2
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x3C]
	ldr r5, _0805A358 @ =0x01000200
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x44]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x40]
	mov r0, sp
	mov r2, r10
	bl CpuFastSet
	ldr r0, _0805A35C @ =0x0000FFFC
	strh r0, [r7, #0x1C]
	strh r6, [r7, #0x1E]
	mov r3, r8
	strh r3, [r7, #0x32]
	mov r5, r9
	strh r5, [r7, #0x36]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x20]
	ldr r2, _0805A360 @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x08]
	lsrs r0, r0, #0x04
	lsls r0, r0, #0x05
	strh r0, [r7, #0x24]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x08]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x04
	strh r0, [r7, #0x26]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0805A374
	cmp r1, #0x10
	bgt _0805A364
	cmp r1, #0x00
	beq _0805A36E
	b _0805A38E
_0805A340: .4byte 0x08CDC2A8
_0805A344: .4byte 0x081E27EC
_0805A348: .4byte 0x081E27F4
_0805A34C: .4byte 0x081E27FC
_0805A350: .4byte 0x081E2804
_0805A354: .4byte 0x01000800
_0805A358: .4byte 0x01000200
_0805A35C: .4byte 0x0000FFFC
_0805A360: .4byte 0x083AFC5C
_0805A364:
	cmp r1, #0x20
	beq _0805A37A
	cmp r1, #0x30
	beq _0805A380
	b _0805A38E
_0805A36E:
	movs r1, #0x04
	movs r0, #0x04
	b _0805A384
_0805A374:
	movs r1, #0x01
	movs r0, #0x01
	b _0805A384
_0805A37A:
	movs r1, #0x02
	movs r0, #0x02
	b _0805A384
_0805A380:
	movs r1, #0x08
	movs r0, #0x08
_0805A384:
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2A]
	adds r0, r7, #0x0
	adds r0, #0x2E
	strb r1, [r0, #0x00]
_0805A38E:
	ldr r2, _0805A3AC @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _0805A3B0
	movs r0, #0x04
	strh r0, [r7, #0x2A]
	b _0805A3B8
	.byte 0x00, 0x00
_0805A3AC: .4byte 0x083AFC5C
_0805A3B0:
	cmp r1, #0x02
	bne _0805A3B8
	movs r0, #0x04
	strh r0, [r7, #0x28]
_0805A3B8:
	adds r1, r7, #0x0
	adds r1, #0x2D
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x32
	ldsh r1, [r7, r0]
	movs r3, #0x28
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x24]
	adds r0, r0, r5
	strh r0, [r7, #0x30]
	movs r0, #0x36
	ldsh r1, [r7, r0]
	movs r3, #0x2A
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x26]
	adds r0, r0, r5
	strh r0, [r7, #0x34]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x09]
	lsrs r0, r1, #0x04
	movs r2, #0x0F
	ands r2, r1
	ldr r4, _0805A430 @ =0x02000008
	ldr r3, _0805A434 @ =0x081E280A
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x07
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	lsls r2, r2, #0x01
	adds r2, r2, r3
	ldrh r0, [r2, #0x00]
	movs r2, #0xB8
	lsls r2, r2, #0x07
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805A430: .4byte 0x02000008
_0805A434: .4byte 0x081E280A
	thumb_func_start sub_805A438
sub_805A438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r7, _0805A46C @ =0x089FC058
	ldr r2, _0805A470 @ =0x083AFC5C
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	mov r8, r1
	movs r0, #0x1C
	ldsh r3, [r5, r0]
	movs r0, #0x03
	negs r0, r0
	mov r12, r2
	cmp r3, r0
	beq _0805A4B0
	cmp r3, r0
	bgt _0805A474
	subs r0, #0x01
	cmp r3, r0
	beq _0805A484
	b _0805A536
_0805A46C: .4byte 0x089FC058
_0805A470: .4byte 0x083AFC5C
_0805A474:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	beq _0805A4FC
	adds r0, #0x01
	cmp r3, r0
	beq _0805A51C
	b _0805A536
_0805A484:
	ldr r0, _0805A4A8 @ =0x03000DC0
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r2, _0805A4AC @ =0x083AFE48
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	adds r1, r1, r7
	str r1, [r0, #0x04]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x08]
	str r3, [r0, #0x0C]
	bl sub_8019808
	b _0805A52E
_0805A4A8: .4byte 0x03000DC0
_0805A4AC: .4byte 0x083AFE48
_0805A4B0:
	ldr r6, _0805A4F4 @ =0x03000DC0
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805A4BA
	b _0805A60E
_0805A4BA:
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	str r4, [r6, #0x00]
	ldr r1, _0805A4F8 @ =0x083AFE48
	mov r2, r8
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	adds r0, r1, r7
	str r0, [r6, #0x04]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x08]
	str r4, [r6, #0x0C]
	adds r0, r6, #0x0
	bl sub_8019808
	b _0805A60E
	.byte 0x00, 0x00
_0805A4F4: .4byte 0x03000DC0
_0805A4F8: .4byte 0x083AFE48
_0805A4FC:
	ldr r0, _0805A514 @ =0x03000DC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805A506
	b _0805A60E
_0805A506:
	ldr r0, [r5, #0x40]
	ldr r1, _0805A518 @ =0x06002000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	b _0805A52E
_0805A514: .4byte 0x03000DC0
_0805A518: .4byte 0x06002000
_0805A51C:
	adds r0, r5, #0x0
	bl sub_805A618
	adds r0, r5, #0x0
	bl sub_805B074
	adds r0, r5, #0x0
	bl sub_805AEC8
_0805A52E:
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	b _0805A60E
_0805A536:
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _0805A54C
	ldrh r0, [r5, #0x20]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x22]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
_0805A54C:
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x07]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805A5D8
	adds r6, r5, #0x0
	adds r6, #0x2D
	adds r0, r5, #0x0
	adds r0, #0x2E
	ldrb r1, [r0, #0x00]
	ldrb r2, [r6, #0x00]
	adds r1, r1, r2
	strb r1, [r6, #0x00]
	ldr r4, _0805A5D0 @ =0x083A75DC
	ldrh r2, [r5, #0x1E]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r3, [r0, #0x07]
	movs r2, #0x07
	adds r0, r2, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r1, r0
	ldrh r0, [r5, #0x20]
	adds r1, r1, r0
	ldrh r0, [r5, #0x30]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	ldr r3, _0805A5D4 @ =0x083A75EC
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r0, [r0, #0x07]
	ands r2, r0
	lsls r2, r2, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	ldrh r0, [r5, #0x22]
	adds r1, r1, r0
	ldrh r0, [r5, #0x34]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
	ldrb r1, [r6, #0x00]
	movs r0, #0x03
	ands r0, r1
	strb r0, [r6, #0x00]
	b _0805A5FC
	.byte 0x00, 0x00
_0805A5D0: .4byte 0x083A75DC
_0805A5D4: .4byte 0x083A75EC
_0805A5D8:
	movs r2, #0x32
	ldsh r1, [r5, r2]
	movs r3, #0x28
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	movs r2, #0x36
	ldsh r1, [r5, r2]
	movs r3, #0x2A
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x26]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
_0805A5FC:
	movs r0, #0x00
	strh r0, [r5, #0x22]
	strh r0, [r5, #0x20]
	adds r0, r5, #0x0
	bl sub_805AC98
	adds r0, r5, #0x0
	bl sub_805A95C
_0805A60E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A618
sub_805A618:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, _0805A680 @ =0x02000010
	ldrh r2, [r4, #0x30]
	ldr r1, _0805A684 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A688 @ =0x02000014
	ldrh r0, [r4, #0x32]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r3, #0x02
	ldrh r2, [r4, #0x34]
	movs r1, #0xFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A68C @ =0x02000016
	ldrh r0, [r4, #0x36]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_805A6EC
	adds r0, r4, #0x0
	bl sub_805A900
	adds r0, r4, #0x0
	bl sub_805A7C0
	ldr r0, [r4, #0x38]
	ldr r1, _0805A690 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, _0805A694 @ =0x0300034C
	ldr r1, _0805A698 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805A6A0
	ldr r5, _0805A69C @ =0x08A53B30
	b _0805A6A2
	.byte 0x00, 0x00
_0805A680: .4byte 0x02000010
_0805A684: .4byte 0x000001FF
_0805A688: .4byte 0x02000014
_0805A68C: .4byte 0x02000016
_0805A690: .4byte 0x0600D000
_0805A694: .4byte 0x0300034C
_0805A698: .4byte 0x00000888
_0805A69C: .4byte 0x08A53B30
_0805A6A0:
	ldr r5, _0805A6D4 @ =0x08A4FCCC
_0805A6A2:
	ldr r3, _0805A6D8 @ =0x083AFFD8
	ldr r2, _0805A6DC @ =0x083AFC5C
	ldrh r1, [r4, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x02]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r5, r0
	ldr r1, _0805A6E0 @ =0x02000080
	movs r2, #0x40
	bl CpuFastSet
	ldr r1, _0805A6E4 @ =0x0300034C
	ldr r0, _0805A6E8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A6D4: .4byte 0x08A4FCCC
_0805A6D8: .4byte 0x083AFFD8
_0805A6DC: .4byte 0x083AFC5C
_0805A6E0: .4byte 0x02000080
_0805A6E4: .4byte 0x0300034C
_0805A6E8: .4byte 0x00007FFF
	thumb_func_start sub_805A6EC
sub_805A6EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _0805A768 @ =0x08A46198
	mov r9, r0
	ldr r2, _0805A76C @ =0x083AFC5C
	mov r3, r8
	ldrh r1, [r3, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	mov r10, r0
	movs r2, #0x00
_0805A710:
	lsls r0, r2, #0x01
	mov r3, r10
	lsls r1, r3, #0x02
	adds r0, r0, r1
	ldr r1, _0805A770 @ =0x083AFF3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r3, _0805A774 @ =0x0000FFFF
	cmp r0, r3
	beq _0805A778
	lsls r0, r0, #0x02
	ldr r1, _0805A768 @ =0x08A46198
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r3, r9
	adds r7, r3, r0
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r6, r2, #0x09
	mov r3, r8
	ldr r5, [r3, #0x3C]
_0805A73C:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r3, r0, #0x05
_0805A742:
	adds r1, r6, r2
	adds r1, r3, r1
	lsls r1, r1, #0x01
	adds r1, r1, r5
	adds r0, r3, r2
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A742
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A73C
	b _0805A7A8
	.byte 0x00, 0x00
_0805A768: .4byte 0x08A46198
_0805A76C: .4byte 0x083AFC5C
_0805A770: .4byte 0x083AFF3C
_0805A774: .4byte 0x0000FFFF
_0805A778:
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r5, r2, #0x09
	mov r1, r8
	ldr r3, [r1, #0x3C]
	movs r6, #0x00
_0805A786:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r1, r0, #0x05
_0805A78C:
	adds r0, r5, r2
	adds r0, r1, r0
	lsls r0, r0, #0x01
	adds r0, r0, r3
	strh r6, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A78C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A786
_0805A7A8:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x01
	bls _0805A710
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A7C0
sub_805A7C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r2, _0805A85C @ =0x083AFC5C
	ldrh r1, [r0, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	str r0, [sp, #0x004]
	movs r0, #0x00
	mov r9, r0
_0805A7E2:
	mov r1, r9
	lsls r0, r1, #0x01
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r0, r1
	ldr r3, _0805A860 @ =0x083AFF3C
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	mov r1, r9
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldr r2, _0805A864 @ =0x0000FFFF
	cmp r0, r2
	beq _0805A840
	movs r0, #0x00
	mov r3, r9
	lsls r3, r3, #0x09
	mov r10, r3
_0805A806:
	movs r4, #0x00
	lsls r6, r0, #0x10
	lsls r5, r0, #0x05
	adds r7, r0, #0x1
_0805A80E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r1, r10
	adds r0, r5, r1
	adds r0, r0, r4
	mov r3, r8
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	mov r1, r9
	asrs r3, r6, #0x10
	bl sub_805A868
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1F
	bls _0805A80E
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A806
_0805A840:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bls _0805A7E2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805A85C: .4byte 0x083AFC5C
_0805A860: .4byte 0x083AFF3C
_0805A864: .4byte 0x0000FFFF
	thumb_func_start sub_805A868
sub_805A868:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r12, r0
	ldr r7, [r6, #0x44]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805A8AC
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805A8D6
_0805A8AC:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805A8D6:
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r3, [r6, #0x38]
	lsls r1, r0, #0x01
	adds r1, r1, r3
	mov r0, r12
	lsls r2, r0, #0x03
	adds r2, r2, r7
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	lsls r0, r4, #0x01
	adds r0, r0, r3
	ldrh r1, [r2, #0x04]
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x06]
	strh r1, [r0, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
