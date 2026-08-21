	.include "asm/macros.inc"

	.syntax unified
	.text

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
