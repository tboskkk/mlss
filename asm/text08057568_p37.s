	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809AECC
sub_809AECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _0809AF58 @ =0x03000FD8
	mov r9, r0
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x34]
	mov r8, r2
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0809AF38
	mov r0, r8
	ldrb r5, [r0, #0x01]
	ldrb r6, [r0, #0x02]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r5
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_80880C4
_0809AF38:
	mov r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
	ldr r0, _0809AF5C @ =0x0809AB49
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809AF58: .4byte 0x03000FD8
_0809AF5C: .4byte sub_809AB48
	thumb_func_start sub_809AF60
sub_809AF60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809AF9E
	ldr r2, _0809AFA4 @ =0x000040C0
	adds r0, r4, #0x0
	movs r1, #0x01
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
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r1, _0809AFA8 @ =0x0200004A
	ldr r2, _0809AFAC @ =0x0000C0FF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0809AFB0 @ =0x0809AECD
	str r0, [r4, #0x4C]
_0809AF9E:
	pop {r4}
	pop {r0}
	bx r0
_0809AFA4: .4byte 0x000040C0
_0809AFA8: .4byte 0x0200004A
_0809AFAC: .4byte 0x0000C0FF
_0809AFB0: .4byte sub_809AECC
	thumb_func_start sub_809AFB4
sub_809AFB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B008
	ldr r2, _0809B010 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x28
	bl sub_81DD77C
	adds r0, #0x1E
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA8
	adds r0, #0x32
	str r0, [r1, #0x00]
	ldr r0, _0809B014 @ =0x0809A9A1
	str r0, [r4, #0x4C]
_0809B008:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B010: .4byte 0x000040BE
_0809B014: .4byte sub_809A9A0
	.byte 0x00, 0x21, 0x01, 0x65, 0x03, 0x49, 0xC1, 0x64, 0x7C, 0x30, 0x80, 0x21, 0x49, 0x00, 0x01, 0x80
	.byte 0x01, 0x20, 0x70, 0x47, 0x39, 0xB0, 0x09, 0x08, 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_809B038
sub_809B038:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _0809B060 @ =0x000040BE
	movs r1, #0x02
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
	ldr r0, _0809B064 @ =0x0809B069
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809B060: .4byte 0x000040BE
_0809B064: .4byte sub_809B068
	thumb_func_start sub_809B068
sub_809B068:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B098
	ldr r2, _0809B0A0 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809B0A4 @ =0x0809B0A9
	str r0, [r4, #0x4C]
_0809B098:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B0A0: .4byte 0x000040BE
_0809B0A4: .4byte sub_809B0A8
	thumb_func_start sub_809B0A8
sub_809B0A8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B100
	ldr r2, _0809B108 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x04
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
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B0DE
	adds r1, #0xFF
_0809B0DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B0E8
	adds r2, #0xFF
_0809B0E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B0F2
	adds r3, #0xFF
_0809B0F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B10C @ =0x000011B8
	bl sub_80DF024
	ldr r0, _0809B110 @ =0x0809A8A1
	str r0, [r4, #0x4C]
_0809B100:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809B108: .4byte 0x000040BE
_0809B10C: .4byte 0x000011B8
_0809B110: .4byte sub_809A8A0
	thumb_func_start sub_809B114
sub_809B114:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0809B13C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B160
	cmp r1, r2
	bne _0809B144
	ldr r2, _0809B140 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x02
	b _0809B14A
_0809B13C: .4byte 0x03000FD8
_0809B140: .4byte 0x000040BF
_0809B144:
	ldr r2, _0809B194 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x05
_0809B14A:
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
_0809B160:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B168
	adds r1, #0xFF
_0809B168:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B172
	adds r2, #0xFF
_0809B172:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B17C
	adds r3, #0xFF
_0809B17C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B198 @ =0x000011E6
	bl sub_80DF024
	ldr r0, _0809B19C @ =0x0809B479
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B194: .4byte 0x000040BF
_0809B198: .4byte 0x000011E6
_0809B19C: .4byte sub_809B478
	thumb_func_start sub_809B1A0
sub_809B1A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0809B1C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B21A
	cmp r2, r3
	bne _0809B1D0
	ldr r2, _0809B1CC @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x04
	b _0809B1D6
_0809B1C8: .4byte 0x03000FD8
_0809B1CC: .4byte 0x000040BF
_0809B1D0:
	ldr r2, _0809B220 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x07
_0809B1D6:
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
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B216
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B216:
	ldr r0, _0809B224 @ =0x0809B229
	str r0, [r4, #0x4C]
_0809B21A:
	pop {r4}
	pop {r0}
	bx r0
_0809B220: .4byte 0x000040BF
_0809B224: .4byte sub_809B228
	thumb_func_start sub_809B228
sub_809B228:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r5, r4, #0x0
	adds r5, #0x79
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B2A4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B248
	adds r1, #0xFF
_0809B248:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B252
	adds r2, #0xFF
_0809B252:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B25C
	adds r3, #0xFF
_0809B25C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B2AC @ =0x000011F0
	bl sub_80DF024
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B2A0
	ldr r2, _0809B2B0 @ =0x03001038
	ldr r0, _0809B2B4 @ =0x0819832C
	ldr r1, _0809B2B8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x28
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0809B2A0:
	ldr r0, _0809B2BC @ =0x0809B411
	str r0, [r4, #0x4C]
_0809B2A4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809B2AC: .4byte 0x000011F0
_0809B2B0: .4byte 0x03001038
_0809B2B4: .4byte 0x0819832C
_0809B2B8: .4byte 0x08198220
_0809B2BC: .4byte sub_809B410
	thumb_func_start sub_809B2C0
sub_809B2C0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _0809B324 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	ldr r1, [r5, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B300
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B300
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809B300:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B35A
	cmp r4, r7
	bne _0809B328
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809B328
	adds r4, r6, #0x0
	b _0809B33E
_0809B324: .4byte 0x03000FD8
_0809B328:
	cmp r4, r6
	bne _0809B33C
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r4, r7, #0x0
	cmp r0, #0x02
	beq _0809B33E
_0809B33C:
	movs r4, #0x00
_0809B33E:
	cmp r4, #0x00
	beq _0809B356
	str r4, [r5, #0x2C]
	ldr r1, _0809B364 @ =0x000040C2
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	bl sub_807C0D0
	ldr r1, _0809B368 @ =0x0809B371
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B356:
	ldr r0, _0809B36C @ =0x0809B3DD
	str r0, [r5, #0x4C]
_0809B35A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B364: .4byte 0x000040C2
_0809B368: .4byte sub_809B370
_0809B36C: .4byte sub_809B3DC
	thumb_func_start sub_809B370
sub_809B370:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x98
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B3C0
	ldr r2, _0809B3CC @ =0x03001038
	ldr r0, _0809B3D0 @ =0x0819832C
	ldr r1, _0809B3D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x18
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B3C0:
	ldr r0, _0809B3D8 @ =0x0809B505
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B3CC: .4byte 0x03001038
_0809B3D0: .4byte 0x0819832C
_0809B3D4: .4byte 0x08198220
_0809B3D8: .4byte sub_809B504
	thumb_func_start sub_809B3DC
sub_809B3DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B402
	ldrb r1, [r1, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B40A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809B402:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0809B40A
	str r0, [r4, #0x4C]
_0809B40A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_809B410
sub_809B410:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	bl sub_80884AC
	adds r5, r4, #0x0
	adds r5, #0x79
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B466
	ldr r1, _0809B46C @ =0x000040C2
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_807C0D0
	ldr r1, _0809B470 @ =0x0809B559
	str r1, [r0, #0x4C]
	bl _call_via_r1
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B462
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0809B462:
	ldr r0, _0809B474 @ =0x0809B2C1
	str r0, [r4, #0x4C]
_0809B466:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809B46C: .4byte 0x000040C2
_0809B470: .4byte sub_809B558
_0809B474: .4byte sub_809B2C0
	thumb_func_start sub_809B478
sub_809B478:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _0809B4B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809B49E
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B4DC
_0809B49E:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x65
	bl play_sfx_80195B4
	cmp r5, r6
	bne _0809B4BC
	ldr r2, _0809B4B8 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x03
	b _0809B4C2
_0809B4B4: .4byte 0x03000FD8
_0809B4B8: .4byte 0x000040BF
_0809B4BC:
	ldr r2, _0809B4E4 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x06
_0809B4C2:
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
	ldr r0, _0809B4E8 @ =0x0809B1A1
	str r0, [r4, #0x4C]
_0809B4DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B4E4: .4byte 0x000040BF
_0809B4E8: .4byte sub_809B1A0
	.byte 0x00, 0x21, 0x01, 0x65, 0x03, 0x49, 0xC1, 0x64, 0x7C, 0x30, 0x80, 0x21, 0x49, 0x00, 0x01, 0x80
	.byte 0x01, 0x20, 0x70, 0x47, 0x15, 0xB1, 0x09, 0x08
	thumb_func_start sub_809B504
sub_809B504:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B544
	ldr r2, _0809B54C @ =0x000040C2
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
	ldr r0, _0809B550 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0809B554 @ =0x0809B5A9
	str r0, [r4, #0x4C]
_0809B544:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B54C: .4byte 0x000040C2
_0809B550: .4byte 0x0000015D
_0809B554: .4byte sub_809B5A8
	thumb_func_start sub_809B558
sub_809B558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x98
	lsls r0, r0, #0x06
	str r0, [r4, #0x18]
	ldr r2, _0809B59C @ =0x000040C2
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
	ldr r0, _0809B5A0 @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0809B5A4 @ =0x0809B611
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809B59C: .4byte 0x000040C2
_0809B5A0: .4byte 0x0000015D
_0809B5A4: .4byte sub_809B610
	thumb_func_start sub_809B5A8
sub_809B5A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B5FA
	ldr r2, _0809B604 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x02
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
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809B5E0
	adds r1, #0xFF
_0809B5E0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809B5EA
	adds r2, #0xFF
_0809B5EA:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809B608 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, _0809B60C @ =0x0809B679
	str r0, [r4, #0x4C]
_0809B5FA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B604: .4byte 0x000040C2
_0809B608: .4byte 0x00001202
_0809B60C: .4byte sub_809B678
	thumb_func_start sub_809B610
sub_809B610:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r5, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B662
	ldr r2, _0809B66C @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x02
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
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809B648
	adds r1, #0xFF
_0809B648:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809B652
	adds r2, #0xFF
_0809B652:
	asrs r2, r2, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809B670 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, _0809B674 @ =0x0809B6D9
	str r0, [r4, #0x4C]
_0809B662:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B66C: .4byte 0x000040C2
_0809B670: .4byte 0x00001202
_0809B674: .4byte sub_809B6D8
	thumb_func_start sub_809B678
sub_809B678:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B69C
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B69C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B69C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B6C8
	ldr r2, _0809B6D0 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809B6D4 @ =0x0809B739
	str r0, [r4, #0x4C]
_0809B6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B6D0: .4byte 0x000040C2
_0809B6D4: .4byte sub_809B738
	thumb_func_start sub_809B6D8
sub_809B6D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B6FC
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B6FC
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B6FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B728
	ldr r2, _0809B730 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809B734 @ =0x0809B755
	str r0, [r4, #0x4C]
_0809B728:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B730: .4byte 0x000040C2
_0809B734: .4byte sub_809B754
	thumb_func_start sub_809B738
sub_809B738:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B74E
	adds r0, r2, #0x0
	bl sub_807C298
_0809B74E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809B754
sub_809B754:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B76A
	adds r0, r2, #0x0
	bl sub_807C298
_0809B76A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_809B770
sub_809B770:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B7CA
	ldr r2, _0809B7D0 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x0A
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
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B7C6
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809B7C6:
	ldr r0, _0809B7D4 @ =0x0809B7D9
	str r0, [r4, #0x4C]
_0809B7CA:
	pop {r4}
	pop {r0}
	bx r0
_0809B7D0: .4byte 0x000040BF
_0809B7D4: .4byte sub_809B7D8
	thumb_func_start sub_809B7D8
sub_809B7D8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0809B888 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x74]
	movs r0, #0x08
	adds r0, r0, r7
	mov r8, r0
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B87A
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B810
	adds r1, #0xFF
_0809B810:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B81A
	adds r2, #0xFF
_0809B81A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B824
	adds r3, #0xFF
_0809B824:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B88C @ =0x000011F0
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809B852
	str r6, [r4, #0x2C]
	ldr r1, _0809B890 @ =0x000040C2
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_807C0D0
	ldr r1, _0809B894 @ =0x0809B961
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B852:
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0809B876
	mov r0, r8
	str r0, [r4, #0x2C]
	ldr r1, _0809B890 @ =0x000040C2
	adds r0, r4, #0x0
	mov r2, r8
	bl sub_807C0D0
	ldr r1, _0809B894 @ =0x0809B961
	str r1, [r0, #0x4C]
	bl _call_via_r1
_0809B876:
	ldr r0, _0809B898 @ =0x0809B9CD
	str r0, [r4, #0x4C]
_0809B87A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B888: .4byte 0x03000FD8
_0809B88C: .4byte 0x000011F0
_0809B890: .4byte 0x000040C2
_0809B894: .4byte sub_809B960
_0809B898: .4byte sub_809B9CC
	thumb_func_start sub_809B89C
sub_809B89C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B90C
	ldr r2, _0809B914 @ =0x000040C2
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
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809B8D4
	adds r1, #0xFF
_0809B8D4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B8DE
	adds r2, #0xFF
_0809B8DE:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B918 @ =0x00001202
	movs r3, #0x00
	bl sub_80DF024
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _0809B908
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B908
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B908:
	ldr r0, _0809B91C @ =0x0809B921
	str r0, [r5, #0x4C]
_0809B90C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0809B914: .4byte 0x000040C2
_0809B918: .4byte 0x00001202
_0809B91C: .4byte sub_809B920
	thumb_func_start sub_809B920
sub_809B920:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B950
	ldr r2, _0809B958 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
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
	ldr r0, _0809B95C @ =0x0809BA29
	str r0, [r4, #0x4C]
_0809B950:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B958: .4byte 0x000040C2
_0809B95C: .4byte sub_809BA28
