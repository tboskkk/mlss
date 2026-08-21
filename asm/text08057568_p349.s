	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8096C4C
sub_8096C4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, _08096D74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r7, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _08096D78 @ =0x03001038
	ldr r2, _08096D7C @ =0x0819832C
	ldr r3, _08096D80 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _08096C9E
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _08096CA0
_08096C9E:
	movs r1, #0x00
_08096CA0:
	cmp r1, #0x00
	beq _08096CD2
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096CB6
	cmp r1, #0x04
	bne _08096CD2
_08096CB6:
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
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
_08096CD2:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08096D68
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9F
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x08]
	bl sub_807FB64
	ldr r0, [r5, #0x28]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096D08
	cmp r1, #0x04
	bne _08096D20
_08096D08:
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08096D20:
	ldr r0, [r7, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08096D64
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096D64
	ldr r2, _08096D84 @ =0x00002051
	cmp r7, r8
	bne _08096D4A
	subs r2, #0x2F
_08096D4A:
	adds r0, r7, #0x0
	movs r1, #0x08
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
_08096D64:
	ldr r0, _08096D88 @ =0x08095E05
	str r0, [r5, #0x4C]
_08096D68:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096D74: .4byte 0x03000FD8
_08096D78: .4byte 0x03001038
_08096D7C: .4byte 0x0819832C
_08096D80: .4byte 0x08198220
_08096D84: .4byte 0x00002051
_08096D88: .4byte sub_8095E04
	thumb_func_start sub_8096D8C
sub_8096D8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08096DF8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08096DCA
	ldr r2, _08096DFC @ =0x00002051
	cmp r5, r3
	bne _08096DB0
	subs r2, #0x2F
_08096DB0:
	adds r0, r5, #0x0
	movs r1, #0x01
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
_08096DCA:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r2, _08096E00 @ =0x0000208D
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0x78
	ldrb r1, [r4, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _08096E04 @ =0x080967A5
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08096DF8: .4byte 0x03000FD8
_08096DFC: .4byte 0x00002051
_08096E00: .4byte 0x0000208D
_08096E04: .4byte sub_80967A4
	thumb_func_start sub_8096E08
sub_8096E08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _08096E3A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x06
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
	ldr r0, _08096E40 @ =0x08096F09
	str r0, [r4, #0x4C]
_08096E3A:
	pop {r4}
	pop {r0}
	bx r0
_08096E40: .4byte sub_8096F08
	thumb_func_start sub_8096E44
sub_8096E44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08096E64
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08096E64:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8096E6C
sub_8096E6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _08096E84
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08096EAC
_08096E84:
	ldr r1, _08096EB4 @ =0x0000208C
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	ldr r1, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08096EB8 @ =0x080963E5
	str r0, [r4, #0x4C]
_08096EAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096EB4: .4byte 0x0000208C
_08096EB8: .4byte sub_80963E4
	thumb_func_start sub_8096EBC
sub_8096EBC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08096F00
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08096EE0
	cmp r1, #0x04
	bne _08096EFA
_08096EE0:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08096EFA:
	adds r0, r5, #0x0
	bl sub_807C298
_08096F00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8096F08
sub_8096F08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08096F54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08096F4C
	ldr r2, _08096F58 @ =0x00002050
	cmp r4, r5
	bne _08096F2A
	subs r2, #0x4D
_08096F2A:
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
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _08096F5C @ =0x08096F61
	str r0, [r4, #0x4C]
_08096F4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096F54: .4byte 0x03000FD8
_08096F58: .4byte 0x00002050
_08096F5C: .4byte sub_8096F60
	thumb_func_start sub_8096F60
sub_8096F60:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08096F88 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	ble _08096F8C
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08096FB8
_08096F88: .4byte 0x03000FD8
_08096F8C:
	ldr r2, _08096FC0 @ =0x00002039
	adds r0, r3, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08096FC4 @ =0x00002068
	adds r0, r5, #0x0
	movs r1, #0x07
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
	ldr r0, _08096FC8 @ =0x08096FCD
	str r0, [r4, #0x4C]
_08096FB8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08096FC0: .4byte 0x00002039
_08096FC4: .4byte 0x00002068
_08096FC8: .4byte sub_8096FCC
	thumb_func_start sub_8096FCC
sub_8096FCC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097018 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08097010
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
	ldr r2, _0809701C @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x08
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
	ldr r0, _08097020 @ =0x08097025
	str r0, [r5, #0x4C]
_08097010:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097018: .4byte 0x03000FD8
_0809701C: .4byte 0x00002039
_08097020: .4byte sub_8097024
	thumb_func_start sub_8097024
sub_8097024:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097060 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x18
	bl play_sfx_80195B4
	ldr r2, _08097064 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x08
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
	ldr r0, _08097068 @ =0x0809706D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08097060: .4byte 0x03000FD8
_08097064: .4byte 0x00002068
_08097068: .4byte sub_809706C
	thumb_func_start sub_809706C
sub_809706C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080970B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080970AC
	movs r4, #0x01
	negs r4, r4
	adds r0, r2, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r6, #0x4C]
_080970AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080970B4: .4byte 0x03000FD8
	thumb_func_start sub_80970B8
sub_80970B8:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _08097140 @ =0x03000FF4
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x3C
	ldr r1, [r2, #0x00]
	subs r1, r1, r0
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r0, [r1, #0x2A]
	str r0, [r2, #0x00]
	ldr r0, _08097144 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r2, r9
	ldr r0, [r2, #0x2C]
	str r0, [r6, #0x2C]
	str r0, [r1, #0x2C]
	ldr r1, [r2, #0x6C]
	str r1, [r6, #0x6C]
	mov r2, r8
	str r1, [r2, #0x6C]
	movs r3, #0x00
	str r3, [r0, #0x50]
	str r3, [r6, #0x50]
	str r3, [r2, #0x50]
	adds r2, r0, #0x0
	adds r2, #0x7C
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x00]
	adds r4, #0x84
	strh r1, [r4, #0x00]
	adds r5, #0x84
	strh r1, [r5, #0x00]
	ldr r1, _08097148 @ =0x0809714D
	mov r4, r9
	str r1, [r4, #0x4C]
	strh r3, [r6, #0x24]
	mov r1, r8
	strh r3, [r1, #0x24]
	bl sub_80870B4
	movs r0, #0x01
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08097140: .4byte 0x03000FF4
_08097144: .4byte 0x03000FD8
_08097148: .4byte sub_809714C
	thumb_func_start sub_809714C
sub_809714C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	ldr r0, _08097298 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x004]
	movs r5, #0x00
	movs r6, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	ldr r2, _0809729C @ =0x03001038
	mov r10, r2
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r4, #0x06
	mov r12, r4
	movs r4, #0x05
_08097182:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _080971B8
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_080971B8:
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _080971EE
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_080971EE:
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08097224
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r6, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r5, #0x01
_08097224:
	adds r3, #0x0C
	subs r4, #0x03
	cmp r4, #0x00
	bge _08097182
	ldr r3, _080972A0 @ =0x0819832C
	ldr r0, _080972A4 @ =0x08198220
	subs r4, r3, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x1C]
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x1C]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	strh r0, [r1, #0x1E]
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x1E]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r4, [sp, #0x004]
	strh r0, [r4, #0x20]
	ldr r5, [sp, #0x000]
	strh r0, [r5, #0x20]
	mov r1, r9
	ldr r0, [r1, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r4, r9
	movs r5, #0x20
	ldsh r0, [r4, r5]
	cmp r1, r0
	blt _080972B0
	ldr r0, _080972A8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080972AC @ =0x00005470
	adds r0, r0, r1
	movs r1, #0x03
	b _080972BA
_08097298: .4byte 0x03000FD8
_0809729C: .4byte 0x03001038
_080972A0: .4byte 0x0819832C
_080972A4: .4byte 0x08198220
_080972A8: .4byte 0x03000FDC
_080972AC: .4byte 0x00005470
_080972B0:
	ldr r0, _080974C8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _080974CC @ =0x00005470
	adds r0, r0, r2
	movs r1, #0x02
_080972BA:
	str r1, [r0, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x28]
	movs r4, #0x83
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	movs r2, #0x20
	ldsh r1, [r3, r2]
	bl __divsi3
	ldr r6, _080974C8 @ =0x03000FDC
	ldr r2, [r6, #0x00]
	ldr r3, _080974CC @ =0x00005470
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080972E6
	adds r0, #0xFF
_080972E6:
	asrs r5, r0, #0x08
	ldr r4, _080974D0 @ =0x00005498
	adds r3, r2, r4
	movs r4, #0x00
	str r4, [r3, #0x00]
	ldr r0, _080974D4 @ =0x0000549C
	adds r1, r2, r0
	movs r7, #0x01
	str r7, [r1, #0x00]
	cmp r5, #0x08
	ble _08097302
	movs r0, #0x07
	str r0, [r3, #0x00]
	str r4, [r1, #0x00]
_08097302:
	cmp r5, #0x00
	bgt _08097314
	ldr r0, [r6, #0x00]
	ldr r2, _080974D0 @ =0x00005498
	adds r1, r0, r2
	str r7, [r1, #0x00]
	ldr r3, _080974D4 @ =0x0000549C
	adds r0, r0, r3
	str r4, [r0, #0x00]
_08097314:
	ldr r0, [r6, #0x00]
	ldr r5, _080974D8 @ =0x00005474
	adds r4, r0, r5
	mov r1, r9
	ldr r0, [r1, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r0, r0, #0x08
	movs r5, #0x20
	ldsh r1, [r1, r5]
	bl __divsi3
	adds r1, r0, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r1, r2
	cmp r0, #0x00
	bge _08097342
	ldr r3, _080974DC @ =0x000001FF
	adds r0, r1, r3
_08097342:
	asrs r0, r0, #0x08
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r4, _080974D8 @ =0x00005474
	adds r1, r0, r4
	ldr r0, [r1, #0x00]
	cmp r0, #0x04
	ble _08097356
	movs r0, #0x04
	str r0, [r1, #0x00]
_08097356:
	ldr r0, [r6, #0x00]
	ldr r5, _080974D8 @ =0x00005474
	adds r1, r0, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08097364
	str r7, [r1, #0x00]
_08097364:
	mov r1, r9
	ldr r0, [r1, #0x28]
	adds r3, r0, #0x0
	adds r3, #0xF5
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r1, #0x00
	bge _08097376
	adds r1, #0x03
_08097376:
	asrs r1, r1, #0x02
	ldr r0, [r6, #0x00]
	ldr r4, _080974E0 @ =0x00005478
	adds r2, r0, r4
	movs r0, #0x10
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x03
	bgt _0809738C
	movs r0, #0x04
	str r0, [r2, #0x00]
_0809738C:
	ldr r0, [r6, #0x00]
	ldr r5, _080974E4 @ =0x0000547C
	adds r2, r0, r5
	mov r0, r9
	movs r4, #0x1C
	ldsh r1, [r0, r4]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	subs r1, r1, r0
	movs r0, #0x0A
	subs r0, r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x03
	bgt _080973AC
	movs r0, #0x04
	str r0, [r2, #0x00]
_080973AC:
	ldr r0, [r6, #0x00]
	ldr r5, _080974E4 @ =0x0000547C
	adds r1, r0, r5
	ldr r0, [r1, #0x00]
	cmp r0, #0x0E
	ble _080973BC
	movs r0, #0x0E
	str r0, [r1, #0x00]
_080973BC:
	ldr r0, [r6, #0x00]
	movs r1, #0xA9
	lsls r1, r1, #0x07
	adds r4, r0, r1
	mov r2, r9
	ldr r0, [r2, #0x28]
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r3, r0, #0x08
	movs r0, #0x1E
	ldsh r2, [r2, r0]
	mov r5, r9
	movs r0, #0x1C
	ldsh r1, [r5, r0]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080973EC
	adds r0, #0xFF
_080973EC:
	asrs r1, r0, #0x08
	adds r1, r2, r1
	adds r0, r3, #0x0
	bl __divsi3
	movs r1, #0x46
	muls r0, r1
	cmp r0, #0x00
	bge _08097400
	adds r0, #0xFF
_08097400:
	asrs r0, r0, #0x08
	adds r0, #0x32
	str r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, _080974E8 @ =0x00005484
	adds r3, r0, r1
	mov r4, r9
	ldr r2, [r4, #0x28]
	movs r5, #0x84
	lsls r5, r5, #0x01
	adds r0, r2, r5
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r5, #0x1E
	ldsh r1, [r4, r5]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	cmp r0, #0x03
	bgt _0809742A
	movs r0, #0x04
	str r0, [r3, #0x00]
_0809742A:
	ldr r0, [r6, #0x00]
	ldr r3, _080974E8 @ =0x00005484
	adds r1, r0, r3
	ldr r0, [r1, #0x00]
	cmp r0, #0x08
	ble _0809743A
	movs r0, #0x08
	str r0, [r1, #0x00]
_0809743A:
	mov r4, r9
	movs r5, #0x1C
	ldsh r0, [r4, r5]
	adds r2, #0xF5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	subs r3, r0, r1
	cmp r3, #0x00
	bge _0809744E
	movs r3, #0x00
_0809744E:
	ldr r0, [r6, #0x00]
	ldr r4, _080974EC @ =0x00005488
	adds r5, r0, r4
	lsrs r0, r1, #0x1F
	adds r0, r1, r0
	asrs r4, r0, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	adds r0, #0xC0
	muls r0, r3
	cmp r0, #0x00
	bge _0809746C
	adds r0, #0xFF
_0809746C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	str r0, [r5, #0x00]
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	cmp r2, r0
	bge _0809747E
	str r2, [r5, #0x00]
_0809747E:
	ldr r5, [sp, #0x000]
	cmp r9, r5
	bne _08097498
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08097498
	ldr r0, _080974F0 @ =0x08097B8D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_08097498:
	ldr r2, [sp, #0x004]
	cmp r9, r2
	bne _080974B2
	ldr r0, [sp, #0x000]
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080974B2
	ldr r0, _080974F0 @ =0x08097B8D
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x4C]
_080974B2:
	ldr r0, _080974F4 @ =0x080974F9
	mov r4, r9
	str r0, [r4, #0x4C]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080974C8: .4byte 0x03000FDC
_080974CC: .4byte 0x00005470
_080974D0: .4byte 0x00005498
_080974D4: .4byte 0x0000549C
_080974D8: .4byte 0x00005474
_080974DC: .4byte 0x000001FF
_080974E0: .4byte 0x00005478
_080974E4: .4byte 0x0000547C
_080974E8: .4byte 0x00005484
_080974EC: .4byte 0x00005488
_080974F0: .4byte sub_8097B8C
_080974F4: .4byte sub_80974F8
	thumb_func_start sub_80974F8
sub_80974F8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, _080975B4 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r4, r1
	bne _0809751C
	ldr r2, _080975B8 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_0809751C:
	cmp r4, r5
	bne _0809752C
	ldr r2, _080975BC @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_0809752C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x7C]
	adds r0, r5, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _080975C0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08097558
	cmp r1, #0x04
	bne _0809762C
_08097558:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08097560
	adds r0, #0xFF
_08097560:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809757A
	adds r2, #0xFF
_0809757A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0809759E
	adds r0, #0xFF
_0809759E:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
	b _0809762C
_080975B4: .4byte 0x03000FD8
_080975B8: .4byte 0x00002027
_080975BC: .4byte 0x00002056
_080975C0:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080975D2
	cmp r1, #0x04
	bne _0809762C
_080975D2:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080975DA
	adds r0, #0xFF
_080975DA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080975F4
	adds r2, #0xFF
_080975F4:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08097618
	adds r0, #0xFF
_08097618:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_0809762C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _08097644 @ =0x08097EB5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097644: .4byte sub_8097EB4
	thumb_func_start sub_8097648
sub_8097648:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, _080976C4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080976BC
	ldr r0, [r2, #0x28]
	ldr r1, _080976C8 @ =0x00002089
	movs r3, #0x40
	negs r3, r3
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	movs r2, #0x01
	str r2, [sp, #0x008]
	movs r2, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	bl sub_807FA14
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080976B2
	cmp r1, #0x04
	bne _080976B6
_080976B2:
	ldr r0, _080976CC @ =0x08097C39
	str r0, [r4, #0x4C]
_080976B6:
	adds r0, r5, #0x0
	bl sub_8097DB4
_080976BC:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_080976C4: .4byte 0x03000FD8
_080976C8: .4byte 0x00002089
_080976CC: .4byte sub_8097C38
	thumb_func_start sub_80976D0
sub_80976D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	ldr r0, _0809770C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r2, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	cmp r7, r6
	bne _08097710
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	b _08097722
_0809770C: .4byte 0x03000FD8
_08097710:
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
_08097722:
	ldr r5, _08097928 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	ldr r1, _0809792C @ =0x0000547C
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	ldr r1, [r5, #0x00]
	ldr r2, _08097930 @ =0x00005478
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	cmp r1, r0
	bcs _08097756
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_8097CB4
_08097756:
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	cmp r7, r6
	bne _0809776C
	ldr r0, _08097934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08097780
_0809776C:
	adds r6, r7, #0x0
	adds r6, #0x9C
	cmp r7, r8
	bne _08097862
	ldr r0, _08097934 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08097862
_08097780:
	ldr r5, _08097928 @ =0x03000FDC
	ldr r0, [r5, #0x00]
	ldr r1, _08097938 @ =0x00005470
	mov r9, r1
	add r0, r9
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r4, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r5, [r5, #0x00]
	mov r8, r5
	ldr r0, _0809793C @ =0x00005498
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_81DB964
	ldr r2, _08097940 @ =0x3FF66666
	ldr r3, _08097944 @ =0x66666666
	bl sub_81DB240
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	ldr r0, _08097948 @ =0x0000549C
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_81DB964
	str r0, [sp, #0x00C]
	str r1, [sp, #0x010]
	adds r0, r4, #0x0
	bl sub_81DB964
	cmp r4, #0x00
	bge _080977D8
	ldr r2, _0809794C @ =0x41F00000
	ldr r3, _08097950 @ =0x00000000
	bl sub_81DB1D8
_080977D8:
	ldr r2, _08097954 @ =0x3FE00000
	ldr r3, _08097958 @ =0x00000000
	bl sub_81DB240
	ldr r2, _0809795C @ =0x3FD33333
	ldr r3, _08097960 @ =0x33333333
	bl sub_81DB1D8
	adds r5, r1, #0x0
	adds r4, r0, #0x0
	ldr r0, [r7, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	movs r2, #0x20
	ldsh r1, [r7, r2]
	bl __divsi3
	mov r1, r8
	add r1, r9
	ldr r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08097810
	adds r0, #0xFF
_08097810:
	asrs r0, r0, #0x08
	bl sub_81DB964
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r0, r4, #0x0
	bl sub_81DB1D8
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x010]
	bl sub_81DB240
	adds r3, r1, #0x0
	adds r2, r0, #0x0
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x008]
	bl sub_81DB1D8
	ldr r2, _08097964 @ =0x40700000
	ldr r3, _08097968 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	ldr r1, [r6, #0x00]
	subs r1, r1, r0
	str r1, [r6, #0x00]
	ldr r0, [r7, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08097862
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097862:
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809787A
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809787A:
	ldr r0, [r6, #0x00]
	subs r0, #0x19
	str r0, [r6, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, _0809796C @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x00]
	cmp r0, r1
	bge _08097890
	str r1, [r7, #0x10]
_08097890:
	ldr r6, _08097970 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r0, [r7, #0x10]
	cmp r1, r0
	blt _0809791A
	str r1, [r7, #0x10]
	adds r0, r7, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080978CA
	cmp r1, #0x04
	bne _08097916
_080978CA:
	ldr r0, [r7, #0x08]
	movs r1, #0x02
	ldsh r5, [r0, r1]
	ldr r0, [r6, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x0C
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_08097916:
	ldr r0, _08097974 @ =0x08097E29
	str r0, [r7, #0x4C]
_0809791A:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097928: .4byte 0x03000FDC
_0809792C: .4byte 0x0000547C
_08097930: .4byte 0x00005478
_08097934: .4byte 0x0300034C
_08097938: .4byte 0x00005470
_0809793C: .4byte 0x00005498
_08097940: .4byte 0x3FF66666
_08097944: .4byte 0x66666666
_08097948: .4byte 0x0000549C
_0809794C: .4byte 0x41F00000
_08097950: .4byte 0x00000000
_08097954: .4byte 0x3FE00000
_08097958: .4byte 0x00000000
_0809795C: .4byte 0x3FD33333
_08097960: .4byte 0x33333333
_08097964: .4byte 0x40700000
_08097968: .4byte 0x00000000
_0809796C: .4byte 0xFFFFFE00
_08097970: .4byte 0x03000FD8
_08097974: .4byte sub_8097E28
	thumb_func_start sub_8097978
sub_8097978:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	bl sub_807EA24
	ldr r0, _0809799C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	cmp r6, r0
	bne _080979A0
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080979AC
	.byte 0x00, 0x00
_0809799C: .4byte 0x03000FD8
_080979A0:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080979AC:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
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
	beq _080979D8
	cmp r1, #0x04
	bne _08097A62
_080979D8:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r7, _08097A34 @ =0x03000FDC
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r1, r0
	ldr r0, [r2, #0x00]
	cmn r0, r1
	beq _08097A44
	ldr r2, _08097A38 @ =0x03001038
	ldr r0, _08097A3C @ =0x0819832C
	ldr r1, _08097A40 @ =0x08198220
	subs r0, r0, r1
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #0x07
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	adds r0, r5, #0x0
	bl _call_via_r4
	b _08097A48
_08097A34: .4byte 0x03000FDC
_08097A38: .4byte 0x03001038
_08097A3C: .4byte 0x0819832C
_08097A40: .4byte 0x08198220
_08097A44:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08097A48:
	adds r2, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08097A62:
	adds r1, r6, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _08097A84 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _08097A88 @ =0x00005488
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08097A8C @ =0x08097A91
	str r0, [r6, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097A84: .4byte 0x03000FDC
_08097A88: .4byte 0x00005488
_08097A8C: .4byte sub_8097A90
	thumb_func_start sub_8097A90
sub_8097A90:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _08097B78 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _08097AE2
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08097AE2
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x02
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_8097CB4
_08097AE2:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097B6E
	cmp r4, r8
	bne _08097B00
	ldr r1, [r7, #0x4C]
	ldr r0, _08097B7C @ =0x080976D1
	cmp r1, r0
	bne _08097B00
	ldr r0, _08097B80 @ =0x08097979
	str r0, [r7, #0x4C]
_08097B00:
	cmp r4, r7
	bne _08097B14
	mov r0, r8
	ldr r1, [r0, #0x4C]
	ldr r0, _08097B7C @ =0x080976D1
	cmp r1, r0
	bne _08097B14
	ldr r0, _08097B80 @ =0x08097979
	mov r1, r8
	str r0, [r1, #0x4C]
_08097B14:
	ldr r0, _08097B78 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _08097B32
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08097B84 @ =0x00002027
	movs r3, #0x00
	bl sub_8082E1C
_08097B32:
	cmp r4, r5
	bne _08097B42
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08097B88 @ =0x00002056
	movs r3, #0x00
	bl sub_8082E1C
_08097B42:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08097B7C @ =0x080976D1
	str r0, [r4, #0x4C]
	movs r0, #0x3F
	subs r1, #0x01
	bl play_sfx_80195B4
_08097B6E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097B78: .4byte 0x03000FD8
_08097B7C: .4byte sub_80976D0
_08097B80: .4byte sub_8097978
_08097B84: .4byte 0x00002027
_08097B88: .4byte 0x00002056
	thumb_func_start sub_8097B8C
sub_8097B8C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08097BA0
	cmp r1, #0x04
	bne _08097C2A
_08097BA0:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r7, _08097BFC @ =0x03000FDC
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r1, r0
	ldr r0, [r2, #0x00]
	cmn r0, r1
	beq _08097C0C
	ldr r2, _08097C00 @ =0x03001038
	ldr r0, _08097C04 @ =0x0819832C
	ldr r1, _08097C08 @ =0x08198220
	subs r0, r0, r1
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #0x07
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	adds r0, r5, #0x0
	bl _call_via_r4
	b _08097C10
_08097BFC: .4byte 0x03000FDC
_08097C00: .4byte 0x03001038
_08097C04: .4byte 0x0819832C
_08097C08: .4byte 0x08198220
_08097C0C:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08097C10:
	adds r2, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08097C2A:
	ldr r0, _08097C34 @ =0x08097D51
	str r0, [r6, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097C34: .4byte sub_8097D50
	thumb_func_start sub_8097C38
sub_8097C38:
	push {r4, lr}
	ldr r0, [r0, #0x04]
	ldr r4, [r0, #0x08]
_08097C3E:
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08097CAC
	movs r0, #0x10
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x04]
	adds r0, r0, r1
	str r0, [r2, #0x04]
	movs r0, #0x12
	ldsh r1, [r2, r0]
	ldr r0, [r2, #0x08]
	adds r0, r0, r1
	str r0, [r2, #0x08]
	movs r1, #0x14
	ldsh r0, [r2, r1]
	ldr r1, [r2, #0x0C]
	adds r1, r1, r0
	str r1, [r2, #0x0C]
	ldrh r0, [r2, #0x14]
	subs r0, #0x66
	movs r3, #0x00
	strh r0, [r2, #0x14]
	cmp r1, #0x00
	ble _08097C72
	adds r4, r2, #0x0
	b _08097C3E
_08097C72:
	str r3, [r2, #0x0C]
	movs r1, #0x10
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x10]
	movs r1, #0x12
	ldsh r0, [r2, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x12]
	movs r1, #0x14
	ldsh r0, [r2, r1]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xFF
	bgt _08097C3E
	adds r0, r2, #0x0
	bl sub_807FA94
	str r0, [r4, #0x00]
	b _08097C3E
_08097CAC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8097CB4
sub_8097CB4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08097D4C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x88
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08097D44
	subs r0, #0x01
	strh r0, [r1, #0x00]
	bl sub_807FB04
	adds r4, r0, #0x0
	ldr r0, [r5, #0x38]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x08]
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	subs r1, #0x16
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x01
	bl sub_81DD77C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	strh r0, [r4, #0x10]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x99
	bl sub_81DD77C
	movs r1, #0x4C
	subs r1, r1, r0
	strh r1, [r4, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x01
	bl sub_81DD77C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x04]
	ldr r1, [r0, #0x08]
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	str r4, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2C
	bl play_sfx_80195B4
_08097D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097D4C: .4byte 0x03000FF4
	thumb_func_start sub_8097D50
sub_8097D50:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _08097DA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08097D9C
	cmp r5, r6
	bne _08097D88
	ldr r1, [r4, #0x4C]
	ldr r0, _08097DA8 @ =0x080976D1
	cmp r1, r0
	bne _08097D88
	ldr r0, _08097DAC @ =0x08097979
	str r0, [r4, #0x4C]
_08097D88:
	cmp r5, r4
	bne _08097D98
	ldr r1, [r6, #0x4C]
	ldr r0, _08097DA8 @ =0x080976D1
	cmp r1, r0
	bne _08097D98
	ldr r0, _08097DAC @ =0x08097979
	str r0, [r6, #0x4C]
_08097D98:
	ldr r0, _08097DB0 @ =0x080974F9
	str r0, [r5, #0x4C]
_08097D9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097DA4: .4byte 0x03000FD8
_08097DA8: .4byte sub_80976D0
_08097DAC: .4byte sub_8097978
_08097DB0: .4byte sub_80974F8
	thumb_func_start sub_8097DB4
sub_8097DB4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08097E18 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _08097DD6
	ldr r2, _08097E1C @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08097DD6:
	cmp r4, r5
	bne _08097DE6
	ldr r2, _08097E20 @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08097DE6:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08097E24 @ =0x080976D1
	str r0, [r4, #0x4C]
	subs r1, #0x01
	movs r0, #0x3F
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_08097E18: .4byte 0x03000FD8
_08097E1C: .4byte 0x00002027
_08097E20: .4byte 0x00002056
_08097E24: .4byte sub_80976D0
	thumb_func_start sub_8097E28
sub_8097E28:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, _08097E78 @ =0x03000FD8
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
	movs r7, #0x20
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08097EAA
	ldr r0, [r6, #0x08]
	bl sub_807FB64
	cmp r6, r5
	bne _08097E82
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08097E82
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08097E7C
	adds r0, r4, #0x0
	bl sub_8097DB4
	b _08097E82
	.byte 0x00, 0x00
_08097E78: .4byte 0x03000FD8
_08097E7C:
	adds r0, r4, #0x0
	bl sub_80974F8
_08097E82:
	cmp r6, r4
	bne _08097EA6
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08097EA6
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _08097EA0
	adds r0, r5, #0x0
	bl sub_8097DB4
	b _08097EA6
_08097EA0:
	adds r0, r5, #0x0
	bl sub_80974F8
_08097EA6:
	ldr r0, _08097EB0 @ =0x08097F11
	str r0, [r6, #0x4C]
_08097EAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097EB0: .4byte sub_8097F10
	thumb_func_start sub_8097EB4
sub_8097EB4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _08097F08 @ =0x03000FD8
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
	beq _08097F00
	cmp r4, r5
	bne _08097EEC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097EEC:
	cmp r4, r6
	bne _08097EFC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08097EFC:
	ldr r0, _08097F0C @ =0x08097649
	str r0, [r4, #0x4C]
_08097F00:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097F08: .4byte 0x03000FD8
_08097F0C: .4byte sub_8097648
	thumb_func_start sub_8097F10
sub_8097F10:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x04]
	ldr r0, [r0, #0x08]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08097F2A
	adds r0, r1, #0x0
	bl sub_807C298
	str r4, [r5, #0x30]
	str r4, [r5, #0x4C]
_08097F2A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8097F30
sub_8097F30:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _08097FB8 @ =0x03000FF4
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x3C
	ldr r1, [r2, #0x00]
	subs r1, r1, r0
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r0, [r1, #0x2A]
	str r0, [r2, #0x00]
	ldr r0, _08097FBC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r2, r9
	ldr r0, [r2, #0x2C]
	str r0, [r6, #0x2C]
	str r0, [r1, #0x2C]
	ldr r1, [r2, #0x6C]
	str r1, [r6, #0x6C]
	mov r2, r8
	str r1, [r2, #0x6C]
	movs r3, #0x00
	str r3, [r0, #0x50]
	str r3, [r6, #0x50]
	str r3, [r2, #0x50]
	adds r2, r0, #0x0
	adds r2, #0x7C
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x00]
	adds r4, #0x84
	strh r1, [r4, #0x00]
	adds r5, #0x84
	strh r1, [r5, #0x00]
	ldr r1, _08097FC0 @ =0x08097FC5
	mov r4, r9
	str r1, [r4, #0x4C]
	strh r3, [r6, #0x24]
	mov r1, r8
	strh r3, [r1, #0x24]
	bl sub_80870B4
	movs r0, #0x01
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08097FB8: .4byte 0x03000FF4
_08097FBC: .4byte 0x03000FD8
_08097FC0: .4byte sub_8097FC4
	thumb_func_start sub_8097FC4
sub_8097FC4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _0809816C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r10, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r9, r0
	movs r6, #0x00
	movs r5, #0x00
	movs r7, #0x00
	movs r0, #0x00
	mov r8, r0
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r1, #0x06
	mov r12, r1
	movs r4, #0x05
_08097FF6:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _0809802C
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_0809802C:
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08098062
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_08098062:
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x04
	bne _08098098
	adds r0, r2, #0x0
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r5, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r7, r7, r0
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r2, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	add r8, r0
	adds r6, #0x01
_08098098:
	adds r3, #0x0C
	subs r4, #0x03
	cmp r4, #0x00
	bge _08097FF6
	ldr r3, _08098170 @ =0x0819832C
	ldr r0, _08098174 @ =0x08198220
	subs r4, r3, r0
	ldr r1, _08098178 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r5, #0x00
	mov r2, r9
	strh r0, [r2, #0x1C]
	mov r3, r10
	strh r0, [r3, #0x1C]
	ldr r0, _08098178 @ =0x03001038
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	strh r0, [r1, #0x1E]
	mov r2, r10
	strh r0, [r2, #0x1E]
	ldr r3, _08098178 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r4, r9
	strh r0, [r4, #0x20]
	mov r1, r10
	strh r0, [r1, #0x20]
	ldr r1, _0809817C @ =0x03000FDC
	ldr r0, [r1, #0x00]
	ldr r2, _08098180 @ =0x00005470
	adds r0, r0, r2
	str r5, [r0, #0x00]
	ldr r2, [r1, #0x00]
	ldr r3, _08098184 @ =0x00005474
	adds r1, r2, r3
	movs r0, #0x14
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r4, _08098188 @ =0x00005478
	adds r1, r2, r4
	movs r0, #0xB3
	str r0, [r1, #0x00]
	ldr r0, _0809818C @ =0x0000547C
	adds r2, r2, r0
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x28]
	adds r0, #0xF5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r3, #0x1C
	ldsh r1, [r1, r3]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r4, [sp, #0x000]
	cmp r4, r10
	bne _0809813A
	mov r0, r9
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0809813A
	ldr r0, _08098190 @ =0x08098711
	mov r1, r9
	str r0, [r1, #0x4C]
_0809813A:
	ldr r2, [sp, #0x000]
	cmp r2, r9
	bne _08098154
	mov r0, r10
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08098154
	ldr r0, _08098190 @ =0x08098711
	mov r3, r10
	str r0, [r3, #0x4C]
_08098154:
	ldr r0, _08098194 @ =0x08098199
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809816C: .4byte 0x03000FD8
_08098170: .4byte 0x0819832C
_08098174: .4byte 0x08198220
_08098178: .4byte 0x03001038
_0809817C: .4byte 0x03000FDC
_08098180: .4byte 0x00005470
_08098184: .4byte 0x00005474
_08098188: .4byte 0x00005478
_0809818C: .4byte 0x0000547C
_08098190: .4byte sub_8098710
_08098194: .4byte sub_8098198
	thumb_func_start sub_8098198
sub_8098198:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, _08098254 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r4, r1
	bne _080981BC
	ldr r2, _08098258 @ =0x00002027
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_080981BC:
	cmp r4, r5
	bne _080981CC
	ldr r2, _0809825C @ =0x00002056
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_080981CC:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x7C]
	adds r0, r5, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _08098260
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080981F8
	cmp r1, #0x04
	bne _080982CC
_080981F8:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08098200
	adds r0, #0xFF
_08098200:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809821A
	adds r2, #0xFF
_0809821A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0809823E
	adds r0, #0xFF
_0809823E:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
	b _080982CC
_08098254: .4byte 0x03000FD8
_08098258: .4byte 0x00002027
_0809825C: .4byte 0x00002056
_08098260:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098272
	cmp r1, #0x04
	bne _080982CC
_08098272:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0809827A
	adds r0, #0xFF
_0809827A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x0E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08098294
	adds r2, #0xFF
_08098294:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080982B8
	adds r0, #0xFF
_080982B8:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080982CC:
	ldr r0, _080982D8 @ =0x080988D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080982D8: .4byte sub_80988D8
	thumb_func_start sub_80982DC
sub_80982DC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, _08098358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098350
	ldr r0, [r2, #0x28]
	ldr r1, _0809835C @ =0x00002089
	movs r3, #0x40
	negs r3, r3
	movs r2, #0x01
	negs r2, r2
	str r2, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	movs r2, #0x01
	str r2, [sp, #0x008]
	movs r2, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	bl sub_807FA14
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098346
	cmp r1, #0x04
	bne _0809834A
_08098346:
	ldr r0, _08098360 @ =0x08097C39
	str r0, [r4, #0x4C]
_0809834A:
	adds r0, r5, #0x0
	bl sub_80987F4
_08098350:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08098358: .4byte 0x03000FD8
_0809835C: .4byte 0x00002089
_08098360: .4byte sub_8097C38
	thumb_func_start sub_8098364
sub_8098364:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _0809839C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	cmp r6, r5
	bne _080983A0
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	b _080983B2
	.byte 0x00, 0x00
_0809839C: .4byte 0x03000FD8
_080983A0:
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
_080983B2:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x10
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r0, r1
	bcs _080983D4
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_8097CB4
_080983D4:
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	cmp r6, r5
	bne _080983EA
	ldr r0, _08098520 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080983FE
_080983EA:
	adds r4, r6, #0x0
	adds r4, #0x9C
	cmp r6, r7
	bne _08098422
	ldr r0, _08098520 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08098422
_080983FE:
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08098524 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x02
	beq _08098422
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098422:
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809843A
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809843A:
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	subs r0, #0x19
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r0, #0x20
	ldsh r1, [r6, r0]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08098460
	adds r0, #0xFF
_08098460:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	bl __divsi3
	bl sub_81DB964
	ldr r2, _08098528 @ =0x3FF33333
	ldr r3, _0809852C @ =0x33333333
	bl sub_81DB1D8
	ldr r2, _08098530 @ =0x40700000
	ldr r3, _08098534 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	ldr r1, [r6, #0x10]
	subs r1, r1, r0
	str r1, [r6, #0x10]
	ldr r0, [r4, #0x00]
	cmp r1, r0
	bge _0809848E
	str r0, [r6, #0x10]
_0809848E:
	ldr r7, _08098538 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blt _08098518
	str r1, [r6, #0x10]
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080984C8
	cmp r1, #0x04
	bne _08098514
_080984C8:
	ldr r0, [r6, #0x08]
	movs r1, #0x02
	ldsh r5, [r0, r1]
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x30
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_08098514:
	ldr r0, _0809853C @ =0x08098861
	str r0, [r6, #0x4C]
_08098518:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08098520: .4byte 0x0300034C
_08098524: .4byte 0xFFFFFC00
_08098528: .4byte 0x3FF33333
_0809852C: .4byte 0x33333333
_08098530: .4byte 0x40700000
_08098534: .4byte 0x00000000
_08098538: .4byte 0x03000FD8
_0809853C: .4byte sub_8098860
	thumb_func_start sub_8098540
sub_8098540:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_807EA24
	ldr r0, _08098564 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	cmp r4, r0
	bne _08098568
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08098574
	.byte 0x00, 0x00
_08098564: .4byte 0x03000FD8
_08098568:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098574:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08098596
	cmp r1, #0x04
	bne _080985F2
_08098596:
	ldr r0, [r4, #0x28]
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r5, r0, #0x0
	adds r5, #0x64
	movs r0, #0x1E
	ldsh r3, [r4, r0]
	cmp r5, r3
	beq _080985D4
	ldr r2, _080985C8 @ =0x03001038
	ldr r0, _080985CC @ =0x0819832C
	ldr r1, _080985D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r1, r5, r3
	bl _call_via_r2
	adds r2, r0, #0x0
	b _080985DA
_080985C8: .4byte 0x03001038
_080985CC: .4byte 0x0819832C
_080985D0: .4byte 0x08198220
_080985D4:
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r2, r1, #0x0
_080985DA:
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080985F2:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0xA4
	adds r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08098618 @ =0x0809861D
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_08098618: .4byte sub_809861C
	thumb_func_start sub_809861C
sub_809861C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, _080986FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r6, r4, #0x0
	adds r6, #0xA4
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0809866E
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0809866E
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x04
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	adds r0, r4, #0x0
	bl sub_8097CB4
_0809866E:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080986F2
	cmp r4, r8
	bne _0809868C
	ldr r1, [r7, #0x4C]
	ldr r0, _08098700 @ =0x08098365
	cmp r1, r0
	bne _0809868C
	ldr r0, _08098704 @ =0x08098541
	str r0, [r7, #0x4C]
_0809868C:
	cmp r4, r7
	bne _080986A0
	mov r0, r8
	ldr r1, [r0, #0x4C]
	ldr r0, _08098700 @ =0x08098365
	cmp r1, r0
	bne _080986A0
	ldr r0, _08098704 @ =0x08098541
	mov r1, r8
	str r0, [r1, #0x4C]
_080986A0:
	ldr r0, _080986FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r1, [r1, #0x74]
	adds r5, r1, #0x0
	adds r5, #0x08
	cmp r4, r0
	bne _080986BE
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _08098708 @ =0x00002027
	movs r3, #0x00
	bl sub_8082E1C
_080986BE:
	cmp r4, r5
	bne _080986CE
	adds r0, r4, #0x0
	movs r1, #0x01
	ldr r2, _0809870C @ =0x00002056
	movs r3, #0x00
	bl sub_8082E1C
_080986CE:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	subs r0, #0x26
	strh r1, [r0, #0x00]
	ldr r0, _08098700 @ =0x08098365
	str r0, [r4, #0x4C]
_080986F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080986FC: .4byte 0x03000FD8
_08098700: .4byte sub_8098364
_08098704: .4byte sub_8098540
_08098708: .4byte 0x00002027
_0809870C: .4byte 0x00002056
