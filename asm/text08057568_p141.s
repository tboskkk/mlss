	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809CC38
sub_809CC38:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r0
	mov r1, r10
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x23
	strh r0, [r1, #0x00]
	mov r2, r10
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0809CC64
	adds r0, #0xFF
_0809CC64:
	asrs r0, r0, #0x08
	mov r9, r0
	mov r4, r10
	adds r4, #0x0C
	str r4, [sp, #0x000]
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r2, #0x00
	str r2, [sp, #0x008]
	mov r0, r10
	adds r0, #0x84
	str r0, [sp, #0x010]
	mov r1, r10
	adds r1, #0x88
	str r1, [sp, #0x014]
	cmp r4, #0x00
	bne _0809CC88
	b _0809CDB8
_0809CC88:
	str r0, [sp, #0x00C]
_0809CC8A:
	ldr r2, _0809CD8C @ =0x03001038
	ldr r1, _0809CD90 @ =0x0819832C
	ldr r0, _0809CD94 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x05
	movs r1, #0x06
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _0809CD98 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0809CCBA
	adds r0, #0x3F
_0809CCBA:
	asrs r0, r0, #0x06
	mov r1, r9
	muls r1, r0
	ldr r2, [sp, #0x00C]
	ldr r0, [r2, #0x00]
	adds r7, r0, r1
	ldr r0, _0809CD9C @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809CCD4
	adds r0, #0x3F
_0809CCD4:
	asrs r0, r0, #0x06
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r2, [sp, #0x014]
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r6, _0809CDA0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r2, _0809CDA4 @ =0xFFFFF000
	adds r0, r0, r2
	cmp r0, r7
	bge _0809CD54
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	cmp r0, r7
	ble _0809CD54
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	cmp r0, r5
	bge _0809CD54
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x08
	adds r0, r0, r1
	cmp r0, r5
	ble _0809CD54
	movs r0, #0x01
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_0809CD54:
	str r7, [r4, #0x04]
	str r5, [r4, #0x08]
	movs r0, #0x96
	lsls r0, r0, #0x08
	cmp r5, r0
	ble _0809CD68
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_0809CD68:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _0809CDA8
	movs r0, #0x00
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	cmp r4, #0x00
	beq _0809CDB8
_0809CD7C:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0809CD7C
	b _0809CDB8
	.byte 0x00, 0x00
_0809CD8C: .4byte 0x03001038
_0809CD90: .4byte 0x0819832C
_0809CD94: .4byte 0x08198220
_0809CD98: .4byte 0x08198584
_0809CD9C: .4byte 0x08198504
_0809CDA0: .4byte 0x03000FD8
_0809CDA4: .4byte 0xFFFFF000
_0809CDA8:
	ldr r2, [sp, #0x008]
	adds r2, #0x01
	str r2, [sp, #0x008]
	str r4, [sp, #0x000]
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0809CDB8
	b _0809CC8A
_0809CDB8:
	mov r0, r10
	ldr r5, [r0, #0x2C]
	ldr r1, [r5, #0x38]
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809CDCA
	adds r0, #0xFF
_0809CDCA:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	ldr r2, [sp, #0x014]
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0809CDDA
	adds r1, #0xFF
_0809CDDA:
	asrs r3, r1, #0x08
	ldr r2, _0809CEA8 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r9
	bge _0809CE1C
	adds r0, #0x10
	cmp r9, r0
	bge _0809CE1C
	ldr r1, [r5, #0x40]
	ldr r0, _0809CEAC @ =0x000007FF
	cmp r1, r0
	bgt _0809CE1C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _0809CE1C
	mov r0, r10
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809CE1C:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	adds r6, r0, #0x0
	cmp r6, #0x00
	beq _0809CE8C
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809CE3A
	adds r0, #0xFF
_0809CE3A:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	ldr r2, [sp, #0x014]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809CE4A
	adds r0, #0xFF
_0809CE4A:
	asrs r3, r0, #0x08
	ldr r2, _0809CEA8 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r9
	bge _0809CE8C
	adds r0, #0x10
	cmp r9, r0
	bge _0809CE8C
	ldr r1, [r5, #0x40]
	ldr r0, _0809CEAC @ =0x000007FF
	cmp r1, r0
	bgt _0809CE8C
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _0809CE8C
	mov r0, r10
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809CE8C:
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0809CE98
	mov r0, r10
	bl sub_807C298
_0809CE98:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809CEA8: .4byte 0x03001038
_0809CEAC: .4byte 0x000007FF
	thumb_func_start sub_809CEB0
sub_809CEB0:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809CFBC
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809CEEA
	adds r1, #0xFF
_0809CEEA:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809CEF4
	adds r2, #0xFF
_0809CEF4:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809CEFE
	adds r3, #0xFF
_0809CEFE:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809CFC4 @ =0x00001E47
	bl sub_80DF024
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0809CF12
	adds r0, #0xFF
_0809CF12:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x15
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0809CF20
	adds r0, #0xFF
_0809CF20:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809CF2C
	adds r0, #0xFF
_0809CF2C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0809CFC8 @ =0x0000403D
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, #0x78
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x26
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, _0809CFCC @ =0x0809CFD5
	str r0, [r4, #0x4C]
	ldr r0, _0809CFD0 @ =0x0809D24D
	str r0, [r5, #0x4C]
_0809CFBC:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0809CFC4: .4byte 0x00001E47
_0809CFC8: .4byte 0x0000403D
_0809CFCC: .4byte sub_809CFD4
_0809CFD0: .4byte sub_809D24C
	thumb_func_start sub_809CFD4
sub_809CFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r0
	mov r1, r10
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x05
	strh r0, [r1, #0x00]
	mov r2, r10
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0809D000
	adds r0, #0xFF
_0809D000:
	asrs r0, r0, #0x08
	mov r9, r0
	mov r4, r10
	adds r4, #0x0C
	str r4, [sp, #0x000]
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r2, #0x00
	str r2, [sp, #0x008]
	mov r0, r10
	adds r0, #0x84
	str r0, [sp, #0x010]
	mov r1, r10
	adds r1, #0x88
	str r1, [sp, #0x014]
	cmp r4, #0x00
	bne _0809D024
	b _0809D154
_0809D024:
	str r0, [sp, #0x00C]
_0809D026:
	ldr r2, _0809D128 @ =0x03001038
	ldr r1, _0809D12C @ =0x0819832C
	ldr r0, _0809D130 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x05
	movs r1, #0x04
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _0809D134 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _0809D056
	adds r0, #0x3F
_0809D056:
	asrs r0, r0, #0x06
	mov r1, r9
	muls r1, r0
	ldr r2, [sp, #0x00C]
	ldr r0, [r2, #0x00]
	adds r7, r0, r1
	ldr r0, _0809D138 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809D070
	adds r0, #0x3F
_0809D070:
	asrs r0, r0, #0x06
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	ldr r2, [sp, #0x014]
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r6, _0809D13C @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	ldr r2, _0809D140 @ =0xFFFFF000
	adds r0, r0, r2
	cmp r0, r7
	bge _0809D0F0
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	cmp r0, r7
	ble _0809D0F0
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	cmp r0, r5
	bge _0809D0F0
	ldr r0, [r6, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x08
	adds r0, r0, r1
	cmp r0, r5
	ble _0809D0F0
	movs r0, #0x01
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_0809D0F0:
	str r7, [r4, #0x04]
	str r5, [r4, #0x08]
	movs r0, #0x96
	lsls r0, r0, #0x08
	cmp r5, r0
	ble _0809D104
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_0809D104:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _0809D144
	movs r0, #0x00
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	cmp r4, #0x00
	beq _0809D154
_0809D118:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0809D118
	b _0809D154
	.byte 0x00, 0x00
_0809D128: .4byte 0x03001038
_0809D12C: .4byte 0x0819832C
_0809D130: .4byte 0x08198220
_0809D134: .4byte 0x08198584
_0809D138: .4byte 0x08198504
_0809D13C: .4byte 0x03000FD8
_0809D140: .4byte 0xFFFFF000
_0809D144:
	ldr r2, [sp, #0x008]
	adds r2, #0x01
	str r2, [sp, #0x008]
	str r4, [sp, #0x000]
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	beq _0809D154
	b _0809D026
_0809D154:
	mov r0, r10
	ldr r5, [r0, #0x2C]
	ldr r1, [r5, #0x38]
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809D166
	adds r0, #0xFF
_0809D166:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	ldr r2, [sp, #0x014]
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0809D176
	adds r1, #0xFF
_0809D176:
	asrs r3, r1, #0x08
	ldr r2, _0809D244 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r9
	bge _0809D1B8
	adds r0, #0x10
	cmp r9, r0
	bge _0809D1B8
	ldr r1, [r5, #0x40]
	ldr r0, _0809D248 @ =0x000007FF
	cmp r1, r0
	bgt _0809D1B8
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _0809D1B8
	mov r0, r10
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809D1B8:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	adds r6, r0, #0x0
	cmp r6, #0x00
	beq _0809D228
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809D1D6
	adds r0, #0xFF
_0809D1D6:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	ldr r2, [sp, #0x014]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0809D1E6
	adds r0, #0xFF
_0809D1E6:
	asrs r3, r0, #0x08
	ldr r2, _0809D244 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r9
	bge _0809D228
	adds r0, #0x10
	cmp r9, r0
	bge _0809D228
	ldr r1, [r5, #0x40]
	ldr r0, _0809D248 @ =0x000007FF
	cmp r1, r0
	bgt _0809D228
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _0809D228
	mov r0, r10
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809D228:
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0809D234
	mov r0, r10
	bl sub_807C298
_0809D234:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809D244: .4byte 0x03001038
_0809D248: .4byte 0x000007FF
	thumb_func_start sub_809D24C
sub_809D24C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809D262
	adds r0, r2, #0x0
	bl sub_8087540
_0809D262:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
