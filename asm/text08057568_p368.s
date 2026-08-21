	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8098860
sub_8098860:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080988A0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080988CC
	cmp r6, r5
	bne _080988AA
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _080988AA
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080988A4
	adds r0, r4, #0x0
	bl sub_80987F4
	b _080988AA
_080988A0: .4byte 0x03000FD8
_080988A4:
	adds r0, r4, #0x0
	bl sub_8098198
_080988AA:
	cmp r6, r4
	bne _080988C8
	ldr r0, [r5, #0x4C]
	cmp r0, #0x00
	beq _080988C8
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080988C2
	adds r0, r5, #0x0
	bl sub_80987F4
	b _080988C8
_080988C2:
	adds r0, r5, #0x0
	bl sub_8098198
_080988C8:
	ldr r0, _080988D4 @ =0x08098935
	str r0, [r6, #0x4C]
_080988CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080988D4: .4byte sub_8098934
	thumb_func_start sub_80988D8
sub_80988D8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809892C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08098924
	cmp r4, r5
	bne _08098910
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098910:
	cmp r4, r6
	bne _08098920
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098920:
	ldr r0, _08098930 @ =0x080982DD
	str r0, [r4, #0x4C]
_08098924:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809892C: .4byte 0x03000FD8
_08098930: .4byte sub_80982DC
	thumb_func_start sub_8098934
sub_8098934:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x04]
	ldr r0, [r0, #0x08]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0809894E
	adds r0, r1, #0x0
	bl sub_807C298
	str r4, [r5, #0x30]
	str r4, [r5, #0x4C]
_0809894E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8098954
sub_8098954:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08098968
	b _08098A6C
_08098968:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08098990
	adds r1, #0xFF
_08098990:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0809899A
	adds r2, #0xFF
_0809899A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080989A4
	adds r3, #0xFF
_080989A4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08098A74 @ =0x000028DF
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080989B8
	adds r0, #0xFF
_080989B8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x32
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080989C6
	adds r3, #0xFF
_080989C6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080989D0
	adds r0, #0xFF
_080989D0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08098A78 @ =0x0000403D
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r4, #0x00
	str r4, [r0, #0x00]
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x78
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, _08098A7C @ =0x08098A85
	str r0, [r5, #0x4C]
	ldr r0, _08098A80 @ =0x08098C79
	str r0, [r6, #0x4C]
_08098A6C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08098A74: .4byte 0x000028DF
_08098A78: .4byte 0x0000403D
_08098A7C: .4byte sub_8098A84
_08098A80: .4byte sub_8098C78
	thumb_func_start sub_8098A84
sub_8098A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x0C
	strh r0, [r1, #0x00]
	mov r2, r8
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08098AB0
	adds r0, #0xFF
_08098AB0:
	asrs r7, r0, #0x08
	mov r4, r8
	adds r4, #0x0C
	adds r5, r4, #0x0
	movs r1, #0x84
	add r1, r8
	mov r10, r1
	movs r2, #0x88
	add r2, r8
	mov r9, r2
	cmp r4, #0x00
	beq _08098B7A
	ldr r1, _08098B5C @ =0x0819832C
	mov r0, r10
	str r0, [sp, #0x004]
	movs r6, #0x00
	ldr r0, _08098B60 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x000]
_08098AD6:
	ldr r0, _08098B64 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x000]
	adds r2, r2, r1
	adds r0, r6, #0x0
	movs r1, #0x05
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _08098B68 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08098AFC
	adds r0, #0x3F
_08098AFC:
	asrs r0, r0, #0x06
	adds r1, r7, #0x0
	muls r1, r0
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _08098B6C @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08098B18
	adds r0, #0x3F
_08098B18:
	asrs r0, r0, #0x06
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x8C
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08098B3A
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_08098B3A:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08098B70
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _08098B7A
_08098B4C:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08098B4C
	b _08098B7A
	.byte 0x00, 0x00
_08098B5C: .4byte 0x0819832C
_08098B60: .4byte 0x08198220
_08098B64: .4byte 0x03001038
_08098B68: .4byte 0x08198584
_08098B6C: .4byte 0x08198504
_08098B70:
	adds r6, #0x60
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08098AD6
_08098B7A:
	mov r0, r8
	ldr r5, [r0, #0x2C]
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098B8C
	adds r0, #0xFF
_08098B8C:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08098B9C
	adds r1, #0xFF
_08098B9C:
	asrs r3, r1, #0x08
	ldr r2, _08098C70 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08098BE2
	adds r0, #0x10
	cmp r7, r0
	bge _08098BE2
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08098BE2
	ldr r0, _08098C74 @ =0x000007FF
	cmp r1, r0
	bgt _08098BE2
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08098BE2
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098BE2:
	ldr r0, [r5, #0x28]
	bl sub_8087650
	adds r6, r0, #0x0
	cmp r6, #0x00
	beq _08098C56
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	mov r2, r10
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098C00
	adds r0, #0xFF
_08098C00:
	asrs r4, r0, #0x08
	ldr r1, [r5, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098C10
	adds r0, #0xFF
_08098C10:
	asrs r3, r0, #0x08
	ldr r2, _08098C70 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	lsls r1, r3, #0x02
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	subs r0, #0x08
	cmp r0, r7
	bge _08098C56
	adds r0, #0x10
	cmp r7, r0
	bge _08098C56
	ldr r1, [r5, #0x40]
	cmp r1, #0x00
	blt _08098C56
	ldr r0, _08098C74 @ =0x000007FF
	cmp r1, r0
	bgt _08098C56
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _08098C56
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098C56:
	cmp r7, #0xC7
	ble _08098C60
	mov r0, r8
	bl sub_807C298
_08098C60:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08098C70: .4byte 0x03001038
_08098C74: .4byte 0x000007FF
	thumb_func_start sub_8098C78
sub_8098C78:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098C8E
	adds r0, r2, #0x0
	bl sub_8087540
_08098C8E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA1, 0x8C, 0x09, 0x08
	thumb_func_start sub_8098CA0
sub_8098CA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08098CB8 @ =0x08098CBD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08098CB8: .4byte sub_8098CBC
	thumb_func_start sub_8098CBC
sub_8098CBC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098D10
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08098CE2
	adds r1, #0xFF
_08098CE2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08098CEC
	adds r2, #0xFF
_08098CEC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08098CF6
	adds r3, #0xFF
_08098CF6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08098D18 @ =0x00002841
	bl sub_80DF024
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08098D1C @ =0x08098955
	str r0, [r4, #0x4C]
_08098D10:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08098D18: .4byte 0x00002841
_08098D1C: .4byte sub_8098954
	thumb_func_start sub_8098D20
sub_8098D20:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098E30
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08098D5A
	adds r1, #0xFF
_08098D5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08098D64
	adds r2, #0xFF
_08098D64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08098D6E
	adds r3, #0xFF
_08098D6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08098E38 @ =0x000028C6
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08098D82
	adds r0, #0xFF
_08098D82:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x32
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08098D90
	adds r3, #0xFF
_08098D90:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08098D9A
	adds r0, #0xFF
_08098D9A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08098E3C @ =0x0000403C
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, #0x9C
	movs r4, #0x00
	str r4, [r0, #0x00]
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x78
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	movs r4, #0x07
_08098DE2:
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	subs r4, #0x04
	cmp r4, #0x00
	bge _08098DE2
	ldr r0, _08098E40 @ =0x08098E49
	str r0, [r5, #0x4C]
	ldr r0, _08098E44 @ =0x0809900D
	str r0, [r6, #0x4C]
_08098E30:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08098E38: .4byte 0x000028C6
_08098E3C: .4byte 0x0000403C
_08098E40: .4byte sub_8098E48
_08098E44: .4byte sub_809900C
	thumb_func_start sub_8098E48
sub_8098E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x19
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x9C
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bge _08098E74
	adds r0, #0xFF
_08098E74:
	asrs r6, r0, #0x08
	adds r4, r7, #0x0
	adds r4, #0x0C
	adds r5, r4, #0x0
	adds r1, r7, #0x0
	adds r1, #0x84
	str r1, [sp, #0x004]
	movs r2, #0x88
	adds r2, r2, r7
	mov r9, r2
	cmp r4, #0x00
	beq _08098F40
	ldr r1, _08098F20 @ =0x0819832C
	ldr r0, [sp, #0x004]
	str r0, [sp, #0x000]
	movs r2, #0x00
	mov r8, r2
	ldr r0, _08098F24 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_08098E9C:
	ldr r0, _08098F28 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	mov r0, r8
	movs r1, #0x09
	bl _call_via_r2
	adds r0, #0x50
	ldr r2, _08098F2C @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r2, r3, r2
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08098EC0
	adds r0, #0x3F
_08098EC0:
	asrs r0, r0, #0x06
	adds r1, r6, #0x0
	muls r1, r0
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, _08098F30 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08098EDC
	adds r0, #0x3F
_08098EDC:
	asrs r0, r0, #0x06
	muls r0, r6
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r4, #0x08]
	movs r0, #0x8C
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08098EFE
	ldrb r0, [r4, #0x1B]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x1B]
_08098EFE:
	ldr r1, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	bgt _08098F34
	movs r0, #0x00
	str r0, [r5, #0x00]
	cmp r4, #0x00
	beq _08098F40
_08098F10:
	adds r0, r4, #0x0
	bl sub_807FA94
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08098F10
	b _08098F40
	.byte 0x00, 0x00
_08098F20: .4byte 0x0819832C
_08098F24: .4byte 0x08198220
_08098F28: .4byte 0x03001038
_08098F2C: .4byte 0x08198584
_08098F30: .4byte 0x08198504
_08098F34:
	movs r0, #0x60
	add r8, r0
	adds r5, r4, #0x0
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08098E9C
_08098F40:
	ldr r4, [r7, #0x2C]
	ldr r1, [r4, #0x38]
	ldr r2, [sp, #0x004]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098F50
	adds r0, #0xFF
_08098F50:
	asrs r5, r0, #0x08
	ldr r1, [r4, #0x3C]
	mov r2, r9
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08098F60
	adds r0, #0xFF
_08098F60:
	asrs r2, r0, #0x08
	ldr r3, _08099004 @ =0x03001038
	adds r0, r5, #0x0
	muls r0, r5
	lsls r1, r2, #0x02
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	subs r0, #0x08
	cmp r0, r6
	bge _08098FA6
	adds r0, #0x10
	cmp r6, r0
	bge _08098FA6
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	blt _08098FA6
	ldr r0, _08099008 @ =0x000007FF
	cmp r1, r0
	bgt _08098FA6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08098FA6
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098FA6:
	ldr r0, [r4, #0x28]
	bl sub_8087650
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08098FE8
	adds r4, r2, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	subs r0, #0x08
	cmp r0, r6
	bge _08098FE8
	adds r0, #0x10
	cmp r6, r0
	bge _08098FE8
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	blt _08098FE8
	ldr r0, _08099008 @ =0x000007FF
	cmp r1, r0
	bgt _08098FE8
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x86
	ands r0, r1
	cmp r0, #0x02
	bne _08098FE8
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08098FE8:
	cmp r6, #0xC7
	ble _08098FF2
	adds r0, r7, #0x0
	bl sub_807C298
_08098FF2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08099004: .4byte 0x03001038
_08099008: .4byte 0x000007FF
	thumb_func_start sub_809900C
sub_809900C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08099022
	adds r0, r2, #0x0
	bl sub_8087540
_08099022:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
