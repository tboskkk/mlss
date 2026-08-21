	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806386C
sub_806386C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x0C]
	adds r0, r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08063918
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x45
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	bl sub_807F47C
	adds r0, r6, #0x0
	bl sub_807C298
_08063918:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8063920
sub_8063920:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806397E
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08063938
	adds r2, #0xFF
_08063938:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08063942
	adds r3, #0xFF
_08063942:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08063958
	movs r0, #0x13
	b _0806395A
_08063958:
	movs r0, #0x12
_0806395A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x1E
	str r1, [r0, #0x00]
	ldr r0, _08063988 @ =0x08063A75
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806397E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063988: .4byte sub_8063A74
	thumb_func_start sub_806398C
sub_806398C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080639B4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x03
	strh r1, [r0, #0x00]
	ldr r0, _080639BC @ =0x08063AD5
	str r0, [r4, #0x4C]
_080639B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080639BC: .4byte sub_8063AD4
	thumb_func_start sub_80639C0
sub_80639C0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08063A12
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x10]
	str r1, [r4, #0x38]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	cmp r1, #0x00
	bge _080639E4
	adds r1, #0xFF
_080639E4:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080639EC
	adds r0, #0xFF
_080639EC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080639F8
	adds r3, #0xFF
_080639F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063A1C @ =0x00001296
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A20 @ =0x08063B2D
	str r0, [r4, #0x4C]
_08063A12:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A1C: .4byte 0x00001296
_08063A20: .4byte sub_8063B2C
	thumb_func_start sub_8063A24
sub_8063A24:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063A40
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A48 @ =0x080635FD
	str r0, [r4, #0x4C]
_08063A40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A48: .4byte sub_80635FC
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x59, 0x3B, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x59, 0x3B, 0x06, 0x08
	thumb_func_start sub_8063A74
sub_8063A74:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08063ACC
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08063AB8 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	movs r0, #0x00
	str r0, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08063AC0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063ABC @ =0x0806386D
	str r0, [r4, #0x4C]
	b _08063ACC
	.byte 0x00, 0x00
_08063AB8: .4byte sub_8087540
_08063ABC: .4byte sub_806386C
_08063AC0:
	adds r0, r1, #0x0
	bl sub_8086700
	adds r0, r4, #0x0
	bl sub_807C298
_08063ACC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8063AD4
sub_8063AD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B1A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08063B1A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063B20 @ =0x00001471
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063B24 @ =0x08063B81
	str r0, [r4, #0x5C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _08063B28 @ =0x08063BA9
	str r0, [r4, #0x4C]
_08063B1A:
	pop {r4}
	pop {r0}
	bx r0
_08063B20: .4byte 0x00001471
_08063B24: .4byte sub_8063B80
_08063B28: .4byte sub_8063BA8
	thumb_func_start sub_8063B2C
sub_8063B2C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B4C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B54 @ =0x08063BF1
	str r0, [r4, #0x4C]
_08063B4C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B54: .4byte sub_8063BF0
	thumb_func_start sub_8063B58
sub_8063B58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063B74
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B7C @ =0x08063569
	str r0, [r4, #0x4C]
_08063B74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B7C: .4byte sub_8063568
	thumb_func_start sub_8063B80
sub_8063B80:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08063B9A
	ldr r0, _08063BA4 @ =0x08063C25
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x10
	str r0, [r1, #0x00]
_08063B9A:
	adds r0, r2, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063BA4: .4byte sub_8063C24
	thumb_func_start sub_8063BA8
sub_8063BA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063BDC
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063BE4 @ =0x00001485
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063BE8 @ =0x08063B81
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08063BEC @ =0x08063C8D
	str r0, [r4, #0x4C]
_08063BDC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063BE4: .4byte 0x00001485
_08063BE8: .4byte sub_8063B80
_08063BEC: .4byte sub_8063C8C
