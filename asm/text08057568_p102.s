	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806B584
sub_806B584:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B5A4 @ =0x0806AA19
	str r0, [r4, #0x4C]
	adds r4, #0xAC
	movs r0, #0x00
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B5A4: .4byte sub_806AA18
	thumb_func_start sub_806B5A8
sub_806B5A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B5EC
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B5D6
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806B5E8
_0806B5D6:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806B5E8:
	ldr r0, _0806B5F4 @ =0x0806B5F9
	str r0, [r4, #0x4C]
_0806B5EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B5F4: .4byte sub_806B5F8
	thumb_func_start sub_806B5F8
sub_806B5F8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806B63A
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B61E
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x02
	b _0806B626
_0806B61E:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x05
_0806B626:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0806B640 @ =0x0806ACA5
	str r0, [r4, #0x4C]
_0806B63A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B640: .4byte sub_806ACA4
	thumb_func_start sub_806B644
sub_806B644:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806B658
	b _0806B798
_0806B658:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806B676
	adds r1, #0xFF
_0806B676:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806B680
	adds r2, #0xFF
_0806B680:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806B68A
	adds r3, #0xFF
_0806B68A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806B7A0 @ =0x00001C07
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0806B69E
	adds r2, #0xFF
_0806B69E:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806B6A8
	adds r0, #0xFF
_0806B6A8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806B6B4
	adds r0, #0xFF
_0806B6B4:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806B7A4 @ =0x000040D3
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0xC0
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
	ldr r0, _0806B7A8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806B7AC @ =0x0806C03D
	str r0, [r5, #0x58]
	ldr r0, _0806B7B0 @ =0x0806C021
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _0806B7B4 @ =0x0806C1A9
	str r0, [r5, #0x4C]
	ldr r0, _0806B7B8 @ =0x0806C1C9
	str r0, [r6, #0x4C]
_0806B798:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806B7A0: .4byte 0x00001C07
_0806B7A4: .4byte 0x000040D3
_0806B7A8: .4byte sub_8087540
_0806B7AC: .4byte sub_806C03C
_0806B7B0: .4byte sub_806C020
_0806B7B4: .4byte sub_806C1A8
_0806B7B8: .4byte sub_806C1C8
	thumb_func_start sub_806B7BC
sub_806B7BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B818
	subs r1, #0x28
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806B820 @ =0x0806C191
	str r0, [r4, #0x4C]
_0806B818:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B820: .4byte sub_806C190
	thumb_func_start sub_806B824
sub_806B824:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806B856
	adds r0, #0xFF
_0806B856:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806B866
	adds r0, #0xFF
_0806B866:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806B876
	adds r0, #0xFF
_0806B876:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806B8EC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xE0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806B8C6
	movs r0, #0x02
_0806B8C6:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806B8F0 @ =0x0806B8F5
	str r0, [r4, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806B8EC: .4byte 0x03001038
_0806B8F0: .4byte sub_806B8F4
	thumb_func_start sub_806B8F4
sub_806B8F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
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
	movs r2, #0xE0
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
	bgt _0806B986
	b _0806BA9E
_0806B986:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B994
	adds r0, #0xFF
_0806B994:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B9A2
	adds r0, #0xFF
_0806B9A2:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B9B0
	adds r0, #0xFF
_0806B9B0:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806BAAC @ =0x00001C19
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x12
	mov r8, r2
	cmp r1, r0
	beq _0806B9DA
	movs r0, #0x13
	mov r8, r0
_0806B9DA:
	movs r5, #0x00
	movs r1, #0x84
	adds r1, r1, r6
	mov r9, r1
_0806B9E2:
	ldr r0, _0806BAB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806BA2A
	ldr r0, [r7, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806BA08
	adds r2, #0xFF
_0806BA08:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806BA12
	adds r3, #0xFF
_0806BA12:
	asrs r3, r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BA2A:
	adds r1, r5, #0x1
	ldr r0, _0806BAB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806BA74
	ldr r0, [r7, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806BA52
	adds r2, #0xFF
_0806BA52:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806BA5C
	adds r3, #0xFF
_0806BA5C:
	asrs r3, r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BA74:
	adds r5, #0x02
	cmp r5, #0x05
	ble _0806B9E2
	movs r0, #0x1E
	mov r2, r9
	str r0, [r2, #0x00]
	ldr r0, _0806BAB4 @ =0x0806C0E1
	str r0, [r6, #0x4C]
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
_0806BA9E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806BAAC: .4byte 0x00001C19
_0806BAB0: .4byte 0x03000FD8
_0806BAB4: .4byte sub_806C0E0
	thumb_func_start sub_806BAB8
sub_806BAB8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BAF8
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BADA
	adds r1, #0xFF
_0806BADA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BAE4
	adds r2, #0xFF
_0806BAE4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BAEE
	adds r3, #0xFF
_0806BAEE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BB20 @ =0x00001C52
	bl sub_80DF024
_0806BAF8:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB3C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB24
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB30
_0806BB20: .4byte 0x00001C52
_0806BB24:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB30:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _0806BB44 @ =0x0806BB49
	str r0, [r4, #0x4C]
_0806BB3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806BB44: .4byte sub_806BB48
	thumb_func_start sub_806BB48
sub_806BB48:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BC2A
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BC2A
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB82
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB8E
_0806BB82:
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB8E:
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _0806BB98
	adds r2, #0xFF
_0806BB98:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0806BBA2
	adds r3, #0xFF
_0806BBA2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806BBAC
	adds r0, #0xFF
_0806BBAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806BC34 @ =0x000040D0
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	movs r2, #0x77
	adds r2, r2, r0
	mov r12, r2
	adds r3, r4, #0x0
	ands r3, r1
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r1
	orrs r2, r3
	mov r1, r12
	strb r2, [r1, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	ands r4, r1
	lsls r4, r4, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r2, r1
	orrs r2, r4
	mov r1, r12
	strb r2, [r1, #0x00]
	ldr r1, _0806BC38 @ =0x08087541
	str r1, [r0, #0x68]
	ldr r1, [r5, #0x6C]
	str r1, [r0, #0x6C]
	ldr r1, [r5, #0x2C]
	str r1, [r0, #0x2C]
	adds r1, r5, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	adds r0, #0x75
	strb r1, [r0, #0x00]
	ldr r0, _0806BC3C @ =0x0806BFD5
	str r0, [r5, #0x4C]
_0806BC2A:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BC34: .4byte 0x000040D0
_0806BC38: .4byte sub_8087540
_0806BC3C: .4byte sub_806BFD4
	thumb_func_start sub_806BC40
sub_806BC40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BCE8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BCE8
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806BCB4 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BCBC
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCB8 @ =0x00001534
	b _0806BCD6
	.byte 0x00, 0x00
_0806BCB4: .4byte 0x00000119
_0806BCB8: .4byte 0x00001534
_0806BCBC:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCF0 @ =0x0000159E
_0806BCD6:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BCF4 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BCF8 @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BCFC @ =0x0806BF71
	str r0, [r4, #0x4C]
_0806BCE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BCF0: .4byte 0x0000159E
_0806BCF4: .4byte 0x03000E3C
_0806BCF8: .4byte sub_806BEA8
_0806BCFC: .4byte sub_806BF70
	thumb_func_start sub_806BD00
sub_806BD00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BD8C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BD8C
	subs r1, #0x28
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _0806BD58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BD60
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD5C @ =0x00001569
	b _0806BD7A
	.byte 0x00, 0x00
_0806BD58: .4byte 0x00000119
_0806BD5C: .4byte 0x00001569
_0806BD60:
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD94 @ =0x000015D3
_0806BD7A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BD98 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BD9C @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BDA0 @ =0x0806BDA5
	str r0, [r4, #0x4C]
_0806BD8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BD94: .4byte 0x000015D3
_0806BD98: .4byte 0x03000E3C
_0806BD9C: .4byte sub_806BEA8
_0806BDA0: .4byte sub_806BDA4
	thumb_func_start sub_806BDA4
sub_806BDA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE26
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806BDF8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BDDA
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BDE6
_0806BDDA:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BDE6:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BDF4 @ =0x0806BC41
	b _0806BE24
	.byte 0x00, 0x00
_0806BDF4: .4byte sub_806BC40
_0806BDF8:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BE16
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BE22
_0806BE16:
	adds r0, r4, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BE22:
	ldr r0, _0806BE2C @ =0x0806BE31
_0806BE24:
	str r0, [r4, #0x4C]
_0806BE26:
	pop {r4}
	pop {r0}
	bx r0
_0806BE2C: .4byte sub_806BE30
	thumb_func_start sub_806BE30
sub_806BE30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE9E
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
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
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806BEA4 @ =0x0806BF0D
	str r0, [r4, #0x4C]
_0806BE9E:
	pop {r4}
	pop {r0}
	bx r0
_0806BEA4: .4byte sub_806BF0C
	thumb_func_start sub_806BEA8
sub_806BEA8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BEB8
	adds r1, #0xFF
_0806BEB8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BEC2
	adds r2, #0xFF
_0806BEC2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BECC
	adds r3, #0xFF
_0806BECC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806BEF0 @ =0x00001C4A
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BEF8
	ldr r0, _0806BEF4 @ =0x0806BF71
	b _0806BEFA
	.byte 0x00, 0x00
_0806BEF0: .4byte 0x00001C4A
_0806BEF4: .4byte sub_806BF70
_0806BEF8:
	ldr r0, _0806BF08 @ =0x0806BDA5
_0806BEFA:
	str r0, [r5, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806BF08: .4byte sub_806BDA4
	thumb_func_start sub_806BF0C
sub_806BF0C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BF4C
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BF2E
	adds r1, #0xFF
_0806BF2E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BF38
	adds r2, #0xFF
_0806BF38:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BF42
	adds r3, #0xFF
_0806BF42:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BF6C @ =0x00001C5B
	bl sub_80DF024
_0806BF4C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806BF64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806BF64:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806BF6C: .4byte 0x00001C5B
	thumb_func_start sub_806BF70
sub_806BF70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BFC8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BFA4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BFBC
_0806BFA4:
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BFBC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BFD0 @ =0x0806BD01
	str r0, [r4, #0x4C]
_0806BFC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BFD0: .4byte sub_806BD00
	thumb_func_start sub_806BFD4
sub_806BFD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C014
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BFFC
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C008
_0806BFFC:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C008:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C01C @ =0x0806BC41
	str r0, [r4, #0x4C]
_0806C014:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C01C: .4byte sub_806BC40
	thumb_func_start sub_806C020
sub_806C020:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C032
	ldr r0, _0806C038 @ =0x0806B825
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806C032:
	pop {r4}
	pop {r1}
	bx r1
_0806C038: .4byte sub_806B824
	thumb_func_start sub_806C03C
sub_806C03C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C052
	adds r0, #0xFF
_0806C052:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C060
	adds r0, #0xFF
_0806C060:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C06E
	adds r0, #0xFF
_0806C06E:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C0D8 @ =0x00001C19
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, _0806C0DC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r7, r5, #0x0
	adds r7, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0AA
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0AA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0C2
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0C2:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806C0D8: .4byte 0x00001C19
_0806C0DC: .4byte 0x03000FD8
	thumb_func_start sub_806C0E0
sub_806C0E0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C18A
	movs r4, #0x00
_0806C0F4:
	ldr r0, _0806C12C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C136
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C130
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C136
	.byte 0x00, 0x00
_0806C12C: .4byte 0x03000FD8
_0806C130:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C136:
	adds r1, r4, #0x1
	ldr r0, _0806C170 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C17A
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C174
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C17A
	.byte 0x00, 0x00
_0806C170: .4byte 0x03000FD8
_0806C174:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C17A:
	adds r4, #0x02
	cmp r4, #0x05
	ble _0806C0F4
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807C298
_0806C18A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_806C190
sub_806C190:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1A2
	adds r0, r1, #0x0
	bl sub_807C298
_0806C1A2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
