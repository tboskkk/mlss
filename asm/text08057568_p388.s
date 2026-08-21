	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8064EDC
sub_8064EDC:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08064FCA
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064F10
	adds r0, #0xFF
_08064F10:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x30
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064F22
	adds r0, #0xFF
_08064F22:
	asrs r3, r0, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08064F2C
	adds r0, #0xFF
_08064F2C:
	asrs r0, r0, #0x08
	adds r0, #0x48
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _08064FD4 @ =0x000040DC
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064FD8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08064FDC @ =0x08065215
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08064FE0 @ =0x08065231
	str r0, [r5, #0x4C]
	ldr r0, _08064FE4 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064FE8 @ =0x080652D5
	str r0, [r6, #0x4C]
_08064FCA:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064FD4: .4byte 0x000040DC
_08064FD8: .4byte sub_8087540
_08064FDC: .4byte sub_8065214
_08064FE0: .4byte sub_8065230
_08064FE4: .4byte 0x0000010F
_08064FE8: .4byte sub_80652D4
	thumb_func_start sub_8064FEC
sub_8064FEC:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080650C0
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08065014
	adds r0, #0xFF
_08065014:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08065022
	adds r0, #0xFF
_08065022:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806502E
	adds r0, #0xFF
_0806502E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _080650C8 @ =0x000040DD
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080650CC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080650D0 @ =0x080650D9
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r0, _080650D4 @ =0x080652B1
	str r0, [r6, #0x4C]
_080650C0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080650C8: .4byte 0x000040DD
_080650CC: .4byte sub_8087540
_080650D0: .4byte sub_80650D8
_080650D4: .4byte sub_80652B0
	thumb_func_start sub_80650D8
sub_80650D8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065140
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065140
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065148 @ =0x000014F2
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806514C @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _08065150 @ =0x0806515D
	str r0, [r4, #0x5C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806511E
	adds r1, #0xFF
_0806511E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065128
	adds r2, #0xFF
_08065128:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065132
	adds r3, #0xFF
_08065132:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065154 @ =0x00000F16
	bl sub_80DF024
	ldr r0, _08065158 @ =0x080651CD
	str r0, [r4, #0x4C]
_08065140:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08065148: .4byte 0x000014F2
_0806514C: .4byte 0x03000E3C
_08065150: .4byte sub_806515C
_08065154: .4byte 0x00000F16
_08065158: .4byte sub_80651CC
	thumb_func_start sub_806515C
sub_806515C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0806519C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065174
	adds r1, #0xFF
_08065174:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806517E
	adds r2, #0xFF
_0806517E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065188
	adds r3, #0xFF
_08065188:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080651A8 @ =0x00000F24
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r0, _080651AC @ =0x080651B1
	str r0, [r4, #0x4C]
_0806519C:
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080651A8: .4byte 0x00000F24
_080651AC: .4byte sub_80651B0
	thumb_func_start sub_80651B0
sub_80651B0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080651C6
	adds r0, r2, #0x0
	bl sub_807C298
_080651C6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80651CC
sub_80651CC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080651FC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065204 @ =0x00001509
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08065208 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806520C @ =0x08065311
	str r0, [r4, #0x5C]
	ldr r0, _08065210 @ =0x0806533D
	str r0, [r4, #0x4C]
_080651FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065204: .4byte 0x00001509
_08065208: .4byte 0x03000E3C
_0806520C: .4byte sub_8065310
_08065210: .4byte sub_806533C
	thumb_func_start sub_8065214
sub_8065214:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065226
	ldr r0, _0806522C @ =0x08065385
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065226:
	pop {r4}
	pop {r1}
	bx r1
_0806522C: .4byte sub_8065384
	thumb_func_start sub_8065230
sub_8065230:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r4, #0x10]
	subs r0, #0xE6
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08065258
	adds r0, #0xFF
_08065258:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	lsls r1, r0, #0x04
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, _080652A8 @ =0x000007FF
	cmp r0, r1
	bgt _080652A0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806527C
	adds r1, #0xFF
_0806527C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065286
	adds r2, #0xFF
_08065286:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065290
	adds r3, #0xFF
_08065290:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080652AC @ =0x00000F08
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
_080652A0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080652A8: .4byte 0x000007FF
_080652AC: .4byte 0x00000F08
	thumb_func_start sub_80652B0
sub_80652B0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080652CA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080652D0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080652CA:
	pop {r4}
	pop {r0}
	bx r0
_080652D0: .4byte sub_808750C
	thumb_func_start sub_80652D4
sub_80652D4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080652EE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080652F4 @ =0x0808750D
	str r0, [r4, #0x4C]
_080652EE:
	pop {r4}
	pop {r0}
	bx r0
_080652F4: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xCD, 0x53, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xF5, 0x53, 0x06, 0x08
	thumb_func_start sub_8065310
sub_8065310:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0806532E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065338 @ =0x080651B1
	str r0, [r4, #0x4C]
_0806532E:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065338: .4byte sub_80651B0
	thumb_func_start sub_806533C
sub_806533C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806536C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065374 @ =0x0000151D
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08065378 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806537C @ =0x0806541D
	str r0, [r4, #0x5C]
	ldr r0, _08065380 @ =0x080651B1
	str r0, [r4, #0x4C]
_0806536C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065374: .4byte 0x0000151D
_08065378: .4byte 0x03000E3C
_0806537C: .4byte sub_806541C
_08065380: .4byte sub_80651B0
	thumb_func_start sub_8065384
sub_8065384:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806539C
	adds r1, #0xFF
_0806539C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080653A6
	adds r2, #0xFF
_080653A6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080653B0
	adds r3, #0xFF
_080653B0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080653C8 @ =0x00000EFF
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080653C8: .4byte 0x00000EFF
	thumb_func_start sub_80653CC
sub_80653CC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080653E8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080653F0 @ =0x08065429
	str r0, [r4, #0x4C]
_080653E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080653F0: .4byte sub_8065428
	thumb_func_start sub_80653F4
sub_80653F4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08065410
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065418 @ =0x08064E31
	str r0, [r4, #0x4C]
_08065410:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065418: .4byte sub_8064E30
	thumb_func_start sub_806541C
sub_806541C:
	push {lr}
	bl sub_80871A8
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8065428
sub_8065428:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065482
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806544E
	adds r1, #0xFF
_0806544E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065458
	adds r2, #0xFF
_08065458:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065462
	adds r3, #0xFF
_08065462:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806548C @ =0x0000230A
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x4A
	strh r0, [r1, #0x00]
	adds r0, #0xCF
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08065490 @ =0x08064FED
	str r0, [r4, #0x4C]
_08065482:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806548C: .4byte 0x0000230A
_08065490: .4byte sub_8064FEC
	thumb_func_start sub_8065494
sub_8065494:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065506
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806550C @ =0x08065B49
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08065506:
	pop {r4}
	pop {r0}
	bx r0
_0806550C: .4byte sub_8065B48
	thumb_func_start sub_8065510
sub_8065510:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080655A6
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0806554C
	adds r2, #0xFF
_0806554C:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08065556
	adds r0, #0xFF
_08065556:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08065562
	adds r0, #0xFF
_08065562:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080655B0 @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080655B4 @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, _080655B8 @ =0x080655BD
	str r0, [r4, #0x4C]
_080655A6:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080655B0: .4byte 0x000040A5
_080655B4: .4byte sub_8065AE4
_080655B8: .4byte sub_80655BC
	thumb_func_start sub_80655BC
sub_80655BC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	cmp r0, #0x01
	bne _080655DC
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065658 @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_080655DC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065650
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0806560C
	adds r2, #0xFF
_0806560C:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08065616
	adds r0, #0xFF
_08065616:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08065622
	adds r0, #0xFF
_08065622:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806565C @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	ldr r0, _08065660 @ =0x08065665
	str r0, [r4, #0x4C]
_08065650:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08065658: .4byte sub_8065AE4
_0806565C: .4byte 0x000040A5
_08065660: .4byte sub_8065664
	thumb_func_start sub_8065664
sub_8065664:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	cmp r0, #0x11
	bne _08065684
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806574C @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_08065684:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065744
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080656BA
	adds r2, #0xFF
_080656BA:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080656C4
	adds r0, #0xFF
_080656C4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080656D0
	adds r0, #0xFF
_080656D0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08065750 @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065754 @ =0x08065B21
	str r0, [r4, #0x4C]
_08065744:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0806574C: .4byte sub_8065AE4
_08065750: .4byte 0x000040A5
_08065754: .4byte sub_8065B20
	thumb_func_start sub_8065758
sub_8065758:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08065768
	adds r2, #0xFF
_08065768:
	asrs r2, r2, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08065772
	adds r0, #0xFF
_08065772:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806577E
	adds r0, #0xFF
_0806577E:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08065888 @ =0x000040A4
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	adds r6, r5, #0x0
	adds r6, #0x77
	adds r7, r5, #0x0
	adds r7, #0x74
	cmp r0, #0x00
	beq _080657B0
_080657AA:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _080657AA
_080657B0:
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r6, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806588C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065890 @ =0x08065A9D
	str r0, [r4, #0x60]
	ldrb r1, [r7, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806581A
	adds r0, #0xFF
_0806581A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806582A
	adds r0, #0xFF
_0806582A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r5, r0, r1
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08065846
	ldr r1, _08065894 @ =0x000001FF
	adds r0, r5, r1
_08065846:
	asrs r6, r0, #0x09
	lsrs r0, r0, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08065860
	movs r0, #0x02
_08065860:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r6, [r0, #0x00]
	adds r1, #0x08
	negs r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08065898 @ =0x0806593D
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065888: .4byte 0x000040A4
_0806588C: .4byte sub_8087540
_08065890: .4byte sub_8065A9C
_08065894: .4byte 0x000001FF
_08065898: .4byte sub_806593C
	thumb_func_start sub_806589C
sub_806589C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065930
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	beq _080658D8
	cmp r0, #0x10
	beq _080658FC
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	b _0806592C
_080658D8:
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _08065920
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, _080658F8 @ =0x080655BD
	b _0806592E
	.byte 0x00, 0x00
_080658F8: .4byte sub_80655BC
_080658FC:
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _08065920
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, _0806591C @ =0x08065665
	b _0806592E
	.byte 0x00, 0x00
_0806591C: .4byte sub_8065664
_08065920:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806592C:
	ldr r0, _08065938 @ =0x0808750D
_0806592E:
	str r0, [r4, #0x4C]
_08065930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065938: .4byte sub_808750C
	thumb_func_start sub_806593C
sub_806593C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
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
	ldr r1, [r6, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _080659D2
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080659AE
	adds r1, #0xFF
_080659AE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080659B8
	adds r2, #0xFF
_080659B8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080659C2
	adds r3, #0xFF
_080659C2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080659DC @ =0x0000113D
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
_080659D2:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080659DC: .4byte 0x0000113D
	thumb_func_start sub_80659E0
sub_80659E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065A52
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065A58 @ =0x08065A5D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08065A52:
	pop {r4}
	pop {r0}
	bx r0
_08065A58: .4byte sub_8065A5C
	thumb_func_start sub_8065A5C
sub_8065A5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065A92
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08065A98 @ =0x08065BD9
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
_08065A92:
	pop {r4}
	pop {r0}
	bx r0
_08065A98: .4byte sub_8065BD8
	thumb_func_start sub_8065A9C
sub_8065A9C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065AD8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065AB2
	adds r1, #0xFF
_08065AB2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065ABC
	adds r2, #0xFF
_08065ABC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065AC6
	adds r3, #0xFF
_08065AC6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065AE0 @ =0x0000113D
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08065AD8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08065AE0: .4byte 0x0000113D
	thumb_func_start sub_8065AE4
sub_8065AE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08065B14
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08065AFA
	bl sub_807C298
_08065AFA:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _08065B1C @ =0x0806589D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065B14:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065B1C: .4byte sub_806589C
	thumb_func_start sub_8065B20
sub_8065B20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B3E
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08065B44 @ =0x08065C5D
	str r0, [r4, #0x4C]
_08065B3E:
	pop {r4}
	pop {r0}
	bx r0
_08065B44: .4byte sub_8065C5C
	thumb_func_start sub_8065B48
sub_8065B48:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B6A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065B70 @ =0x08065511
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
_08065B6A:
	pop {r4}
	pop {r0}
	bx r0
_08065B70: .4byte sub_8065510
