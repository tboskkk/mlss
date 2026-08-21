	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8108E94
sub_8108E94:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08108EC0
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r4, r2
	str r0, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x00]
_08108EC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x02, 0x1C, 0x0B, 0x1C, 0x0C, 0x20, 0x18, 0x40, 0x00, 0x28, 0x04, 0xD0
	.byte 0x85, 0x20, 0x40, 0x00, 0x11, 0x18, 0x0A, 0x38, 0x08, 0x80, 0x30, 0x20, 0x18, 0x40, 0x00, 0x28
	.byte 0x04, 0xD0, 0x86, 0x20, 0x40, 0x00, 0x11, 0x18, 0x0C, 0x38, 0x08, 0x80, 0xC0, 0x20, 0x18, 0x40
	.byte 0x00, 0x28, 0x04, 0xD0, 0x8E, 0x20, 0x40, 0x00, 0x11, 0x18, 0x1C, 0x38, 0x08, 0x80, 0x8F, 0x20
	.byte 0x40, 0x00, 0x12, 0x18, 0x10, 0x88, 0x98, 0x43, 0x10, 0x80, 0x01, 0xBC, 0x00, 0x47
	thumb_func_start sub_8108F14
sub_8108F14:
	push {r4, r5, r6, lr}
	ldr r2, _08108F30 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, r3, #0x0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r5, r2, #0x0
	cmp r4, #0x00
	bne _08108F38
	ldr r1, _08108F34 @ =0x000002C1
	adds r0, r3, r1
	b _08108F4A
_08108F30: .4byte 0x03000FD8
_08108F34: .4byte 0x000002C1
_08108F38:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08108F68
	ldr r2, _08108F60 @ =0x000002C1
	adds r0, r3, r2
_08108F4A:
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08108FD6
	ldr r0, _08108F64 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08108FD6
_08108F60: .4byte 0x000002C1
_08108F64: .4byte 0x0000015F
_08108F68:
	ldr r3, [r4, #0x10]
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08108F7C
	cmp r0, #0x0E
	beq _08108F7C
	cmp r0, #0x01
	bne _08108FD6
_08108F7C:
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r2, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _08108FA4
	ldrh r0, [r3, #0x16]
	ldrb r1, [r3, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08108FD6
_08108FA4:
	movs r0, #0x02
	negs r0, r0
	cmp r2, r0
	bne _08108FC2
	ldrh r0, [r3, #0x16]
	ldrb r1, [r3, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	orrs r0, r1
	ldr r1, _08108FDC @ =0x0000204D
	cmp r0, r1
	bne _08108FD6
_08108FC2:
	ldr r2, [r5, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _08108FE0 @ =0x08108FE5
	adds r1, r4, #0x0
	adds r1, #0x08
	bl sub_807FF48
_08108FD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08108FDC: .4byte 0x0000204D
_08108FE0: .4byte sub_8108FE4
	thumb_func_start sub_8108FE4
sub_8108FE4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldr r3, _08109060 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r2, [r5, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810900A
	cmp r0, #0x0E
	beq _0810900A
	cmp r0, #0x01
	bne _08109050
_0810900A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r5, [r0, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _08109032
	ldrh r0, [r2, #0x16]
	ldrb r1, [r2, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r1, r1, r6
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08109050
_08109032:
	movs r0, #0x02
	negs r0, r0
	cmp r5, r0
	bne _08109068
	ldrh r0, [r2, #0x16]
	ldrb r1, [r2, #0x1E]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r1, r2
	orrs r0, r1
	ldr r1, _08109064 @ =0x0000204D
	cmp r0, r1
	beq _08109068
_08109050:
	movs r0, #0x00
	str r0, [r4, #0x04]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0B]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x0B]
	b _08109072
_08109060: .4byte 0x03000FD8
_08109064: .4byte 0x0000204D
_08109068:
	ldr r1, _08109078 @ =0x0810907D
	str r1, [r4, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_08109072:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08109078: .4byte sub_810907C
	thumb_func_start sub_810907C
sub_810907C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r5, _081090A4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _081090A8
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	b _0810911A
_081090A4: .4byte 0x03000FD8
_081090A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _081090F4 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _081090F8 @ =0x00B37D29
	bl _call_via_r1
	subs r0, #0xB3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r2, [r0, #0x7C]
	adds r0, r2, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _081090FC
	adds r0, #0x77
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	movs r1, #0x0A
	cmp r0, #0x00
	beq _081090E6
	movs r1, #0x05
_081090E6:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08109108
	.byte 0x00, 0x00
_081090F4: .4byte 0x03001038
_081090F8: .4byte 0x00B37D29
_081090FC:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08109108:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08109124 @ =0x08109129
_0810911A:
	str r0, [r6, #0x04]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109124: .4byte sub_8109128
	thumb_func_start sub_8109128
sub_8109128:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r3, _08109150 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08109154
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	b _081091AA
_08109150: .4byte 0x03000FD8
_08109154:
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0xB3
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _081091AC
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	cmp r4, r0
	beq _08109186
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08109186:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081091B4 @ =0x081091B9
_081091AA:
	str r0, [r5, #0x04]
_081091AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081091B4: .4byte sub_81091B8
	thumb_func_start sub_81091B8
sub_81091B8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	ldr r5, _081091E0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x0B]
	ldr r2, [r3, #0x4C]
	cmp r2, #0x00
	beq _081091E4
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	b _08109232
_081091E0: .4byte 0x03000FD8
_081091E4:
	adds r1, r3, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0xB3
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	str r1, [r3, #0x18]
	ldr r0, [r3, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08109234
	str r2, [r3, #0x58]
	adds r2, r3, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x18]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	cmp r3, r0
	beq _08109230
	adds r0, r3, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08109230:
	ldr r0, _0810923C @ =0x08109241
_08109232:
	str r0, [r4, #0x04]
_08109234:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810923C: .4byte sub_8109240
	thumb_func_start sub_8109240
sub_8109240:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r3, _0810925C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08109260
	ldr r2, [r3, #0x00]
	b _0810929E
_0810925C: .4byte 0x03000FD8
_08109260:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x7C]
	adds r0, r2, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _08109282
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	bics r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0810929A
_08109282:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081092AC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810929A:
	ldr r0, _081092B4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
_0810929E:
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	str r0, [r5, #0x04]
_081092AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081092B4: .4byte 0x03000FD8
	thumb_func_start sub_81092B8
sub_81092B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x00C]
	movs r1, #0x12
	ldsh r0, [r0, r1]
	mov r9, r0
	ldr r2, [sp, #0x00C]
	movs r0, #0x14
	ldsh r2, [r2, r0]
	str r2, [sp, #0x010]
	ldr r1, [sp, #0x00C]
	ldr r7, [r1, #0x0C]
	ldr r1, _08109300 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldrb r2, [r3, #0x07]
	movs r0, #0xE0
	ands r0, r2
	cmp r0, #0x00
	beq _08109370
	lsrs r1, r2, #0x05
	subs r1, #0x05
	lsls r1, r1, #0x02
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r5, #0x00
	mov r2, r10
	adds r2, #0x9C
	b _08109306
_08109300: .4byte 0x03000FD8
_08109304:
	adds r5, #0x01
_08109306:
	cmp r7, #0x00
	beq _08109310
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	b _08109312
_08109310:
	movs r1, #0x05
_08109312:
	cmp r1, #0x7F
	bne _0810931A
	movs r1, #0x04
	b _08109322
_0810931A:
	cmp r7, #0x00
	beq _08109322
	ldr r0, [sp, #0x010]
	adds r1, r1, r0
_08109322:
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _08109304
	ldr r1, _081093E8 @ =0x03000FD8
	mov r8, r1
	ldr r0, [r1, #0x00]
	lsls r4, r5, #0x02
	movs r6, #0xBF
	lsls r6, r6, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109342
	bl sub_807C298
_08109342:
	mov r2, r8
	ldr r3, [r2, #0x00]
	adds r0, r3, r6
	adds r0, r0, r4
	mov r1, r10
	str r1, [r0, #0x00]
	ldrb r0, [r3, #0x07]
	lsrs r0, r0, #0x05
	subs r0, #0x05
	lsls r0, r0, #0x02
	movs r2, #0xC3
	lsls r2, r2, #0x02
	adds r1, r3, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, r5, #0x1
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x07]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x07]
_08109370:
	movs r5, #0x00
	cmp r5, r9
	bge _08109416
	ldr r0, _081093E8 @ =0x03000FD8
	mov r8, r0
	movs r1, #0xBF
	lsls r1, r1, #0x02
	mov r10, r1
_08109380:
	mov r0, r8
	ldr r2, [r0, #0x00]
	lsls r6, r5, #0x02
	mov r1, r10
	adds r0, r2, r1
	adds r0, r0, r6
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _081093DE
	ldr r1, _081093EC @ =0x00007001
	ldr r0, [r2, #0x7C]
	ldr r2, [r0, #0x40]
	cmp r2, #0x00
	bge _0810939E
	adds r2, #0xFF
_0810939E:
	asrs r2, r2, #0x08
	ldr r0, [r0, #0x44]
	cmp r0, #0x00
	bge _081093A8
	adds r0, #0xFF
_081093A8:
	asrs r3, r0, #0x08
	movs r0, #0x30
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	add r0, r10
	adds r0, r0, r6
	str r4, [r0, #0x00]
_081093DE:
	cmp r7, #0x00
	beq _081093F0
	adds r0, r7, r5
	ldrb r1, [r0, #0x00]
	b _081093F2
_081093E8: .4byte 0x03000FD8
_081093EC: .4byte 0x00007001
_081093F0:
	movs r1, #0x05
_081093F2:
	cmp r1, #0x7F
	bne _081093FA
	movs r1, #0x04
	b _08109402
_081093FA:
	cmp r7, #0x00
	beq _08109402
	ldr r0, [sp, #0x010]
	adds r1, r1, r0
_08109402:
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r5, #0x01
	cmp r5, r9
	blt _08109380
_08109416:
	mov r5, r9
	cmp r5, #0x03
	ble _0810941E
	b _0810951E
_0810941E:
	ldr r7, _08109574 @ =0x03000FD8
	movs r6, #0xBF
	lsls r6, r6, #0x02
	movs r0, #0x04
	subs r1, r0, r5
	movs r0, #0x03
	ands r1, r0
	cmp r5, #0x04
	bge _0810947E
	cmp r1, #0x00
	beq _081094A0
	cmp r1, #0x01
	ble _0810947E
	cmp r1, #0x02
	ble _08109460
	adds r1, r7, #0x0
	ldr r0, [r1, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109450
	bl sub_807C298
_08109450:
	ldr r2, _08109574 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
	mov r5, r9
	adds r5, #0x01
_08109460:
	ldr r0, [r7, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109472
	bl sub_807C298
_08109472:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r5, #0x01
_0810947E:
	ldr r0, [r7, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109490
	bl sub_807C298
_08109490:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r5, #0x01
	cmp r5, #0x03
	bgt _0810951E
_081094A0:
	ldr r0, [r7, #0x00]
	lsls r4, r5, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081094B2
	bl sub_807C298
_081094B2:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	movs r1, #0x00
	mov r8, r1
	str r1, [r0, #0x00]
	adds r1, r5, #0x1
	ldr r0, [r7, #0x00]
	lsls r4, r1, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081094D2
	bl sub_807C298
_081094D2:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r2, r8
	str r2, [r0, #0x00]
	adds r1, r5, #0x2
	ldr r0, [r7, #0x00]
	lsls r4, r1, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081094F0
	bl sub_807C298
_081094F0:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r1, r8
	str r1, [r0, #0x00]
	adds r1, r5, #0x3
	ldr r0, [r7, #0x00]
	lsls r4, r1, #0x02
	adds r0, r0, r6
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810950E
	bl sub_807C298
_0810950E:
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	adds r0, r0, r4
	mov r2, r8
	str r2, [r0, #0x00]
	adds r5, #0x04
	cmp r5, #0x03
	ble _081094A0
_0810951E:
	movs r1, #0x00
	mov r2, r9
	ldr r0, [sp, #0x00C]
	strh r2, [r0, #0x16]
	ldr r0, _08109574 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	ldr r2, _08109578 @ =0x03001038
	ldr r0, _0810957C @ =0x0819832C
	ldr r1, _08109580 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x10
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r1, r9
	bl _call_via_r2
	ldr r2, _08109574 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldr r2, _08109584 @ =0x00000316
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, _08109588 @ =0x0810958D
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x04]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109574: .4byte 0x03000FD8
_08109578: .4byte 0x03001038
_0810957C: .4byte 0x0819832C
_08109580: .4byte 0x08198220
_08109584: .4byte 0x00000316
_08109588: .4byte sub_810958C
	thumb_func_start sub_810958C
sub_810958C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810971C
	ldr r0, _081095DC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0xC5
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r1, #0x0
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _081095E0 @ =0x1FFF0000
	cmp r0, r1
	ble _081095F4
	movs r0, #0x80
	lsls r0, r0, #0x06
	strh r0, [r2, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x10
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x02
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r3, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	beq _081095E8
	ldr r0, _081095E4 @ =0x0810D4E1
	b _081095F2
	.byte 0x00, 0x00
_081095DC: .4byte 0x03000FD8
_081095E0: .4byte 0x1FFF0000
_081095E4: .4byte sub_810D4E0
_081095E8:
	ldrb r0, [r3, #0x07]
	movs r1, #0x1F
	ands r1, r0
	strb r1, [r3, #0x07]
	ldr r0, _081095FC @ =0x0810971D
_081095F2:
	str r0, [r4, #0x04]
_081095F4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081095FC: .4byte sub_810971C
	thumb_func_start sub_8109600
sub_8109600:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	cmp r0, #0x00
	bne _08109612
_0810960C:
	mov r0, r8
	cmp r0, #0x00
	beq _0810960C
_08109612:
	mov r0, r8
	bl sub_810971C
	ldr r0, _0810970C @ =0x08109601
	mov r1, r8
	str r0, [r1, #0x04]
	ldr r7, _08109710 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r1, r2, r3
	ldr r3, _08109714 @ =0xFFFFFC00
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x00]
	adds r0, r0, r3
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08109702
	movs r6, #0x00
	adds r5, r7, #0x0
	movs r4, #0x00
	movs r1, #0xBF
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0810965E
	ldr r0, [r1, #0x4C]
	str r6, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r6, [r0, #0x00]
_0810965E:
	ldr r0, [r5, #0x00]
	movs r6, #0x04
	movs r3, #0xC0
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08109682
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_08109682:
	ldr r0, [r5, #0x00]
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _081096A4
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r4, [r0, #0x00]
_081096A4:
	ldr r0, [r5, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _081096C6
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r2, #0xC2
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r4, [r0, #0x00]
_081096C6:
	ldr r0, [r7, #0x00]
	movs r3, #0xC3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _081096E8
	ldr r0, [r1, #0x4C]
	str r4, [r0, #0x04]
	adds r0, r1, #0x0
	bl sub_807C298
	ldr r0, [r7, #0x00]
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
_081096E8:
	ldr r0, [r7, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _081096FC
	mov r3, r8
	str r4, [r3, #0x04]
	str r4, [r1, #0x00]
_081096FC:
	ldr r0, _08109718 @ =0x0300034C
	adds r0, #0x45
	strb r6, [r0, #0x00]
_08109702:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810970C: .4byte sub_8109600
_08109710: .4byte 0x03000FD8
_08109714: .4byte 0xFFFFFC00
_08109718: .4byte 0x0300034C
	thumb_func_start sub_810971C
sub_810971C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x000]
	ldr r0, _081097A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x7C]
	str r0, [sp, #0x004]
	ldr r2, [r0, #0x18]
	str r2, [sp, #0x008]
	ldr r3, [r0, #0x1C]
	str r3, [sp, #0x00C]
	ldr r4, [sp, #0x000]
	movs r6, #0x16
	ldsh r4, [r4, r6]
	str r4, [sp, #0x010]
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	movs r4, #0x00
	ldsh r3, [r0, r4]
	str r3, [sp, #0x014]
	movs r6, #0xC4
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r2, [r0, r3]
	str r2, [sp, #0x018]
	ldr r4, _081097A8 @ =0x00000316
	adds r1, r1, r4
	movs r0, #0x00
	ldsh r6, [r1, r0]
	mov r10, r6
	ldr r5, _081097AC @ =0x03001038
	ldr r4, _081097B0 @ =0x0819832C
	ldr r0, _081097B4 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x08
	ldr r1, [sp, #0x010]
	bl _call_via_r2
	adds r7, r0, #0x0
	subs r6, r7, r6
	movs r0, #0xFF
	ands r6, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x010]
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r0, #0x20
	adds r1, r3, #0x0
	bl _call_via_r2
	cmp r6, #0x7F
	bgt _081097B8
	cmp r6, r0
	blt _081097C0
	add r10, r0
	b _081097CE
_081097A4: .4byte 0x03000FD8
_081097A8: .4byte 0x00000316
_081097AC: .4byte 0x03001038
_081097B0: .4byte 0x0819832C
_081097B4: .4byte 0x08198220
_081097B8:
	ldr r4, _081097C4 @ =0xFFFFFF00
	adds r6, r6, r4
	cmn r6, r0
	ble _081097C8
_081097C0:
	mov r10, r7
	b _081097CE
_081097C4: .4byte 0xFFFFFF00
_081097C8:
	mov r6, r10
	subs r6, r6, r0
	mov r10, r6
_081097CE:
	movs r0, #0xFF
	mov r1, r10
	ands r1, r0
	mov r10, r1
	ldr r0, _081097F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _081097F4 @ =0x00000316
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r3, [sp, #0x010]
	cmp r3, #0x01
	ble _081097FC
	ldr r0, _081097F8 @ =0x0300034C
	adds r0, #0x45
	movs r1, #0x08
	b _08109802
	.byte 0x00, 0x00
_081097F0: .4byte 0x03000FD8
_081097F4: .4byte 0x00000316
_081097F8: .4byte 0x0300034C
_081097FC:
	ldr r0, _08109840 @ =0x0300034C
	adds r0, #0x45
	movs r1, #0x04
_08109802:
	strb r1, [r0, #0x00]
	movs r4, #0x00
	mov r9, r4
_08109808:
	ldr r0, _08109844 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	mov r6, r9
	lsls r2, r6, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	ldr r5, [r1, #0x00]
	adds r7, r0, #0x0
	cmp r5, #0x00
	bne _08109822
	b _08109BEC
_08109822:
	movs r4, #0x00
	mov r8, r4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	mov r12, r0
	cmp r1, #0x05
	bls _08109834
	b _08109970
_08109834:
	lsls r0, r1, #0x02
	ldr r1, _08109848 @ =0x0810984C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08109840: .4byte 0x0300034C
_08109844: .4byte 0x03000FD8
_08109848: .4byte 0x0810984C
	.byte 0x70, 0x99, 0x10, 0x08, 0x64, 0x98, 0x10, 0x08, 0xC6, 0x98, 0x10, 0x08, 0xF0, 0x98, 0x10, 0x08
	.byte 0x70, 0x99, 0x10, 0x08, 0x52, 0x99, 0x10, 0x08, 0x3A, 0x68, 0x10, 0x1C, 0x80, 0x30, 0x06, 0x68
	.byte 0x30, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x23, 0x18, 0x1C, 0x08, 0x40, 0x02, 0x28, 0x21, 0xD1
	.byte 0x10, 0x1C, 0x84, 0x30, 0x04, 0x68, 0x20, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x18, 0x1C, 0x08, 0x40
	.byte 0x02, 0x28, 0x17, 0xD1, 0xD0, 0x21, 0x89, 0x00, 0x50, 0x18, 0x00, 0x78, 0x00, 0x28, 0x11, 0xD0
	.byte 0x8F, 0x22, 0x52, 0x00, 0xB0, 0x18, 0x01, 0x88, 0xC0, 0x22, 0x92, 0x00, 0x10, 0x1C, 0x08, 0x40
	.byte 0x00, 0x28, 0x07, 0xD1, 0x8F, 0x23, 0x5B, 0x00, 0xE0, 0x18, 0x01, 0x88, 0x10, 0x1C, 0x08, 0x40
	.byte 0x00, 0x28, 0x57, 0xD0, 0x01, 0x24, 0xA0, 0x46, 0x54, 0xE0, 0x38, 0x68, 0x08, 0x4E, 0x80, 0x19
	.byte 0x00, 0x78, 0x00, 0x28, 0x09, 0xD0, 0x01, 0x99, 0x8F, 0x22, 0x52, 0x00, 0x88, 0x18, 0x01, 0x88
	.byte 0x80, 0x20, 0x00, 0x02, 0x08, 0x40, 0x00, 0x28, 0x44, 0xD0, 0x01, 0x23, 0x98, 0x46, 0x41, 0xE0
	.byte 0x41, 0x03, 0x00, 0x00, 0x3B, 0x68, 0xD8, 0x69, 0x01, 0x78, 0x80, 0x20, 0x08, 0x40, 0x00, 0x28
	.byte 0x26, 0xD1, 0x18, 0x1C, 0x80, 0x30, 0x02, 0x68, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x24
	.byte 0x20, 0x1C, 0x08, 0x40, 0x02, 0x28, 0x08, 0xD1, 0x8F, 0x26, 0x76, 0x00, 0x90, 0x19, 0x01, 0x88
	.byte 0xC0, 0x20, 0x80, 0x00, 0x08, 0x40, 0x00, 0x28, 0x12, 0xD1, 0x18, 0x1C, 0x84, 0x30, 0x02, 0x68
	.byte 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x20, 0x1C, 0x08, 0x40, 0x02, 0x28, 0x1A, 0xD1, 0x8F, 0x21
	.byte 0x49, 0x00, 0x50, 0x18, 0x01, 0x88, 0xC0, 0x20, 0x80, 0x00, 0x08, 0x40, 0x00, 0x28, 0x11, 0xD0
	.byte 0x01, 0x22, 0x90, 0x46, 0x0E, 0xE0, 0x38, 0x68, 0xC4, 0x23, 0x9B, 0x00, 0xC0, 0x18, 0x01, 0x68
	.byte 0x00, 0x20, 0x08, 0x82, 0x00, 0x24, 0x06, 0x94, 0x01, 0x9E, 0x70, 0x6B, 0x00, 0x28, 0x01, 0xD0
	.byte 0x02, 0x20, 0x80, 0x46
_08109970:
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x07]
	lsrs r0, r0, #0x05
	subs r0, #0x01
	cmp r9, r0
	bne _08109986
	b _08109BEC
_08109986:
	mov r2, r12
	ldr r1, [r2, #0x00]
	cmp r1, #0x05
	bne _08109990
	movs r1, #0x04
_08109990:
	mov r3, r8
	cmp r3, #0x01
	bne _08109998
	adds r1, #0x05
_08109998:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _081099AC
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081099AC:
	ldr r4, [sp, #0x010]
	cmp r4, #0x01
	ble _08109A9C
	ldr r3, _08109A78 @ =0x03001038
	ldr r1, _08109A7C @ =0x0819832C
	ldr r0, _08109A80 @ =0x08198220
	subs r4, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r6, r9
	lsls r0, r6, #0x08
	ldr r1, [sp, #0x010]
	str r3, [sp, #0x01C]
	bl _call_via_r2
	mov r1, r10
	subs r0, r0, r1
	ldr r2, _08109A84 @ =0x08198504
	movs r1, #0xFF
	ands r0, r1
	lsls r1, r0, #0x01
	adds r2, r1, r2
	movs r6, #0x00
	ldsh r0, [r2, r6]
	ldr r3, [sp, #0x01C]
	cmp r0, #0x00
	bge _081099E4
	adds r0, #0x3F
_081099E4:
	asrs r0, r0, #0x06
	ldr r2, [sp, #0x014]
	muls r0, r2
	cmp r0, #0x00
	bge _081099F0
	adds r0, #0xFF
_081099F0:
	asrs r7, r0, #0x08
	ldr r0, _08109A88 @ =0x08198584
	adds r0, r1, r0
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _08109A00
	adds r0, #0x3F
_08109A00:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	muls r0, r1
	cmp r0, #0x00
	bge _08109A0C
	adds r0, #0xFF
_08109A0C:
	asrs r2, r0, #0x08
	ldr r0, _08109A8C @ =0xFFFFE000
	adds r6, r2, r0
	ldr r0, [r3, #0x00]
	adds r3, r0, r4
	movs r4, #0xC8
	lsls r4, r4, #0x10
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08109A24
	ldr r1, _08109A90 @ =0xFFFFE00F
	adds r0, r2, r1
_08109A24:
	asrs r0, r0, #0x04
	movs r1, #0xC8
	lsls r1, r1, #0x04
	subs r1, r1, r0
	adds r0, r4, #0x0
	bl _call_via_r3
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08109A40
	ldr r2, _08109A94 @ =0x00000FFF
	adds r0, r0, r2
_08109A40:
	asrs r0, r0, #0x0C
	ldr r3, [sp, #0x008]
	adds r0, r3, r0
	str r0, [r5, #0x10]
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r0, r0, #0x03
	adds r0, r0, r4
	lsls r0, r0, #0x0A
	cmp r0, #0x00
	bge _08109A5A
	ldr r1, _08109A94 @ =0x00000FFF
	adds r0, r0, r1
_08109A5A:
	asrs r0, r0, #0x0C
	ldr r2, [sp, #0x00C]
	adds r0, r2, r0
	ldr r3, _08109A98 @ =0xFFFF9C00
	adds r0, r0, r3
	str r0, [r5, #0x14]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r2, [sp, #0x008]
	adds r0, r2, r7
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, r6
	str r0, [r1, #0x00]
	b _08109AEC
_08109A78: .4byte 0x03001038
_08109A7C: .4byte 0x0819832C
_08109A80: .4byte 0x08198220
_08109A84: .4byte 0x08198504
_08109A88: .4byte 0x08198584
_08109A8C: .4byte 0xFFFFE000
_08109A90: .4byte 0xFFFFE00F
_08109A94: .4byte 0x00000FFF
_08109A98: .4byte 0xFFFF9C00
_08109A9C:
	ldr r2, _08109B3C @ =0x03001038
	ldr r1, _08109B40 @ =0x0819832C
	ldr r0, _08109B44 @ =0x08198220
	subs r1, r1, r0
	ldr r0, [r2, #0x00]
	adds r2, r0, r1
	movs r3, #0xC8
	lsls r3, r3, #0x10
	ldr r4, [sp, #0x014]
	ldr r6, _08109B48 @ =0xFFFFE000
	adds r0, r4, r6
	cmp r0, #0x00
	bge _08109ABA
	ldr r1, _08109B4C @ =0xFFFFE00F
	adds r0, r4, r1
_08109ABA:
	asrs r0, r0, #0x04
	movs r1, #0xC8
	lsls r1, r1, #0x04
	subs r1, r1, r0
	adds r0, r3, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r2, [sp, #0x008]
	str r2, [r5, #0x10]
	lsls r0, r4, #0x01
	adds r0, r0, r4
	lsls r0, r0, #0x03
	adds r0, r0, r4
	lsls r0, r0, #0x0A
	cmp r0, #0x00
	bge _08109AE0
	ldr r3, _08109B50 @ =0x00000FFF
	adds r0, r0, r3
_08109AE0:
	asrs r0, r0, #0x0C
	ldr r6, [sp, #0x00C]
	adds r0, r6, r0
	ldr r1, _08109B54 @ =0xFFFF9C00
	adds r0, r0, r1
	str r0, [r5, #0x14]
_08109AEC:
	ldr r2, [sp, #0x018]
	cmp r9, r2
	bne _08109B90
	mov r3, r8
	cmp r3, #0x00
	bne _08109B90
	ldr r6, [sp, #0x000]
	movs r1, #0x18
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	beq _08109B5C
	adds r1, r0, #0x0
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldrh r0, [r6, #0x18]
	subs r0, #0x80
	strh r0, [r6, #0x18]
	ldr r0, _08109B58 @ =0x08198504
	movs r3, #0x02
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08109B1C
	adds r0, #0x3F
_08109B1C:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r6, #0xC0
	lsls r6, r6, #0x06
	adds r0, r0, r6
	ldr r1, [r5, #0x18]
	cmp r0, r1
	blt _08109B96
	adds r0, r5, #0x0
	adds r0, #0xAC
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r2, [sp, #0x000]
	strh r1, [r2, #0x18]
	b _08109B96
	.byte 0x00, 0x00
_08109B3C: .4byte 0x03001038
_08109B40: .4byte 0x0819832C
_08109B44: .4byte 0x08198220
_08109B48: .4byte 0xFFFFE000
_08109B4C: .4byte 0xFFFFE00F
_08109B50: .4byte 0x00000FFF
_08109B54: .4byte 0xFFFF9C00
_08109B58: .4byte 0x08198504
_08109B5C:
	ldr r3, _08109B8C @ =0x08198504
	adds r2, r5, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	adds r1, r0, #0x1
	strh r1, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0E
	adds r0, #0x01
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08109B80
	adds r0, #0x3F
_08109B80:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r6, #0xC0
	lsls r6, r6, #0x06
	adds r0, r0, r6
	b _08109B94
_08109B8C: .4byte 0x08198504
_08109B90:
	movs r0, #0xC0
	lsls r0, r0, #0x06
_08109B94:
	str r0, [r5, #0x18]
_08109B96:
	mov r0, r8
	cmp r0, #0x02
	bne _08109BB8
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
	b _08109BD6
_08109BB8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r1, [r5, #0x08]
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08109BCE
	adds r0, #0x0F
_08109BCE:
	asrs r0, r0, #0x04
	strh r0, [r1, #0x04]
	ldr r1, [r5, #0x08]
	strh r0, [r1, #0x06]
_08109BD6:
	ldr r1, [sp, #0x018]
	cmp r9, r1
	beq _08109BEC
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
_08109BEC:
	movs r2, #0x01
	add r9, r2
	mov r3, r9
	cmp r3, #0x03
	bgt _08109BF8
	b _08109808
_08109BF8:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8109C08
sub_8109C08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08109C7C @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r5, [r0, #0x38]
	movs r7, #0x00
	mov r10, r1
	ldr r0, _08109C80 @ =0x000001FF
	mov r9, r0
	movs r1, #0xFF
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r12, r2
_08109C2A:
	ldr r3, _08109C84 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	lsls r1, r7, #0x02
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _08109CD4
	ldr r0, [r6, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r2, [r1, #0x00]
	cmp r2, #0x05
	bne _08109C4C
	movs r2, #0x04
_08109C4C:
	cmp r2, #0x04
	ble _08109C52
	subs r2, #0x05
_08109C52:
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x02
	ldsh r4, [r0, r3]
	ldr r0, _08109C88 @ =0x0820112C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x5D
	cmp r2, #0x03
	bne _08109C8C
	subs r1, #0x08
	mov r0, r9
	ands r1, r0
	subs r0, r4, #0x4
	mov r2, r8
	ands r0, r2
	mov r2, r12
	orrs r0, r2
	strh r0, [r5, #0x00]
	b _08109CA0
_08109C7C: .4byte 0x03000D74
_08109C80: .4byte 0x000001FF
_08109C84: .4byte 0x03000FD8
_08109C88: .4byte 0x0820112C
_08109C8C:
	subs r1, #0x10
	mov r0, r9
	ands r1, r0
	subs r0, r4, #0x4
	mov r2, r8
	ands r0, r2
	mov r2, r12
	orrs r0, r2
	strh r0, [r5, #0x00]
	orrs r1, r2
_08109CA0:
	strh r1, [r5, #0x02]
	ldr r1, _08109CF0 @ =0xFFFFD800
	adds r0, r1, #0x0
	orrs r3, r0
	strh r3, [r5, #0x04]
	ldr r4, [r5, #0x10]
	ldr r3, [r5, #0x0C]
	ldr r0, [r6, #0x08]
	ldr r2, [r0, #0x34]
	ldr r1, [r2, #0x0C]
	movs r0, #0x00
	strh r0, [r5, #0x06]
	ldr r0, [r1, #0x08]
	str r0, [r5, #0x08]
	str r3, [r4, #0x0C]
	str r4, [r3, #0x10]
	str r1, [r5, #0x0C]
	str r2, [r5, #0x10]
	str r5, [r1, #0x10]
	str r5, [r2, #0x0C]
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x02]
	adds r0, #0x01
	strb r0, [r1, #0x02]
	adds r5, r4, #0x0
_08109CD4:
	adds r7, #0x01
	cmp r7, #0x04
	ble _08109C2A
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r5, [r0, #0x38]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109CF0: .4byte 0xFFFFD800
	thumb_func_start sub_8109CF4
sub_8109CF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r6, r3, #0x0
	ldr r5, [r4, #0x4C]
	cmp r5, #0x00
	bne _08109D16
	ldr r0, _08109DB4 @ =0x08109DC5
	adds r1, r4, #0x0
	bl sub_807FF48
	adds r5, r0, #0x0
	str r5, [r4, #0x4C]
_08109D16:
	add r1, sp, #0x008
	ldr r2, [r4, #0x18]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r3, r6, #0x0
	bl sub_8087878
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r3, [sp, #0x004]
	str r3, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r2, _08109DB8 @ =0x03001038
	ldr r0, _08109DBC @ =0x0819832C
	ldr r1, _08109DC0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r3, #0x0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08109D4C
	adds r0, #0x1F
_08109D4C:
	asrs r0, r0, #0x05
	muls r0, r3
	cmp r0, #0x00
	bge _08109D56
	adds r0, #0x3F
_08109D56:
	asrs r1, r0, #0x06
	movs r0, #0xB3
	lsls r0, r0, #0x0E
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x0C
	ldr r2, [sp, #0x024]
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x94
	ldr r0, [r4, #0x08]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08109D90
	adds r0, #0xFF
_08109D90:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x12]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08109D9C
	adds r0, #0xFF
_08109D9C:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x14]
	movs r0, #0x00
	strh r0, [r5, #0x10]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08109DB4: .4byte sub_8109DC4
_08109DB8: .4byte 0x03001038
_08109DBC: .4byte 0x0819832C
_08109DC0: .4byte 0x08198220
	thumb_func_start sub_8109DC4
sub_8109DC4:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	ldr r4, [r2, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x7C
	ldrh r0, [r0, #0x00]
	ldrh r1, [r2, #0x10]
	adds r0, r0, r1
	movs r3, #0x00
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x17
	cmp r0, r1
	ble _08109E0C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	str r3, [r2, #0x04]
	str r3, [r4, #0x4C]
	b _08109E84
_08109E0C:
	movs r0, #0x10
	ldsh r5, [r2, r0]
	movs r1, #0x12
	ldsh r0, [r2, r1]
	lsls r3, r0, #0x08
	movs r1, #0x14
	ldsh r0, [r2, r1]
	lsls r7, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08109E2E
	adds r0, #0x3F
_08109E2E:
	asrs r6, r0, #0x06
	subs r0, r1, r3
	muls r0, r6
	cmp r0, #0x00
	bge _08109E3A
	adds r0, #0xFF
_08109E3A:
	asrs r0, r0, #0x08
	adds r0, r3, r0
	str r0, [r4, #0x10]
	subs r0, r2, r7
	muls r0, r6
	cmp r0, #0x00
	bge _08109E4A
	adds r0, #0xFF
_08109E4A:
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x10
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldr r2, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	subs r0, r0, r1
	muls r0, r6
	cmp r0, #0x00
	bge _08109E7C
	adds r0, #0xFF
_08109E7C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	strh r0, [r2, #0x04]
	strh r0, [r2, #0x06]
_08109E84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8109E8C
sub_8109E8C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x7F
	ands r4, r0
	ldr r0, _08109F40 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x07]
	movs r0, #0xE0
	ands r0, r1
	cmp r0, #0x00
	bne _08109F28
	lsls r1, r4, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08109EBA
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	bne _08109F28
_08109EBA:
	ldr r0, [r2, #0x7C]
	ldr r0, [r0, #0x48]
	cmp r0, #0x00
	bne _08109F28
	ldr r0, _08109F44 @ =0x0300034C
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08109EF2
	cmp r5, #0x01
	beq _08109EF2
	subs r0, r5, #0x1
	cmp r4, #0x00
	ble _08109EDC
	subs r0, r4, #0x1
_08109EDC:
	adds r4, r0, #0x0
	ldr r1, _08109F48 @ =0x00000316
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	subs r1, #0x01
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x78
	bl play_sfx_80195B4
_08109EF2:
	ldr r0, _08109F44 @ =0x0300034C
	adds r0, #0x42
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08109F28
	cmp r5, #0x01
	beq _08109F28
	subs r0, r5, #0x1
	movs r1, #0x00
	cmp r4, r0
	bge _08109F0E
	adds r1, r4, #0x1
_08109F0E:
	adds r4, r1, #0x0
	ldr r0, _08109F40 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _08109F48 @ =0x00000316
	adds r1, r1, r3
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x78
	bl play_sfx_80195B4
_08109F28:
	ldr r0, _08109F40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	strh r4, [r0, #0x10]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08109F40: .4byte 0x03000FD8
_08109F44: .4byte 0x0300034C
_08109F48: .4byte 0x00000316
	thumb_func_start sub_8109F4C
sub_8109F4C:
	push {r4, r5, r6, r7, lr}
	ldr r1, _08109FBC @ =0x03000FD8
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r1, r2, r3
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	ldrb r1, [r2, #0x07]
	movs r0, #0xE0
	ands r0, r1
	cmp r0, #0x00
	bne _08109FB8
	cmp r6, #0x00
	beq _08109FB8
	ldr r0, [r6, #0x4C]
	cmp r0, #0x00
	bne _08109FB8
	adds r7, r6, #0x0
	adds r7, #0xA0
	ldr r0, [r7, #0x00]
	cmp r0, #0x02
	beq _08109FB8
	ldr r0, [r2, #0x7C]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r5, r0, #0x0
	adds r5, #0xBA
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	blt _08109FB8
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	lsls r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x06
	subs r1, r1, r0
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _08109FB8
	str r1, [r4, #0x18]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x01
	bne _08109FC0
_08109FB8:
	movs r0, #0x00
	b _08109FE4
_08109FBC: .4byte 0x03000FD8
_08109FC0:
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x04
	beq _08109FD2
	cmp r0, #0x04
	ble _08109FD8
	cmp r0, #0x05
	bne _08109FD8
_08109FD2:
	movs r0, #0x01
	negs r0, r0
	b _08109FE4
_08109FD8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x77
	bl play_sfx_80195B4
	movs r0, #0x01
_08109FE4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8109FEC
sub_8109FEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	mov r9, r1
	adds r5, r2, #0x0
	mov r10, r3
	ldr r2, [sp, #0x034]
	cmp r2, #0x00
	bne _0810A060
	adds r3, r7, #0x0
	adds r2, r5, #0x0
	movs r4, #0xFF
	mov r0, r10
	ands r4, r0
	ldr r0, _0810A050 @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r1, r0, r5
	ldr r1, [r1, #0x00]
	movs r7, #0x0F
	ldr r6, _0810A054 @ =0x000001FF
	ldr r5, _0810A058 @ =0xFFFF8000
	adds r0, r5, #0x0
	orrs r4, r0
	ldr r0, _0810A05C @ =0xFFFFB000
	adds r5, r0, #0x0
_0810A028:
	adds r0, r3, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0xC0
	subs r2, #0x08
	ands r2, r6
	strh r4, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r5
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r3, r3, #0x04
	cmp r3, #0x00
	bne _0810A028
	ldr r2, _0810A050 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r2, r3
	str r1, [r0, #0x00]
	b _0810A204
_0810A050: .4byte 0x0300034C
_0810A054: .4byte 0x000001FF
_0810A058: .4byte 0xFFFF8000
_0810A05C: .4byte 0xFFFFB000
_0810A060:
	ldr r3, _0810A214 @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r0, r3, r4
	ldr r6, [r0, #0x00]
	str r5, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	ldr r0, _0810A218 @ =0x08198504
	movs r1, #0xFF
	ands r2, r1
	lsls r2, r2, #0x01
	adds r0, r2, r0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _0810A084
	adds r1, #0x3F
_0810A084:
	asrs r1, r1, #0x06
	str r1, [sp, #0x008]
	ldr r0, _0810A21C @ =0x08198584
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810A096
	adds r0, #0x3F
_0810A096:
	asrs r0, r0, #0x06
	str r0, [sp, #0x00C]
	ldr r0, _0810A220 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x07]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	mov r8, r0
	ldr r2, _0810A224 @ =0x00000888
	adds r0, r3, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	mov r1, r8
	lsls r0, r1, #0x05
	adds r1, r3, #0x0
	adds r1, #0x80
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r0, [r4, #0x06]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r1, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r1, [r4, #0x16]
	ldr r2, _0810A228 @ =0x0819832C
	ldr r3, _0810A22C @ =0x08198220
	subs r0, r2, r3
	ldr r1, _0810A230 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x008]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	ldr r2, [sp, #0x00C]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	cmp r0, #0x00
	bge _0810A0F6
	adds r0, #0xFF
_0810A0F6:
	asrs r0, r0, #0x08
	mov r4, r10
	subs r3, r4, r0
	movs r0, #0xFF
	ands r3, r0
	ldr r1, [sp, #0x008]
	lsls r1, r1, #0x02
	str r1, [sp, #0x010]
	movs r2, #0x0F
	mov r12, r2
	ldr r4, _0810A234 @ =0x000001FF
	mov r10, r4
	ldr r1, _0810A238 @ =0xFFFF8100
	adds r0, r1, #0x0
	orrs r3, r0
	mov r2, r8
	lsls r4, r2, #0x09
	ldr r0, _0810A23C @ =0xFFFFB000
	adds r2, r0, #0x0
_0810A11C:
	adds r1, r7, #0x0
	mov r0, r12
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0xC0
	subs r5, #0x08
	mov r0, r10
	ands r5, r0
	strh r3, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r4
	strh r0, [r6, #0x02]
	orrs r1, r2
	strh r1, [r6, #0x04]
	adds r6, #0x08
	lsrs r7, r7, #0x04
	cmp r7, #0x00
	bne _0810A11C
	movs r1, #0x01
	negs r1, r1
	add r8, r1
	ldr r2, _0810A214 @ =0x0300034C
	mov r10, r2
	ldr r0, _0810A224 @ =0x00000888
	add r0, r10
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	mov r3, r8
	lsls r0, r3, #0x05
	mov r1, r10
	adds r1, #0x80
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r0, [r4, #0x06]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r7, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r7, [r4, #0x16]
	ldr r5, _0810A228 @ =0x0819832C
	ldr r1, _0810A22C @ =0x08198220
	subs r0, r5, r1
	ldr r3, _0810A230 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x00C]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	ldr r4, [sp, #0x010]
	ldr r5, [sp, #0x008]
	adds r0, r4, r5
	cmp r0, #0x00
	bge _0810A198
	adds r0, #0xFF
_0810A198:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x004]
	adds r3, r1, r0
	movs r0, #0xFF
	ands r3, r0
	ldr r5, [sp, #0x000]
	mov r4, r8
	subs r4, #0x01
	movs r2, #0x0F
	mov r12, r2
	ldr r0, _0810A234 @ =0x000001FF
	mov r10, r0
	ldr r1, _0810A238 @ =0xFFFF8100
	adds r0, r1, #0x0
	orrs r3, r0
	mov r2, r8
	lsls r7, r2, #0x09
	ldr r0, _0810A23C @ =0xFFFFB000
	adds r2, r0, #0x0
_0810A1BE:
	mov r1, r9
	mov r0, r12
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0xC0
	subs r5, #0x08
	mov r0, r10
	ands r5, r0
	strh r3, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r7
	strh r0, [r6, #0x02]
	orrs r1, r2
	strh r1, [r6, #0x04]
	adds r6, #0x08
	mov r1, r9
	lsrs r1, r1, #0x04
	mov r9, r1
	cmp r1, #0x00
	bne _0810A1BE
	ldr r3, _0810A220 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	movs r0, #0x1F
	ands r4, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x07]
	ldr r4, _0810A214 @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r0, r4, r5
	str r6, [r0, #0x00]
_0810A204:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A214: .4byte 0x0300034C
_0810A218: .4byte 0x08198504
_0810A21C: .4byte 0x08198584
_0810A220: .4byte 0x03000FD8
_0810A224: .4byte 0x00000888
_0810A228: .4byte 0x0819832C
_0810A22C: .4byte 0x08198220
_0810A230: .4byte 0x03001038
_0810A234: .4byte 0x000001FF
_0810A238: .4byte 0xFFFF8100
_0810A23C: .4byte 0xFFFFB000
	thumb_func_start sub_810A240
sub_810A240:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r10, r0
	mov r9, r1
	adds r5, r2, #0x0
	ldr r2, [sp, #0x034]
	movs r0, #0x3F
	ands r2, r0
	cmp r2, #0x00
	bne _0810A2B4
	mov r4, r10
	adds r2, r5, #0x0
	movs r5, #0xFF
	ands r5, r3
	ldr r0, _0810A2A4 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	movs r7, #0x0F
	ldr r6, _0810A2A8 @ =0x000001FF
	ldr r3, _0810A2AC @ =0xFFFF8000
	adds r0, r3, #0x0
	orrs r5, r0
	ldr r0, _0810A2B0 @ =0xFFFFB000
	adds r3, r0, #0x0
_0810A27C:
	adds r0, r4, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	ands r2, r6
	strh r5, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r3
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r4, r4, #0x04
	cmp r4, #0x00
	bne _0810A27C
	ldr r2, _0810A2A4 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r2, r3
	str r1, [r0, #0x00]
	b _0810A4AA
_0810A2A4: .4byte 0x0300034C
_0810A2A8: .4byte 0x000001FF
_0810A2AC: .4byte 0xFFFF8000
_0810A2B0: .4byte 0xFFFFB000
_0810A2B4:
	ldr r7, _0810A43C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r7, r1
	ldr r6, [r0, #0x00]
	str r5, [sp, #0x000]
	str r3, [sp, #0x004]
	ldr r0, _0810A440 @ =0x08198504
	movs r3, #0xFF
	ands r2, r3
	lsls r2, r2, #0x01
	adds r0, r2, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0810A2D6
	adds r1, #0x3F
_0810A2D6:
	asrs r1, r1, #0x06
	str r1, [sp, #0x008]
	ldr r0, _0810A444 @ =0x08198584
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810A2E8
	adds r0, #0x3F
_0810A2E8:
	asrs r0, r0, #0x06
	str r0, [sp, #0x00C]
	ldr r0, _0810A448 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x07]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	mov r8, r0
	ldr r2, _0810A44C @ =0x00000888
	adds r0, r7, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	mov r3, r8
	lsls r0, r3, #0x05
	adds r1, r7, #0x0
	adds r1, #0x80
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r0, [r4, #0x06]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r1, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r1, [r4, #0x16]
	ldr r7, _0810A450 @ =0x03001038
	ldr r1, _0810A454 @ =0x0819832C
	ldr r2, _0810A458 @ =0x08198220
	subs r0, r1, r2
	ldr r2, [r7, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x008]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	ldr r3, [sp, #0x00C]
	lsls r0, r3, #0x03
	subs r0, r0, r3
	cmp r0, #0x00
	bge _0810A348
	adds r0, #0xFF
_0810A348:
	asrs r0, r0, #0x08
	ldr r1, [sp, #0x004]
	subs r2, r1, r0
	movs r3, #0xFF
	ands r2, r3
	mov r3, r10
	mov r4, r9
	ldr r7, [sp, #0x008]
	lsls r7, r7, #0x03
	str r7, [sp, #0x010]
	ldr r1, _0810A45C @ =0xFFFF8100
	adds r0, r1, #0x0
	orrs r2, r0
	mov r7, r8
	lsls r7, r7, #0x09
	mov r12, r7
_0810A368:
	adds r1, r3, #0x0
	movs r0, #0x0F
	ands r1, r0
	adds r0, r4, #0x0
	movs r7, #0x0F
	ands r0, r7
	cmp r1, r0
	beq _0810A396
	lsls r0, r1, #0x01
	adds r0, #0x49
	subs r5, #0x08
	ldr r1, _0810A460 @ =0x000001FF
	ands r5, r1
	strh r2, [r6, #0x00]
	adds r1, r5, #0x0
	mov r7, r12
	orrs r1, r7
	strh r1, [r6, #0x02]
	ldr r7, _0810A464 @ =0xFFFFB000
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r6, #0x04]
	adds r6, #0x08
_0810A396:
	asrs r3, r3, #0x04
	asrs r4, r4, #0x04
	cmp r3, #0x00
	bne _0810A368
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	ldr r7, _0810A43C @ =0x0300034C
	ldr r1, _0810A44C @ =0x00000888
	adds r0, r7, r1
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	mov r2, r8
	lsls r0, r2, #0x05
	adds r1, r7, #0x0
	adds r1, #0x80
	adds r0, r0, r1
	adds r4, r4, r0
	ldrh r0, [r4, #0x06]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r3, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r3, [r4, #0x16]
	ldr r3, _0810A454 @ =0x0819832C
	ldr r1, _0810A458 @ =0x08198220
	subs r0, r3, r1
	ldr r3, _0810A450 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x00C]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x008]
	subs r0, r1, r2
	cmp r0, #0x00
	bge _0810A3F4
	adds r0, #0xFF
_0810A3F4:
	asrs r0, r0, #0x08
	ldr r3, [sp, #0x004]
	adds r2, r3, r0
	movs r0, #0xFF
	ands r2, r0
	ldr r5, [sp, #0x000]
	mov r3, r8
	subs r3, #0x01
	movs r7, #0x0F
	ldr r1, _0810A45C @ =0xFFFF8100
	adds r0, r1, #0x0
	orrs r2, r0
	ldr r1, _0810A468 @ =0xFFFF8000
	adds r0, r1, #0x0
	ldr r1, [sp, #0x004]
	orrs r1, r0
	mov r12, r1
_0810A416:
	mov r1, r9
	ands r1, r7
	lsls r0, r1, #0x01
	adds r4, r0, #0x0
	adds r4, #0x49
	subs r5, #0x08
	ldr r0, _0810A460 @ =0x000001FF
	ands r5, r0
	mov r0, r10
	ands r0, r7
	cmp r0, r1
	beq _0810A46C
	strh r2, [r6, #0x00]
	mov r1, r8
	lsls r0, r1, #0x09
	orrs r0, r5
	strh r0, [r6, #0x02]
	b _0810A472
	.byte 0x00, 0x00
_0810A43C: .4byte 0x0300034C
_0810A440: .4byte 0x08198504
_0810A444: .4byte 0x08198584
_0810A448: .4byte 0x03000FD8
_0810A44C: .4byte 0x00000888
_0810A450: .4byte 0x03001038
_0810A454: .4byte 0x0819832C
_0810A458: .4byte 0x08198220
_0810A45C: .4byte 0xFFFF8100
_0810A460: .4byte 0x000001FF
_0810A464: .4byte 0xFFFFB000
_0810A468: .4byte 0xFFFF8000
_0810A46C:
	mov r0, r12
	strh r0, [r6, #0x00]
	strh r5, [r6, #0x02]
_0810A472:
	ldr r1, _0810A4BC @ =0xFFFFB000
	adds r0, r1, #0x0
	orrs r4, r0
	strh r4, [r6, #0x04]
	adds r6, #0x08
	mov r0, r10
	lsrs r0, r0, #0x04
	mov r10, r0
	mov r1, r9
	lsrs r1, r1, #0x04
	mov r9, r1
	cmp r1, #0x00
	bne _0810A416
	ldr r7, _0810A4C0 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	movs r0, #0x1F
	ands r3, r0
	ldrb r1, [r2, #0x07]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x07]
	ldr r1, _0810A4C4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	str r6, [r0, #0x00]
_0810A4AA:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810A4BC: .4byte 0xFFFFB000
_0810A4C0: .4byte 0x03000FD8
_0810A4C4: .4byte 0x0300034C
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x07, 0x1C, 0x0D, 0x1C
	.byte 0x90, 0x46, 0x99, 0x46, 0x00, 0x2B, 0x00, 0xDC, 0x97, 0xE0, 0xFF, 0x2B, 0x2C, 0xDD, 0x3C, 0x1C
	.byte 0x2A, 0x1C, 0xFF, 0x25, 0x40, 0x46, 0x05, 0x40, 0x0F, 0x48, 0x88, 0x23, 0x1B, 0x01, 0xC1, 0x18
	.byte 0x09, 0x68, 0x84, 0x46, 0x0F, 0x23, 0x0D, 0x4F, 0x0D, 0x4E, 0x30, 0x1C, 0x05, 0x43, 0x0D, 0x48
	.byte 0x06, 0x1C, 0x20, 0x1C, 0x18, 0x40, 0x40, 0x00, 0x49, 0x30, 0x08, 0x3A, 0x3A, 0x40, 0x0D, 0x80
	.byte 0x4A, 0x80, 0x30, 0x43, 0x88, 0x80, 0x08, 0x31, 0x24, 0x09, 0x00, 0x2C, 0xF1, 0xD1, 0x88, 0x20
	.byte 0x00, 0x01, 0x60, 0x44, 0x01, 0x60, 0x70, 0xE0, 0x4C, 0x03, 0x00, 0x03, 0xFF, 0x01, 0x00, 0x00
	.byte 0x00, 0x80, 0xFF, 0xFF, 0x00, 0xB0, 0xFF, 0xFF, 0x38, 0x49, 0x8A, 0x46, 0x88, 0x20, 0x00, 0x01
	.byte 0x50, 0x44, 0x06, 0x68, 0x36, 0x48, 0x04, 0x68, 0xE2, 0x79, 0xD3, 0x06, 0xD9, 0x0E, 0x01, 0x39
	.byte 0x1F, 0x20, 0x01, 0x40, 0x20, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43, 0xE0, 0x71, 0xDB, 0x0E
	.byte 0x00, 0x93, 0x30, 0x4A, 0x30, 0x48, 0x31, 0x49, 0x40, 0x1A, 0x12, 0x68, 0x12, 0x18, 0x80, 0x20
	.byte 0x40, 0x02, 0x49, 0x46, 0xD0, 0xF0, 0x78, 0xFA, 0x2D, 0x49, 0x51, 0x44, 0x09, 0x78, 0x09, 0x07
	.byte 0xC9, 0x0F, 0x89, 0x02, 0x00, 0x9B, 0x5A, 0x01, 0x53, 0x46, 0x80, 0x33, 0xD2, 0x18, 0x89, 0x18
	.byte 0xCA, 0x88, 0x00, 0x22, 0xC8, 0x80, 0xC8, 0x89, 0xCA, 0x81, 0xC8, 0x8A, 0xCA, 0x82, 0xC8, 0x8B
	.byte 0x48, 0x46, 0xC8, 0x83, 0x08, 0x21, 0x49, 0x42, 0x88, 0x44, 0xFF, 0x20, 0x43, 0x46, 0x03, 0x40
	.byte 0x98, 0x46, 0x04, 0x3D, 0x09, 0x98, 0x00, 0x28, 0x04, 0xD0, 0x38, 0x1C, 0x29, 0x1C, 0x02, 0xF0
	.byte 0x4B, 0xFE, 0x05, 0x1C, 0xD4, 0x46, 0x0F, 0x20, 0x82, 0x46, 0x1A, 0x49, 0x89, 0x46, 0x1A, 0x4B
	.byte 0x18, 0x1C, 0x44, 0x46, 0x04, 0x43, 0x00, 0x98, 0x42, 0x02, 0x18, 0x49, 0x0B, 0x1C, 0x39, 0x1C
	.byte 0x50, 0x46, 0x01, 0x40, 0x49, 0x00, 0x49, 0x31, 0x08, 0x3D, 0x48, 0x46, 0x05, 0x40, 0x34, 0x80
	.byte 0x28, 0x1C, 0x10, 0x43, 0x70, 0x80, 0x19, 0x43, 0xB1, 0x80, 0x08, 0x36, 0x3F, 0x09, 0x00, 0x2F
	.byte 0xED, 0xD1, 0x88, 0x20, 0x00, 0x01, 0x60, 0x44, 0x06, 0x60, 0x01, 0xB0, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03
	.byte 0xD8, 0x0F, 0x00, 0x03, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08
	.byte 0x88, 0x08, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x83, 0xFF, 0xFF, 0x00, 0xB0, 0xFF, 0xFF
	thumb_func_start sub_810A648
sub_810A648:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	ldr r0, _0810A6C0 @ =0x03000FD8
	mov r10, r0
	ldr r1, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	mov r9, r2
	adds r0, r1, r2
	ldr r5, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	ldr r0, [r1, #0x74]
	cmp r2, r0
	bne _0810A676
	adds r4, #0x01
_0810A676:
	cmp r5, #0x00
	bne _0810A6C4
	ldr r1, [sp, #0x02C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x80
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	str r5, [r0, #0x00]
	b _0810A718
_0810A6C0: .4byte 0x03000FD8
_0810A6C4:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0810A6D6
	adds r0, r2, #0x0
	bl sub_807BC90
_0810A6D6:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r4
	beq _0810A718
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810A718:
	lsls r6, r6, #0x08
	lsls r7, r7, #0x08
	mov r2, r8
	lsls r2, r2, #0x08
	mov r8, r2
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	adds r3, r5, #0x0
	adds r3, #0x88
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r1, r6
	bne _0810A742
	ldr r0, [r3, #0x00]
	cmp r0, r7
	bne _0810A742
	ldr r0, [r2, #0x00]
	cmp r0, r8
	beq _0810A778
_0810A742:
	str r6, [r4, #0x00]
	str r7, [r3, #0x00]
	mov r0, r8
	str r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x05
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	cmp r4, #0x00
	bne _0810A778
	ldr r0, _0810A788 @ =0x0810D1A5
	adds r1, r5, #0x0
	bl sub_807FF48
_0810A778:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A788: .4byte sub_810D1A4
	thumb_func_start sub_810A78C
sub_810A78C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x10
	ble _0810A7B4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A7A0
	adds r0, #0xFF
_0810A7A0:
	asrs r0, r0, #0x08
	adds r6, r0, #0x0
	adds r6, #0x20
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _0810A7AE
	adds r0, #0xFF
_0810A7AE:
	asrs r5, r0, #0x08
	movs r2, #0x04
	b _0810A832
_0810A7B4:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _0810A7F8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A7CA
	adds r0, #0xFF
_0810A7CA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r6, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	bge _0810A7E0
	adds r1, #0xFF
_0810A7E0:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r5, r1, r0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	bge _0810A7F0
	adds r0, #0xFF
_0810A7F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	b _0810A832
_0810A7F8:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A800
	adds r0, #0xFF
_0810A800:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r6, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	bge _0810A816
	adds r1, #0xFF
_0810A816:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r5, r1, r0
	adds r0, r4, #0x0
	bl sub_8083E78
	adds r1, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	bge _0810A82E
	adds r0, #0xFF
_0810A82E:
	asrs r0, r0, #0x08
	adds r2, r0, r1
_0810A832:
	ldr r0, _0810A848 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r3, r7, #0x0
	bl sub_810A648
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A848: .4byte 0x00007001
	thumb_func_start sub_810A84C
sub_810A84C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x01
	beq _0810A88C
	cmp r7, #0x01
	bgt _0810A870
	cmp r7, #0x00
	beq _0810A87C
	ldr r0, _0810A86C @ =0x03000FD8
	mov r9, r0
	b _0810A8A8
_0810A86C: .4byte 0x03000FD8
_0810A870:
	cmp r7, #0x02
	beq _0810A89C
	ldr r1, _0810A878 @ =0x03000FD8
	b _0810A8A6
_0810A878: .4byte 0x03000FD8
_0810A87C:
	ldr r1, _0810A884 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r4, _0810A888 @ =0x0000033F
	b _0810A8A2
_0810A884: .4byte 0x03000FD8
_0810A888: .4byte 0x0000033F
_0810A88C:
	ldr r1, _0810A898 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r0, r5
	b _0810A8A4
_0810A898: .4byte 0x03000FD8
_0810A89C:
	ldr r1, _0810A900 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r4, _0810A904 @ =0x00000341
_0810A8A2:
	adds r0, r0, r4
_0810A8A4:
	ldrb r4, [r0, #0x00]
_0810A8A6:
	mov r9, r1
_0810A8A8:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x05
	ble _0810A8E2
	mov r5, r9
	ldr r0, [r5, #0x00]
	ldr r5, _0810A908 @ =0x000002C5
	adds r1, r0, r5
	adds r1, r1, r7
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r5, #0x03
	adds r0, r0, r5
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r6, r6, r0
	cmp r6, #0x00
	bge _0810A8D4
	adds r6, r6, r4
_0810A8D4:
	subs r0, r6, #0x1
	cmp r0, r1
	ble _0810A8DC
	subs r6, r1, #0x1
_0810A8DC:
	cmp r6, #0x04
	bls _0810A8E2
	adds r6, r1, #0x0
_0810A8E2:
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r4, _0810A908 @ =0x000002C5
	adds r0, r0, r4
	adds r0, r0, r7
	strb r6, [r0, #0x00]
	cmp r2, #0x00
	beq _0810A90C
	adds r0, r3, #0x0
	adds r0, #0x09
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	b _0810A910
	.byte 0x00, 0x00
_0810A900: .4byte 0x03000FD8
_0810A904: .4byte 0x00000341
_0810A908: .4byte 0x000002C5
_0810A90C:
	movs r5, #0x0B
	mov r8, r5
_0810A910:
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	ldr r1, _0810A978 @ =0x08201131
	adds r1, r7, r1
	ldrb r4, [r1, #0x00]
	lsls r4, r4, #0x03
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x04
	adds r4, r4, r0
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	movs r0, #0x0B
	adds r1, r6, #0x0
	muls r1, r0
	ldr r0, _0810A97C @ =0x08201134
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	subs r2, r2, r1
	subs r2, #0x18
	mov r5, r8
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	ldr r0, _0810A980 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_810A648
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810A978: .4byte 0x08201131
_0810A97C: .4byte 0x08201134
_0810A980: .4byte 0x00007001
	thumb_func_start sub_810A984
sub_810A984:
	push {r4, lr}
	add sp, #-0x004
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0x0
	ldr r4, _0810A9C8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldrb r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0810A9D8
	ldr r0, _0810A9CC @ =0x03000FDC
	lsls r1, r1, #0x09
	ldr r2, _0810A9D0 @ =0x00004E70
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810A9D4 @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, [r4, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r1, #0x26
	strb r1, [r0, #0x00]
	b _0810A9FC
	.byte 0x00, 0x00
_0810A9C8: .4byte 0x03000FD8
_0810A9CC: .4byte 0x03000FDC
_0810A9D0: .4byte 0x00004E70
_0810A9D4: .4byte 0x060113A0
_0810A9D8:
	cmp r3, #0x13
	bne _0810A9FC
	ldr r0, _0810AA14 @ =0x03000FDC
	lsls r1, r2, #0x04
	adds r1, #0x08
	lsls r1, r1, #0x05
	ldr r2, _0810AA18 @ =0x00004E70
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810AA1C @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0810A9FC:
	ldr r0, _0810AA20 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0810AA14: .4byte 0x03000FDC
_0810AA18: .4byte 0x00004E70
_0810AA1C: .4byte 0x060113A0
_0810AA20: .4byte 0x03000FD8
	thumb_func_start sub_810AA24
sub_810AA24:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r9, r0
	movs r0, #0x40
	strh r0, [r7, #0x12]
	mov r1, r9
	strh r1, [r7, #0x16]
	ldr r5, _0810AB28 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x11
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x02
	mov r8, r1
	str r1, [sp, #0x008]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x0F
	bl sub_8084578
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	movs r2, #0x04
	movs r3, #0x04
	bl sub_80847B0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	movs r2, #0x90
	bl sub_8085170
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8084E84
	adds r6, r0, #0x0
	ldr r0, [r5, #0x00]
	movs r1, #0xA7
	lsls r1, r1, #0x02
	adds r4, r0, r1
	mov r0, r9
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	mov r1, r8
	str r1, [sp, #0x00C]
	str r0, [sp, #0x010]
	movs r0, #0x03
	str r0, [sp, #0x014]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r2, #0x11
	movs r3, #0x00
	bl sub_8199D78
	bl sub_8105858
	adds r5, r0, #0x0
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8083F20
	movs r1, #0x00
	cmp r0, #0x67
	bgt _0810AACA
	movs r1, #0x01
_0810AACA:
	strh r1, [r7, #0x18]
	ldr r0, _0810AB2C @ =0x03001034
	movs r2, #0x88
	lsls r2, r2, #0x03
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	bl _call_via_r3
	str r5, [r4, #0x08]
	movs r0, #0x00
	strb r0, [r4, #0x0C]
	movs r0, #0x0D
	strb r0, [r4, #0x0D]
	ldrb r0, [r4, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x12]
_0810AAEE:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	blt _0810AB02
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0810AAEE
_0810AB02:
	ldr r0, _0810AB28 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810AB30 @ =0x0810CEC1
	str r0, [r7, #0x04]
	movs r0, #0x5A
	strh r0, [r7, #0x16]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810AB28: .4byte 0x03000FD8
_0810AB2C: .4byte 0x03001034
_0810AB30: .4byte sub_810CEC0
	thumb_func_start sub_810AB34
sub_810AB34:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, _0810AC20 @ =0x03000FD8
	mov r8, r0
	ldr r4, [r0, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrh r3, [r2, #0x12]
	movs r0, #0x12
	ldsh r1, [r2, r0]
	ldr r0, _0810AC24 @ =0x000007FF
	cmp r1, r0
	bgt _0810AB58
	b _0810AC54
_0810AB58:
	ldr r1, _0810AC28 @ =0xFFFFF800
	adds r0, r3, r1
	movs r5, #0x00
	strh r0, [r2, #0x12]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8084E84
	adds r4, r0, #0x0
	ldr r2, _0810AC2C @ =0x03001034
	ldr r0, _0810AC30 @ =0x08198154
	ldr r1, _0810AC34 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x20
	movs r6, #0x84
	lsls r6, r6, #0x03
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r6, r4, r6
	str r5, [r6, #0x00]
	ldr r1, _0810AC38 @ =0x00000424
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	ldr r0, _0810AC3C @ =0x0000043C
	adds r4, r4, r0
	str r5, [r4, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r1, #0xA7
	lsls r1, r1, #0x02
	adds r4, r0, r1
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810AC40
	ldrb r0, [r4, #0x0C]
	subs r0, #0x08
	strb r0, [r4, #0x0C]
_0810AC04:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	blt _0810AC18
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0810AC04
_0810AC18:
	movs r0, #0x00
	strh r0, [r7, #0x12]
	b _0810AC54
	.byte 0x00, 0x00
_0810AC20: .4byte 0x03000FD8
_0810AC24: .4byte 0x000007FF
_0810AC28: .4byte 0xFFFFF800
_0810AC2C: .4byte 0x03001034
_0810AC30: .4byte 0x08198154
_0810AC34: .4byte 0x081980D8
_0810AC38: .4byte 0x00000424
_0810AC3C: .4byte 0x0000043C
_0810AC40:
	ldrh r0, [r7, #0x12]
	adds r0, #0x01
	strh r0, [r7, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0A
	ble _0810AC54
	bl sub_8105858
	str r0, [r4, #0x08]
_0810AC54:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_810AC60
sub_810AC60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0810AC7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xA3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0810AC84
	ldr r0, _0810AC80 @ =0x0810AD9D
	str r0, [r3, #0x04]
	b _0810AC94
	.byte 0x00, 0x00
_0810AC7C: .4byte 0x03000FD8
_0810AC80: .4byte sub_810AD9C
_0810AC84:
	ldr r0, _0810ACC4 @ =0x0810AD9D
	movs r1, #0x00
	bl sub_807FF70
	adds r3, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	str r0, [r3, #0x0C]
_0810AC94:
	ldr r0, _0810ACC8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r0, #0xA3
	lsls r0, r0, #0x02
	add r0, r12
	str r3, [r0, #0x00]
	movs r0, #0x00
	strh r0, [r3, #0x14]
	strh r0, [r3, #0x10]
	ldr r1, [r3, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	adds r0, r4, #0x0
	ands r0, r2
	cmp r1, r0
	beq _0810ACF0
	cmp r4, #0x01
	beq _0810ACD8
	cmp r4, #0x01
	bgt _0810ACCC
	cmp r4, #0x00
	beq _0810ACD2
	b _0810ACE8
_0810ACC4: .4byte sub_810AD9C
_0810ACC8: .4byte 0x03000FD8
_0810ACCC:
	cmp r4, #0x02
	beq _0810ACE0
	b _0810ACE8
_0810ACD2:
	movs r0, #0xC8
	lsls r0, r0, #0x02
	b _0810ACE4
_0810ACD8:
	ldr r0, _0810ACDC @ =0x00000323
	b _0810ACE4
_0810ACDC: .4byte 0x00000323
_0810ACE0:
	movs r0, #0xCB
	lsls r0, r0, #0x02
_0810ACE4:
	add r0, r12
	str r0, [r3, #0x08]
_0810ACE8:
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r0, r4
	str r0, [r3, #0x0C]
_0810ACF0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x07, 0x48, 0x00, 0x68, 0xA3, 0x21, 0x89, 0x00, 0x40, 0x18, 0x01, 0x68
	.byte 0xCB, 0x68, 0x0F, 0x20, 0x03, 0x40, 0x14, 0x22, 0x88, 0x5E, 0x3F, 0x28, 0x03, 0xDC, 0x08, 0x22
	.byte 0x07, 0xE0, 0xD8, 0x0F, 0x00, 0x03, 0x14, 0x22, 0x88, 0x5E, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x02, 0x12, 0x15, 0x49, 0x00, 0x20, 0x08, 0x80, 0x02, 0x31, 0xD0, 0x1E, 0x08, 0x80, 0x2E, 0x31
	.byte 0x13, 0x4A, 0x10, 0x1C, 0x08, 0x80, 0x02, 0x31, 0x04, 0x3A, 0x10, 0x1C, 0x08, 0x80, 0x10, 0x4A
	.byte 0x11, 0x48, 0x18, 0x18, 0x01, 0x78, 0x10, 0x48, 0x18, 0x18, 0x00, 0x78, 0x08, 0x18, 0x01, 0x38
	.byte 0xC0, 0x00, 0x01, 0x31, 0xC9, 0x02, 0x08, 0x43, 0x10, 0x80, 0x04, 0x32, 0x0C, 0x48, 0x18, 0x18
	.byte 0x01, 0x78, 0x0B, 0x48, 0x18, 0x18, 0x00, 0x78, 0x08, 0x18, 0x01, 0x38, 0xC0, 0x00, 0x01, 0x31
	.byte 0xC9, 0x02, 0x08, 0x43, 0x10, 0x80, 0x01, 0xBC, 0x00, 0x47, 0x18, 0x00, 0x00, 0x04, 0x3F, 0x3F
	.byte 0x00, 0x00, 0x42, 0x00, 0x00, 0x04, 0x31, 0x11, 0x20, 0x08, 0x37, 0x11, 0x20, 0x08, 0x34, 0x11
	.byte 0x20, 0x08, 0x3A, 0x11, 0x20, 0x08
	thumb_func_start sub_810AD9C
sub_810AD9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r10, r0
	ldr r0, [r0, #0x0C]
	mov r9, r0
	movs r0, #0x0F
	mov r1, r9
	ands r1, r0
	mov r9, r1
	ldr r0, _0810ADE0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xF8
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x014]
	mov r3, r10
	movs r4, #0x10
	ldsh r7, [r3, r4]
	ldr r5, [r3, #0x08]
	str r5, [sp, #0x01C]
	mov r0, r9
	cmp r0, #0x01
	beq _0810AE00
	cmp r0, #0x01
	bgt _0810ADE4
	cmp r0, #0x00
	beq _0810ADEC
	b _0810AE1C
	.byte 0x00, 0x00
_0810ADE0: .4byte 0x03000FD8
_0810ADE4:
	mov r2, r9
	cmp r2, #0x02
	beq _0810AE10
	b _0810AE1C
_0810ADEC:
	ldr r3, _0810ADFC @ =0x0000033F
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x018]
	mov r4, r10
	strh r0, [r4, #0x16]
	b _0810AE1C
	.byte 0x00, 0x00
_0810ADFC: .4byte 0x0000033F
_0810AE00:
	movs r5, #0xD0
	lsls r5, r5, #0x02
	adds r0, r1, r5
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x018]
	mov r1, r10
	strh r0, [r1, #0x16]
	b _0810AE1C
_0810AE10:
	ldr r2, _0810AE70 @ =0x00000341
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x018]
	mov r3, r10
	strh r0, [r3, #0x16]
_0810AE1C:
	cmp r7, #0x00
	bne _0810AE30
	ldr r0, _0810AE74 @ =0x03001034
	movs r2, #0x87
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	ldr r1, [sp, #0x014]
	bl _call_via_r3
_0810AE30:
	ldr r0, _0810AE78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, _0810AE7C @ =0x000002C2
	adds r0, r0, r4
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
_0810AE46:
	ldr r5, [sp, #0x020]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r7
	ldr r1, [sp, #0x018]
	cmp r0, r1
	blt _0810AE56
	subs r0, r0, r1
_0810AE56:
	ldr r2, [sp, #0x01C]
	adds r0, r2, r0
	ldrb r4, [r0, #0x00]
	mov r3, r9
	cmp r3, #0x01
	beq _0810AF1C
	cmp r3, #0x01
	bgt _0810AE80
	cmp r3, #0x00
	beq _0810AE8C
	adds r6, r7, #0x1
	b _0810B1CA
	.byte 0x00, 0x00
_0810AE70: .4byte 0x00000341
_0810AE74: .4byte 0x03001034
_0810AE78: .4byte 0x03000FD8
_0810AE7C: .4byte 0x000002C2
_0810AE80:
	mov r5, r9
	cmp r5, #0x02
	bne _0810AE88
	b _0810AFE0
_0810AE88:
	adds r6, r7, #0x1
	b _0810B1CA
_0810AE8C:
	ldr r0, _0810AED8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x7C]
	cmp r7, #0x00
	bne _0810AEA8
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _0810AED4
_0810AEA8:
	cmp r7, #0x01
	bne _0810AEBE
	movs r3, #0x8F
	lsls r3, r3, #0x01
	adds r0, r2, r3
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0810AED4
_0810AEBE:
	cmp r7, #0x02
	bne _0810AEDC
	movs r5, #0x8F
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _0810AEDC
_0810AED4:
	movs r2, #0x03
	b _0810AEDE
_0810AED8: .4byte 0x03000FD8
_0810AEDC:
	movs r2, #0x01
_0810AEDE:
	movs r0, #0x0B
	adds r3, r7, #0x0
	muls r3, r0
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, _0810AF14 @ =0x083BA63C
	ldr r0, _0810AF18 @ =0x0300034C
	movs r5, #0x8C
	lsls r5, r5, #0x04
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x014]
	movs r1, #0x09
	movs r2, #0x00
	bl sub_8083860
	adds r6, r7, #0x1
	b _0810B1CA
_0810AF14: .4byte 0x083BA63C
_0810AF18: .4byte 0x0300034C
_0810AF1C:
	ldr r0, _0810AF4C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r5, [r3, #0x7C]
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r1, r3, r0
	lsls r2, r4, #0x01
	adds r0, r2, r4
	lsls r0, r0, #0x03
	ldr r1, [r1, #0x00]
	adds r6, r1, r0
	movs r1, #0xC6
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	lsrs r0, r2
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810AF50
	ldrb r2, [r6, #0x11]
	mov r8, r2
	b _0810AF54
	.byte 0x00, 0x00
_0810AF4C: .4byte 0x03000FD8
_0810AF50:
	ldrb r3, [r6, #0x10]
	mov r8, r3
_0810AF54:
	adds r0, r5, #0x0
	adds r0, #0xFC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r8, r0
	bgt _0810AF88
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	lsrs r1, r0, #0x0C
	cmp r4, #0x02
	ble _0810AF80
	cmp r4, #0x05
	bgt _0810AF76
	movs r0, #0x02
	b _0810AF78
_0810AF76:
	movs r0, #0x04
_0810AF78:
	ands r1, r0
	cmp r1, #0x00
	bne _0810AF88
	b _0810AF8C
_0810AF80:
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0810AF8C
_0810AF88:
	movs r5, #0x03
	b _0810AF8E
_0810AF8C:
	movs r5, #0x01
_0810AF8E:
	movs r0, #0x0B
	adds r4, r7, #0x0
	muls r4, r0
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0810AFDC @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x014]
	movs r1, #0x0C
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8083860
	mov r0, r8
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x014]
	movs r1, #0x0C
	movs r2, #0x60
	adds r3, r4, #0x0
	bl sub_8083934
	adds r6, r7, #0x1
	b _0810B1CA
_0810AFDC: .4byte 0x0300034C
_0810AFE0:
	ldr r0, _0810B02C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x8A
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x024]
	movs r1, #0x03
	mov r12, r1
	cmp r0, #0x00
	beq _0810AFF8
	movs r2, #0x01
	mov r12, r2
_0810AFF8:
	movs r3, #0x00
	movs r5, #0x00
	lsls r4, r4, #0x04
	mov r8, r4
	adds r6, r7, #0x1
_0810B002:
	ldr r4, _0810B030 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x80
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _0810B014
	b _0810B168
_0810B014:
	ldr r0, _0810B034 @ =0x083BBDD0
	add r0, r8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r0, #0x0D
	bls _0810B022
	b _0810B168
_0810B022:
	lsls r0, r0, #0x02
	ldr r1, _0810B038 @ =0x0810B03C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0810B02C: .4byte 0x03000FF4
_0810B030: .4byte 0x03000FD8
_0810B034: .4byte 0x083BBDD0
_0810B038: .4byte 0x0810B03C
	.byte 0x74, 0xB0, 0x10, 0x08, 0xF0, 0xB0, 0x10, 0x08, 0x98, 0xB0, 0x10, 0x08, 0x68, 0xB1, 0x10, 0x08
	.byte 0x68, 0xB1, 0x10, 0x08, 0x68, 0xB1, 0x10, 0x08, 0x68, 0xB1, 0x10, 0x08, 0x68, 0xB1, 0x10, 0x08
	.byte 0x68, 0xB1, 0x10, 0x08, 0x68, 0xB1, 0x10, 0x08, 0xA8, 0xB0, 0x10, 0x08, 0xB8, 0xB0, 0x10, 0x08
	.byte 0x66, 0xB1, 0x10, 0x08, 0x66, 0xB1, 0x10, 0x08, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x20
	.byte 0x08, 0x40, 0x02, 0x28, 0x72, 0xD1, 0x11, 0x1C, 0xF6, 0x31, 0x10, 0x1C, 0xF8, 0x30, 0x00, 0x22
	.byte 0x89, 0x5E, 0x00, 0x24, 0x00, 0x5F, 0x81, 0x42, 0x68, 0xDA, 0x66, 0xE0, 0x10, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x06, 0x28, 0x60, 0xD1, 0x5E, 0xE0, 0x10, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28, 0x58, 0xD1, 0x10, 0xE0, 0x10, 0x1C, 0x7E, 0x30
	.byte 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28, 0x50, 0xD1, 0x11, 0x1C, 0xF6, 0x31, 0x10, 0x1C
	.byte 0xF8, 0x30, 0x00, 0x24, 0x09, 0x5F, 0x00, 0x24, 0x00, 0x5F, 0x81, 0x42, 0x45, 0xDB, 0x10, 0x1C
	.byte 0xFC, 0x30, 0x11, 0x1C, 0xFE, 0x31, 0x00, 0x24, 0x02, 0x5F, 0x00, 0x24, 0x08, 0x5F, 0x82, 0x42
	.byte 0x3C, 0xDA, 0x3A, 0xE0, 0x10, 0x1C, 0x7E, 0x30, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28
	.byte 0x34, 0xD1, 0x96, 0x21, 0x49, 0x00, 0x50, 0x18, 0x00, 0x78, 0x13, 0x28, 0x14, 0xD0, 0x14, 0x28
	.byte 0x19, 0xD0, 0x8F, 0x24, 0x64, 0x00, 0x10, 0x19, 0x01, 0x88, 0xC0, 0x20, 0x00, 0x01, 0x08, 0x40
	.byte 0x00, 0x28, 0x1A, 0xD0, 0x90, 0x21, 0x49, 0x00, 0x50, 0x18, 0x00, 0x68, 0xE0, 0x21, 0x89, 0x02
	.byte 0x08, 0x40, 0x00, 0x28, 0x11, 0xD0, 0x0F, 0xE0, 0x8F, 0x24, 0x64, 0x00, 0x10, 0x19, 0x01, 0x88
	.byte 0x80, 0x20, 0x00, 0x01, 0x05, 0xE0, 0x8F, 0x21, 0x49, 0x00, 0x50, 0x18, 0x01, 0x88, 0x80, 0x20
	.byte 0xC0, 0x00, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x23, 0x8F, 0x24, 0x64, 0x00, 0x10, 0x19
	.byte 0x01, 0x88, 0x27, 0x48, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x23
_0810B168:
	adds r5, #0x01
	cmp r5, #0x01
	bgt _0810B170
	b _0810B002
_0810B170:
	cmp r3, #0x00
	bne _0810B178
	movs r5, #0x03
	mov r12, r5
_0810B178:
	movs r0, #0x0B
	adds r4, r7, #0x0
	muls r4, r0
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0810B200 @ =0x083BBDD0
	adds r1, #0x0C
	add r1, r8
	ldr r2, _0810B204 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r5, r12
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x014]
	movs r1, #0x0F
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_8083860
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x014]
	movs r1, #0x0F
	movs r2, #0x78
	adds r3, r4, #0x0
	bl sub_8083934
_0810B1CA:
	adds r7, r6, #0x0
	ldr r1, [sp, #0x018]
	cmp r1, r7
	ble _0810B1D8
	cmp r7, #0x04
	bgt _0810B1D8
	b _0810B2EC
_0810B1D8:
	mov r2, r10
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	blt _0810B1E2
	b _0810B2E4
_0810B1E2:
	ldr r0, _0810B208 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [r2, #0x0C]
	movs r0, #0x00
	strh r0, [r2, #0x10]
	mov r3, r9
	cmp r3, #0x01
	beq _0810B228
	cmp r3, #0x01
	bgt _0810B20C
	cmp r3, #0x00
	beq _0810B214
	b _0810B24E
	.byte 0xAB, 0xF1, 0x00, 0x00
_0810B200: .4byte 0x083BBDD0
_0810B204: .4byte 0x0300034C
_0810B208: .4byte 0x7FFFFFFF
_0810B20C:
	mov r4, r9
	cmp r4, #0x02
	beq _0810B238
	b _0810B24E
_0810B214:
	ldr r2, _0810B220 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r5, _0810B224 @ =0x0000033F
	adds r0, r0, r5
	b _0810B240
	.byte 0x00, 0x00
_0810B220: .4byte 0x03000FD8
_0810B224: .4byte 0x0000033F
_0810B228:
	ldr r2, _0810B234 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	b _0810B240
_0810B234: .4byte 0x03000FD8
_0810B238:
	ldr r2, _0810B288 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r3, _0810B28C @ =0x00000341
	adds r0, r0, r3
_0810B240:
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	lsrs r0, r0, #0x03
	str r0, [sp, #0x028]
_0810B24E:
	ldr r4, _0810B288 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r5, #0x94
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x00]
	ldr r0, _0810B290 @ =0x08201131
	add r0, r9
	ldrb r0, [r0, #0x00]
	adds r3, r0, #0x1
	ldr r0, _0810B294 @ =0x08201134
	add r0, r9
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	str r0, [sp, #0x000]
	ldr r0, _0810B298 @ =0x08201137
	add r0, r9
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r0, _0810B29C @ =0x0820113A
	add r0, r9
	ldrb r0, [r0, #0x00]
	subs r0, #0x02
	ldr r1, [sp, #0x028]
	cmp r0, r1
	blt _0810B2A0
	adds r0, r1, #0x0
	adds r0, #0x02
	b _0810B2A2
_0810B288: .4byte 0x03000FD8
_0810B28C: .4byte 0x00000341
_0810B290: .4byte 0x08201131
_0810B294: .4byte 0x08201134
_0810B298: .4byte 0x08201137
_0810B29C: .4byte 0x0820113A
_0810B2A0:
	movs r0, #0x09
_0810B2A2:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8084578
	ldr r5, _0810B2DC @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r4, #0x94
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x03
	movs r2, #0x02
	movs r3, #0x02
	bl sub_80847B0
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	movs r2, #0x90
	bl sub_8085170
	ldr r0, _0810B2E0 @ =0x0810CD31
	mov r2, r10
	str r0, [r2, #0x04]
	b _0810B300
	.byte 0x00, 0x00
_0810B2DC: .4byte 0x03000FD8
_0810B2E0: .4byte sub_810CD30
_0810B2E4:
	mov r0, r10
	bl sub_810CD30
	b _0810B300
_0810B2EC:
	add r0, sp, #0x010
	bl sub_8199470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x46
	bhi _0810B2FC
	b _0810AE46
_0810B2FC:
	mov r3, r10
	strh r7, [r3, #0x10]
_0810B300:
	mov r0, r10
	bl sub_810B318
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_810B318
sub_810B318:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	movs r0, #0x0F
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldr r1, _0810B34C @ =0x03000FD8
	ldr r0, _0810B350 @ =0x000002C2
	add r0, r8
	ldr r3, [r1, #0x00]
	adds r0, r0, r3
	mov r12, r0
	mov r2, r8
	cmp r2, #0x01
	beq _0810B368
	cmp r2, #0x01
	bgt _0810B354
	cmp r2, #0x00
	beq _0810B35C
	b _0810B52C
_0810B34C: .4byte 0x03000FD8
_0810B350: .4byte 0x000002C2
_0810B354:
	mov r5, r8
	cmp r5, #0x02
	beq _0810B3E0
	b _0810B52C
_0810B35C:
	ldr r1, _0810B364 @ =0x00000343
	adds r0, r3, r1
	b _0810B526
	.byte 0x00, 0x00
_0810B364: .4byte 0x00000343
_0810B368:
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	movs r7, #0x7F
	ands r7, r0
	ldr r4, _0810B3C8 @ =0x0300034C
	movs r5, #0x88
	lsls r5, r5, #0x04
	adds r4, r4, r5
	ldr r2, [r4, #0x00]
	ldr r0, _0810B3CC @ =0x08201134
	ldrb r1, [r0, #0x01]
	lsls r1, r1, #0x03
	ldr r5, _0810B3D0 @ =0x000002C6
	adds r0, r3, r5
	movs r3, #0x00
	ldsb r3, [r0, r3]
	movs r0, #0x0B
	muls r0, r3
	adds r0, r0, r1
	adds r0, #0x06
	movs r1, #0xFF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldr r0, _0810B3D4 @ =0x08201131
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x03
	adds r0, #0x68
	subs r5, #0xC7
	adds r1, r5, #0x0
	ands r0, r1
	ldr r3, _0810B3D8 @ =0xFFFF8000
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldr r5, _0810B3DC @ =0x0000D09D
	adds r0, r5, #0x0
	strh r0, [r2, #0x00]
	adds r2, #0x04
	str r2, [r4, #0x00]
	b _0810B52C
_0810B3C8: .4byte 0x0300034C
_0810B3CC: .4byte 0x08201134
_0810B3D0: .4byte 0x000002C6
_0810B3D4: .4byte 0x08201131
_0810B3D8: .4byte 0xFFFF8000
_0810B3DC: .4byte 0x0000D09D
_0810B3E0:
	ldr r1, _0810B5DC @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	ldr r4, [r0, #0x00]
	ldr r5, _0810B5E0 @ =0x00000341
	adds r2, r3, r5
	ldrb r7, [r2, #0x00]
	cmp r7, #0x05
	ble _0810B3F6
	movs r7, #0x05
_0810B3F6:
	movs r6, #0x00
	cmp r6, r7
	blt _0810B3FE
	b _0810B514
_0810B3FE:
	ldr r0, _0810B5E4 @ =0x083BBDD0
	mov r10, r0
	movs r0, #0x01
	ands r0, r7
	cmp r7, #0x00
	ble _0810B40E
	cmp r0, #0x00
	beq _0810B458
_0810B40E:
	mov r5, r12
	movs r1, #0x00
	ldsb r1, [r5, r1]
	ldrb r0, [r2, #0x00]
	cmp r1, r0
	blt _0810B41C
	subs r1, r1, r0
_0810B41C:
	movs r2, #0xCB
	lsls r2, r2, #0x02
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r1, [r0, #0x02]
	movs r0, #0x21
	strh r0, [r4, #0x00]
	adds r4, #0x02
	movs r0, #0x6E
	strh r0, [r4, #0x00]
	adds r4, #0x02
	adds r2, r1, #0x0
	adds r2, #0xA8
	movs r0, #0x00
	cmp r1, #0x05
	beq _0810B446
	cmp r1, #0x07
	bne _0810B448
_0810B446:
	movs r0, #0x01
_0810B448:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r4, #0x04
	adds r6, #0x01
	cmp r6, r7
	bge _0810B514
_0810B458:
	movs r0, #0x0B
	adds r5, r6, #0x0
	muls r5, r0
	mov r3, r12
	movs r0, #0x00
	ldsb r0, [r3, r0]
	adds r1, r0, r6
	ldr r0, _0810B5E8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r3, _0810B5E0 @ =0x00000341
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _0810B476
	subs r1, r1, r0
_0810B476:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x21
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	movs r0, #0x6E
	strh r0, [r4, #0x00]
	adds r4, #0x02
	adds r2, r3, #0x0
	adds r2, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _0810B4A6
	cmp r3, #0x07
	bne _0810B4A8
_0810B4A6:
	movs r0, #0x01
_0810B4A8:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r4, #0x04
	adds r1, r6, #0x1
	movs r0, #0x0B
	adds r5, r1, #0x0
	muls r5, r0
	mov r2, r12
	movs r0, #0x00
	ldsb r0, [r2, r0]
	adds r1, r0, r1
	ldr r3, _0810B5E8 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldr r3, _0810B5E0 @ =0x00000341
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	blt _0810B4D2
	subs r1, r1, r0
_0810B4D2:
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r3, [r0, #0x02]
	adds r0, r5, #0x0
	adds r0, #0x21
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	movs r0, #0x6E
	strh r0, [r4, #0x00]
	adds r4, #0x02
	adds r2, r3, #0x0
	adds r2, #0xA8
	movs r0, #0x00
	cmp r3, #0x05
	beq _0810B502
	cmp r3, #0x07
	bne _0810B504
_0810B502:
	movs r0, #0x01
_0810B504:
	adds r0, #0x0B
	lsls r0, r0, #0x0C
	orrs r2, r0
	strh r2, [r4, #0x00]
	adds r4, #0x04
	adds r6, #0x02
	cmp r6, r7
	blt _0810B458
_0810B514:
	ldr r5, _0810B5DC @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r5, r1
	str r4, [r0, #0x00]
	ldr r2, _0810B5E8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r3, _0810B5EC @ =0x00000345
	adds r0, r0, r3
_0810B526:
	ldrb r0, [r0, #0x00]
	movs r7, #0x7F
	ands r7, r0
_0810B52C:
	mov r5, r9
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x05
	bgt _0810B538
	b _0810B670
_0810B538:
	ldr r4, _0810B5DC @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r4, r4, r2
	ldr r2, [r4, #0x00]
	ldr r3, _0810B5F0 @ =0x08201131
	add r3, r8
	ldr r0, _0810B5F4 @ =0x08201137
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x01
	ldrb r3, [r3, #0x00]
	adds r1, r1, r3
	lsls r1, r1, #0x03
	ldr r0, _0810B5F8 @ =0x08201134
	add r0, r8
	ldrb r3, [r0, #0x00]
	lsls r3, r3, #0x03
	movs r6, #0xFF
	movs r0, #0xFF
	ands r0, r3
	strh r0, [r2, #0x00]
	adds r2, #0x02
	adds r1, #0x08
	ldr r5, _0810B5FC @ =0x000001FF
	adds r0, r5, #0x0
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldr r0, _0810B600 @ =0x0000B0A7
	adds r5, r0, #0x0
	strh r5, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _0810B604 @ =0x0820113A
	add r0, r8
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x03
	adds r3, r3, r0
	ands r3, r6
	strh r3, [r2, #0x00]
	adds r2, #0x02
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x02
	strh r5, [r2, #0x00]
	adds r2, #0x04
	str r2, [r4, #0x00]
	ldr r5, _0810B5E8 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r1, _0810B608 @ =0x000002C5
	adds r0, r0, r1
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0810B620
	mov r2, r12
	movs r1, #0x00
	ldsb r1, [r2, r1]
	mov r3, r9
	movs r5, #0x16
	ldsh r0, [r3, r5]
	subs r0, #0x01
	cmp r1, r0
	bne _0810B5C8
	cmp r7, #0x00
	beq _0810B670
_0810B5C8:
	cmp r7, r1
	bge _0810B60C
	mov r0, r12
	strb r7, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x0C]
	bl sub_810AC60
	b _0810B670
	.byte 0x00, 0x00
_0810B5DC: .4byte 0x0300034C
_0810B5E0: .4byte 0x00000341
_0810B5E4: .4byte 0x083BBDD0
_0810B5E8: .4byte 0x03000FD8
_0810B5EC: .4byte 0x00000345
_0810B5F0: .4byte 0x08201131
_0810B5F4: .4byte 0x08201137
_0810B5F8: .4byte 0x08201134
_0810B5FC: .4byte 0x000001FF
_0810B600: .4byte 0x0000B0A7
_0810B604: .4byte 0x0820113A
_0810B608: .4byte 0x000002C5
_0810B60C:
	subs r0, r7, #0x4
	cmp r1, r0
	bge _0810B670
	mov r2, r12
	strb r7, [r2, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	bl sub_810AC60
	b _0810B670
_0810B620:
	cmp r0, #0x04
	bne _0810B670
	mov r5, r12
	movs r1, #0x00
	ldsb r1, [r5, r1]
	cmp r7, r1
	bge _0810B65E
	mov r2, r9
	movs r3, #0x16
	ldsh r0, [r2, r3]
	adds r0, r7, r0
	subs r0, #0x05
	cmp r0, r1
	bne _0810B65E
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r5, #0x16
	ldsh r0, [r2, r5]
	cmp r1, r0
	blt _0810B654
	movs r0, #0x00
	mov r1, r12
	strb r0, [r1, #0x00]
_0810B654:
	mov r2, r9
	ldr r0, [r2, #0x0C]
	bl sub_810AC60
	b _0810B670
_0810B65E:
	subs r0, r7, #0x4
	cmp r1, r0
	bge _0810B670
	mov r3, r12
	strb r0, [r3, #0x00]
	mov r5, r9
	ldr r0, [r5, #0x0C]
	bl sub_810AC60
_0810B670:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_810B680
sub_810B680:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x14]
	adds r0, #0x03
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0810B698
	movs r0, #0x18
	strh r0, [r5, #0x14]
	b _0810B6DE
_0810B698:
	cmp r0, #0x18
	ble _0810B6DE
	movs r0, #0x20
	strh r0, [r5, #0x14]
	ldr r4, _0810B738 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810B6DA
	subs r2, #0x40
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x05
	bl sub_8085260
	ldr r0, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldr r0, _0810B73C @ =0x0810CD99
	str r0, [r1, #0x04]
_0810B6DA:
	ldr r0, _0810B740 @ =0x0810CC8D
	str r0, [r5, #0x0C]
_0810B6DE:
	ldr r0, _0810B738 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r2, #0x16
	ldsh r1, [r0, r2]
	ldr r2, _0810B744 @ =0x0400001A
	ldrh r0, [r5, #0x14]
	adds r0, #0x06
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _0810B748 @ =0x0200001E
	ldrh r0, [r0, #0x00]
	ldrh r1, [r5, #0x14]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r6, _0810B74C @ =0x04000044
	ldr r4, _0810B750 @ =0x0200001A
	ldrh r2, [r4, #0x00]
	movs r0, #0x14
	ldsh r3, [r5, r0]
	adds r5, r3, #0x0
	subs r5, #0x99
	subs r2, r2, r5
	ldrh r0, [r4, #0x00]
	subs r3, #0x8E
	subs r0, r0, r3
	lsls r0, r0, #0x08
	orrs r2, r0
	ldrh r1, [r4, #0x00]
	subs r1, r1, r5
	ldrh r0, [r4, #0x00]
	subs r0, r0, r3
	lsls r0, r0, #0x08
	orrs r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	str r2, [r6, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0810B738: .4byte 0x03000FD8
_0810B73C: .4byte 0x0810CD99
_0810B740: .4byte 0x0810CC8D
_0810B744: .4byte 0x0400001A
_0810B748: .4byte 0x0200001E
_0810B74C: .4byte 0x04000044
_0810B750: .4byte 0x0200001A
	thumb_func_start sub_810B754
sub_810B754:
	push {r4, r5, lr}
	add sp, #-0x00C
	movs r5, #0x00
	bl sub_810D00C
	ldr r4, _0810B7DC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x12
	str r1, [sp, #0x004]
	movs r1, #0x03
	str r1, [sp, #0x008]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x0D
	bl sub_8084578
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80847B0
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x91
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r2, #0x07
	movs r3, #0x06
	bl sub_808520C
	ldr r0, _0810B7E0 @ =0x0810CC4D
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807D2D0
	adds r4, r0, #0x0
	movs r0, #0x18
	strh r0, [r4, #0x14]
	ldr r0, _0810B7E4 @ =0x0810CC0D
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	ldr r0, _0810B7E8 @ =0x0810CBDD
	movs r1, #0x18
	movs r2, #0x00
	bl sub_807D2D0
	str r4, [r0, #0x08]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0810B7DC: .4byte 0x03000FD8
_0810B7E0: .4byte sub_810CC4C
_0810B7E4: .4byte sub_810CC0C
_0810B7E8: .4byte sub_810CBDC
	thumb_func_start sub_810B7EC
sub_810B7EC:
	push {r4, lr}
	ldr r4, _0810B860 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810B85A
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810B84C
	ldr r0, _0810B864 @ =0x0810CEC1
	movs r1, #0x00
	bl sub_807FF48
	ldr r2, [r4, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r1, r2, r3
	str r0, [r1, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, _0810B868 @ =0x0810CDFD
	ldr r2, _0810B86C @ =0x0810AB35
	movs r1, #0x86
	bl sub_807D2D0
	ldr r1, [r4, #0x00]
	movs r2, #0xA4
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r0, [r1, #0x0C]
	ldr r1, _0810B870 @ =0x0200001A
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x16]
	ldr r1, _0810B874 @ =0x02000048
	ldr r3, _0810B878 @ =0x00003F3F
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0810B87C @ =0x00003F3B
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
_0810B84C:
	ldr r0, _0810B880 @ =0x0810B885
	movs r1, #0x88
	movs r2, #0x00
	bl sub_807D2D0
	movs r1, #0x18
	strh r1, [r0, #0x14]
_0810B85A:
	pop {r4}
	pop {r0}
	bx r0
_0810B860: .4byte 0x03000FD8
_0810B864: .4byte sub_810CEC0
_0810B868: .4byte sub_810CDFC
_0810B86C: .4byte sub_810AB34
_0810B870: .4byte 0x0200001A
_0810B874: .4byte 0x02000048
_0810B878: .4byte 0x00003F3F
_0810B87C: .4byte 0x00003F3B
_0810B880: .4byte sub_810B884
