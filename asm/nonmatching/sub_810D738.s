	.syntax unified
	.text

	thumb_func_start sub_810D738
sub_810D738:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r10, r0
	adds r7, r1, #0x0
	ldr r6, [sp, #0x048]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x00C]
	ldr r1, [r7, #0x28]
	str r1, [sp, #0x010]
	ldr r3, _0810D77C @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r2, _0810D780 @ =0x000002C1
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0810D784
	cmp r1, #0x04
	beq _0810D784
	movs r0, #0x01
	negs r0, r0
	b _0810DD6A
_0810D77C: .4byte 0x03000FD8
_0810D780: .4byte 0x000002C1
_0810D784:
	ldr r0, [r7, #0x08]
	cmp r0, #0x00
	bne _0810D790
	ldr r0, [r7, #0x28]
	adds r7, r0, #0x0
	adds r7, #0x08
_0810D790:
	ldr r2, [r3, #0x00]
	lsrs r1, r6, #0x13
	movs r0, #0x01
	ands r1, r0
	ldr r3, _0810D7E8 @ =0x000002C1
	adds r2, r2, r3
	lsls r1, r1, #0x01
	ldrb r3, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x01
	negs r4, r4
	mov r9, r4
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x014]
	movs r1, #0x00
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r2, #0x06
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x04
	bne _0810D7EC
	ldr r1, [r7, #0x6C]
	cmp r1, #0x00
	beq _0810D7EC
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, #0x00
	bne _0810D7EC
	ldrb r1, [r1, #0x09]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810D7EC
	movs r0, #0x02
	b _0810DD6A
	.byte 0x00, 0x00
_0810D7E8: .4byte 0x000002C1
_0810D7EC:
	ldr r2, [sp, #0x010]
	adds r2, #0x08
	str r2, [sp, #0x024]
	cmp r2, r7
	beq _0810D7F8
	b _0810D960
_0810D7F8:
	ldr r0, [sp, #0x010]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _0810D808
	b _0810D960
_0810D808:
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r6
	cmp r0, #0x00
	bne _0810D822
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r6
	movs r1, #0x02
	cmp r0, #0x00
	beq _0810D824
	movs r1, #0x01
	b _0810D824
_0810D822:
	movs r1, #0x00
_0810D824:
	ldr r0, [sp, #0x010]
	bl sub_8083EEC
	adds r4, r0, #0x0
	cmp r4, #0x01
	bne _0810D91A
	movs r0, #0x06
	ands r0, r6
	cmp r0, #0x00
	bne _0810D894
	mov r3, r10
	ldr r0, [r3, #0x28]
	ldr r1, _0810D888 @ =0x0000012B
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _0810D88C
	movs r5, #0x80
	lsls r5, r5, #0x09
	ands r5, r6
	cmp r5, #0x00
	bne _0810D88C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r2, r0, #0x1
	mov r3, r10
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _0810D868
	adds r0, #0xFF
_0810D868:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r1, r10
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bge _0810D876
	adds r0, #0xFF
_0810D876:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r7, #0x0
	mov r1, r10
	movs r3, #0x02
	bl sub_810E03C
	b _0810D894
_0810D888: .4byte 0x0000012B
_0810D88C:
	movs r2, #0x80
	lsls r2, r2, #0x02
	str r2, [sp, #0x014]
	movs r4, #0x00
_0810D894:
	cmp r4, #0x01
	bne _0810D91A
	movs r0, #0x06
	ands r0, r6
	cmp r0, #0x02
	beq _0810D8A4
	cmp r0, #0x04
	bne _0810D91A
_0810D8A4:
	movs r0, #0x18
	ands r0, r6
	cmp r0, #0x10
	beq _0810D8B6
	movs r0, #0x80
	lsls r0, r0, #0x0A
	ands r0, r6
	cmp r0, #0x00
	beq _0810D8BA
_0810D8B6:
	movs r4, #0x00
	b _0810D91A
_0810D8BA:
	movs r0, #0x80
	lsls r0, r0, #0x0B
	ands r0, r6
	cmp r0, #0x00
	beq _0810D8C8
	ldr r0, _0810D8F8 @ =0x080875B9
	str r0, [r7, #0x4C]
_0810D8C8:
	movs r2, #0x20
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x06
	mov r1, r10
	bl sub_807EAE4
	asrs r0, r6, #0x08
	movs r1, #0x0F
	ands r0, r1
	cmp r0, #0x01
	bne _0810D900
	adds r1, r7, #0x0
	adds r1, #0xAC
	movs r0, #0x05
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _0810D8FC @ =0x0000FE9A
	b _0810D914
_0810D8F8: .4byte sub_80875B8
_0810D8FC: .4byte 0x0000FE9A
_0810D900:
	adds r1, r7, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r0, #0xFE
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xFF
	lsls r0, r0, #0x08
_0810D914:
	strh r0, [r1, #0x00]
	movs r0, #0x04
	orrs r4, r0
_0810D91A:
	cmp r4, #0x02
	bne _0810D934
	ldr r0, _0810D958 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _0810D95C @ =0x000002C1
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r4, #0x01
	mov r9, r4
	movs r4, #0x00
_0810D934:
	cmp r4, #0x00
	ble _0810D960
	ldr r0, _0810D958 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _0810D95C @ =0x000002C1
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x02
	cmp r4, #0x01
	beq _0810D952
	b _0810DD6A
_0810D952:
	movs r0, #0x01
	b _0810DD6A
	.byte 0x00, 0x00
_0810D958: .4byte 0x03000FD8
_0810D95C: .4byte 0x000002C1
_0810D960:
	ldr r0, [sp, #0x010]
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x01C]
	mov r2, r9
	cmp r2, #0x00
	ble _0810D974
	b _0810DC7A
_0810D974:
	movs r0, #0x18
	ands r0, r6
	cmp r0, #0x10
	bne _0810D982
	movs r3, #0x00
	str r3, [sp, #0x018]
	b _0810D9A8
_0810D982:
	cmp r0, #0x08
	bne _0810D990
	asrs r4, r6, #0x08
	movs r0, #0x0F
	ands r4, r0
	str r4, [sp, #0x018]
	b _0810D9A8
_0810D990:
	asrs r1, r6, #0x08
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x01
	bne _0810D9A0
	movs r0, #0x00
	str r0, [sp, #0x018]
	b _0810D9A8
_0810D9A0:
	cmp r1, #0x00
	bne _0810D9A8
	movs r1, #0x01
	str r1, [sp, #0x018]
_0810D9A8:
	movs r1, #0xFC
	lsls r1, r1, #0x12
	ands r1, r6
	movs r0, #0x80
	lsls r0, r0, #0x0F
	cmp r1, r0
	beq _0810DA78
	cmp r1, r0
	bgt _0810D9CC
	movs r0, #0x80
	lsls r0, r0, #0x0D
	cmp r1, r0
	beq _0810DA68
	movs r0, #0x80
	lsls r0, r0, #0x0E
	cmp r1, r0
	beq _0810DA70
	b _0810DA92
_0810D9CC:
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	beq _0810DA88
	cmp r1, r0
	bgt _0810D9E2
	movs r0, #0x80
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _0810DA80
	b _0810DA92
_0810D9E2:
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0810DA92
	ldr r0, [r7, #0x28]
	movs r2, #0x91
	lsls r2, r2, #0x01
	mov r9, r2
	add r0, r9
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0810DA92
	mov r0, r8
	adds r0, #0x28
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1B
	lsrs r5, r4, #0x1B
	adds r4, r5, #0x0
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r5, r0
	bgt _0810DA44
	ldr r2, [r7, #0x28]
	add r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _0810DA40 @ =0xFFFFFE7F
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	mov r4, r8
	ldrh r0, [r4, #0x28]
	b _0810DA58
_0810DA40: .4byte 0xFFFFFE7F
_0810DA44:
	ldr r2, [r7, #0x28]
	add r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _0810DA64 @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	mov r1, r8
	ldrh r0, [r1, #0x2A]
_0810DA58:
	lsrs r0, r0, #0x05
	movs r1, #0x01
	bl sub_80F6F74
	b _0810DA92
	.byte 0x00, 0x00
_0810DA64: .4byte 0xFFFFFE7F
_0810DA68:
	mov r1, r10
	adds r1, #0xC8
	movs r0, #0x01
	b _0810DA90
_0810DA70:
	mov r1, r10
	adds r1, #0xC8
	movs r0, #0x02
	b _0810DA90
_0810DA78:
	mov r1, r10
	adds r1, #0xC8
	movs r0, #0x08
	b _0810DA90
_0810DA80:
	mov r1, r10
	adds r1, #0xC8
	movs r0, #0x20
	b _0810DA90
_0810DA88:
	mov r1, r10
	adds r1, #0xC8
	movs r0, #0x80
	lsls r0, r0, #0x01
_0810DA90:
	strh r0, [r1, #0x00]
_0810DA92:
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r6
	cmp r0, #0x00
	beq _0810DAA8
	mov r2, r8
	ldrb r1, [r2, #0x1E]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x40
	beq _0810DABE
_0810DAA8:
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _0810DAC4
	mov r3, r8
	ldrb r1, [r3, #0x1E]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x10
	bne _0810DAC4
_0810DABE:
	movs r4, #0x02
	str r4, [sp, #0x01C]
	b _0810DC44
_0810DAC4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r6
	cmp r0, #0x00
	beq _0810DADA
	mov r0, r8
	ldrb r1, [r0, #0x1E]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x80
	beq _0810DAF0
_0810DADA:
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _0810DAF4
	mov r2, r8
	ldrb r1, [r2, #0x1E]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x20
	bne _0810DAF4
_0810DAF0:
	movs r3, #0x03
	b _0810DC42
_0810DAF4:
	movs r0, #0x18
	ands r0, r6
	cmp r0, #0x00
	beq _0810DAFE
	b _0810DC44
_0810DAFE:
	ldr r4, [sp, #0x018]
	cmp r4, #0x00
	beq _0810DB06
	b _0810DC44
_0810DB06:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	str r0, [sp, #0x020]
	ldr r1, [sp, #0x00C]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r4, [sp, #0x00C]
	adds r2, #0x23
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x07
	bne _0810DB3C
	ldr r0, _0810DB38 @ =0x00000133
	adds r3, r1, #0x0
	muls r3, r0
	mov r9, r3
	b _0810DB40
	.byte 0x00, 0x00
_0810DB38: .4byte 0x00000133
_0810DB3C:
	lsls r1, r1, #0x08
	mov r9, r1
_0810DB40:
	ldr r0, [sp, #0x00C]
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r5, r0, #0x08
	ldr r0, [sp, #0x010]
	adds r0, #0xF5
	movs r2, #0x00
	ldsb r2, [r0, r2]
	lsls r3, r2, #0x08
	ldr r4, [sp, #0x010]
	movs r0, #0x84
	lsls r0, r0, #0x01
	adds r4, r4, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r1, r0, #0x08
	ldr r4, [sp, #0x00C]
	movs r0, #0x84
	lsls r0, r0, #0x01
	adds r4, r4, r0
	movs r0, #0x00
	ldsh r4, [r4, r0]
	mov r12, r4
	lsls r4, r4, #0x08
	mov r8, r4
	movs r0, #0xC6
	lsls r0, r0, #0x07
	cmp r3, r0
	bne _0810DB82
	movs r0, #0x00
	b _0810DC2E
_0810DB82:
	lsls r0, r2, #0x09
	adds r0, r0, r3
	lsls r0, r0, #0x03
	adds r2, r0, r3
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0810DB92
	adds r0, #0xFF
_0810DB92:
	asrs r4, r0, #0x08
	adds r0, r4, r3
	adds r0, #0x01
	cmp r5, r0
	bgt _0810DBC6
	subs r0, r3, r4
	subs r0, #0x01
	cmp r5, r0
	blt _0810DBC6
	mov r2, r12
	lsls r0, r2, #0x0A
	add r0, r8
	lsls r0, r0, #0x09
	bl __divsi3
	cmp r0, #0x00
	bge _0810DBB6
	adds r0, #0xFF
_0810DBB6:
	asrs r0, r0, #0x08
	cmp r0, #0x05
	bgt _0810DBBE
	movs r0, #0x06
_0810DBBE:
	cmp r0, #0x10
	ble _0810DC22
	movs r0, #0x0F
	b _0810DC22
_0810DBC6:
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0810DBCE
	adds r0, r3, #0x3
_0810DBCE:
	asrs r2, r0, #0x02
	adds r0, r2, r3
	adds r0, #0x02
	cmp r5, r0
	bgt _0810DC02
	subs r0, r3, r2
	subs r0, #0x02
	cmp r5, r0
	blt _0810DC02
	mov r3, r8
	lsls r0, r3, #0x01
	add r0, r8
	lsls r0, r0, #0x0A
	bl __divsi3
	cmp r0, #0x00
	bge _0810DBF2
	adds r0, #0xFF
_0810DBF2:
	asrs r0, r0, #0x08
	cmp r0, #0x09
	bgt _0810DBFA
	movs r0, #0x0A
_0810DBFA:
	cmp r0, #0x14
	ble _0810DC22
	movs r0, #0x14
	b _0810DC22
_0810DC02:
	mov r4, r8
	lsls r0, r4, #0x01
	add r0, r8
	lsls r0, r0, #0x09
	bl __divsi3
	cmp r0, #0x00
	bge _0810DC14
	adds r0, #0xFF
_0810DC14:
	asrs r0, r0, #0x08
	cmp r0, #0x03
	bgt _0810DC1C
	movs r0, #0x04
_0810DC1C:
	cmp r0, #0x0A
	ble _0810DC22
	movs r0, #0x0A
_0810DC22:
	cmp r9, r8
	beq _0810DC2E
	adds r0, #0x0F
	cmp r0, #0x19
	ble _0810DC2E
	movs r0, #0x19
_0810DC2E:
	ldr r1, [sp, #0x020]
	cmp r1, r0
	bcs _0810DC44
	movs r2, #0x02
	str r2, [sp, #0x018]
	ldr r0, _0810DC68 @ =0xFFFFFCFF
	ands r6, r0
	lsls r0, r2, #0x08
	orrs r6, r0
	movs r3, #0x01
_0810DC42:
	str r3, [sp, #0x01C]
_0810DC44:
	mov r0, r10
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_810E5D0
	ldr r4, [sp, #0x014]
	muls r0, r4
	cmp r0, #0x00
	bge _0810DC58
	adds r0, #0xFF
_0810DC58:
	asrs r0, r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x01C]
	cmp r0, #0x02
	beq _0810DC6C
	cmp r0, #0x03
	beq _0810DC74
	b _0810DC7A
_0810DC68: .4byte 0xFFFFFCFF
_0810DC6C:
	mov r1, r9
	lsls r1, r1, #0x01
	mov r9, r1
	b _0810DC7A
_0810DC74:
	mov r2, r9
	negs r2, r2
	mov r9, r2
_0810DC7A:
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r6
	cmp r0, #0x00
	beq _0810DCB2
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0810DC8C
	adds r1, #0xFF
_0810DC8C:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	ldr r1, [r7, #0x18]
	cmp r1, #0x00
	bge _0810DCA2
	adds r1, #0xFF
_0810DCA2:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	b _0810DCCA
_0810DCB2:
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _0810DCBA
	adds r1, #0xFF
_0810DCBA:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	movs r1, #0x00
_0810DCCA:
	str r2, [sp, #0x000]
	str r1, [sp, #0x004]
	ldr r3, [sp, #0x01C]
	str r3, [sp, #0x008]
	mov r0, r10
	adds r1, r7, #0x0
	mov r2, r9
	ldr r3, [sp, #0x018]
	bl sub_810E03C
	movs r0, #0x18
	ands r0, r6
	cmp r0, #0x00
	bne _0810DD26
	ldr r4, [sp, #0x018]
	cmp r4, #0x01
	beq _0810DD26
	ldr r1, [sp, #0x00C]
	ldr r2, _0810DD58 @ =0x0000012B
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	cmp r1, #0x04
	bne _0810DD00
	movs r0, #0x06
	ands r0, r6
	cmp r0, #0x00
	beq _0810DD16
_0810DD00:
	cmp r1, #0x05
	bne _0810DD0C
	movs r0, #0x06
	ands r0, r6
	cmp r0, #0x02
	beq _0810DD16
_0810DD0C:
	cmp r1, #0x06
	bne _0810DD26
	ands r6, r1
	cmp r6, #0x04
	bne _0810DD26
_0810DD16:
	ldr r0, _0810DD5C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xBA
	ldrh r1, [r1, #0x00]
	ldr r3, _0810DD60 @ =0x000002D6
	adds r0, r0, r3
	strh r1, [r0, #0x00]
_0810DD26:
	ldr r4, [sp, #0x010]
	ldr r1, _0810DD64 @ =0x00000111
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810DD68
	adds r0, r4, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r4, [r0, r2]
	cmp r4, #0x00
	bne _0810DD68
	ldr r0, [sp, #0x024]
	bl sub_8086700
	ldr r3, [sp, #0x010]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	strh r4, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	b _0810DD6A
_0810DD58: .4byte 0x0000012B
_0810DD5C: .4byte 0x03000FD8
_0810DD60: .4byte 0x000002D6
_0810DD64: .4byte 0x00000111
_0810DD68:
	movs r0, #0x00
_0810DD6A:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
