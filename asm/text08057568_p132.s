	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806C224
sub_806C224:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	ldr r2, _0806C28C @ =0xFFFFB800
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
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
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806C290 @ =0x0806BAB9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C28C: .4byte 0xFFFFB800
_0806C290: .4byte sub_806BAB8
	thumb_func_start sub_806C294
sub_806C294:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806C2AC @ =0x0806C2B1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806C2AC: .4byte sub_806C2B0
	thumb_func_start sub_806C2B0
sub_806C2B0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C304
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C2E2
	adds r1, #0xFF
_0806C2E2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C2EC
	adds r2, #0xFF
_0806C2EC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C2F6
	adds r3, #0xFF
_0806C2F6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C30C @ =0x00001BFE
	bl sub_80DF024
	ldr r0, _0806C310 @ =0x0806B645
	str r0, [r4, #0x4C]
_0806C304:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806C30C: .4byte 0x00001BFE
_0806C310: .4byte sub_806B644
	thumb_func_start sub_806C314
sub_806C314:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C3A0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806C3A0
	movs r0, #0x7C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806C374
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C35E
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C36A
_0806C35E:
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C36A:
	ldr r0, _0806C370 @ =0x0806C94D
	b _0806C39E
	.byte 0x00, 0x00
_0806C370: .4byte sub_806C94C
_0806C374:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C38C
	adds r0, r4, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C398
_0806C38C:
	adds r0, r4, #0x0
	movs r1, #0x1F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C398:
	movs r0, #0x03
	strh r0, [r5, #0x00]
	ldr r0, _0806C3A8 @ =0x0806C3AD
_0806C39E:
	str r0, [r4, #0x4C]
_0806C3A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C3A8: .4byte sub_806C3AC
	thumb_func_start sub_806C3AC
sub_806C3AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C438
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806C438
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x44
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C3FC
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C3F8 @ =0x0000163A
	b _0806C40A
_0806C3F8: .4byte 0x0000163A
_0806C3FC:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C440 @ =0x000016BC
_0806C40A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806C444 @ =0x03000E3C
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806C448 @ =0x0806C8C1
	str r0, [r4, #0x58]
	ldr r0, _0806C44C @ =0x0806C849
	str r0, [r4, #0x5C]
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _0806C450 @ =0x0806C8D9
	str r0, [r4, #0x4C]
_0806C438:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C440: .4byte 0x000016BC
_0806C444: .4byte 0x03000E3C
_0806C448: .4byte sub_806C8C0
_0806C44C: .4byte sub_806C848
_0806C450: .4byte sub_806C8D8
	thumb_func_start sub_806C454
sub_806C454:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806C468
	b _0806C59E
_0806C468:
	ldr r0, _0806C49C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r0, [r0, #0x74]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C4A0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C4A0
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	b _0806C59C
_0806C49C: .4byte 0x03000FD8
_0806C4A0:
	adds r0, r6, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806C4B4
	adds r1, #0xFF
_0806C4B4:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806C4BE
	adds r2, #0xFF
_0806C4BE:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806C4C8
	adds r3, #0xFF
_0806C4C8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806C5A8 @ =0x00001DF0
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806C4DC
	adds r0, #0xFF
_0806C4DC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806C4EA
	adds r0, #0xFF
_0806C4EA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806C4F6
	adds r0, #0xFF
_0806C4F6:
	asrs r0, r0, #0x08
	adds r0, #0x0B
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806C5AC @ =0x00004101
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	subs r2, #0x01
	ands r5, r0
	lsls r5, r5, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806C5B0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806C5B4 @ =0x0806C7B5
	str r0, [r4, #0x58]
	ldr r0, _0806C5B8 @ =0x0806C76D
	str r0, [r4, #0x60]
	ldr r0, _0806C5BC @ =0x0806C5C9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0xB2
	strh r5, [r4, #0x00]
	ldr r0, _0806C5C0 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806C5C4 @ =0x0806C801
_0806C59C:
	str r0, [r6, #0x4C]
_0806C59E:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C5A8: .4byte 0x00001DF0
_0806C5AC: .4byte 0x00004101
_0806C5B0: .4byte sub_8087540
_0806C5B4: .4byte sub_806C7B4
_0806C5B8: .4byte sub_806C76C
_0806C5BC: .4byte sub_806C5C8
_0806C5C0: .4byte 0x0000012B
_0806C5C4: .4byte sub_806C800
	thumb_func_start sub_806C5C8
sub_806C5C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	ldr r0, _0806C60C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	movs r2, #0x08
	adds r2, r2, r1
	mov r9, r2
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	movs r0, #0x00
	mov r8, r0
	adds r7, r1, #0x0
	adds r7, #0x7E
	movs r5, #0x06
_0806C5EE:
	bl sub_8199F30
	adds r3, r0, #0x0
	movs r0, #0x01
	ands r3, r0
	cmp r3, #0x00
	bne _0806C610
	ldrb r1, [r7, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	adds r2, r6, #0x0
	adds r2, #0x76
	cmp r0, #0x02
	bne _0806C622
	b _0806C61E
_0806C60C: .4byte 0x03000FD8
_0806C610:
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C62C
_0806C61E:
	movs r0, #0x01
	mov r8, r0
_0806C622:
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C636
_0806C62C:
	ldrb r1, [r7, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C64A
_0806C636:
	mov r2, r8
	cmp r2, #0x00
	beq _0806C5EE
	cmp r3, #0x00
	bne _0806C652
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r9
	ldr r2, [r0, #0x28]
	b _0806C658
_0806C64A:
	adds r0, r4, #0x0
	bl sub_807C298
	b _0806C6A2
_0806C652:
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r2, [r6, #0x28]
_0806C658:
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806C678
	adds r0, #0xFF
_0806C678:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _0806C688
	adds r1, #0xFF
_0806C688:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806C6B0 @ =0x0806C6B5
	str r0, [r4, #0x4C]
_0806C6A2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C6B0: .4byte sub_806C6B4
	thumb_func_start sub_806C6B4
sub_806C6B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	subs r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r1, _0806C768 @ =0x08198504
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0806C708
	adds r1, #0x3F
_0806C708:
	asrs r1, r1, #0x06
	lsls r1, r1, #0x03
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	bl sub_8199F30
	movs r1, #0x07
	ands r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C74A
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bne _0806C74A
	adds r0, r2, #0x1
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C74A:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806C752
	adds r1, #0xFF
_0806C752:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0806C762
	adds r0, r4, #0x0
	bl sub_807C298
_0806C762:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806C768: .4byte 0x08198504
	thumb_func_start sub_806C76C
sub_806C76C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C7A8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C782
	adds r1, #0xFF
_0806C782:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C78C
	adds r2, #0xFF
_0806C78C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C796
	adds r3, #0xFF
_0806C796:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C7B0 @ =0x00001DF8
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_0806C7A8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_0806C7B0: .4byte 0x00001DF8
	thumb_func_start sub_806C7B4
sub_806C7B4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C7C4
	adds r1, #0xFF
_0806C7C4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C7CE
	adds r2, #0xFF
_0806C7CE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C7D8
	adds r3, #0xFF
_0806C7D8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C7FC @ =0x00001E01
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_0806C7FC: .4byte 0x00001E01
	thumb_func_start sub_806C800
sub_806C800:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C83C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C82E
	movs r0, #0x00
	b _0806C83A
_0806C82E:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C844 @ =0x0806CAC1
_0806C83A:
	str r0, [r4, #0x4C]
_0806C83C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C844: .4byte sub_806CAC0
	thumb_func_start sub_806C848
sub_806C848:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806C8B6
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C870
	ldr r0, _0806C86C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x60]
	b _0806C876
	.byte 0x00, 0x00
_0806C86C: .4byte 0x03000FD8
_0806C870:
	ldr r0, _0806C8A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x5C]
_0806C876:
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806C882
	adds r2, #0xFF
_0806C882:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806C88C
	adds r3, #0xFF
_0806C88C:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806C8A8
	movs r0, #0x11
	b _0806C8AA
	.byte 0x00, 0x00
_0806C8A4: .4byte 0x03000FD8
_0806C8A8:
	movs r0, #0x10
_0806C8AA:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	movs r0, #0x00
_0806C8B6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806C8C0
sub_806C8C0:
	push {lr}
	adds r3, r0, #0x0
	adds r3, #0x9C
	movs r2, #0x01
	str r2, [r3, #0x00]
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806C8D8
sub_806C8D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C930
	adds r1, r2, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C90C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0xB3
	lsls r1, r1, #0x05
	b _0806C91A
_0806C90C:
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C938 @ =0x000016E2
_0806C91A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806C93C @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806C940 @ =0x0806C8C1
	str r0, [r4, #0x58]
	ldr r0, _0806C944 @ =0x0806C849
	str r0, [r4, #0x5C]
	ldr r0, _0806C948 @ =0x0806CB3D
	str r0, [r4, #0x4C]
_0806C930:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C938: .4byte 0x000016E2
_0806C93C: .4byte 0x03000E3C
_0806C940: .4byte sub_806C8C0
_0806C944: .4byte sub_806C848
_0806C948: .4byte sub_806CB3C
	thumb_func_start sub_806C94C
sub_806C94C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C99A
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x08
	str r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0806C98A
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C996
_0806C98A:
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C996:
	ldr r0, _0806C9A0 @ =0x0806C9A5
	str r0, [r4, #0x4C]
_0806C99A:
	pop {r4}
	pop {r0}
	bx r0
_0806C9A0: .4byte sub_806C9A4
	thumb_func_start sub_806C9A4
sub_806C9A4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C9F0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C9CC
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C9D8
_0806C9CC:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C9D8:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	ldr r0, _0806C9F8 @ =0x0806C315
	str r0, [r4, #0x4C]
_0806C9F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C9F8: .4byte sub_806C314
	.byte 0x70, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0x9C, 0x35, 0x2E, 0x68, 0x00, 0x2E, 0x0D, 0xD1, 0x2D, 0xF1
	.byte 0x91, 0xFA, 0x05, 0x21, 0x6E, 0xF1, 0x3C, 0xF9, 0x28, 0x60, 0x21, 0x1C, 0xA0, 0x31, 0x80, 0x20
	.byte 0x40, 0x00, 0x08, 0x60, 0x20, 0x1C, 0xA4, 0x30, 0x06, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF1, 0xCA, 0x06, 0x08, 0x30, 0xB5, 0x02, 0x1C
	.byte 0x15, 0x1C, 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0E, 0xD1, 0x14, 0x1C, 0xA0, 0x34, 0x20, 0x68
	.byte 0x00, 0x28, 0x09, 0xD1, 0x13, 0x1C, 0xA4, 0x33, 0x19, 0x68, 0x00, 0x29, 0x04, 0xD1, 0x08, 0x20
	.byte 0x28, 0x60, 0x10, 0x20, 0x20, 0x60, 0x19, 0x60, 0x10, 0x1C, 0xA8, 0x30, 0x01, 0x21, 0x01, 0x60
	.byte 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x6D, 0xCB, 0x06, 0x08
	.byte 0x30, 0xB5, 0x02, 0x1C, 0x15, 0x1C, 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0E, 0xD1, 0x14, 0x1C
	.byte 0xA0, 0x34, 0x20, 0x68, 0x00, 0x28, 0x09, 0xD1, 0x13, 0x1C, 0xA4, 0x33, 0x19, 0x68, 0x00, 0x29
	.byte 0x04, 0xD1, 0x08, 0x20, 0x28, 0x60, 0x10, 0x20, 0x20, 0x60, 0x19, 0x60, 0x10, 0x1C, 0xA8, 0x30
	.byte 0x00, 0x21, 0x01, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x6D, 0xCB, 0x06, 0x08
	thumb_func_start sub_806CAC0
sub_806CAC0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806CAE4
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CAEC @ =0x0806C455
	str r0, [r4, #0x4C]
_0806CAE4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CAEC: .4byte sub_806C454
	thumb_func_start sub_806CAF0
sub_806CAF0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CB08
	adds r1, #0xFF
_0806CB08:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CB12
	adds r2, #0xFF
_0806CB12:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CB1C
	adds r3, #0xFF
_0806CB1C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CB34 @ =0x00001DE6
	bl sub_80DF024
	ldr r0, _0806CB38 @ =0x0806CBA1
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CB34: .4byte 0x00001DE6
_0806CB38: .4byte sub_806CBA0
	thumb_func_start sub_806CB3C
sub_806CB3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CB64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r2, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	str r2, [r4, #0x4C]
_0806CB64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806CB6C
sub_806CB6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806CB86
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806CB92
_0806CB86:
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806CB92:
	ldr r0, _0806CB9C @ =0x0806C9A5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806CB9C: .4byte sub_806C9A4
	thumb_func_start sub_806CBA0
sub_806CBA0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CBC0
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CBC8 @ =0x0806C455
	str r0, [r4, #0x4C]
_0806CBC0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CBC8: .4byte sub_806C454
	thumb_func_start sub_806CBCC
sub_806CBCC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806CCAC
	movs r7, #0x00
	str r7, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CC60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r0, [r0, #0x30]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806CC22
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0806CC64
_0806CC22:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	subs r1, #0x26
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	b _0806CC9E
	.byte 0x00, 0x00
_0806CC60: .4byte 0x03000FD8
_0806CC64:
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r7, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
_0806CC9E:
	ldr r0, _0806CCB4 @ =0x0806D3C5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806CCAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CCB4: .4byte sub_806D3C4
	thumb_func_start sub_806CCB8
sub_806CCB8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CD60
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806CD60
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	ldr r0, _0806CD28 @ =0x08087541
	str r0, [r4, #0x68]
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
	bl sub_807F4FC
	ldr r0, _0806CD2C @ =0x0806D341
	str r0, [r4, #0x58]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806CD34
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x38]
	ldr r3, _0806CD30 @ =0xFFFFB000
	b _0806CD3C
_0806CD28: .4byte sub_8087540
_0806CD2C: .4byte sub_806D340
_0806CD30: .4byte 0xFFFFB000
_0806CD34:
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x38]
	ldr r3, _0806CD68 @ =0xFFFFD000
_0806CD3C:
	adds r0, r1, r3
	cmp r0, #0x00
	bge _0806CD46
	adds r3, #0xFF
	adds r0, r1, r3
_0806CD46:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0x12
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806CD6C @ =0x0806CD71
	str r0, [r4, #0x4C]
_0806CD60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CD68: .4byte 0xFFFFD000
_0806CD6C: .4byte sub_806CD70
	thumb_func_start sub_806CD70
sub_806CD70:
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
	bgt _0806CDEA
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x80
	ble _0806CDBC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CD98
	adds r1, #0xFF
_0806CD98:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CDA2
	adds r2, #0xFF
_0806CDA2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CDAC
	adds r3, #0xFF
_0806CDAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CDB8 @ =0x000020F5
	bl sub_80DF024
	b _0806CDE2
_0806CDB8: .4byte 0x000020F5
_0806CDBC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CDC4
	adds r1, #0xFF
_0806CDC4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CDCE
	adds r2, #0xFF
_0806CDCE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CDD8
	adds r3, #0xFF
_0806CDD8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CE24 @ =0x000020EC
	bl sub_80DF024
_0806CDE2:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_0806CDEA:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r3, r0, #0x0
	cmp r1, #0x00
	beq _0806CE2C
	ldr r2, _0806CE28 @ =0x08198584
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r2, r1, #0x0
	cmp r0, #0x00
	bge _0806CE10
	adds r0, #0x3F
_0806CE10:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r0, r1
	b _0806CE54
	.byte 0x00, 0x00
_0806CE24: .4byte 0x000020EC
_0806CE28: .4byte 0x08198584
_0806CE2C:
	ldr r2, _0806CEA4 @ =0x08198584
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r2, r1, #0x0
	cmp r0, #0x00
	bge _0806CE44
	adds r0, #0x3F
_0806CE44:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r5, #0xC0
	lsls r5, r5, #0x06
	adds r0, r0, r5
_0806CE54:
	str r0, [r4, #0x10]
	ldr r1, _0806CEA8 @ =0x08198504
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0806CE68
	adds r1, #0x3F
_0806CE68:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0806CE96
	cmn r1, r0
	bge _0806CEC4
_0806CE96:
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	beq _0806CEAC
	movs r0, #0xF0
	lsls r0, r0, #0x07
	b _0806CEB0
_0806CEA4: .4byte 0x08198584
_0806CEA8: .4byte 0x08198504
_0806CEAC:
	movs r0, #0xB0
	lsls r0, r0, #0x07
_0806CEB0:
	str r0, [r4, #0x10]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x2D
	strh r0, [r1, #0x00]
	ldr r0, _0806CECC @ =0x0806D391
	str r0, [r4, #0x4C]
_0806CEC4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806CECC: .4byte sub_806D390
	thumb_func_start sub_806CED0
sub_806CED0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806CFB0
	movs r7, #0x00
	str r7, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CF64 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r0, [r0, #0x30]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806CF26
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0806CF68
_0806CF26:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
	subs r1, #0x26
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	b _0806CFA2
	.byte 0x00, 0x00
_0806CF64: .4byte 0x03000FD8
_0806CF68:
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r7, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
_0806CFA2:
	ldr r0, _0806CFB8 @ =0x0806D30D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806CFB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CFB8: .4byte sub_806D30C
	thumb_func_start sub_806CFBC
sub_806CFBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806CFDA
	subs r1, #0x20
	movs r0, #0xB4
	lsls r0, r0, #0x07
	b _0806CFE2
_0806CFDA:
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xFC
	lsls r0, r0, #0x07
_0806CFE2:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806CFFA
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x90
	lsls r0, r0, #0x07
	b _0806D002
_0806CFFA:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
_0806D002:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806D044 @ =0x0806D049
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D044: .4byte sub_806D048
	thumb_func_start sub_806D048
sub_806D048:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D088
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D066
	adds r1, #0xFF
_0806D066:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D070
	adds r2, #0xFF
_0806D070:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D07A
	adds r3, #0xFF
_0806D07A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D0B8 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D088:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D0F4
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D0BC
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xA0
	lsls r0, r0, #0x06
	b _0806D0C2
_0806D0B8: .4byte 0x00002122
_0806D0BC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _0806D0FC @ =0xFFFFF800
_0806D0C2:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D100 @ =0x0806D105
	str r0, [r4, #0x4C]
_0806D0F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D0FC: .4byte 0xFFFFF800
_0806D100: .4byte sub_806D104
	thumb_func_start sub_806D104
sub_806D104:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D144
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D122
	adds r1, #0xFF
_0806D122:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D12C
	adds r2, #0xFF
_0806D12C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D136
	adds r3, #0xFF
_0806D136:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D168 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D144:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D1C6
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x02
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806D16C
	subs r1, #0x20
	movs r0, #0xFC
	lsls r0, r0, #0x07
	b _0806D174
_0806D168: .4byte 0x00002122
_0806D16C:
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xB4
	lsls r0, r0, #0x07
_0806D174:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D18C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x90
	lsls r0, r0, #0x07
	b _0806D194
_0806D18C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
_0806D194:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D1D0 @ =0x0806D1D5
	str r0, [r4, #0x4C]
_0806D1C6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D1D0: .4byte sub_806D1D4
	thumb_func_start sub_806D1D4
sub_806D1D4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D214
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D1F2
	adds r1, #0xFF
_0806D1F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D1FC
	adds r2, #0xFF
_0806D1FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D206
	adds r3, #0xFF
_0806D206:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D244 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D214:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D282
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x03
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D248
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0806D250
_0806D244: .4byte 0x0000212B
_0806D248:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xD0
	lsls r0, r0, #0x07
_0806D250:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D28C @ =0x0806D291
	str r0, [r4, #0x4C]
_0806D282:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D28C: .4byte sub_806D290
	thumb_func_start sub_806D290
sub_806D290:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D2D0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D2AE
	adds r1, #0xFF
_0806D2AE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D2B8
	adds r2, #0xFF
_0806D2B8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D2C2
	adds r3, #0xFF
_0806D2C2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D2F0 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D2D0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D300
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806D2F4
	adds r0, r4, #0x0
	bl sub_806CFBC
	b _0806D300
_0806D2F0: .4byte 0x0000212B
_0806D2F4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x2D
	strh r1, [r0, #0x00]
	ldr r0, _0806D308 @ =0x0806D35D
	str r0, [r4, #0x4C]
_0806D300:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D308: .4byte sub_806D35C
	thumb_func_start sub_806D30C
sub_806D30C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D336
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D33C @ =0x0806D481
	str r0, [r4, #0x4C]
_0806D336:
	pop {r4}
	pop {r0}
	bx r0
_0806D33C: .4byte sub_806D480
	thumb_func_start sub_806D340
sub_806D340:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806D358 @ =0x0806CD71
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806D358: .4byte sub_806CD70
	thumb_func_start sub_806D35C
sub_806D35C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D386
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D38C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D386:
	pop {r4}
	pop {r0}
	bx r0
_0806D38C: .4byte sub_808750C
	thumb_func_start sub_806D390
sub_806D390:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D3BA
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D3C0 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D3BA:
	pop {r4}
	pop {r0}
	bx r0
_0806D3C0: .4byte sub_808750C
	thumb_func_start sub_806D3C4
sub_806D3C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D3EE
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D3F4 @ =0x0806CCB9
	str r0, [r4, #0x4C]
_0806D3EE:
	pop {r4}
	pop {r0}
	bx r0
_0806D3F4: .4byte sub_806CCB8
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0xA0, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0D, 0xD1, 0x2C, 0xF1
	.byte 0x93, 0xFD, 0x22, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x01, 0x40, 0x11, 0x60, 0x02, 0x20, 0x28, 0x60
	.byte 0x21, 0x1C, 0xA4, 0x31, 0xA0, 0x20, 0x80, 0x00, 0x08, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20
	.byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF1, 0xD4, 0x06, 0x08, 0x30, 0xB5, 0x04, 0x1C
	.byte 0x25, 0x1C, 0xA0, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x2C, 0xF1, 0x75, 0xFD, 0x22, 0x1C
	.byte 0x9C, 0x32, 0x01, 0x21, 0x01, 0x40, 0x11, 0x60, 0x03, 0x20, 0x28, 0x60, 0x21, 0x1C, 0xA4, 0x31
	.byte 0x02, 0x20, 0x08, 0x60, 0x20, 0x1C, 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x21, 0x1C
	.byte 0xA4, 0x31, 0x08, 0x68, 0x40, 0x42, 0x08, 0x60, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x1D, 0xD5, 0x06, 0x08
	thumb_func_start sub_806D480
sub_806D480:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D4DC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D4DC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D4E4 @ =0x08087541
	str r0, [r4, #0x68]
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
	bl sub_807F4FC
	ldr r0, _0806D4E8 @ =0x0806D549
	str r0, [r4, #0x58]
	ldr r0, _0806D4EC @ =0x0806CFBD
	str r0, [r4, #0x4C]
_0806D4DC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D4E4: .4byte sub_8087540
_0806D4E8: .4byte sub_806D548
_0806D4EC: .4byte sub_806CFBC
	thumb_func_start sub_806D4F0
sub_806D4F0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D518 @ =0x0806CED1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D518: .4byte sub_806CED0
	thumb_func_start sub_806D51C
sub_806D51C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D544 @ =0x0806CBCD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D544: .4byte sub_806CBCC
	thumb_func_start sub_806D548
sub_806D548:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0806D574
	cmp r0, #0x01
	bgt _0806D566
	cmp r0, #0x00
	beq _0806D56C
	b _0806D584
_0806D566:
	cmp r0, #0x02
	beq _0806D57C
	b _0806D584
_0806D56C:
	ldr r0, _0806D570 @ =0x0806D049
	b _0806D586
_0806D570: .4byte sub_806D048
_0806D574:
	ldr r0, _0806D578 @ =0x0806D105
	b _0806D586
_0806D578: .4byte sub_806D104
_0806D57C:
	ldr r0, _0806D580 @ =0x0806D1D5
	b _0806D586
_0806D580: .4byte sub_806D1D4
_0806D584:
	ldr r0, _0806D590 @ =0x0806D291
_0806D586:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806D590: .4byte sub_806D290
	thumb_func_start sub_806D594
sub_806D594:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0806D614 @ =0x03000E3C
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D618 @ =0x0806E7CD
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D614: .4byte 0x03000E3C
_0806D618: .4byte sub_806E7CC
	thumb_func_start sub_806D61C
sub_806D61C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D69C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
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
	movs r3, #0xD0
	lsls r3, r3, #0x07
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
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806D6A4 @ =0x0806E795
	str r0, [r4, #0x4C]
_0806D69C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D6A4: .4byte sub_806E794
	thumb_func_start sub_806D6A8
sub_806D6A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D750
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D750
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, _0806D758 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r1, _0806D75C @ =0x0000178E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806D760 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806D764 @ =0x0806E739
	str r0, [r5, #0x58]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
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
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806D768 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r1, #0x03
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D76C @ =0x0806D771
	str r0, [r5, #0x4C]
_0806D750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D758: .4byte sub_8087540
_0806D75C: .4byte 0x0000178E
_0806D760: .4byte 0x03000E3C
_0806D764: .4byte 0x0806E739
_0806D768: .4byte 0x00000199
_0806D76C: .4byte sub_806D770
