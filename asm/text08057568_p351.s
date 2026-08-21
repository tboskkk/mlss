	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80B37CC
sub_80B37CC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080B3950 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B3954 @ =0x03001038
	ldr r2, _080B3958 @ =0x0819832C
	ldr r3, _080B395C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B382E
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B3830
_080B382E:
	movs r1, #0x00
_080B3830:
	cmp r1, #0x00
	beq _080B3868
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3850
	cmp r1, #0x04
	bne _080B3868
_080B3850:
	ldr r2, _080B3960 @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B3868:
	adds r0, r6, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x03
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r3, r0, r1
	lsls r0, r2, #0x02
	subs r4, r1, r0
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	mov r9, r0
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080B38A6
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B38A6:
	adds r1, r6, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080B38B6
	b _080B3F6C
_080B38B6:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080B38BE
	movs r2, #0x00
_080B38BE:
	ldr r0, _080B3964 @ =0x00007FFF
	cmp r2, r0
	ble _080B38C6
	adds r2, r0, #0x0
_080B38C6:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080B38E0
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B38E2
_080B38E0:
	movs r1, #0x00
_080B38E2:
	cmp r1, #0x00
	beq _080B39CC
	ldr r2, _080B3950 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B3968
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B390A
	movs r1, #0x4C
_080B38FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B38FE
_080B390A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B391E
	movs r1, #0x4C
_080B3912:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3912
_080B391E:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3932
	movs r1, #0x4C
_080B3926:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3926
_080B3932:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B39C4
	movs r1, #0x04
_080B393C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3946
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3946:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B393C
	b _080B39C4
	.byte 0x00, 0x00
_080B3950: .4byte 0x03000FD8
_080B3954: .4byte 0x03001038
_080B3958: .4byte 0x0819832C
_080B395C: .4byte 0x08198220
_080B3960: .4byte 0x00002031
_080B3964: .4byte 0x00007FFF
_080B3968:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B397E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3972:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3972
_080B397E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3994
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3988:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3988
_080B3994:
	mov r2, r8
	cmp r2, #0x00
	beq _080B39AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B399E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B399E
_080B39AA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B39C4
	movs r1, #0x10
_080B39B4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B39BE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B39BE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B39B4
_080B39C4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B39CC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080B39D6
	movs r1, #0x00
_080B39D6:
	mov r3, r9
	cmp r3, #0x00
	bge _080B39DE
	movs r2, #0x00
_080B39DE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B39E8
	adds r1, r0, #0x0
_080B39E8:
	ldr r0, _080B3A44 @ =0x00007FFF
	cmp r2, r0
	ble _080B39F0
	adds r2, r0, #0x0
_080B39F0:
	cmp r2, r1
	bge _080B39F6
	adds r1, r2, #0x0
_080B39F6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B3A0C
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B3A0E
_080B3A0C:
	movs r1, #0x00
_080B3A0E:
	cmp r1, #0x00
	bne _080B3A14
	b _080B3CDA
_080B3A14:
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B3A48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080B3A4C
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	b _080B3A60
	.byte 0x00, 0x00
_080B3A44: .4byte 0x00007FFF
_080B3A48: .4byte 0x03000FD8
_080B3A4C:
	cmp r1, #0x40
	bne _080B3A60
	movs r1, #0xFF
	lsls r1, r1, #0x18
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
_080B3A60:
	ldr r4, _080B3B2C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	ldr r2, _080B3B30 @ =0x0300034C
	cmp r0, #0x00
	bne _080B3A72
	b _080B3BA8
_080B3A72:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B3A7E
	b _080B3BA8
_080B3A7E:
	movs r0, #0x07
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	bl sub_807EA24
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
	bne _080B3B96
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3B34
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3AE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3AD6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3AD6
_080B3AE2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3AF8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3AEC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3AEC
_080B3AF8:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3B0E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B02:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B02
_080B3B0E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3B92
	movs r1, #0x10
_080B3B18:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3B22
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3B22:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3B18
	b _080B3B92
	.byte 0x00, 0x00
_080B3B2C: .4byte 0x03000FD8
_080B3B30: .4byte 0x0300034C
_080B3B34:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3B4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B40
_080B3B4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3B62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B56
_080B3B62:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3B78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B6C
_080B3B78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3B92
	movs r1, #0x10
_080B3B82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3B8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3B8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3B82
_080B3B92:
	bl sub_807F448
_080B3B96:
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3BA4 @ =0x00000FFF
	ands r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	b _080B3CD6
_080B3BA4: .4byte 0x00000FFF
_080B3BA8:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B3BB4
	b _080B3CDA
_080B3BB4:
	movs r0, #0x03
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B3C64 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B3CCA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3C68
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3C1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C0E
_080B3C1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3C30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C24
_080B3C30:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3C46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C3A
_080B3C46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3CC6
	movs r1, #0x10
_080B3C50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3C5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3C5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3C50
	b _080B3CC6
	.byte 0x00, 0x00
_080B3C64: .4byte 0x03000FD8
_080B3C68:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3C80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C74
_080B3C80:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3C96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C8A
_080B3C96:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3CAC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3CA0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3CA0
_080B3CAC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3CC6
	movs r1, #0x10
_080B3CB6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3CC0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3CC0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3CB6
_080B3CC6:
	bl sub_807F448
_080B3CCA:
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3DA8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
_080B3CD6:
	orrs r1, r0
	strh r1, [r5, #0x00]
_080B3CDA:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B3CE4
	b _080B3F6C
_080B3CE4:
	mov r1, r9
	cmp r1, #0x00
	bge _080B3CEC
	movs r1, #0x00
_080B3CEC:
	ldr r0, _080B3DAC @ =0x00007FFF
	cmp r1, r0
	ble _080B3CF4
	adds r1, r0, #0x0
_080B3CF4:
	ldr r4, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B3D0A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B3D0C
_080B3D0A:
	movs r2, #0x00
_080B3D0C:
	cmp r2, #0x00
	bne _080B3D12
	b _080B3E22
_080B3D12:
	ldr r3, _080B3DB0 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldrh r1, [r5, #0x00]
	ldr r0, _080B3DA8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3DB4
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B3D5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3D52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3D52
_080B3D5E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3D74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3D68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3D68
_080B3D74:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3D8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3D7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3D7E
_080B3D8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3E10
	movs r1, #0x10
_080B3D94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3D9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3D9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3D94
	b _080B3E10
	.byte 0x00, 0x00
_080B3DA8: .4byte 0x00000FFF
_080B3DAC: .4byte 0x00007FFF
_080B3DB0: .4byte 0x03000FD8
_080B3DB4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B3DCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3DBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3DBE
_080B3DCA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3DE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3DD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3DD4
_080B3DE0:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3DF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3DEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3DEA
_080B3DF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3E10
	movs r1, #0x10
_080B3E00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3E0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3E0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3E00
_080B3E10:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B3F6C
_080B3E22:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080B3E2E
	b _080B3F6C
_080B3E2E:
	ldr r0, _080B3EEC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B3E3C
	b _080B3F6C
_080B3E3C:
	ldr r4, _080B3EF0 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080B3E6A
	b _080B3F6C
_080B3E6A:
	ldrh r1, [r5, #0x00]
	ldr r0, _080B3EF4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3EF8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3E98
_080B3EA4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3EBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3EAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3EAE
_080B3EBA:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3ED0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3EC4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3EC4
_080B3ED0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3F56
	movs r1, #0x10
_080B3EDA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3EE4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3EE4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3EDA
	b _080B3F56
_080B3EEC: .4byte 0x0300034C
_080B3EF0: .4byte 0x03000FD8
_080B3EF4: .4byte 0x00000FFF
_080B3EF8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3F10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3F04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3F04
_080B3F10:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3F26
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3F1A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3F1A
_080B3F26:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3F3C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3F30:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3F30
_080B3F3C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3F56
	movs r1, #0x10
_080B3F46:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3F50
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3F50:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3F46
_080B3F56:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B3F6C:
	ldrh r0, [r5, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B4004
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080B3F7E
	movs r1, #0x00
_080B3F7E:
	mov r4, r9
	cmp r4, #0x00
	bge _080B3F86
	movs r2, #0x00
_080B3F86:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B3F90
	adds r1, r0, #0x0
_080B3F90:
	ldr r0, _080B3FD4 @ =0x00007FFF
	cmp r2, r0
	ble _080B3F98
	adds r2, r0, #0x0
_080B3F98:
	cmp r2, r1
	bge _080B3F9E
	adds r1, r2, #0x0
_080B3F9E:
	mov r0, r10
	movs r4, #0x00
	ldsh r0, [r0, r4]
	mov r8, r0
	cmp r8, r1
	blt _080B3FB8
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B3FBA
_080B3FB8:
	movs r1, #0x00
_080B3FBA:
	cmp r1, #0x00
	beq _080B4004
	cmp r3, #0x02
	bne _080B3FE0
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3FD8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r1, _080B3FDC @ =0x080B4D7D
	ldr r2, [sp, #0x004]
	str r1, [r2, #0x4C]
	b _080B3FF2
	.byte 0x00, 0x00
_080B3FD4: .4byte 0x00007FFF
_080B3FD8: .4byte 0x00000FFF
_080B3FDC: .4byte sub_80B4D7C
_080B3FE0:
	cmp r3, #0x03
	bne _080B4004
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3FFC @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r1, _080B4000 @ =0x080B6EB1
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
_080B3FF2:
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B4186
	.byte 0x00, 0x00
_080B3FFC: .4byte 0x00000FFF
_080B4000: .4byte sub_80B6EB0
_080B4004:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B400C
	movs r2, #0x00
_080B400C:
	ldr r0, _080B4154 @ =0x00007FFF
	cmp r2, r0
	ble _080B4014
	adds r2, r0, #0x0
_080B4014:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080B402E
	mov r1, r10
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4030
_080B402E:
	movs r1, #0x00
_080B4030:
	cmp r1, #0x00
	beq _080B4066
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B404E
	cmp r1, #0x04
	bne _080B4066
_080B404E:
	ldr r2, _080B4158 @ =0x00002060
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B4066:
	mov r1, r9
	cmp r1, #0x00
	bge _080B406E
	movs r1, #0x00
_080B406E:
	ldr r0, _080B4154 @ =0x00007FFF
	cmp r1, r0
	ble _080B4076
	adds r1, r0, #0x0
_080B4076:
	ldr r4, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B408C
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B408E
_080B408C:
	movs r2, #0x00
_080B408E:
	cmp r2, #0x00
	beq _080B409A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B409A:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B4186
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0xAF
	mov r1, r9
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r8, r1
	cmp r2, #0x02
	beq _080B40CA
	cmp r2, #0x04
	bne _080B4124
_080B40CA:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080B40D2
	adds r1, #0xFF
_080B40D2:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080B40E8
	adds r0, #0xFF
_080B40E8:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080B40FE
	adds r3, #0xFF
_080B40FE:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x33
	bl sub_8088274
_080B4124:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B4134
	cmp r2, #0x04
	bne _080B4178
_080B4134:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B415C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4168
_080B4154: .4byte 0x00007FFF
_080B4158: .4byte 0x00002060
_080B415C:
	ldr r2, _080B4198 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B4168:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4178:
	ldrh r0, [r5, #0x00]
	ldr r1, _080B419C @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _080B41A0 @ =0x080B41A5
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080B4186:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B4198: .4byte 0x0000204D
_080B419C: .4byte 0x00000FFF
_080B41A0: .4byte sub_80B41A4
	thumb_func_start sub_80B41A4
sub_80B41A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B4248 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080B41CA
	adds r0, #0xFF
_080B41CA:
	asrs r6, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCD
	movs r5, #0x00
	ldsb r5, [r0, r5]
	cmp r6, r5
	bge _080B4208
	ldr r0, [r7, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080B41F0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
_080B41F0:
	ldr r2, _080B424C @ =0x03001038
	ldr r0, _080B4250 @ =0x0819832C
	ldr r1, _080B4254 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r6, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
_080B4208:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B427A
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4228
	cmp r1, #0x04
	bne _080B4274
_080B4228:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4258
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4264
_080B4248: .4byte 0x03000FD8
_080B424C: .4byte 0x03001038
_080B4250: .4byte 0x0819832C
_080B4254: .4byte 0x08198220
_080B4258:
	ldr r2, _080B4284 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080B4264:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4274:
	ldr r0, _080B4288 @ =0x080B428D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B427A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B4284: .4byte 0x0000204D
_080B4288: .4byte sub_80B428C
	thumb_func_start sub_80B428C
sub_80B428C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B4330 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B42B4
	b _080B43F2
_080B42B4:
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B42D2
	cmp r1, #0x04
	bne _080B4384
_080B42D2:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B42DA
	adds r1, #0xFF
_080B42DA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B42F0
	adds r0, #0xFF
_080B42F0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B4306
	adds r3, #0xFF
_080B4306:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B4334
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B4344
	.byte 0x00, 0x00
_080B4330: .4byte 0x03000FD8
_080B4334:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B4344:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B434C
	adds r0, #0xFF
_080B434C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B43B8 @ =0x03001038
	ldr r0, _080B43BC @ =0x0819832C
	ldr r1, _080B43C0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B4366
	adds r1, #0x3F
_080B4366:
	asrs r1, r1, #0x06
	adds r1, #0x3C
	movs r0, #0xE1
	lsls r0, r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080B4384:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4396
	cmp r1, #0x04
	bne _080B43E0
_080B4396:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B43C4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B43D0
	.byte 0x00, 0x00
_080B43B8: .4byte 0x03001038
_080B43BC: .4byte 0x0819832C
_080B43C0: .4byte 0x08198220
_080B43C4:
	ldr r2, _080B4400 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B43D0:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B43E0:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B4404 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B4408 @ =0x080B440D
	mov r1, r9
	str r0, [r1, #0x4C]
_080B43F2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B4400: .4byte 0x0000204D
_080B4404: .4byte 0x00000FFF
_080B4408: .4byte sub_80B440C
	thumb_func_start sub_80B440C
sub_80B440C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	ldr r1, _080B4520 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r1, [r2, #0x70]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r2, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r0, #0x2C]
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r9, r0
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r2, r0, #0x02
	adds r2, r2, r0
	lsls r1, r2, #0x01
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r1, r0, #0x03
	subs r0, r0, r1
	add r0, r9
	str r0, [sp, #0x004]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080B446E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B446E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B447E
	b _080B49B4
_080B447E:
	mov r1, r12
	cmp r1, #0x00
	bge _080B4486
	movs r1, #0x00
_080B4486:
	ldr r0, _080B4524 @ =0x00007FFF
	cmp r1, r0
	ble _080B448E
	adds r1, r0, #0x0
_080B448E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B44A4
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B44A6
_080B44A4:
	movs r2, #0x00
_080B44A6:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080B458C
	ldr r2, _080B4520 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B4528
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B44DA
	movs r1, #0x4C
_080B44CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B44CE
_080B44DA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B44EE
	movs r1, #0x4C
_080B44E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B44E2
_080B44EE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4502
	movs r1, #0x4C
_080B44F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B44F6
_080B4502:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4584
	movs r1, #0x04
_080B450C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4516
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4516:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B450C
	b _080B4584
	.byte 0x00, 0x00
_080B4520: .4byte 0x03000FD8
_080B4524: .4byte 0x00007FFF
_080B4528:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B453E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4532:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4532
_080B453E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B4554
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4548:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4548
_080B4554:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B456A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B455E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B455E
_080B456A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4584
	movs r1, #0x10
_080B4574:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B457E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B457E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B4574
_080B4584:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B458C:
	ldr r1, [sp, #0x004]
	mov r2, r9
	cmp r1, #0x00
	bge _080B4596
	movs r1, #0x00
_080B4596:
	mov r3, r9
	cmp r3, #0x00
	bge _080B459E
	movs r2, #0x00
_080B459E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B45A8
	adds r1, r0, #0x0
_080B45A8:
	ldr r0, _080B46A0 @ =0x00007FFF
	cmp r2, r0
	ble _080B45B0
	adds r2, r0, #0x0
_080B45B0:
	cmp r2, r1
	bge _080B45B6
	adds r1, r2, #0x0
_080B45B6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B45CE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B45D0
_080B45CE:
	movs r1, #0x00
_080B45D0:
	cmp r1, #0x00
	bne _080B45D6
	b _080B4722
_080B45D6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B46A4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B45F4
	b _080B4722
_080B45F4:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B46A8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B470E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B46AC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B4656
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B464A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B464A
_080B4656:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B466C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4660:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4660
_080B466C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4682
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4676:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4676
_080B4682:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B470A
	movs r1, #0x10
_080B468C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4696
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4696:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B468C
	b _080B470A
	.byte 0x00, 0x00
_080B46A0: .4byte 0x00007FFF
_080B46A4: .4byte 0x0300034C
_080B46A8: .4byte 0x03000FD8
_080B46AC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B46C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B46B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B46B8
_080B46C4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B46DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B46CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B46CE
_080B46DA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B46F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B46E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B46E4
_080B46F0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B470A
	movs r1, #0x10
_080B46FA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4704
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4704:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B46FA
_080B470A:
	bl sub_807F448
_080B470E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080B47F8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080B4722:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B472E
	b _080B49B4
_080B472E:
	mov r1, r9
	cmp r1, #0x00
	bge _080B4736
	movs r1, #0x00
_080B4736:
	ldr r0, _080B47FC @ =0x00007FFF
	cmp r1, r0
	ble _080B473E
	adds r1, r0, #0x0
_080B473E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B4756
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B4758
_080B4756:
	movs r2, #0x00
_080B4758:
	cmp r2, #0x00
	bne _080B475E
	b _080B486C
_080B475E:
	ldr r3, _080B4800 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B47F8 @ =0x00000FFF
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
	beq _080B4804
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B47AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B47A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B47A2
_080B47AE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B47C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B47B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B47B8
_080B47C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B47DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B47CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B47CE
_080B47DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4860
	movs r1, #0x10
_080B47E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B47EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B47EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B47E4
	b _080B4860
	.byte 0x00, 0x00
_080B47F8: .4byte 0x00000FFF
_080B47FC: .4byte 0x00007FFF
_080B4800: .4byte 0x03000FD8
_080B4804:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B481A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B480E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B480E
_080B481A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B4830
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4824:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4824
_080B4830:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4846
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B483A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B483A
_080B4846:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B4860
	movs r1, #0x10
_080B4850:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B485A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B485A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B4850
_080B4860:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B49B4
_080B486C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080B4878
	b _080B49B4
_080B4878:
	ldr r0, _080B4934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B4886
	b _080B49B4
_080B4886:
	ldr r2, _080B4938 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B48B6
	b _080B49B4
_080B48B6:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B493C @ =0x00000FFF
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
	beq _080B4940
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B48EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B48DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B48DE
_080B48EA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B4900
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B48F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B48F4
_080B4900:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4916
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B490A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B490A
_080B4916:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B499C
	movs r1, #0x10
_080B4920:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B492A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B492A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B4920
	b _080B499C
	.byte 0x00, 0x00
_080B4934: .4byte 0x0300034C
_080B4938: .4byte 0x03000FD8
_080B493C: .4byte 0x00000FFF
_080B4940:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B4956
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B494A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B494A
_080B4956:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B496C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4960:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4960
_080B496C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B4982
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B4976:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B4976
_080B4982:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B499C
	movs r1, #0x10
_080B498C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B4996
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B4996:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B498C
_080B499C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080B49B4:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B49C0
	b _080B4AD0
_080B49C0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080B49CC
	movs r2, #0x00
_080B49CC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B49D6
	adds r1, r0, #0x0
_080B49D6:
	ldr r0, _080B4A10 @ =0x00007FFF
	cmp r2, r0
	ble _080B49DE
	adds r2, r0, #0x0
_080B49DE:
	cmp r2, r1
	bge _080B49E4
	adds r1, r2, #0x0
_080B49E4:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B49FE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B4A00
_080B49FE:
	movs r1, #0x00
_080B4A00:
	cmp r1, #0x00
	beq _080B4AD0
	cmp r4, #0x01
	ble _080B4A18
	ldr r2, _080B4A14 @ =0x040A1189
	mov r9, r2
	b _080B4A1C
	.byte 0x00, 0x00
_080B4A10: .4byte 0x00007FFF
_080B4A14: .4byte 0x040A1189
_080B4A18:
	ldr r3, _080B4A60 @ =0x040A1089
	mov r9, r3
_080B4A1C:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B4A64
	cmp r1, #0x01
	bne _080B4A64
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B4D62
	.byte 0x00, 0x00
_080B4A60: .4byte 0x040A1089
_080B4A64:
	cmp r4, #0x01
	ble _080B4A94
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B4A70
	adds r1, #0xFF
_080B4A70:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B4A7A
	adds r2, #0xFF
_080B4A7A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B4A84
	adds r3, #0xFF
_080B4A84:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B4A90 @ =0x00002E10
	bl sub_80DF024
	b _080B4ABA
_080B4A90: .4byte 0x00002E10
_080B4A94:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B4A9C
	adds r1, #0xFF
_080B4A9C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B4AA6
	adds r2, #0xFF
_080B4AA6:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B4AB0
	adds r3, #0xFF
_080B4AB0:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B4B64 @ =0x000006E3
	bl sub_80DF024
_080B4ABA:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080B4B68 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B4AD0:
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080B4AF2
	adds r0, r2, #0x0
	adds r0, #0x08
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r2, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080B4AF2
	strh r1, [r2, #0x06]
_080B4AF2:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B4B6C @ =0x03001038
	ldr r2, _080B4B70 @ =0x0819832C
	ldr r3, _080B4B74 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B4B2C
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4B2E
_080B4B2C:
	movs r1, #0x00
_080B4B2E:
	cmp r1, #0x00
	beq _080B4B94
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4B44
	cmp r1, #0x04
	bne _080B4B94
_080B4B44:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4B78
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4B84
_080B4B64: .4byte 0x000006E3
_080B4B68: .4byte 0x00000FFF
_080B4B6C: .4byte 0x03001038
_080B4B70: .4byte 0x0819832C
_080B4B74: .4byte 0x08198220
_080B4B78:
	ldr r2, _080B4C7C @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B4B84:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4B94:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	bgt _080B4BAE
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4BB0
_080B4BAE:
	movs r1, #0x00
_080B4BB0:
	cmp r1, #0x00
	beq _080B4BE8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4BD0
	cmp r1, #0x04
	bne _080B4BE8
_080B4BD0:
	ldr r2, _080B4C80 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B4BE8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B4BF8
	b _080B4D62
_080B4BF8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B4C0C
	cmp r2, #0x04
	bne _080B4C4E
_080B4C0C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4C1A
	adds r0, #0xFF
_080B4C1A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4C28
	adds r0, #0xFF
_080B4C28:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4C36
	adds r0, #0xFF
_080B4C36:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080B4C4E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4C5C
	cmp r1, #0x04
	bne _080B4CC4
_080B4C5C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4C88
	ldr r2, _080B4C84 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4C94
	.byte 0x00, 0x00
_080B4C7C: .4byte 0x0000204D
_080B4C80: .4byte 0x00002060
_080B4C84: .4byte 0x00002002
_080B4C88:
	ldr r2, _080B4D74 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B4C94:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B4CAA
	movs r2, #0x01
_080B4CAA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B4CC4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B4CD2
	cmp r2, #0x04
	bne _080B4CDC
_080B4CD2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B4CDC:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B4CFC
	cmp r2, #0x04
	bne _080B4D4A
_080B4CFC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4D0A
	adds r0, #0xFF
_080B4D0A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4D18
	adds r0, #0xFF
_080B4D18:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B4D26
	adds r0, #0xFF
_080B4D26:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B4D38
	adds r0, #0xFF
_080B4D38:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B4D78 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B4D4A:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B4D58
	cmp r2, #0x04
	bne _080B4D62
_080B4D58:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B4D62:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B4D74: .4byte 0x0000204F
_080B4D78: .4byte 0x000007CC
	thumb_func_start sub_80B4D7C
sub_80B4D7C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080B4E34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r12, r1
	mov r3, r12
	adds r3, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4DA4
	cmp r1, #0x04
	bne _080B4E00
_080B4DA4:
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080B4DAC
	adds r1, #0xFF
_080B4DAC:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080B4DC2
	adds r0, #0xFF
_080B4DC2:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080B4DD8
	adds r3, #0xFF
_080B4DD8:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x10
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0xB3
	bl sub_8088274
_080B4E00:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4E12
	cmp r1, #0x04
	bne _080B4E54
_080B4E12:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4E38
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4E44
	.byte 0x00, 0x00
_080B4E34: .4byte 0x03000FD8
_080B4E38:
	ldr r2, _080B4E6C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B4E44:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4E54:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B4E70 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B4E74 @ =0x080B4E79
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B4E6C: .4byte 0x0000204D
_080B4E70: .4byte 0x00000FFF
_080B4E74: .4byte sub_80B4E78
	thumb_func_start sub_80B4E78
sub_80B4E78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080B4FCC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r9, r2
	mov r10, r9
	adds r0, r4, #0x0
	bl sub_8087EFC
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080B4EAE
	adds r0, #0xFF
_080B4EAE:
	asrs r7, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCD
	movs r5, #0x00
	ldsb r5, [r0, r5]
	cmp r7, r5
	bge _080B4F1E
	mov r3, r8
	ldr r0, [r3, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080B4F04
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4EE8
	cmp r1, #0x04
	bne _080B4F04
_080B4EE8:
	ldr r2, _080B4FD0 @ =0x00002060
	adds r0, r4, #0x0
	movs r1, #0x01
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
_080B4F04:
	ldr r2, _080B4FD4 @ =0x03001038
	ldr r0, _080B4FD8 @ =0x0819832C
	ldr r1, _080B4FDC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r7, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r3, r8
	ldr r1, [r3, #0x08]
	strh r0, [r1, #0x06]
_080B4F1E:
	mov r2, r10
	ldr r0, _080B4FE0 @ =0x00007FFF
	cmp r2, r0
	ble _080B4F28
	adds r2, r0, #0x0
_080B4F28:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r5, r0, #0x0
	cmp r1, r2
	bgt _080B4F44
	adds r0, r4, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4F46
_080B4F44:
	movs r1, #0x00
_080B4F46:
	cmp r1, #0x00
	beq _080B4F52
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B4F52:
	mov r1, r9
	ldr r0, _080B4FE0 @ =0x00007FFF
	cmp r1, r0
	ble _080B4F5C
	adds r1, r0, #0x0
_080B4F5C:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r1
	bgt _080B4F72
	adds r0, r4, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B4F74
_080B4F72:
	movs r2, #0x00
_080B4F74:
	cmp r2, #0x00
	beq _080B4F80
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B4F80:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B4FBA
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B4F96
	adds r1, #0xFF
_080B4F96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B4FA0
	adds r2, #0xFF
_080B4FA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B4FAA
	adds r3, #0xFF
_080B4FAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080B4FE4 @ =0x00002F7D
	bl sub_80DF024
	ldr r0, _080B4FE8 @ =0x080B4FED
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080B4FBA:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B4FCC: .4byte 0x03000FD8
_080B4FD0: .4byte 0x00002060
_080B4FD4: .4byte 0x03001038
_080B4FD8: .4byte 0x0819832C
_080B4FDC: .4byte 0x08198220
_080B4FE0: .4byte 0x00007FFF
_080B4FE4: .4byte 0x00002F7D
_080B4FE8: .4byte sub_80B4FEC
	thumb_func_start sub_80B4FEC
sub_80B4FEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B5090 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B5014
	b _080B5152
_080B5014:
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B5032
	cmp r1, #0x04
	bne _080B50E2
_080B5032:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B503A
	adds r1, #0xFF
_080B503A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B5050
	adds r0, #0xFF
_080B5050:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B5066
	adds r3, #0xFF
_080B5066:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B5094
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B50A4
	.byte 0x00, 0x00
_080B5090: .4byte 0x03000FD8
_080B5094:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B50A4:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B50AC
	adds r0, #0xFF
_080B50AC:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B5114 @ =0x03001038
	ldr r0, _080B5118 @ =0x0819832C
	ldr r1, _080B511C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B50C6
	adds r1, #0x3F
_080B50C6:
	asrs r1, r1, #0x06
	adds r1, #0x64
	ldr r0, _080B5120 @ =0x00002710
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080B50E2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B50F4
	cmp r1, #0x04
	bne _080B5140
_080B50F4:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B5124
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B5130
_080B5114: .4byte 0x03001038
_080B5118: .4byte 0x0819832C
_080B511C: .4byte 0x08198220
_080B5120: .4byte 0x00002710
_080B5124:
	ldr r2, _080B5160 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B5130:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B5140:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B5164 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B5168 @ =0x080B516D
	mov r1, r9
	str r0, [r1, #0x4C]
_080B5152:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B5160: .4byte 0x0000204D
_080B5164: .4byte 0x00000FFF
_080B5168: .4byte sub_80B516C
	thumb_func_start sub_80B516C
sub_80B516C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080B5260 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r9, r0
	mov r0, r8
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	ble _080B51A4
	b _080B52BC
_080B51A4:
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r7, #0x08]
	movs r5, #0x06
	ldsh r0, [r1, r5]
	cmp r0, #0xFF
	bgt _080B51B6
	b _080B52BC
_080B51B6:
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B51CE
	cmp r1, #0x04
	bne _080B522C
_080B51CE:
	mov r0, r9
	ldr r1, [r0, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080B51DC
	adds r0, #0xFF
_080B51DC:
	asrs r0, r0, #0x08
	mov r1, r9
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r3, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x3C]
	ldr r0, [r7, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B51FE
	adds r1, #0xFF
_080B51FE:
	asrs r2, r1, #0x08
	mov r0, r9
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080B522C:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B5240
	cmp r2, #0x04
	bne _080B52A4
_080B5240:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B5268
	ldr r2, _080B5264 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B5274
	.byte 0x00, 0x00
_080B5260: .4byte 0x03000FD8
_080B5264: .4byte 0x00002002
_080B5268:
	ldr r2, _080B52F4 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B5274:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080B528A
	movs r2, #0x01
_080B528A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B52A4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B52B2
	cmp r2, #0x04
	bne _080B52BC
_080B52B2:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080B52BC:
	mov r6, r8
	adds r6, #0x94
	ldr r1, [r6, #0x00]
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5, #0x00]
	ldr r4, _080B52F8 @ =0x03001038
	ldr r2, _080B52FC @ =0x0819832C
	ldr r3, _080B5300 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r3, r0, #0x0
	mov r0, r8
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	str r0, [sp, #0x010]
	cmp r1, r3
	ble _080B5304
	movs r2, #0x00
	movs r3, #0x7E
	add r3, r8
	mov r10, r3
	b _080B5316
_080B52F4: .4byte 0x0000204F
_080B52F8: .4byte 0x03001038
_080B52FC: .4byte 0x0819832C
_080B5300: .4byte 0x08198220
_080B5304:
	mov r0, r8
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r2, #0x01
	mov r10, r0
	cmp r1, r3
	bge _080B5316
	movs r2, #0x00
_080B5316:
	cmp r2, #0x00
	beq _080B536C
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B532C
	cmp r1, #0x04
	bne _080B536C
_080B532C:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B534E
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B535A
_080B534E:
	ldr r2, _080B545C @ =0x0000204D
	mov r0, r8
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B535A:
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B536C:
	ldr r2, _080B5460 @ =0x03001038
	ldr r0, _080B5464 @ =0x0819832C
	ldr r1, _080B5468 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0E
	ldr r1, [r6, #0x00]
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r0, r8
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x02
	subs r3, r5, r0
	lsls r1, r2, #0x01
	subs r1, r5, r1
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r5, r5, r0
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r5
	bge _080B53B6
	mov r2, r8
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B53B6:
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080B53C6
	b _080B58F6
_080B53C6:
	adds r1, r3, #0x0
	cmp r1, #0x00
	bge _080B53CE
	movs r1, #0x00
_080B53CE:
	ldr r0, _080B546C @ =0x00007FFF
	cmp r1, r0
	ble _080B53D6
	adds r1, r0, #0x0
_080B53D6:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _080B53EC
	mov r2, r10
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B53EE
_080B53EC:
	movs r2, #0x00
_080B53EE:
	cmp r2, #0x00
	beq _080B54D8
	ldr r2, _080B5470 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B5474
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5416
	movs r1, #0x4C
_080B540A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B540A
_080B5416:
	mov r2, r8
	cmp r2, #0x00
	beq _080B542A
	movs r1, #0x4C
_080B541E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B541E
_080B542A:
	mov r2, r9
	cmp r2, #0x00
	beq _080B543E
	movs r1, #0x4C
_080B5432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5432
_080B543E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B54D0
	movs r1, #0x04
_080B5448:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5452
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5452:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5448
	b _080B54D0
	.byte 0x00, 0x00
_080B545C: .4byte 0x0000204D
_080B5460: .4byte 0x03001038
_080B5464: .4byte 0x0819832C
_080B5468: .4byte 0x08198220
_080B546C: .4byte 0x00007FFF
_080B5470: .4byte 0x03000FD8
_080B5474:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B548A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B547E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B547E
_080B548A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B54A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5494:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5494
_080B54A0:
	mov r2, r9
	cmp r2, #0x00
	beq _080B54B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B54AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B54AA
_080B54B6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B54D0
	movs r1, #0x10
_080B54C0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B54CA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B54CA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B54C0
_080B54D0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B54D8:
	ldr r1, [sp, #0x008]
	adds r2, r5, #0x0
	cmp r1, #0x00
	bge _080B54E2
	movs r1, #0x00
_080B54E2:
	cmp r5, #0x00
	bge _080B54E8
	movs r2, #0x00
_080B54E8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B54F2
	adds r1, r0, #0x0
_080B54F2:
	ldr r0, _080B55EC @ =0x00007FFF
	cmp r2, r0
	ble _080B54FA
	adds r2, r0, #0x0
_080B54FA:
	cmp r2, r1
	bge _080B5500
	adds r1, r2, #0x0
_080B5500:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B5516
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B5518
_080B5516:
	movs r1, #0x00
_080B5518:
	cmp r1, #0x00
	bne _080B551E
	b _080B566A
_080B551E:
	movs r4, #0x22
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080B55F0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B5540
	b _080B566A
_080B5540:
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x01
	adds r1, r7, #0x0
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B55F4 @ =0x03000FD8
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
	bne _080B565A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B55F8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B55A2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5596:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5596
_080B55A2:
	mov r2, r8
	cmp r2, #0x00
	beq _080B55B8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B55AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B55AC
_080B55B8:
	mov r2, r9
	cmp r2, #0x00
	beq _080B55CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B55C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B55C2
_080B55CE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5656
	movs r1, #0x10
_080B55D8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B55E2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B55E2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B55D8
	b _080B5656
	.byte 0x00, 0x00
_080B55EC: .4byte 0x00007FFF
_080B55F0: .4byte 0x0300034C
_080B55F4: .4byte 0x03000FD8
_080B55F8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B5610
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5604:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5604
_080B5610:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5626
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B561A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B561A
_080B5626:
	mov r2, r9
	cmp r2, #0x00
	beq _080B563C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5630:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5630
_080B563C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5656
	movs r1, #0x10
_080B5646:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5650
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5650:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5646
_080B5656:
	bl sub_807F448
_080B565A:
	ldrh r0, [r6, #0x00]
	ldr r1, _080B5738 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080B566A:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B5674
	b _080B58F6
_080B5674:
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _080B567C
	movs r1, #0x00
_080B567C:
	ldr r0, _080B573C @ =0x00007FFF
	cmp r1, r0
	ble _080B5684
	adds r1, r0, #0x0
_080B5684:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _080B569A
	mov r2, r10
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B569C
_080B569A:
	movs r2, #0x00
_080B569C:
	cmp r2, #0x00
	bne _080B56A2
	b _080B57AC
_080B56A2:
	ldr r3, _080B5740 @ =0x03000FD8
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
	ldrh r1, [r6, #0x00]
	ldr r0, _080B5738 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5744
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B56EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B56E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B56E2
_080B56EE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5704
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B56F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B56F8
_080B5704:
	mov r2, r9
	cmp r2, #0x00
	beq _080B571A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B570E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B570E
_080B571A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B57A0
	movs r1, #0x10
_080B5724:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B572E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B572E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5724
	b _080B57A0
	.byte 0x00, 0x00
_080B5738: .4byte 0x00000FFF
_080B573C: .4byte 0x00007FFF
_080B5740: .4byte 0x03000FD8
_080B5744:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B575A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B574E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B574E
_080B575A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5770
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5764:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5764
_080B5770:
	mov r2, r9
	cmp r2, #0x00
	beq _080B5786
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B577A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B577A
_080B5786:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B57A0
	movs r1, #0x10
_080B5790:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B579A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B579A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5790
_080B57A0:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B58F6
_080B57AC:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r5
	ble _080B57B8
	b _080B58F6
_080B57B8:
	ldr r0, _080B5874 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B57CE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B57CE
	b _080B58F6
_080B57CE:
	ldr r2, _080B5878 @ =0x03000FD8
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
	bne _080B58F6
	ldrh r1, [r6, #0x00]
	ldr r0, _080B587C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5880
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B582C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5820:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5820
_080B582C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5842
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5836:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5836
_080B5842:
	mov r2, r9
	cmp r2, #0x00
	beq _080B5858
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B584C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B584C
_080B5858:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B58DC
	movs r1, #0x10
_080B5862:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B586C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B586C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5862
	b _080B58DC
_080B5874: .4byte 0x0300034C
_080B5878: .4byte 0x03000FD8
_080B587C: .4byte 0x00000FFF
_080B5880:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5896
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B588A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B588A
_080B5896:
	mov r2, r8
	cmp r2, #0x00
	beq _080B58AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B58A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B58A0
_080B58AC:
	mov r2, r9
	cmp r2, #0x00
	beq _080B58C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B58B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B58B6
_080B58C2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B58DC
	movs r1, #0x10
_080B58CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B58D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B58D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B58CC
_080B58DC:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r2, #0x16
	negs r2, r2
	movs r3, #0x22
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	bl sub_807EAE4
_080B58F6:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B596C
	ldr r1, [sp, #0x00C]
	adds r2, r5, #0x0
	cmp r1, #0x00
	bge _080B5908
	movs r1, #0x00
_080B5908:
	cmp r5, #0x00
	bge _080B590E
	movs r2, #0x00
_080B590E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B5918
	adds r1, r0, #0x0
_080B5918:
	ldr r0, _080B5960 @ =0x00007FFF
	cmp r2, r0
	ble _080B5920
	adds r2, r0, #0x0
_080B5920:
	cmp r2, r1
	bge _080B5926
	adds r1, r2, #0x0
_080B5926:
	mov r4, r10
	movs r0, #0x00
	ldsh r4, [r4, r0]
	mov r8, r4
	cmp r8, r1
	blt _080B593E
	ldr r1, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B5940
_080B593E:
	movs r1, #0x00
_080B5940:
	cmp r1, #0x00
	beq _080B596C
	cmp r3, #0x01
	ble _080B596C
	ldrh r0, [r6, #0x00]
	ldr r1, _080B5964 @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080B5968 @ =0x080B9491
	ldr r5, [sp, #0x004]
	str r1, [r5, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B5A16
	.byte 0x00, 0x00
_080B5960: .4byte 0x00007FFF
_080B5964: .4byte 0x00000FFF
_080B5968: .4byte sub_80B9490
_080B596C:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080B5974
	movs r1, #0x00
_080B5974:
	ldr r0, _080B5A28 @ =0x00007FFF
	cmp r1, r0
	ble _080B597C
	adds r1, r0, #0x0
_080B597C:
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080B5992
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B5994
_080B5992:
	movs r2, #0x00
_080B5994:
	cmp r2, #0x00
	beq _080B59C6
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B59AA
	cmp r1, #0x04
	bne _080B59C6
_080B59AA:
	ldr r2, _080B5A2C @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B59C6:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r5
	blt _080B5A16
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B59E2
	cmp r1, #0x04
	bne _080B5A08
_080B59E2:
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B5A08:
	ldrh r0, [r6, #0x00]
	ldr r1, _080B5A30 @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r0, _080B5A34 @ =0x080B5A39
	ldr r5, [sp, #0x004]
	str r0, [r5, #0x4C]
_080B5A16:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B5A28: .4byte 0x00007FFF
_080B5A2C: .4byte 0x00002031
_080B5A30: .4byte 0x00000FFF
_080B5A34: .4byte sub_80B5A38
	thumb_func_start sub_80B5A38
sub_80B5A38:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r1, _080B5B9C @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r1, [r2, #0x70]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r2, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B5A7A
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B5A7C
_080B5A7A:
	movs r1, #0x00
_080B5A7C:
	cmp r1, #0x00
	beq _080B5AB4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B5A9C
	cmp r1, #0x04
	bne _080B5AB4
_080B5A9C:
	ldr r2, _080B5BA0 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B5AB4:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r3, r2, #0x02
	adds r3, r3, r2
	lsls r0, r3, #0x01
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r4, r0, r1
	lsls r0, r2, #0x03
	subs r2, r2, r0
	adds r2, r2, r1
	str r2, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, r0, r3
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r8
	bge _080B5AF4
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B5AF4:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B5B04
	b _080B6028
_080B5B04:
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _080B5B0C
	movs r2, #0x00
_080B5B0C:
	ldr r0, _080B5BA4 @ =0x00007FFF
	cmp r2, r0
	ble _080B5B14
	adds r2, r0, #0x0
_080B5B14:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x008]
	cmp r1, r2
	bgt _080B5B2E
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B5B30
_080B5B2E:
	movs r1, #0x00
_080B5B30:
	cmp r1, #0x00
	beq _080B5C0C
	ldr r2, _080B5B9C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B5BA8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5B58
	movs r1, #0x80
_080B5B4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5B4C
_080B5B58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5B6C
	movs r1, #0x80
_080B5B60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5B60
_080B5B6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5B80
	movs r1, #0x80
_080B5B74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5B74
_080B5B80:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5C04
	movs r1, #0x08
_080B5B8A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5B94
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5B94:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5B8A
	b _080B5C04
_080B5B9C: .4byte 0x03000FD8
_080B5BA0: .4byte 0x00002060
_080B5BA4: .4byte 0x00007FFF
_080B5BA8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5BBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5BB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5BB2
_080B5BBE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5BD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5BC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5BC8
_080B5BD4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5BEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5BDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5BDE
_080B5BEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5C04
	movs r1, #0x10
_080B5BF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5BFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5BFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5BF4
_080B5C04:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B5C0C:
	ldr r2, [sp, #0x004]
	mov r1, r8
	cmp r2, #0x00
	bge _080B5C16
	movs r2, #0x00
_080B5C16:
	mov r3, r8
	cmp r3, #0x00
	bge _080B5C1E
	movs r1, #0x00
_080B5C1E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B5C28
	adds r2, r0, #0x0
_080B5C28:
	ldr r0, _080B5D1C @ =0x00007FFF
	cmp r1, r0
	ble _080B5C30
	adds r1, r0, #0x0
_080B5C30:
	cmp r1, r2
	bge _080B5C36
	adds r2, r1, #0x0
_080B5C36:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r2
	blt _080B5C4C
	ldr r4, [sp, #0x008]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080B5C4E
_080B5C4C:
	movs r2, #0x00
_080B5C4E:
	cmp r2, #0x00
	bne _080B5C54
	b _080B5D9C
_080B5C54:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B5D20 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B5C72
	b _080B5D9C
_080B5C72:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B5D24 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B5D8A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5D28
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B5CD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5CC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5CC8
_080B5CD4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5CEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5CDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5CDE
_080B5CEA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5D00
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5CF4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5CF4
_080B5D00:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5D86
	movs r1, #0x10
_080B5D0A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5D14
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5D14:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5D0A
	b _080B5D86
_080B5D1C: .4byte 0x00007FFF
_080B5D20: .4byte 0x0300034C
_080B5D24: .4byte 0x03000FD8
_080B5D28:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B5D40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5D34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5D34
_080B5D40:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5D56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5D4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5D4A
_080B5D56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5D6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5D60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5D60
_080B5D6C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5D86
	movs r1, #0x10
_080B5D76:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5D80
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5D80:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5D76
_080B5D86:
	bl sub_807F448
_080B5D8A:
	mov r3, r9
	ldrh r0, [r3, #0x00]
	ldr r1, _080B5E6C @ =0x00000FFF
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x06
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r3, #0x00]
_080B5D9C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B5DA8
	b _080B6028
_080B5DA8:
	mov r1, r8
	cmp r1, #0x00
	bge _080B5DB0
	movs r1, #0x00
_080B5DB0:
	ldr r0, _080B5E70 @ =0x00007FFF
	cmp r1, r0
	ble _080B5DB8
	adds r1, r0, #0x0
_080B5DB8:
	ldr r2, [sp, #0x008]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080B5DCE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B5DD0
_080B5DCE:
	movs r2, #0x00
_080B5DD0:
	cmp r2, #0x00
	bne _080B5DD6
	b _080B5EE0
_080B5DD6:
	ldr r3, _080B5E74 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080B5E6C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5E78
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5E24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E18
_080B5E24:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5E3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E2E
_080B5E3A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5E50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E44
_080B5E50:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5ED4
	movs r1, #0x10
_080B5E5A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5E64
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5E64:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5E5A
	b _080B5ED4
_080B5E6C: .4byte 0x00000FFF
_080B5E70: .4byte 0x00007FFF
_080B5E74: .4byte 0x03000FD8
_080B5E78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5E8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E82
_080B5E8E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5E98
_080B5EA4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5EBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5EAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5EAE
_080B5EBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5ED4
	movs r1, #0x10
_080B5EC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5ECE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5ECE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5EC4
_080B5ED4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B6028
_080B5EE0:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r8
	ble _080B5EEC
	b _080B6028
_080B5EEC:
	ldr r0, _080B5FA8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B5EFA
	b _080B6028
_080B5EFA:
	ldr r2, _080B5FAC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B5F2A
	b _080B6028
_080B5F2A:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B5FB0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5FB4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5F5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5F52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5F52
_080B5F5E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5F74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5F68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5F68
_080B5F74:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5F8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5F7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5F7E
_080B5F8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6010
	movs r1, #0x10
_080B5F94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5F9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5F9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5F94
	b _080B6010
	.byte 0x00, 0x00
_080B5FA8: .4byte 0x0300034C
_080B5FAC: .4byte 0x03000FD8
_080B5FB0: .4byte 0x00000FFF
_080B5FB4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B5FCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5FBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5FBE
_080B5FCA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B5FE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5FD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5FD4
_080B5FE0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5FF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5FEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5FEA
_080B5FF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6010
	movs r1, #0x10
_080B6000:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B600A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B600A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6000
_080B6010:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080B6028:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B6034
	b _080B6144
_080B6034:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r3, r8
	cmp r3, #0x00
	bge _080B6040
	movs r3, #0x00
_080B6040:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B604A
	adds r1, r0, #0x0
_080B604A:
	ldr r0, _080B6084 @ =0x00007FFF
	cmp r3, r0
	ble _080B6052
	adds r3, r0, #0x0
_080B6052:
	cmp r3, r1
	bge _080B6058
	adds r1, r3, #0x0
_080B6058:
	mov r0, r10
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r8, r0
	cmp r8, r1
	blt _080B6072
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r3
	ble _080B6074
_080B6072:
	movs r1, #0x00
_080B6074:
	cmp r1, #0x00
	beq _080B6144
	cmp r4, #0x01
	ble _080B608C
	ldr r2, _080B6088 @ =0x040A1389
	mov r8, r2
	b _080B6090
	.byte 0x00, 0x00
_080B6084: .4byte 0x00007FFF
_080B6088: .4byte 0x040A1389
_080B608C:
	ldr r3, _080B60D4 @ =0x040A1289
	mov r8, r3
_080B6090:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B60D8
	cmp r1, #0x01
	bne _080B60D8
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B62BE
	.byte 0x00, 0x00
_080B60D4: .4byte 0x040A1289
_080B60D8:
	cmp r4, #0x01
	ble _080B6108
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B60E4
	adds r1, #0xFF
_080B60E4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B60EE
	adds r2, #0xFF
_080B60EE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B60F8
	adds r3, #0xFF
_080B60F8:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B6104 @ =0x00002E29
	bl sub_80DF024
	b _080B612E
_080B6104: .4byte 0x00002E29
_080B6108:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B6110
	adds r1, #0xFF
_080B6110:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B611A
	adds r2, #0xFF
_080B611A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B6124
	adds r3, #0xFF
_080B6124:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B61D8 @ =0x000006F7
	bl sub_80DF024
_080B612E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B61DC @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B6144:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B6154
	b _080B62BE
_080B6154:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B6168
	cmp r2, #0x04
	bne _080B61AA
_080B6168:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6176
	adds r0, #0xFF
_080B6176:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6184
	adds r0, #0xFF
_080B6184:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6192
	adds r0, #0xFF
_080B6192:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080B61AA:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B61B8
	cmp r1, #0x04
	bne _080B6220
_080B61B8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B61E4
	ldr r2, _080B61E0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B61F0
	.byte 0x00, 0x00
_080B61D8: .4byte 0x000006F7
_080B61DC: .4byte 0x00000FFF
_080B61E0: .4byte 0x00002002
_080B61E4:
	ldr r2, _080B62D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B61F0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B6206
	movs r2, #0x01
_080B6206:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B6220:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B622E
	cmp r2, #0x04
	bne _080B6238
_080B622E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B6238:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B6258
	cmp r2, #0x04
	bne _080B62A6
_080B6258:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6266
	adds r0, #0xFF
_080B6266:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6274
	adds r0, #0xFF
_080B6274:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6282
	adds r0, #0xFF
_080B6282:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B6294
	adds r0, #0xFF
_080B6294:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B62D4 @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B62A6:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B62B4
	cmp r2, #0x04
	bne _080B62BE
_080B62B4:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B62BE:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B62D0: .4byte 0x0000204F
_080B62D4: .4byte 0x000007CC
	thumb_func_start sub_80B62D8
sub_80B62D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B63B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r4, r7, #0x0
	adds r4, #0x08
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B63E2
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B6306
	adds r1, #0xFF
_080B6306:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B6310
	adds r2, #0xFF
_080B6310:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B631A
	adds r3, #0xFF
_080B631A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080B63BC @ =0x00002FAC
	bl sub_80DF024
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6336
	cmp r1, #0x04
	bne _080B6386
_080B6336:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B633E
	adds r1, #0xFF
_080B633E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B6354
	adds r0, #0xFF
_080B6354:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B636A
	adds r3, #0xFF
_080B636A:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8088274
_080B6386:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6398
	cmp r1, #0x04
	bne _080B63DC
_080B6398:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B63C0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B63CC
_080B63B8: .4byte 0x03000FD8
_080B63BC: .4byte 0x00002FAC
_080B63C0:
	ldr r2, _080B63F0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B63CC:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B63DC:
	ldr r0, _080B63F4 @ =0x080B63F9
	mov r1, r8
	str r0, [r1, #0x4C]
_080B63E2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B63F0: .4byte 0x0000204D
_080B63F4: .4byte sub_80B63F8
	thumb_func_start sub_80B63F8
sub_80B63F8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080B6490 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B648A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B643C
	cmp r1, #0x04
	bne _080B6458
_080B643C:
	ldr r2, _080B6494 @ =0x00002031
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080B6458:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B646A
	cmp r1, #0x04
	bne _080B6486
_080B646A:
	ldr r2, _080B6498 @ =0x00002060
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B6486:
	ldr r0, _080B649C @ =0x080B64A1
	str r0, [r7, #0x4C]
_080B648A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6490: .4byte 0x03000FD8
_080B6494: .4byte 0x00002031
_080B6498: .4byte 0x00002060
_080B649C: .4byte sub_80B64A0
	thumb_func_start sub_80B64A0
sub_80B64A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B6558 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B654C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0xA7
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B64E2
	cmp r1, #0x04
	bne _080B653C
_080B64E2:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B64EA
	adds r1, #0xFF
_080B64EA:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B6500
	adds r0, #0xFF
_080B6500:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B6516
	adds r3, #0xFF
_080B6516:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8088274
_080B653C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B655C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B6560 @ =0x080B6565
	str r0, [r7, #0x4C]
_080B654C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6558: .4byte 0x03000FD8
_080B655C: .4byte 0x00000FFF
_080B6560: .4byte sub_80B6564
	thumb_func_start sub_80B6564
sub_80B6564:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080B664C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	mov r2, r10
	str r2, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	ldr r2, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080B65BE
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080B65C0
_080B65BE:
	movs r1, #0x00
_080B65C0:
	cmp r1, #0x00
	beq _080B6622
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B65E0
	cmp r1, #0x04
	bne _080B65F8
_080B65E0:
	ldr r2, _080B6650 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B65F8:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B660A
	cmp r1, #0x04
	bne _080B6622
_080B660A:
	ldr r2, _080B6654 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B6622:
	mov r2, r10
	cmp r2, #0x00
	bge _080B662A
	movs r2, #0x00
_080B662A:
	ldr r0, _080B6658 @ =0x00007FFF
	cmp r2, r0
	ble _080B6632
	adds r2, r0, #0x0
_080B6632:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x00C]
	cmp r1, r2
	ble _080B665C
	movs r3, #0x00
	movs r4, #0x7E
	adds r4, r4, r5
	mov r9, r4
	b _080B666E
	.byte 0x00, 0x00
_080B664C: .4byte 0x03000FD8
_080B6650: .4byte 0x00002031
_080B6654: .4byte 0x00002060
_080B6658: .4byte 0x00007FFF
_080B665C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x01
	mov r9, r0
	cmp r1, r2
	bge _080B666E
	movs r3, #0x00
_080B666E:
	cmp r3, #0x00
	beq _080B667A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B667A:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080B6682
	movs r1, #0x00
_080B6682:
	ldr r0, _080B679C @ =0x00007FFF
	cmp r1, r0
	ble _080B668A
	adds r1, r0, #0x0
_080B668A:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B66A0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B66A2
_080B66A0:
	movs r2, #0x00
_080B66A2:
	cmp r2, #0x00
	beq _080B66AE
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B66AE:
	ldr r3, _080B67A0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x01
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r0, r1
	mov r12, r0
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	subs r2, r1, r0
	mov r10, r2
	adds r0, r0, r1
	str r0, [sp, #0x008]
	mov r4, r9
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r2, [sp, #0x008]
	cmp r0, r2
	bge _080B66FA
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r1, [r4, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080B66FA:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B670A
	b _080B6C24
_080B670A:
	mov r1, r12
	cmp r1, #0x00
	bge _080B6712
	movs r1, #0x00
_080B6712:
	ldr r0, _080B679C @ =0x00007FFF
	cmp r1, r0
	ble _080B671A
	adds r1, r0, #0x0
_080B671A:
	ldr r4, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B6730
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r4, #0x01
	cmp r0, r1
	bge _080B6732
_080B6730:
	movs r4, #0x00
_080B6732:
	cmp r4, #0x00
	beq _080B6808
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B67A4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B6756
	movs r1, #0x4C
_080B674A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B674A
_080B6756:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B676A
	movs r1, #0x4C
_080B675E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B675E
_080B676A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B677E
	movs r1, #0x4C
_080B6772:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6772
_080B677E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6800
	movs r1, #0x04
_080B6788:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6792
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6792:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6788
	b _080B6800
	.byte 0x00, 0x00
_080B679C: .4byte 0x00007FFF
_080B67A0: .4byte 0x03000FD8
_080B67A4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B67BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B67AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B67AE
_080B67BA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B67D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B67C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B67C4
_080B67D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B67E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B67DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B67DA
_080B67E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6800
	movs r1, #0x10
_080B67F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B67FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B67FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B67F0
_080B6800:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B6808:
	mov r1, r10
	ldr r2, [sp, #0x008]
	cmp r1, #0x00
	bge _080B6812
	movs r1, #0x00
_080B6812:
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	bge _080B681A
	movs r2, #0x00
_080B681A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B6824
	adds r1, r0, #0x0
_080B6824:
	ldr r0, _080B6918 @ =0x00007FFF
	cmp r2, r0
	ble _080B682C
	adds r2, r0, #0x0
_080B682C:
	cmp r2, r1
	bge _080B6832
	adds r1, r2, #0x0
_080B6832:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B6848
	ldr r4, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B684A
_080B6848:
	movs r1, #0x00
_080B684A:
	cmp r1, #0x00
	bne _080B6850
	b _080B6998
_080B6850:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B691C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B686E
	b _080B6998
_080B686E:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B6920 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B6986
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B6924
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B68D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B68C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B68C4
_080B68D0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B68E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B68DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B68DA
_080B68E6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B68FC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B68F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B68F0
_080B68FC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6982
	movs r1, #0x10
_080B6906:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6910
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6910:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6906
	b _080B6982
_080B6918: .4byte 0x00007FFF
_080B691C: .4byte 0x0300034C
_080B6920: .4byte 0x03000FD8
_080B6924:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B693C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6930:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6930
_080B693C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6952
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6946:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6946
_080B6952:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6968
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B695C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B695C
_080B6968:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6982
	movs r1, #0x10
_080B6972:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B697C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B697C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6972
_080B6982:
	bl sub_807F448
_080B6986:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B6A68 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B6998:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B69A4
	b _080B6C24
_080B69A4:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080B69AC
	movs r1, #0x00
_080B69AC:
	ldr r0, _080B6A6C @ =0x00007FFF
	cmp r1, r0
	ble _080B69B4
	adds r1, r0, #0x0
_080B69B4:
	ldr r2, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080B69CA
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B69CC
_080B69CA:
	movs r2, #0x00
_080B69CC:
	cmp r2, #0x00
	bne _080B69D2
	b _080B6ADC
_080B69D2:
	ldr r3, _080B6A70 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B6A68 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B6A74
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6A20
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A14:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A14
_080B6A20:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6A36
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A2A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A2A
_080B6A36:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6A4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A40
_080B6A4C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6AD0
	movs r1, #0x10
_080B6A56:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6A60
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6A60:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6A56
	b _080B6AD0
_080B6A68: .4byte 0x00000FFF
_080B6A6C: .4byte 0x00007FFF
_080B6A70: .4byte 0x03000FD8
_080B6A74:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6A8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A7E
_080B6A8A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6AA0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6A94:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6A94
_080B6AA0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6AB6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6AAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6AAA
_080B6AB6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6AD0
	movs r1, #0x10
_080B6AC0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6ACA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6ACA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6AC0
_080B6AD0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B6C24
_080B6ADC:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	ble _080B6AEA
	b _080B6C24
_080B6AEA:
	ldr r0, _080B6BA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B6AF8
	b _080B6C24
_080B6AF8:
	ldr r2, _080B6BA8 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B6B28
	b _080B6C24
_080B6B28:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080B6BAC @ =0x00000FFF
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
	beq _080B6BB0
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6B5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6B50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6B50
_080B6B5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6B72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6B66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6B66
_080B6B72:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6B88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6B7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6B7C
_080B6B88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6C0C
	movs r1, #0x10
_080B6B92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6B9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6B9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6B92
	b _080B6C0C
_080B6BA4: .4byte 0x0300034C
_080B6BA8: .4byte 0x03000FD8
_080B6BAC: .4byte 0x00000FFF
_080B6BB0:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080B6BC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6BBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6BBA
_080B6BC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B6BDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6BD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6BD0
_080B6BDC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B6BF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B6BE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B6BE6
_080B6BF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B6C0C
	movs r1, #0x10
_080B6BFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B6C06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B6C06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B6BFC
_080B6C0C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080B6C24:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B6C30
	b _080B6D34
_080B6C30:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B6C3C
	movs r2, #0x00
_080B6C3C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B6C46
	adds r1, r0, #0x0
_080B6C46:
	ldr r0, _080B6C78 @ =0x00007FFF
	cmp r2, r0
	ble _080B6C4E
	adds r2, r0, #0x0
_080B6C4E:
	cmp r2, r1
	bge _080B6C54
	adds r1, r2, #0x0
_080B6C54:
	mov r3, r9
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, r1
	blt _080B6C6A
	ldr r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	ble _080B6C6C
_080B6C6A:
	movs r1, #0x00
_080B6C6C:
	cmp r1, #0x00
	beq _080B6D34
	cmp r4, #0x01
	ble _080B6C80
	ldr r6, _080B6C7C @ =0x040A1589
	b _080B6C82
_080B6C78: .4byte 0x00007FFF
_080B6C7C: .4byte 0x040A1589
_080B6C80:
	ldr r6, _080B6CC4 @ =0x040A1489
_080B6C82:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B6CC8
	cmp r1, #0x01
	bne _080B6CC8
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B6D56
	.byte 0x00, 0x00
_080B6CC4: .4byte 0x040A1489
_080B6CC8:
	cmp r4, #0x01
	ble _080B6CF8
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B6CD4
	adds r1, #0xFF
_080B6CD4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B6CDE
	adds r2, #0xFF
_080B6CDE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B6CE8
	adds r3, #0xFF
_080B6CE8:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B6CF4 @ =0x00002E47
	bl sub_80DF024
	b _080B6D1E
_080B6CF4: .4byte 0x00002E47
_080B6CF8:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080B6D00
	adds r1, #0xFF
_080B6D00:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080B6D0A
	adds r2, #0xFF
_080B6D0A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080B6D14
	adds r3, #0xFF
_080B6D14:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B6D68 @ =0x0000070B
	bl sub_80DF024
_080B6D1E:
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080B6D6C @ =0x00000FFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B6D34:
	ldr r0, _080B6D70 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B6D56
	ldr r0, _080B6D74 @ =0x080B6D79
	ldr r6, [sp, #0x004]
	str r0, [r6, #0x4C]
_080B6D56:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B6D68: .4byte 0x0000070B
_080B6D6C: .4byte 0x00000FFF
_080B6D70: .4byte 0x03000FD8
_080B6D74: .4byte sub_80B6D78
	thumb_func_start sub_80B6D78
sub_80B6D78:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B6EA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B6D9A
	b _080B6EA0
_080B6D9A:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6DAC
	cmp r1, #0x04
	bne _080B6DFE
_080B6DAC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DBA
	adds r0, #0xFF
_080B6DBA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DC8
	adds r0, #0xFF
_080B6DC8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DD6
	adds r0, #0xFF
_080B6DD6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B6DEC
	adds r0, #0xFF
_080B6DEC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080B6EAC @ =0x000007CC
	adds r0, r4, #0x0
	bl sub_8088164
_080B6DFE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6E10
	cmp r1, #0x04
	bne _080B6E1A
_080B6E10:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80885C4
_080B6E1A:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B6E3A
	cmp r2, #0x04
	bne _080B6E88
_080B6E3A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E48
	adds r0, #0xFF
_080B6E48:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E56
	adds r0, #0xFF
_080B6E56:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E64
	adds r0, #0xFF
_080B6E64:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B6E76
	adds r0, #0xFF
_080B6E76:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B6EAC @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B6E88:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B6E96
	cmp r2, #0x04
	bne _080B6EA0
_080B6E96:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B6EA0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B6EA8: .4byte 0x03000FD8
_080B6EAC: .4byte 0x000007CC
	thumb_func_start sub_80B6EB0
sub_80B6EB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r3, _080B6F8C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6EFE
	cmp r1, #0x04
	bne _080B6F5A
_080B6EFE:
	adds r0, r4, #0x0
	adds r0, #0x4F
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	negs r0, r0
	mov r12, r0
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080B6F14
	adds r1, #0xFF
_080B6F14:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080B6F2A
	adds r0, #0xFF
_080B6F2A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080B6F40
	adds r3, #0xFF
_080B6F40:
	asrs r3, r3, #0x08
	add r3, r12
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B6F5A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6F6C
	cmp r1, #0x04
	bne _080B6FAC
_080B6F6C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B6F90
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B6F9C
_080B6F8C: .4byte 0x03000FD8
_080B6F90:
	ldr r2, _080B6FC0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B6F9C:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B6FAC:
	ldr r0, _080B6FC4 @ =0x080B6FC9
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6FC0: .4byte 0x0000204D
_080B6FC4: .4byte sub_80B6FC8
	thumb_func_start sub_80B6FC8
sub_80B6FC8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B7100 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B6FF4
	b _080B70F6
_080B6FF4:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7006
	cmp r1, #0x04
	bne _080B7022
_080B7006:
	ldr r2, _080B7104 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B7022:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7036
	cmp r2, #0x04
	bne _080B7052
_080B7036:
	ldr r2, _080B7108 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080B7052:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7060
	cmp r2, #0x04
	bne _080B70BA
_080B7060:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B7068
	adds r0, #0xFF
_080B7068:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x10
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B7082
	adds r2, #0xFF
_080B7082:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
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
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B70A6
	adds r0, #0xFF
_080B70A6:
	asrs r0, r0, #0x08
	adds r0, #0x04
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B70BA:
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r2, [r5, #0x14]
	str r2, [r6, #0x14]
	ldr r3, [r5, #0x18]
	str r3, [r6, #0x18]
	cmp r0, #0x00
	bge _080B70CC
	adds r0, #0xFF
_080B70CC:
	asrs r1, r0, #0x08
	cmp r2, #0x00
	bge _080B70D4
	adds r2, #0xFF
_080B70D4:
	asrs r2, r2, #0x08
	cmp r3, #0x00
	bge _080B70DC
	adds r3, #0xFF
_080B70DC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080B710C @ =0x00002F7D
	bl sub_80DF024
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B7110 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B7114 @ =0x080B7119
	str r0, [r7, #0x4C]
_080B70F6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7100: .4byte 0x03000FD8
_080B7104: .4byte 0x00002031
_080B7108: .4byte 0x00002060
_080B710C: .4byte 0x00002F7D
_080B7110: .4byte 0x00000FFF
_080B7114: .4byte sub_80B7118
	thumb_func_start sub_80B7118
sub_80B7118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080B7240 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x03
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080B7190
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B7190:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080B71A0
	b _080B76CA
_080B71A0:
	mov r1, r12
	cmp r1, #0x00
	bge _080B71A8
	movs r1, #0x00
_080B71A8:
	ldr r0, _080B7244 @ =0x00007FFF
	cmp r1, r0
	ble _080B71B0
	adds r1, r0, #0x0
_080B71B0:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B71C6
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B71C8
_080B71C6:
	movs r2, #0x00
_080B71C8:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080B72AC
	ldr r2, _080B7240 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B7248
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B71FC
	movs r1, #0x33
_080B71F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B71F0
_080B71FC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7210
	movs r1, #0x33
_080B7204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7204
_080B7210:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B7224
	movs r1, #0x33
_080B7218:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7218
_080B7224:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B72A4
	movs r1, #0x03
_080B722E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7238
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7238:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B722E
	b _080B72A4
_080B7240: .4byte 0x03000FD8
_080B7244: .4byte 0x00007FFF
_080B7248:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B725E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7252:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7252
_080B725E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7274
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7268:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7268
_080B7274:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B728A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B727E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B727E
_080B728A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B72A4
	movs r1, #0x10
_080B7294:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B729E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B729E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7294
_080B72A4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B72AC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080B72B6
	movs r1, #0x00
_080B72B6:
	mov r3, r9
	cmp r3, #0x00
	bge _080B72BE
	movs r2, #0x00
_080B72BE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B72C8
	adds r1, r0, #0x0
_080B72C8:
	ldr r0, _080B73BC @ =0x00007FFF
	cmp r2, r0
	ble _080B72D0
	adds r2, r0, #0x0
_080B72D0:
	cmp r2, r1
	bge _080B72D6
	adds r1, r2, #0x0
_080B72D6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B72EE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B72F0
_080B72EE:
	movs r1, #0x00
_080B72F0:
	cmp r1, #0x00
	bne _080B72F6
	b _080B743E
_080B72F6:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B73C0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B7314
	b _080B743E
_080B7314:
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B73C4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B742A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B73C8
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B7374
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7368:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7368
_080B7374:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B738A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B737E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B737E
_080B738A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B73A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7394:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7394
_080B73A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7426
	movs r1, #0x10
_080B73AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B73B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B73B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B73AA
	b _080B7426
_080B73BC: .4byte 0x00007FFF
_080B73C0: .4byte 0x0300034C
_080B73C4: .4byte 0x03000FD8
_080B73C8:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B73E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B73D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B73D4
_080B73E0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B73F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B73EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B73EA
_080B73F6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B740C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7400:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7400
_080B740C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7426
	movs r1, #0x10
_080B7416:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7420
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7420:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7416
_080B7426:
	bl sub_807F448
_080B742A:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080B7514 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080B743E:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B744A
	b _080B76CA
_080B744A:
	mov r1, r9
	cmp r1, #0x00
	bge _080B7452
	movs r1, #0x00
_080B7452:
	ldr r0, _080B7518 @ =0x00007FFF
	cmp r1, r0
	ble _080B745A
	adds r1, r0, #0x0
_080B745A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B7472
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B7474
_080B7472:
	movs r2, #0x00
_080B7474:
	cmp r2, #0x00
	bne _080B747A
	b _080B7588
_080B747A:
	ldr r3, _080B751C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B7514 @ =0x00000FFF
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
	beq _080B7520
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B74CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74BE
_080B74CA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B74E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74D4
_080B74E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B74F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B74EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B74EA
_080B74F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B757C
	movs r1, #0x10
_080B7500:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B750A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B750A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7500
	b _080B757C
	.byte 0x00, 0x00
_080B7514: .4byte 0x00000FFF
_080B7518: .4byte 0x00007FFF
_080B751C: .4byte 0x03000FD8
_080B7520:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7536
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B752A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B752A
_080B7536:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B754C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7540:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7540
_080B754C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7562
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7556:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7556
_080B7562:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B757C
	movs r1, #0x10
_080B756C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7576
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7576:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B756C
_080B757C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B76CA
_080B7588:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080B7594
	b _080B76CA
_080B7594:
	ldr r0, _080B764C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B75A2
	b _080B76CA
_080B75A2:
	ldr r2, _080B7650 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B76CA
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B7654 @ =0x00000FFF
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
	beq _080B7658
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7604
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B75F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B75F8
_080B7604:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B761A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B760E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B760E
_080B761A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7630
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7624:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7624
_080B7630:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B76B4
	movs r1, #0x10
_080B763A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7644
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7644:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B763A
	b _080B76B4
_080B764C: .4byte 0x0300034C
_080B7650: .4byte 0x03000FD8
_080B7654: .4byte 0x00000FFF
_080B7658:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B766E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7662:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7662
_080B766E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B7684
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7678:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7678
_080B7684:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B769A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B768E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B768E
_080B769A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B76B4
	movs r1, #0x10
_080B76A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B76AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B76AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B76A4
_080B76B4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B76CA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B7740
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080B76E0
	movs r1, #0x00
_080B76E0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B76EA
	adds r2, r0, #0x0
_080B76EA:
	ldr r0, _080B7734 @ =0x00007FFF
	cmp r1, r0
	ble _080B76F2
	adds r1, r0, #0x0
_080B76F2:
	cmp r1, r2
	bge _080B76F8
	adds r2, r1, #0x0
_080B76F8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080B7712
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080B7714
_080B7712:
	movs r2, #0x00
_080B7714:
	cmp r2, #0x00
	beq _080B7740
	cmp r3, #0x01
	ble _080B7740
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080B7738 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080B773C @ =0x080B7C41
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B77DE
_080B7734: .4byte 0x00007FFF
_080B7738: .4byte 0x00000FFF
_080B773C: .4byte sub_80B7C40
_080B7740:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B775E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B7760
_080B775E:
	movs r1, #0x00
_080B7760:
	cmp r1, #0x00
	beq _080B77CA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7780
	cmp r1, #0x04
	bne _080B779C
_080B7780:
	ldr r2, _080B77F0 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B779C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B77AE
	cmp r1, #0x04
	bne _080B77CA
_080B77AE:
	ldr r2, _080B77F4 @ =0x00002060
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
_080B77CA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B77DE
	ldr r0, _080B77F8 @ =0x080B77FD
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080B77DE:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B77F0: .4byte 0x00002031
_080B77F4: .4byte 0x00002060
_080B77F8: .4byte sub_80B77FC
	thumb_func_start sub_80B77FC
sub_80B77FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B7900 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B7828
	b _080B7960
_080B7828:
	movs r0, #0x98
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7846
	cmp r1, #0x04
	bne _080B7862
_080B7846:
	ldr r2, _080B7904 @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B7862:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7876
	cmp r2, #0x04
	bne _080B7892
_080B7876:
	ldr r2, _080B7908 @ =0x00002060
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B7892:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B78A0
	cmp r2, #0x04
	bne _080B795A
_080B78A0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B78A8
	adds r1, #0xFF
_080B78A8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B78BE
	adds r0, #0xFF
_080B78BE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B78D4
	adds r3, #0xFF
_080B78D4:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B790C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B791C
	.byte 0x00, 0x00
_080B7900: .4byte 0x03000FD8
_080B7904: .4byte 0x00002031
_080B7908: .4byte 0x00002060
_080B790C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B791C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7924
	adds r0, #0xFF
_080B7924:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B796C @ =0x03001038
	ldr r0, _080B7970 @ =0x0819832C
	ldr r1, _080B7974 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B793E
	adds r1, #0x3F
_080B793E:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080B7978 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080B795A:
	ldr r0, _080B797C @ =0x080B7981
	mov r1, r8
	str r0, [r1, #0x4C]
_080B7960:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B796C: .4byte 0x03001038
_080B7970: .4byte 0x0819832C
_080B7974: .4byte 0x08198220
_080B7978: .4byte 0x000006E4
_080B797C: .4byte sub_80B7980
	thumb_func_start sub_80B7980
sub_80B7980:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B7A2C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r6, r7, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r6, #0x18]
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B7A22
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B79D2
	cmp r1, #0x04
	bne _080B79EE
_080B79D2:
	ldr r2, _080B7A30 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B79EE:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7A00
	cmp r1, #0x04
	bne _080B7A1C
_080B7A00:
	ldr r2, _080B7A34 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x05
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
_080B7A1C:
	ldr r0, _080B7A38 @ =0x080B7A3D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B7A22:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B7A2C: .4byte 0x03000FD8
_080B7A30: .4byte 0x00002031
_080B7A34: .4byte 0x00002060
_080B7A38: .4byte sub_80B7A3C
	thumb_func_start sub_80B7A3C
sub_80B7A3C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _080B7AA4 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r3, [r2, #0x70]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldr r1, [r2, #0x74]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B7A60
	b _080B7C2A
_080B7A60:
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B7AA8 @ =0x040A1689
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080B7AAC
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B7C2A
	.byte 0x00, 0x00
_080B7AA4: .4byte 0x03000FD8
_080B7AA8: .4byte 0x040A1689
_080B7AAC:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B7AC8
	ldr r2, _080B7C34 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B7B14
_080B7AC8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B7AD0
	adds r1, #0xFF
_080B7AD0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B7AE6
	adds r0, #0xFF
_080B7AE6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B7AFC
	adds r3, #0xFF
_080B7AFC:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B7C38 @ =0x00002E47
	str r4, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80DF024
_080B7B14:
	ldr r0, _080B7C3C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7B42
	cmp r2, #0x04
	bne _080B7B92
_080B7B42:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B50
	adds r0, #0xFF
_080B7B50:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B5E
	adds r0, #0xFF
_080B7B5E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B6C
	adds r0, #0xFF
_080B7B6C:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7B7E
	adds r0, #0xFF
_080B7B7E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B7B92:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7BA0
	cmp r2, #0x04
	bne _080B7BAA
_080B7BA0:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B7BAA:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7BBE
	cmp r2, #0x04
	bne _080B7C12
_080B7BBE:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BCC
	adds r0, #0xFF
_080B7BCC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BDA
	adds r0, #0xFF
_080B7BDA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BE8
	adds r0, #0xFF
_080B7BE8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080B7BFE
	adds r0, #0xFF
_080B7BFE:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080B7C12:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7C20
	cmp r2, #0x04
	bne _080B7C2A
_080B7C20:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_80885C4
_080B7C2A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7C34: .4byte 0x00000111
_080B7C38: .4byte 0x00002E47
_080B7C3C: .4byte 0x03000FD8
	thumb_func_start sub_80B7C40
sub_80B7C40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B7D20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7C6E
	cmp r1, #0x04
	bne _080B7C72
_080B7C6E:
	ldr r0, _080B7D24 @ =0x080B87B5
	str r0, [r2, #0x4C]
_080B7C72:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _080B7D20 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x0A]
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7C9C
	cmp r2, #0x04
	bne _080B7CB4
_080B7C9C:
	ldr r2, _080B7D28 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B7CB4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7CC2
	cmp r2, #0x04
	bne _080B7D7C
_080B7CC2:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B7CCA
	adds r1, #0xFF
_080B7CCA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B7CE0
	adds r0, #0xFF
_080B7CE0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B7CF6
	adds r3, #0xFF
_080B7CF6:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B7D2C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B7D3C
_080B7D20: .4byte 0x03000FD8
_080B7D24: .4byte sub_80B87B4
_080B7D28: .4byte 0x0000204D
_080B7D2C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B7D3C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7D44
	adds r0, #0xFF
_080B7D44:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B7D9C @ =0x03001038
	ldr r0, _080B7DA0 @ =0x0819832C
	ldr r1, _080B7DA4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B7D5E
	adds r1, #0x3F
_080B7D5E:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080B7D7C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B7DA8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B7DAC @ =0x080B7DB1
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7D9C: .4byte 0x03001038
_080B7DA0: .4byte 0x0819832C
_080B7DA4: .4byte 0x08198220
_080B7DA8: .4byte 0x00000FFF
_080B7DAC: .4byte sub_80B7DB0
	thumb_func_start sub_80B7DB0
sub_80B7DB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080B7E5C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r3, r4, #0x0
	cmp r0, #0x06
	bne _080B7EDC
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B7E60
	mov r2, r8
	adds r5, #0x7E
	cmp r2, #0x00
	beq _080B7E12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E06
_080B7E12:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7E28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E1C
_080B7E28:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7E3E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E32:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E32
_080B7E3E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7EBE
	movs r1, #0x10
_080B7E48:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7E52
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7E52:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7E48
	b _080B7EBE
	.byte 0x00, 0x00
_080B7E5C: .4byte 0x03000FD8
_080B7E60:
	mov r2, r8
	adds r5, #0x7E
	cmp r2, #0x00
	beq _080B7E78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E6C
_080B7E78:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7E8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E82
_080B7E8E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B7EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7E98
_080B7EA4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B7EBE
	movs r1, #0x10
_080B7EAE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7EB8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7EB8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7EAE
_080B7EBE:
	bl sub_807F448
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7ED2
	cmp r2, #0x04
	beq _080B7ED2
	b _080B85B4
_080B7ED2:
	ldr r0, _080B7ED8 @ =0x080B869D
	str r0, [r6, #0x4C]
	b _080B85B4
_080B7ED8: .4byte sub_80B869C
_080B7EDC:
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x02
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r4, r0, r3
	lsls r1, r1, #0x03
	negs r1, r1
	adds r0, r3, #0x0
	adds r0, r1, r0
	str r0, [sp, #0x008]
	add r10, r2
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B7F18
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B7F18:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B7F28
	b _080B844E
_080B7F28:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B7F30
	movs r1, #0x00
_080B7F30:
	ldr r0, _080B7FC8 @ =0x00007FFF
	cmp r1, r0
	ble _080B7F38
	adds r1, r0, #0x0
_080B7F38:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B7F4E
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B7F50
_080B7F4E:
	movs r2, #0x00
_080B7F50:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r3, #0xAE
	adds r3, r3, r6
	mov r9, r3
	cmp r2, #0x00
	beq _080B8034
	ldr r2, _080B7FCC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B7FD0
	mov r2, r8
	cmp r2, #0x00
	beq _080B7F82
	movs r1, #0x33
_080B7F76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F76
_080B7F82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7F96
	movs r1, #0x33
_080B7F8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F8A
_080B7F96:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B7FAA
	movs r1, #0x33
_080B7F9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7F9E
_080B7FAA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B802C
	movs r1, #0x03
_080B7FB4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B7FBE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B7FBE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B7FB4
	b _080B802C
	.byte 0x00, 0x00
_080B7FC8: .4byte 0x00007FFF
_080B7FCC: .4byte 0x03000FD8
_080B7FD0:
	mov r2, r8
	cmp r2, #0x00
	beq _080B7FE6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7FDA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7FDA
_080B7FE6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B7FFC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B7FF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B7FF0
_080B7FFC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8012
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8006:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8006
_080B8012:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B802C
	movs r1, #0x10
_080B801C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8026
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8026:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B801C
_080B802C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B8034:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B803E
	movs r1, #0x00
_080B803E:
	mov r0, r10
	cmp r0, #0x00
	bge _080B8046
	movs r2, #0x00
_080B8046:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8050
	adds r1, r0, #0x0
_080B8050:
	ldr r0, _080B8144 @ =0x00007FFF
	cmp r2, r0
	ble _080B8058
	adds r2, r0, #0x0
_080B8058:
	cmp r2, r1
	bge _080B805E
	adds r1, r2, #0x0
_080B805E:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080B8074
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B8076
_080B8074:
	movs r1, #0x00
_080B8076:
	cmp r1, #0x00
	bne _080B807C
	b _080B81C4
_080B807C:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B8148 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B809A
	b _080B81C4
_080B809A:
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080B814C @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B81B2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8150
	mov r2, r8
	adds r3, r4, #0x0
	cmp r2, #0x00
	beq _080B80FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B80EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B80EE
_080B80FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8110
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8104:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8104
_080B8110:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8126
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B811A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B811A
_080B8126:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B81AE
	movs r1, #0x10
_080B8130:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B813A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B813A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8130
	b _080B81AE
	.byte 0x00, 0x00
_080B8144: .4byte 0x00007FFF
_080B8148: .4byte 0x0300034C
_080B814C: .4byte 0x03000FD8
_080B8150:
	mov r2, r8
	adds r3, r4, #0x0
	cmp r2, #0x00
	beq _080B8168
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B815C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B815C
_080B8168:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B817E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8172:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8172
_080B817E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8194
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8188:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8188
_080B8194:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B81AE
	movs r1, #0x10
_080B819E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B81A8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B81A8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B819E
_080B81AE:
	bl sub_807F448
_080B81B2:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B8298 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B81C4:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B81D0
	b _080B844E
_080B81D0:
	mov r1, r10
	cmp r1, #0x00
	bge _080B81D8
	movs r1, #0x00
_080B81D8:
	ldr r0, _080B829C @ =0x00007FFF
	cmp r1, r0
	ble _080B81E0
	adds r1, r0, #0x0
_080B81E0:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B81F6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B81F8
_080B81F6:
	movs r2, #0x00
_080B81F8:
	cmp r2, #0x00
	bne _080B81FE
	b _080B830C
_080B81FE:
	ldr r3, _080B82A0 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8298 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B82A4
	mov r2, r8
	cmp r2, #0x00
	beq _080B824E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8242:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8242
_080B824E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8264
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8258:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8258
_080B8264:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B827A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B826E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B826E
_080B827A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8300
	movs r1, #0x10
_080B8284:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B828E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B828E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8284
	b _080B8300
	.byte 0x00, 0x00
_080B8298: .4byte 0x00000FFF
_080B829C: .4byte 0x00007FFF
_080B82A0: .4byte 0x03000FD8
_080B82A4:
	mov r2, r8
	cmp r2, #0x00
	beq _080B82BA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82AE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82AE
_080B82BA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B82D0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82C4
_080B82D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B82E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B82DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B82DA
_080B82E6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8300
	movs r1, #0x10
_080B82F0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B82FA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B82FA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B82F0
_080B8300:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080B844E
_080B830C:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r10
	ble _080B8316
	b _080B844E
_080B8316:
	ldr r0, _080B83D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B8324
	b _080B844E
_080B8324:
	ldr r2, _080B83D4 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r5, [r2, #0x00]
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B844E
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B83D8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B83DC
	mov r2, r8
	cmp r2, #0x00
	beq _080B8386
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B837A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B837A
_080B8386:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B839C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8390:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8390
_080B839C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B83B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83A6
_080B83B2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8438
	movs r1, #0x10
_080B83BC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B83C6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B83C6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B83BC
	b _080B8438
	.byte 0x00, 0x00
_080B83D0: .4byte 0x0300034C
_080B83D4: .4byte 0x03000FD8
_080B83D8: .4byte 0x00000FFF
_080B83DC:
	mov r2, r8
	cmp r2, #0x00
	beq _080B83F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83E6
_080B83F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8408
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B83FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B83FC
_080B8408:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B841E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8412:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8412
_080B841E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8438
	movs r1, #0x10
_080B8428:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8432
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8432:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8428
_080B8438:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B844E:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B845A
	b _080B8568
_080B845A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r1, #0x00
	bge _080B8466
	movs r1, #0x00
_080B8466:
	cmp r2, #0x00
	bge _080B846C
	movs r2, #0x00
_080B846C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8476
	adds r1, r0, #0x0
_080B8476:
	ldr r0, _080B84AC @ =0x00007FFF
	cmp r2, r0
	ble _080B847E
	adds r2, r0, #0x0
_080B847E:
	cmp r2, r1
	bge _080B8484
	adds r1, r2, #0x0
_080B8484:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B849E
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B84A0
_080B849E:
	movs r1, #0x00
_080B84A0:
	cmp r1, #0x00
	beq _080B8568
	cmp r4, #0x01
	ble _080B84B4
	ldr r5, _080B84B0 @ =0x040A1889
	b _080B84B6
_080B84AC: .4byte 0x00007FFF
_080B84B0: .4byte 0x040A1889
_080B84B4:
	ldr r5, _080B84F8 @ =0x040A1789
_080B84B6:
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B84FC
	cmp r1, #0x01
	bne _080B84FC
	adds r0, r6, #0x0
	bl sub_8086764
	b _080B85B4
	.byte 0x00, 0x00
_080B84F8: .4byte 0x040A1789
_080B84FC:
	cmp r4, #0x01
	ble _080B852C
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B8508
	adds r1, #0xFF
_080B8508:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B8512
	adds r2, #0xFF
_080B8512:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B851C
	adds r3, #0xFF
_080B851C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B8528 @ =0x00002E29
	bl sub_80DF024
	b _080B8552
_080B8528: .4byte 0x00002E29
_080B852C:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B8534
	adds r1, #0xFF
_080B8534:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B853E
	adds r2, #0xFF
_080B853E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B8548
	adds r3, #0xFF
_080B8548:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B85C4 @ =0x000006E3
	bl sub_80DF024
_080B8552:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B85C8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B8568:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B85B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8592
	cmp r1, #0x04
	bne _080B85AE
_080B8592:
	ldr r2, _080B85CC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B85AE:
	ldr r0, _080B85D0 @ =0x080B85D5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B85B4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B85C4: .4byte 0x000006E3
_080B85C8: .4byte 0x00000FFF
_080B85CC: .4byte 0x0000204D
_080B85D0: .4byte sub_80B85D4
	thumb_func_start sub_80B85D4
sub_80B85D4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080B8690 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8688
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8602
	cmp r1, #0x04
	bne _080B861E
_080B8602:
	ldr r2, _080B8694 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x0B
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
_080B861E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B8630
	cmp r1, #0x04
	bne _080B8684
_080B8630:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B863E
	adds r0, #0xFF
_080B863E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B864C
	adds r0, #0xFF
_080B864C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B865A
	adds r0, #0xFF
_080B865A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B8670
	adds r0, #0xFF
_080B8670:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B8684:
	ldr r0, _080B8698 @ =0x080B9421
	str r0, [r5, #0x4C]
_080B8688:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080B8690: .4byte 0x03000FD8
_080B8694: .4byte 0x0000204D
_080B8698: .4byte sub_80B9420
	thumb_func_start sub_80B869C
sub_80B869C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B874C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087DE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B87A8
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B86DC
	cmp r1, #0x04
	bne _080B871A
_080B86DC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B86EA
	adds r0, #0xFF
_080B86EA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B86F8
	adds r0, #0xFF
_080B86F8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B8706
	adds r0, #0xFF
_080B8706:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080B871A:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B872E
	cmp r2, #0x04
	bne _080B8790
_080B872E:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B8754
	ldr r2, _080B8750 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B8760
_080B874C: .4byte 0x03000FD8
_080B8750: .4byte 0x00002002
_080B8754:
	ldr r2, _080B87B0 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B8760:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080B8776
	movs r2, #0x01
_080B8776:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B8790:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B879E
	cmp r2, #0x04
	bne _080B87A8
_080B879E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B87A8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B87B0: .4byte 0x0000204F
	thumb_func_start sub_80B87B4
sub_80B87B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r8, r0
	mov r0, r9
	ldr r5, [r0, #0x2C]
	movs r6, #0x00
	movs r7, #0x00
_080B87D2:
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080B881C
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B881C
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r4, r0
	beq _080B881C
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080B881C
	adds r5, r4, #0x0
	adds r5, #0x08
_080B881C:
	adds r1, r7, #0x1
	ldr r0, _080B8918 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080B8868
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B8868
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	cmp r4, r0
	beq _080B8868
	adds r6, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080B8868
	adds r5, r4, #0x0
	adds r5, #0x08
_080B8868:
	adds r7, #0x02
	cmp r7, #0x05
	ble _080B87D2
	mov r0, r9
	str r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B8890
	cmp r2, #0x04
	bne _080B88AC
_080B8890:
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B88AC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B88BA
	cmp r2, #0x04
	bne _080B896A
_080B88BA:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B88C2
	adds r1, #0xFF
_080B88C2:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B88D8
	adds r0, #0xFF
_080B88D8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B88EE
	adds r3, #0xFF
_080B88EE:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r6, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B891C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B892C
_080B8918: .4byte 0x03000FD8
_080B891C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B892C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B8934
	adds r0, #0xFF
_080B8934:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B898C @ =0x03001038
	ldr r0, _080B8990 @ =0x0819832C
	ldr r1, _080B8994 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B894E
	adds r1, #0x3F
_080B894E:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080B8998 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	mov r0, r8
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_8088164
_080B896A:
	mov r2, r8
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B899C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B89A0 @ =0x080B89A5
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B898C: .4byte 0x03001038
_080B8990: .4byte 0x0819832C
_080B8994: .4byte 0x08198220
_080B8998: .4byte 0x000006E4
_080B899C: .4byte 0x00000FFF
_080B89A0: .4byte sub_80B89A4
	thumb_func_start sub_80B89A4
sub_80B89A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080B8A50 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r3, r4, #0x0
	cmp r0, #0x06
	bne _080B8AD0
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8A54
	adds r2, r6, #0x0
	adds r5, #0x7E
	cmp r6, #0x00
	beq _080B8A06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B89FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B89FA
_080B8A06:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8A1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A10
_080B8A1C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B8A32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A26
_080B8A32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8AB2
	movs r1, #0x10
_080B8A3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8A46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8A46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8A3C
	b _080B8AB2
	.byte 0x00, 0x00
_080B8A50: .4byte 0x03000FD8
_080B8A54:
	adds r2, r6, #0x0
	adds r5, #0x7E
	cmp r6, #0x00
	beq _080B8A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A60
_080B8A6C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A76
_080B8A82:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B8A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A8C
_080B8A98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8AB2
	movs r1, #0x10
_080B8AA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8AAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8AAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8AA2
_080B8AB2:
	bl sub_807F448
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B8AC6
	cmp r2, #0x04
	beq _080B8AC6
	b _080B91B2
_080B8AC6:
	ldr r0, _080B8ACC @ =0x080B9299
	str r0, [r6, #0x4C]
	b _080B91B2
_080B8ACC: .4byte sub_80B9298
_080B8AD0:
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x02
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r4, r0, r3
	lsls r1, r1, #0x03
	negs r1, r1
	adds r0, r3, #0x0
	adds r0, r1, r0
	str r0, [sp, #0x008]
	add r10, r2
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B8B0C
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B8B0C:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B8B1C
	b _080B904A
_080B8B1C:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B8B24
	movs r1, #0x00
_080B8B24:
	ldr r0, _080B8BBC @ =0x00007FFF
	cmp r1, r0
	ble _080B8B2C
	adds r1, r0, #0x0
_080B8B2C:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B8B42
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B8B44
_080B8B42:
	movs r2, #0x00
_080B8B44:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r3, #0xAE
	adds r3, r3, r6
	mov r9, r3
	cmp r2, #0x00
	beq _080B8C28
	ldr r2, _080B8BC0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B8BC4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8B76
	movs r1, #0x33
_080B8B6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B6A
_080B8B76:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8B8A
	movs r1, #0x33
_080B8B7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B7E
_080B8B8A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8B9E
	movs r1, #0x33
_080B8B92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B92
_080B8B9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8C20
	movs r1, #0x03
_080B8BA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8BB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8BB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8BA8
	b _080B8C20
	.byte 0x00, 0x00
_080B8BBC: .4byte 0x00007FFF
_080B8BC0: .4byte 0x03000FD8
_080B8BC4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8BDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BCE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BCE
_080B8BDA:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8BF0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BE4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BE4
_080B8BF0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8C06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BFA
_080B8C06:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8C20
	movs r1, #0x10
_080B8C10:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8C1A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8C1A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8C10
_080B8C20:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B8C28:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B8C32
	movs r1, #0x00
_080B8C32:
	mov r0, r10
	cmp r0, #0x00
	bge _080B8C3A
	movs r2, #0x00
_080B8C3A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8C44
	adds r1, r0, #0x0
_080B8C44:
	ldr r0, _080B8D38 @ =0x00007FFF
	cmp r2, r0
	ble _080B8C4C
	adds r2, r0, #0x0
_080B8C4C:
	cmp r2, r1
	bge _080B8C52
	adds r1, r2, #0x0
_080B8C52:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080B8C68
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B8C6A
_080B8C68:
	movs r1, #0x00
_080B8C6A:
	cmp r1, #0x00
	bne _080B8C70
	b _080B8DB8
_080B8C70:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B8D3C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B8C8E
	b _080B8DB8
_080B8C8E:
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080B8D40 @ =0x03000FD8
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
	bne _080B8DA6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8D44
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B8CEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8CE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8CE2
_080B8CEE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8D04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8CF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8CF8
_080B8D04:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8D1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D0E
_080B8D1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8DA2
	movs r1, #0x10
_080B8D24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8D2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8D2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8D24
	b _080B8DA2
	.byte 0x00, 0x00
_080B8D38: .4byte 0x00007FFF
_080B8D3C: .4byte 0x0300034C
_080B8D40: .4byte 0x03000FD8
_080B8D44:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B8D5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D50
_080B8D5C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8D72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D66
_080B8D72:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8D88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D7C
_080B8D88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8DA2
	movs r1, #0x10
_080B8D92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8D9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8D9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8D92
_080B8DA2:
	bl sub_807F448
_080B8DA6:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B8E8C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B8DB8:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B8DC4
	b _080B904A
_080B8DC4:
	mov r1, r10
	cmp r1, #0x00
	bge _080B8DCC
	movs r1, #0x00
_080B8DCC:
	ldr r0, _080B8E90 @ =0x00007FFF
	cmp r1, r0
	ble _080B8DD4
	adds r1, r0, #0x0
_080B8DD4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B8DEA
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B8DEC
_080B8DEA:
	movs r2, #0x00
_080B8DEC:
	cmp r2, #0x00
	bne _080B8DF2
	b _080B8F00
_080B8DF2:
	ldr r3, _080B8E94 @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8E8C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8E98
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8E42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E36
_080B8E42:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8E58
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E4C
_080B8E58:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8E6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E62
_080B8E6E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8EF4
	movs r1, #0x10
_080B8E78:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8E82
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8E82:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8E78
	b _080B8EF4
	.byte 0x00, 0x00
_080B8E8C: .4byte 0x00000FFF
_080B8E90: .4byte 0x00007FFF
_080B8E94: .4byte 0x03000FD8
_080B8E98:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8EAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8EA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8EA2
_080B8EAE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8EC4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8EB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8EB8
_080B8EC4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8EDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8ECE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8ECE
_080B8EDA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8EF4
	movs r1, #0x10
_080B8EE4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8EEE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8EEE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8EE4
_080B8EF4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080B904A
_080B8F00:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r10
	ble _080B8F0A
	b _080B904A
_080B8F0A:
	ldr r0, _080B8FCC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B8F20
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B8F20
	b _080B904A
_080B8F20:
	ldr r2, _080B8FD0 @ =0x03000FD8
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
	ldr r5, [r2, #0x00]
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B904A
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8FD4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8FD8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8F82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8F76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8F76
_080B8F82:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8F98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8F8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8F8C
_080B8F98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8FAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FA2
_080B8FAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9034
	movs r1, #0x10
_080B8FB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8FC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8FC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8FB8
	b _080B9034
	.byte 0x00, 0x00
_080B8FCC: .4byte 0x0300034C
_080B8FD0: .4byte 0x03000FD8
_080B8FD4: .4byte 0x00000FFF
_080B8FD8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8FEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FE2
_080B8FEE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B9004
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FF8
_080B9004:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B901A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B900E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B900E
_080B901A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9034
	movs r1, #0x10
_080B9024:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B902E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B902E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9024
_080B9034:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B904A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B9056
	b _080B9164
_080B9056:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r1, #0x00
	bge _080B9062
	movs r1, #0x00
_080B9062:
	cmp r2, #0x00
	bge _080B9068
	movs r2, #0x00
_080B9068:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B9072
	adds r1, r0, #0x0
_080B9072:
	ldr r0, _080B90A8 @ =0x00007FFF
	cmp r2, r0
	ble _080B907A
	adds r2, r0, #0x0
_080B907A:
	cmp r2, r1
	bge _080B9080
	adds r1, r2, #0x0
_080B9080:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B909A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B909C
_080B909A:
	movs r1, #0x00
_080B909C:
	cmp r1, #0x00
	beq _080B9164
	cmp r4, #0x01
	ble _080B90B0
	ldr r5, _080B90AC @ =0x040A1A89
	b _080B90B2
_080B90A8: .4byte 0x00007FFF
_080B90AC: .4byte 0x040A1A89
_080B90B0:
	ldr r5, _080B90F4 @ =0x040A1989
_080B90B2:
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B90F8
	cmp r1, #0x01
	bne _080B90F8
	adds r0, r6, #0x0
	bl sub_8086764
	b _080B91B2
	.byte 0x00, 0x00
_080B90F4: .4byte 0x040A1989
_080B90F8:
	cmp r4, #0x01
	ble _080B9128
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B9104
	adds r1, #0xFF
_080B9104:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B910E
	adds r2, #0xFF
_080B910E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B9118
	adds r3, #0xFF
_080B9118:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B9124 @ =0x00002E29
	bl sub_80DF024
	b _080B914E
_080B9124: .4byte 0x00002E29
_080B9128:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B9130
	adds r1, #0xFF
_080B9130:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B913A
	adds r2, #0xFF
_080B913A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B9144
	adds r3, #0xFF
_080B9144:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B91C4 @ =0x000006E3
	bl sub_80DF024
_080B914E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B91C8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B9164:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B91B2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B918E
	cmp r1, #0x04
	bne _080B91AC
_080B918E:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B91AC:
	ldr r0, _080B91CC @ =0x080B91D1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B91B2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B91C4: .4byte 0x000006E3
_080B91C8: .4byte 0x00000FFF
_080B91CC: .4byte sub_80B91D0
	thumb_func_start sub_80B91D0
sub_80B91D0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080B9290 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B9286
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B91FE
	cmp r1, #0x04
	bne _080B921C
_080B91FE:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x0B
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
_080B921C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B922E
	cmp r1, #0x04
	bne _080B9282
_080B922E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B923C
	adds r0, #0xFF
_080B923C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B924A
	adds r0, #0xFF
_080B924A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9258
	adds r0, #0xFF
_080B9258:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B926E
	adds r0, #0xFF
_080B926E:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B9282:
	ldr r0, _080B9294 @ =0x080B93B1
	str r0, [r5, #0x4C]
_080B9286:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9290: .4byte 0x03000FD8
_080B9294: .4byte sub_80B93B0
	thumb_func_start sub_80B9298
sub_80B9298:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B9348 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087DE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B93A4
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B92D8
	cmp r1, #0x04
	bne _080B9316
_080B92D8:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B92E6
	adds r0, #0xFF
_080B92E6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B92F4
	adds r0, #0xFF
_080B92F4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9302
	adds r0, #0xFF
_080B9302:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080B9316:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B932A
	cmp r2, #0x04
	bne _080B938C
_080B932A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B9350
	ldr r2, _080B934C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B935C
_080B9348: .4byte 0x03000FD8
_080B934C: .4byte 0x00002002
_080B9350:
	ldr r2, _080B93AC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B935C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080B9372
	movs r2, #0x01
_080B9372:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B938C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B939A
	cmp r2, #0x04
	bne _080B93A4
_080B939A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B93A4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B93AC: .4byte 0x0000204F
	thumb_func_start sub_80B93B0
sub_80B93B0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9418 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B9410
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
	beq _080B93EE
	cmp r1, #0x04
	bne _080B940C
_080B93EE:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080B940C:
	ldr r0, _080B941C @ =0x080B95D9
	str r0, [r6, #0x4C]
_080B9410:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9418: .4byte 0x03000FD8
_080B941C: .4byte sub_80B95D8
	thumb_func_start sub_80B9420
sub_80B9420:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9484 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B947E
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
	beq _080B945E
	cmp r1, #0x04
	bne _080B947A
_080B945E:
	ldr r2, _080B9488 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080B947A:
	ldr r0, _080B948C @ =0x080B9625
	str r0, [r6, #0x4C]
_080B947E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B9484: .4byte 0x03000FD8
_080B9488: .4byte 0x0000204D
_080B948C: .4byte sub_80B9624
	thumb_func_start sub_80B9490
sub_80B9490:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080B94D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B94AE
	cmp r1, #0x04
	bne _080B94F0
_080B94AE:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B94D4
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080B94E0
	.byte 0x00, 0x00
_080B94D0: .4byte 0x03000FD8
_080B94D4:
	ldr r2, _080B94FC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080B94E0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B94F0:
	ldr r0, _080B9500 @ =0x080B62D9
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B94FC: .4byte 0x0000204D
_080B9500: .4byte sub_80B62D8
	thumb_func_start sub_80B9504
sub_80B9504:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9560 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B9558
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B9538
	cmp r1, #0x04
	bne _080B9554
_080B9538:
	ldr r2, _080B9564 @ =0x0000205E
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
_080B9554:
	ldr r0, _080B9568 @ =0x080B363D
	str r0, [r6, #0x4C]
_080B9558:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9560: .4byte 0x03000FD8
_080B9564: .4byte 0x0000205E
_080B9568: .4byte sub_80B363C
	thumb_func_start sub_80B956C
sub_80B956C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B95D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B95CA
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B95A0
	cmp r1, #0x04
	bne _080B95C6
_080B95A0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B95C6:
	ldr r0, _080B95D4 @ =0x080B35C9
	str r0, [r6, #0x4C]
_080B95CA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B95D0: .4byte 0x03000FD8
_080B95D4: .4byte sub_80B35C8
	thumb_func_start sub_80B95D8
sub_80B95D8:
	push {r4, lr}
	ldr r0, _080B9620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B961A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080B961A:
	pop {r4}
	pop {r0}
	bx r0
_080B9620: .4byte 0x03000FD8
	thumb_func_start sub_80B9624
sub_80B9624:
	push {r4, lr}
	ldr r0, _080B966C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B9666
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080B9666:
	pop {r4}
	pop {r0}
	bx r0
_080B966C: .4byte 0x03000FD8
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xCD, 0xF7, 0xE6, 0xFC, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x05, 0x97, 0x0B, 0x08
	thumb_func_start sub_80B9704
sub_80B9704:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r4, _080B97E0 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r0, #0x02
	strb r0, [r1, #0x0E]
	ldr r5, [r4, #0x00]
	ldr r0, _080B97E4 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0A]
	lsrs r0, r0, #0x02
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	ldrh r0, [r2, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x0A]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B9768
	cmp r1, #0x04
	bne _080B97AE
_080B9768:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9776
	adds r0, #0xFF
_080B9776:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9788
	adds r0, #0xFF
_080B9788:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B979A
	adds r0, #0xFF
_080B979A:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B97AE:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B97C2
	cmp r2, #0x04
	bne _080B9828
_080B97C2:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B97EC
	ldr r2, _080B97E8 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B97F8
_080B97E0: .4byte 0x03000FD8
_080B97E4: .4byte 0x03000FF4
_080B97E8: .4byte 0x00002002
_080B97EC:
	ldr r2, _080B98CC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B97F8:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B980E
	movs r2, #0x01
_080B980E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B9828:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B9836
	cmp r2, #0x04
	bne _080B9840
_080B9836:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080B9840:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B9854
	cmp r2, #0x04
	bne _080B989E
_080B9854:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9862
	adds r0, #0xFF
_080B9862:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x14
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9874
	adds r0, #0xFF
_080B9874:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B9886
	adds r0, #0xFF
_080B9886:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080B989E:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B98AC
	cmp r2, #0x04
	bne _080B9910
_080B98AC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B98D4
	ldr r2, _080B98D0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B98E0
	.byte 0x00, 0x00
_080B98CC: .4byte 0x0000204F
_080B98D0: .4byte 0x00002002
_080B98D4:
	ldr r2, _080B9924 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B98E0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080B98F6
	movs r2, #0x01
_080B98F6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B9910:
	ldr r0, _080B9928 @ =0x080C0C55
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9924: .4byte 0x0000204F
_080B9928: .4byte sub_80C0C54
