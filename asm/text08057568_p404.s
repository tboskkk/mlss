	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8076D90
sub_8076D90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076DAC
	b _08076F7C
_08076DAC:
	mov r0, r9
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DBC
	adds r0, #0xFF
_08076DBC:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DCA
	adds r0, #0xFF
_08076DCA:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DD8
	adds r0, #0xFF
_08076DD8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076E98 @ =0x00004049
	bl sub_807BF34
	adds r5, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x30]
	str r0, [r5, #0x30]
	str r5, [r1, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076E9C @ =0x08087541
	str r0, [r5, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r2, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r3, [r5, #0x10]
	mov r10, r3
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x00C]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x84
	subs r7, r1, r3
	str r7, [r4, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [sp, #0x00C]
	subs r2, r0, r2
	mov r8, r2
	str r2, [r6, #0x00]
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08076EA4
	mov r0, r9
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08076EA0 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r4, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	str r0, [r4, #0x00]
	adds r2, r4, #0x0
	b _08076EF8
_08076E98: .4byte 0x00004049
_08076E9C: .4byte sub_8087540
_08076EA0: .4byte 0x03001038
_08076EA4:
	mov r0, r9
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r4, #0x00]
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r6, #0x00]
	ldr r7, [r4, #0x00]
	mov r8, r0
	ldr r2, _08076F8C @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r6, #0x00
	bge _08076EEC
	ldr r1, _08076F90 @ =0x000001FF
	adds r0, r6, r1
_08076EEC:
	asrs r0, r0, #0x09
	str r0, [r2, #0x00]
	cmp r0, #0x2F
	bgt _08076EF8
	movs r0, #0x30
	str r0, [r2, #0x00]
_08076EF8:
	mov r0, r10
	cmp r0, #0x00
	bge _08076F00
	adds r0, #0xFF
_08076F00:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r3, #0x00
	mov r10, r3
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _08076F14
	adds r1, #0xFF
_08076F14:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r1, _08076F94 @ =0x000001B3
	adds r0, r6, #0x0
	str r2, [sp, #0x010]
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r1, r4, #0x1F
	adds r1, r4, r1
	asrs r1, r1, #0x01
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08076F4A
	movs r0, #0x02
_08076F4A:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	str r3, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r0, _08076F98 @ =0x08076FA1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _08076F9C @ =0x08077095
	mov r2, r9
	str r0, [r2, #0x4C]
_08076F7C:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076F8C: .4byte 0x03001038
_08076F90: .4byte 0x000001FF
_08076F94: .4byte 0x000001B3
_08076F98: .4byte sub_8076FA0
_08076F9C: .4byte sub_8077094
	thumb_func_start sub_8076FA0
sub_8076FA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08076FAC
	adds r1, #0xFF
_08076FAC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08076FBE
	adds r0, r5, #0x0
	bl sub_807C298
	b _0807708C
_08076FBE:
	ldr r1, [r5, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r5, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	ble _0807708C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08077064
	adds r0, #0xFF
_08077064:
	asrs r0, r0, #0x08
	cmp r0, #0x07
	bgt _0807708C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08077078
	adds r0, #0xFF
_08077078:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077084
	adds r0, #0xFF
_08077084:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	movs r0, #0x00
	strh r0, [r6, #0x00]
_0807708C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077094
sub_8077094:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080770B4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080770B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80770BC
sub_80770BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807710C
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080770E4
	adds r0, r4, #0x0
	bl sub_8086700
	b _0807710C
_080770E4:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r2, r0, #0x0
	cmp r1, #0x10
	bne _08077104
	ldr r0, _08077100 @ =0x08076C15
	b _08077106
_08077100: .4byte sub_8076C14
_08077104:
	ldr r0, _08077114 @ =0x08076D05
_08077106:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0807710C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077114: .4byte sub_8076D04
	thumb_func_start sub_8077118
sub_8077118:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077138
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077138:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077140
sub_8077140:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077154
	adds r1, #0xFF
_08077154:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807715E
	adds r2, #0xFF
_0807715E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077168
	adds r3, #0xFF
_08077168:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077184 @ =0x000025B9
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08077184: .4byte 0x000025B9
	thumb_func_start sub_8077188
sub_8077188:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080771CC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807719E
	adds r1, #0xFF
_0807719E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080771A8
	adds r2, #0xFF
_080771A8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080771B2
	adds r3, #0xFF
_080771B2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080771D4 @ =0x000025AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x76
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080771CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080771D4: .4byte 0x000025AB
	thumb_func_start sub_80771D8
sub_80771D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080771F8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080771F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077200
sub_8077200:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0807724C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08077248 @ =0x08077571
	str r0, [r5, #0x4C]
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _08077282
_08077248: .4byte sub_8077570
_0807724C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807725E
	adds r1, #0xFF
_0807725E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08077268
	adds r2, #0xFF
_08077268:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08077272
	adds r3, #0xFF
_08077272:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0807728C @ =0x000024CB
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
_08077282:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807728C: .4byte 0x000024CB
	thumb_func_start sub_8077290
sub_8077290:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080772EA
	movs r0, #0x3C
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	cmp r1, #0x00
	bne _080772E0
	ldr r0, [r5, #0x28]
	adds r0, #0xAC
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080772EA
_080772E0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA8
	bl play_sfx_80195B4
_080772EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80772F0
sub_80772F0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077340
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807731E
	adds r1, #0xFF
_0807731E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077328
	adds r2, #0xFF
_08077328:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077332
	adds r3, #0xFF
_08077332:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077348 @ =0x00002515
	bl sub_80DF024
	ldr r0, _0807734C @ =0x080775A5
	str r0, [r4, #0x4C]
_08077340:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077348: .4byte 0x00002515
_0807734C: .4byte sub_80775A4
	thumb_func_start sub_8077350
sub_8077350:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077386
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	ldr r0, _0807738C @ =0x080764D9
	str r0, [r4, #0x4C]
_08077386:
	pop {r4}
	pop {r0}
	bx r0
_0807738C: .4byte sub_80764D8
	thumb_func_start sub_8077390
sub_8077390:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080773CE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080773AC
	adds r1, #0xFF
_080773AC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080773B6
	adds r2, #0xFF
_080773B6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080773C0
	adds r3, #0xFF
_080773C0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080773E4 @ =0x000024E9
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_080773CE:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080773DC
	ldr r0, _080773E8 @ =0x08077611
	str r0, [r4, #0x4C]
_080773DC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080773E4: .4byte 0x000024E9
_080773E8: .4byte sub_8077610
	thumb_func_start sub_80773EC
sub_80773EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077434
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077412
	adds r1, #0xFF
_08077412:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807741C
	adds r2, #0xFF
_0807741C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077426
	adds r3, #0xFF
_08077426:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807743C @ =0x000025F5
	bl sub_80DF024
	ldr r0, _08077440 @ =0x08076339
	str r0, [r4, #0x4C]
_08077434:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807743C: .4byte 0x000025F5
_08077440: .4byte sub_8076338
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xE5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x55, 0x75, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x39, 0x75, 0x07, 0x08
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x0A, 0x1C, 0x9C, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20
	.byte 0x10, 0x60, 0x0A, 0x1C, 0xA0, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x04, 0x20, 0x10, 0x60
	.byte 0x02, 0x48, 0xC8, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x69, 0x76, 0x07, 0x08
	thumb_func_start sub_80774A4
sub_80774A4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0x9C
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080774C8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080774D4
_080774C8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080774D4:
	ldr r0, _080774E0 @ =0x08076D91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080774E0: .4byte sub_8076D90
	thumb_func_start sub_80774E4
sub_80774E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080774FC
	adds r1, #0xFF
_080774FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077506
	adds r2, #0xFF
_08077506:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077510
	adds r3, #0xFF
_08077510:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077530 @ =0x00002563
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	ldr r0, _08077534 @ =0x080776B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077530: .4byte 0x00002563
_08077534: .4byte sub_80776B4
	thumb_func_start sub_8077538
sub_8077538:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077550 @ =0x08076575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08077550: .4byte sub_8076574
	thumb_func_start sub_8077554
sub_8077554:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08077560
_0807755A:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_08077560:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807755A
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
