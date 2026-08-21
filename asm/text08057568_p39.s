	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809D91C
sub_809D91C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0809D980
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r4, #0x01
	negs r4, r4
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, _0809D988 @ =0x00000127
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809D956
	adds r1, #0xFF
_0809D956:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809D960
	adds r2, #0xFF
_0809D960:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809D96A
	adds r3, #0xFF
_0809D96A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809D98C @ =0x00001E8A
	bl sub_80DF024
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0809D990 @ =0x0809D59D
	str r0, [r5, #0x4C]
_0809D980:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809D988: .4byte 0x00000127
_0809D98C: .4byte 0x00001E8A
_0809D990: .4byte sub_809D59C
	thumb_func_start sub_809D994
sub_809D994:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	movs r1, #0x06
	ldr r2, _0809D9EC @ =0x0809D4E5
	mov r8, r2
	ldr r4, _0809D9F0 @ =0x03000FD8
	movs r7, #0x06
	movs r6, #0x39
	negs r6, r6
	movs r5, #0x08
	ldr r2, [r4, #0x00]
	ldr r2, [r2, #0x70]
	adds r2, #0x7E
	ldrb r3, [r2, #0x00]
	ands r1, r3
	cmp r1, #0x02
	bne _0809D9C2
	adds r1, r6, #0x0
	ands r1, r3
	orrs r1, r5
	strb r1, [r2, #0x00]
_0809D9C2:
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x74]
	adds r2, r1, #0x0
	adds r2, #0x7E
	ldrb r3, [r2, #0x00]
	adds r1, r7, #0x0
	ands r1, r3
	cmp r1, #0x02
	bne _0809D9DC
	adds r1, r6, #0x0
	ands r1, r3
	orrs r1, r5
	strb r1, [r2, #0x00]
_0809D9DC:
	mov r1, r8
	mov r2, r12
	str r1, [r2, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0809D9EC: .4byte sub_809D4E4
_0809D9F0: .4byte 0x03000FD8
	thumb_func_start sub_809D9F4
sub_809D9F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x28]
	adds r0, #0xB0
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0x06
	mov r8, r0
_0809DA08:
	ldr r0, _0809DAC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r2, r8
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809DA84
	adds r0, r7, #0x0
	ldr r1, _0809DAC8 @ =0x00004147
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x3C]
	str r0, [r4, #0x14]
	movs r0, #0xA0
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	str r6, [r4, #0x2C]
	ldr r0, _0809DACC @ =0x0809DDA5
	str r0, [r4, #0x4C]
	ldr r1, [r7, #0x28]
	adds r1, #0xB0
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_0809DA84:
	movs r0, #0x01
	add r8, r0
	mov r2, r8
	cmp r2, #0x07
	ble _0809DA08
	ldr r0, [r7, #0x28]
	ldr r3, _0809DAD0 @ =0x00000113
	adds r1, r0, r3
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r2, #0x00
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
	ldr r0, _0809DAD4 @ =0x0809DAD9
	str r0, [r7, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DAC4: .4byte 0x03000FD8
_0809DAC8: .4byte 0x00004147
_0809DACC: .4byte sub_809DDA4
_0809DAD0: .4byte 0x00000113
_0809DAD4: .4byte sub_809DAD8
	thumb_func_start sub_809DAD8
sub_809DAD8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	bne _0809DB5C
	ldr r1, _0809DB64 @ =0x00008031
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	subs r0, #0x1B
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DB68 @ =0x0809DB6D
	str r0, [r5, #0x4C]
_0809DB5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DB64: .4byte 0x00008031
_0809DB68: .4byte sub_809DB6C
	thumb_func_start sub_809DB6C
sub_809DB6C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0809DBAE
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0809DBAE
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DB90
	adds r1, #0xFF
_0809DB90:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DB9A
	adds r2, #0xFF
_0809DB9A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809DBA4
	adds r3, #0xFF
_0809DBA4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809DBF0 @ =0x0000227F
	bl sub_80DF024
_0809DBAE:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _0809DC3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, [r4, #0x30]
	ldr r2, [r3, #0x08]
	adds r1, r2, #0x0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0809DBF4
	adds r1, r0, #0x0
	subs r1, #0x01
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0809DC3C
	.byte 0x00, 0x00
_0809DBF0: .4byte 0x0000227F
_0809DBF4:
	adds r0, r2, #0x0
	bl sub_807FB64
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DC02
	adds r1, #0xFF
_0809DC02:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DC0C
	adds r2, #0xFF
_0809DC0C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809DC16
	adds r3, #0xFF
_0809DC16:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809DC44 @ =0x00002291
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DC48 @ =0x0809DC4D
	str r0, [r4, #0x4C]
_0809DC3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809DC44: .4byte 0x00002291
_0809DC48: .4byte sub_809DC4C
	thumb_func_start sub_809DC4C
sub_809DC4C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809DC60
	b _0809DD86
_0809DC60:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0809DC68
	adds r1, #0xFF
_0809DC68:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _0809DC72
	adds r2, #0xFF
_0809DC72:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _0809DC7C
	adds r3, #0xFF
_0809DC7C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0809DD90 @ =0x0000229B
	bl sub_80DF024
	ldr r6, [r7, #0x30]
	ldr r0, [r7, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r6, #0x18]
	ldr r2, _0809DD94 @ =0x00004146
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	movs r5, #0x02
	orrs r0, r5
	strb r0, [r2, #0x12]
	ldr r0, _0809DD98 @ =0x0809E05D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	ldr r1, _0809DD9C @ =0x00004145
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x08]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, #0x12]
	adds r4, r6, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r6, #0x04]
	ldr r1, [r6, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	movs r5, #0x0B
_0809DD00:
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	subs r5, #0x06
	cmp r5, #0x00
	bge _0809DD00
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DDA0 @ =0x0809E455
	str r0, [r7, #0x4C]
_0809DD86:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DD90: .4byte 0x0000229B
_0809DD94: .4byte 0x00004146
_0809DD98: .4byte sub_809E05C
_0809DD9C: .4byte 0x00004145
_0809DDA0: .4byte sub_809E454
	thumb_func_start sub_809DDA4
sub_809DDA4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DDB2
	adds r1, #0xFF
_0809DDB2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DDBC
	adds r2, #0xFF
_0809DDBC:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r5, #0x01
	negs r5, r5
	movs r3, #0x26
	cmp r0, r5
	bne _0809DDD4
	movs r3, #0x22
_0809DDD4:
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	movs r0, #0xA3
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0809DE40 @ =0x0809DFB9
	str r0, [r4, #0x58]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DE44 @ =0x0809DE49
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809DE40: .4byte sub_809DFB8
_0809DE44: .4byte sub_809DE48
	thumb_func_start sub_809DE48
sub_809DE48:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0809DE8E
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0xA0
	movs r3, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0809DE86
	str r3, [r5, #0x00]
	strh r3, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_0809DE86:
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
_0809DE8E:
	cmp r6, #0x00
	bne _0809DEA0
	ldr r0, [r4, #0x28]
	adds r0, #0xB0
	ldr r1, [r0, #0x00]
	subs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _0809DEA8 @ =0x0809DEAD
	str r0, [r4, #0x4C]
_0809DEA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DEA8: .4byte sub_809DEAC
	thumb_func_start sub_809DEAC
sub_809DEAC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r3, r4, #0x0
	adds r3, #0x8C
	movs r1, #0x02
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _0809DECE
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	ble _0809DF18
_0809DECE:
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0809DEE2
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0809DEE2:
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0xA0
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	movs r5, #0x02
	ldsh r0, [r3, r5]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0809DF18
	movs r0, #0x00
	strh r0, [r2, #0x00]
	movs r1, #0x02
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809DF18:
	ldr r5, [r4, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809DF42
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x08
	bne _0809DF42
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r5, #0x4C]
_0809DF42:
	ldr r0, [r4, #0x28]
	ldr r5, _0809DFB0 @ =0x00000113
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0809DFA6
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DF5C
	adds r1, #0xFF
_0809DF5C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DF66
	adds r2, #0xFF
_0809DF66:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0xA0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
	ldr r0, _0809DFB4 @ =0x0809E439
	str r0, [r4, #0x4C]
_0809DFA6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DFB0: .4byte 0x00000113
_0809DFB4: .4byte sub_809E438
	thumb_func_start sub_809DFB8
sub_809DFB8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _0809DFD6
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
_0809DFD6:
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bne _0809E020
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DFE6
	adds r1, #0xFF
_0809DFE6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DFF0
	adds r2, #0xFF
_0809DFF0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809DFFA
	adds r3, #0xFF
_0809DFFA:
	asrs r3, r3, #0x08
	str r0, [sp, #0x000]
	ldr r0, _0809E01C @ =0x000022AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x02
	negs r0, r0
	b _0809E052
	.byte 0x00, 0x00
_0809E01C: .4byte 0x000022AB
_0809E020:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0xC0
	lsls r1, r1, #0x02
	strh r1, [r0, #0x00]
	subs r0, #0x0A
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
_0809E052:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_809E05C
sub_809E05C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r7, r6, #0x0
	adds r7, #0xB2
	movs r0, #0x00
	strh r0, [r7, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xA8
	ldr r0, _0809E0E0 @ =0x083B8996
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_809E2E8
	ldr r0, [r6, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809E0D8
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r5, [r6, #0x30]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	strb r4, [r1, #0x12]
	ldr r2, _0809E0E4 @ =0x0809E411
	str r2, [r6, #0x4C]
	ldr r1, _0809E0E8 @ =0x083B899C
	movs r3, #0x00
	ldsh r0, [r7, r3]
	adds r0, r0, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl _call_via_r2
_0809E0D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809E0E0: .4byte 0x083B8996
_0809E0E4: .4byte sub_809E410
_0809E0E8: .4byte 0x083B899C
	thumb_func_start sub_809E0EC
sub_809E0EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	ldr r2, _0809E25C @ =0x083B898C
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, _0809E260 @ =0x083B8996
	adds r1, #0x01
	adds r1, r1, r0
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x08
	mov r9, r0
	adds r1, r7, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r6, r0, r2
	mov r3, r9
	subs r0, r3, r6
	muls r0, r2
	cmp r0, #0x00
	bgt _0809E132
	mov r6, r9
	movs r0, #0x80
	lsls r0, r0, #0x09
	mov r9, r0
_0809E132:
	str r6, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_809E2E8
	movs r1, #0x06
	mov r8, r1
	movs r2, #0x93
	lsls r2, r2, #0x02
	mov r10, r2
_0809E144:
	ldr r3, _0809E264 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	mov r0, r8
	lsls r1, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809E216
	movs r4, #0x38
	ands r4, r1
	cmp r4, #0x00
	bne _0809E216
	ldr r1, [r5, #0x40]
	movs r0, #0xC0
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _0809E216
	ldr r0, [r7, #0x38]
	str r0, [sp, #0x004]
	ldr r0, [r7, #0x3C]
	str r0, [sp, #0x008]
	ldr r0, [r7, #0x40]
	str r0, [sp, #0x00C]
	mov r1, r10
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	add r1, sp, #0x004
	add r2, sp, #0x008
	add r3, sp, #0x00C
	bl sub_8082C58
	ldr r0, [r5, #0x38]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x3C]
	ldr r2, _0809E268 @ =0xFFFFEC00
	adds r0, r0, r2
	str r0, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _0809E264 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	str r4, [sp, #0x000]
	add r1, sp, #0x010
	add r2, sp, #0x014
	add r3, sp, #0x018
	bl sub_8082C58
	ldr r1, [sp, #0x010]
	ldr r0, [sp, #0x004]
	subs r3, r1, r0
	ldr r4, _0809E26C @ =0x08198504
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0809E1C6
	adds r0, #0xFF
_0809E1C6:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r2, r0, #0x01
	adds r0, r2, r4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809E1DA
	adds r0, #0x3F
_0809E1DA:
	asrs r0, r0, #0x06
	muls r3, r0
	ldr r1, [sp, #0x014]
	ldr r0, [sp, #0x008]
	subs r1, r1, r0
	ldr r0, _0809E270 @ =0x08198584
	adds r0, r2, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0809E1F2
	adds r0, #0x3F
_0809E1F2:
	asrs r0, r0, #0x06
	muls r0, r1
	adds r0, r3, r0
	cmp r0, #0x00
	bge _0809E200
	ldr r3, _0809E274 @ =0x00001FFF
	adds r0, r0, r3
_0809E200:
	asrs r0, r0, #0x0D
	adds r1, r0, #0x0
	muls r1, r0
	ldr r0, _0809E278 @ =0x00000FFF
	cmp r1, r0
	bgt _0809E216
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809E216:
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x07
	ble _0809E144
	movs r0, #0x80
	lsls r0, r0, #0x09
	cmp r9, r0
	bne _0809E2D0
	adds r2, r7, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bgt _0809E28C
	ldr r0, _0809E27C @ =0x0809E411
	str r0, [r7, #0x4C]
	ldr r1, _0809E280 @ =0x083B899C
	movs r3, #0x00
	ldsh r0, [r2, r3]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r7, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0809E284
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _0809E2D0
_0809E25C: .4byte 0x083B898C
_0809E260: .4byte 0x083B8996
_0809E264: .4byte 0x03000FD8
_0809E268: .4byte 0xFFFFEC00
_0809E26C: .4byte 0x08198504
_0809E270: .4byte 0x08198584
_0809E274: .4byte 0x00001FFF
_0809E278: .4byte 0x00000FFF
_0809E27C: .4byte sub_809E410
_0809E280: .4byte 0x083B899C
_0809E284:
	ldr r0, _0809E288 @ =0x0809E0ED
	b _0809E2CE
_0809E288: .4byte sub_809E0EC
_0809E28C:
	ldr r0, [r7, #0x28]
	ldr r2, _0809E2E0 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	movs r6, #0x02
	orrs r0, r6
	strb r0, [r2, #0x12]
	ldr r5, [r7, #0x30]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	orrs r4, r6
	strb r4, [r1, #0x12]
	ldr r0, _0809E2E4 @ =0x0809E3E1
_0809E2CE:
	str r0, [r7, #0x4C]
_0809E2D0:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809E2E0: .4byte 0x00000113
_0809E2E4: .4byte sub_809E3E0
	thumb_func_start sub_809E2E8
sub_809E2E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r1, r0, #0x0
	adds r1, #0xA8
	ldr r2, [r1, #0x00]
	ldr r5, [r0, #0x30]
	ldr r1, [r5, #0x08]
	strh r2, [r1, #0x0C]
	ldr r1, [r0, #0x38]
	str r1, [sp, #0x000]
	ldr r4, [r0, #0x3C]
	str r4, [sp, #0x004]
	ldr r0, [r0, #0x40]
	str r0, [sp, #0x008]
	ldr r4, _0809E3CC @ =0x08198584
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0809E316
	adds r0, #0xFF
_0809E316:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	lsls r3, r0, #0x01
	adds r0, r3, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _0809E32A
	adds r1, #0x3F
_0809E32A:
	asrs r1, r1, #0x06
	negs r1, r1
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x06
	str r0, [sp, #0x00C]
	ldr r0, _0809E3D0 @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809E344
	adds r0, #0x3F
_0809E344:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x06
	mov r9, r0
	adds r4, r5, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _0809E3BC
	ldr r0, _0809E3D4 @ =0x03001038
	mov r10, r0
	ldr r1, _0809E3D8 @ =0x0819832C
	ldr r0, _0809E3DC @ =0x08198220
	subs r7, r1, r0
	movs r1, #0x00
	mov r8, r1
	mov r6, r9
	ldr r5, [sp, #0x00C]
_0809E368:
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x18
	bl _call_via_r2
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x18
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x18
	bl _call_via_r2
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	movs r1, #0x00
	lsls r0, r1, #0x01
	add r8, r0
	mov r1, r9
	lsls r0, r1, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x00C]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0809E368
_0809E3BC:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809E3CC: .4byte 0x08198584
_0809E3D0: .4byte 0x08198504
_0809E3D4: .4byte 0x03001038
_0809E3D8: .4byte 0x0819832C
_0809E3DC: .4byte 0x08198220
	thumb_func_start sub_809E3E0
sub_809E3E0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_809E2E8
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809E408
	movs r0, #0xD2
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0809E408:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
