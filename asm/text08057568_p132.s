	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806C1C8
sub_806C1C8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C1E8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806C1E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x02, 0x1C, 0xA8, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0x25, 0xC2, 0x06, 0x08, 0x02, 0x1C, 0xA8, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x25, 0xC2, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0x95, 0xC2, 0x06, 0x08
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
	thumb_func_start sub_806D770
sub_806D770:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0806D7C8 @ =0x03000E3C
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r3, r2, #0x0
	adds r3, #0x75
	strb r0, [r3, #0x00]
	ldr r1, [r2, #0x30]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D7C4
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x00]
	ldr r1, [r2, #0x30]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, _0806D7CC @ =0x0806D7D1
	str r0, [r2, #0x4C]
_0806D7C4:
	pop {r0}
	bx r0
_0806D7C8: .4byte 0x03000E3C
_0806D7CC: .4byte sub_806D7D0
	thumb_func_start sub_806D7D0
sub_806D7D0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806D840
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
	subs r1, #0x10
	movs r0, #0xC0
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
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D83C @ =0x0806E779
	b _0806D9DE
_0806D83C: .4byte sub_806E778
_0806D840:
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806D84C
	bl _call_via_r1
_0806D84C:
	ldr r2, [r4, #0x2C]
	ldr r0, _0806D894 @ =0x0806E791
	str r0, [r2, #0x4C]
	ldr r0, [r2, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r5, r0, #0x1F
	ldr r0, [r2, #0x08]
	bl sub_807FB64
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D92C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D8B8
	cmp r5, #0x00
	beq _0806D8A0
	ldr r0, [r4, #0x30]
	ldr r2, _0806D898 @ =0x0000411F
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D89C @ =0x0000411E
	b _0806D8CA
_0806D894: .4byte nullsub_15
_0806D898: .4byte 0x0000411F
_0806D89C: .4byte 0x0000411E
_0806D8A0:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D8B0 @ =0x00004117
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D8B4 @ =0x00004116
	b _0806D8CA
_0806D8B0: .4byte 0x00004117
_0806D8B4: .4byte 0x00004116
_0806D8B8:
	cmp r5, #0x00
	beq _0806D8E0
	ldr r0, [r4, #0x30]
	ldr r2, _0806D8D8 @ =0x00004123
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D8DC @ =0x00004122
_0806D8CA:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806D8F8
	.byte 0x00, 0x00
_0806D8D8: .4byte 0x00004123
_0806D8DC: .4byte 0x00004122
_0806D8E0:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D920 @ =0x0000411B
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D924 @ =0x0000411A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806D8F8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D900
	adds r1, #0xFF
_0806D900:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D90A
	adds r2, #0xFF
_0806D90A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D914
	adds r3, #0xFF
_0806D914:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D928 @ =0x00001F5B
	bl sub_80DF024
	b _0806D9D2
_0806D920: .4byte 0x0000411B
_0806D924: .4byte 0x0000411A
_0806D928: .4byte 0x00001F5B
_0806D92C:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D96C
	cmp r5, #0x00
	beq _0806D954
	ldr r0, [r4, #0x30]
	ldr r2, _0806D94C @ =0x00004121
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D950 @ =0x00004120
	b _0806D97E
	.byte 0x00, 0x00
_0806D94C: .4byte 0x00004121
_0806D950: .4byte 0x00004120
_0806D954:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D964 @ =0x00004119
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D968 @ =0x00004118
	b _0806D97E
_0806D964: .4byte 0x00004119
_0806D968: .4byte 0x00004118
_0806D96C:
	cmp r5, #0x00
	beq _0806D994
	ldr r0, [r4, #0x30]
	ldr r2, _0806D98C @ =0x00004125
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D990 @ =0x00004124
_0806D97E:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806D9AC
	.byte 0x00, 0x00
_0806D98C: .4byte 0x00004125
_0806D990: .4byte 0x00004124
_0806D994:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D9E8 @ =0x0000411D
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D9EC @ =0x0000411C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806D9AC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D9B4
	adds r1, #0xFF
_0806D9B4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D9BE
	adds r2, #0xFF
_0806D9BE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D9C8
	adds r3, #0xFF
_0806D9C8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D9F0 @ =0x00001F74
	bl sub_80DF024
_0806D9D2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _0806D9F4 @ =0x0806D9F9
_0806D9DE:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D9E8: .4byte 0x0000411D
_0806D9EC: .4byte 0x0000411C
_0806D9F0: .4byte 0x00001F74
_0806D9F4: .4byte sub_806D9F8
	thumb_func_start sub_806D9F8
sub_806D9F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DADC
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x2C]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DA64
	ldr r2, _0806DA5C @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0806DA60 @ =0x00004113
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	b _0806DA94
	.byte 0x00, 0x00
_0806DA5C: .4byte 0x00004112
_0806DA60: .4byte 0x00004113
_0806DA64:
	ldr r2, _0806DAE4 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0806DAE8 @ =0x00004115
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
_0806DA94:
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
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
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
	ldr r0, _0806DAEC @ =0x0806E779
	str r0, [r4, #0x4C]
_0806DADC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DAE4: .4byte 0x00004114
_0806DAE8: .4byte 0x00004115
_0806DAEC: .4byte sub_806E778
	thumb_func_start sub_806DAF0
sub_806DAF0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DB78
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
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DB52
	adds r1, #0xFF
_0806DB52:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DB5C
	adds r2, #0xFF
_0806DB5C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DB66
	adds r3, #0xFF
_0806DB66:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806DB74 @ =0x00001F8D
	bl sub_80DF024
	b _0806DBB6
	.byte 0x00, 0x00
_0806DB74: .4byte 0x00001F8D
_0806DB78:
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
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DB98
	adds r1, #0xFF
_0806DB98:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DBA2
	adds r2, #0xFF
_0806DBA2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DBAC
	adds r3, #0xFF
_0806DBAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806DBCC @ =0x00001F95
	bl sub_80DF024
_0806DBB6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0806DBD0 @ =0x0806E6BD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806DBCC: .4byte 0x00001F95
_0806DBD0: .4byte sub_806E6BC
	thumb_func_start sub_806DBD4
sub_806DBD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DC9C
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC20
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC18
	ldr r2, _0806DC14 @ =0x00004126
	b _0806DC36
	.byte 0x00, 0x00
_0806DC14: .4byte 0x00004126
_0806DC18:
	ldr r2, _0806DC1C @ =0x00004128
	b _0806DC36
_0806DC1C: .4byte 0x00004128
_0806DC20:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC34
	ldr r2, _0806DC30 @ =0x00004127
	b _0806DC36
	.byte 0x00, 0x00
_0806DC30: .4byte 0x00004127
_0806DC34:
	ldr r2, _0806DCA4 @ =0x00004129
_0806DC36:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x26
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x05
	adds r1, #0x22
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806DCA8 @ =0x0806E691
	str r0, [r4, #0x58]
	ldr r0, _0806DCAC @ =0x0806E665
	str r0, [r4, #0x60]
	ldr r0, _0806DCB0 @ =0x0806DCB5
	str r0, [r4, #0x4C]
_0806DC9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DCA4: .4byte 0x00004129
_0806DCA8: .4byte sub_806E690
_0806DCAC: .4byte sub_806E664
_0806DCB0: .4byte sub_806DCB4
	thumb_func_start sub_806DCB4
sub_806DCB4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, _0806DD3C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x33
	str r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r5, #0x18]
	movs r6, #0xC0
	lsls r6, r6, #0x06
	cmp r0, r6
	bgt _0806DD34
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x6C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0806DD08
	adds r1, #0xFF
_0806DD08:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0806DD12
	adds r2, #0xFF
_0806DD12:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0806DD1C
	adds r3, #0xFF
_0806DD1C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806DD40 @ =0x00001FC7
	bl sub_80DF024
	str r6, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806DD44 @ =0x0806DD49
	str r0, [r5, #0x4C]
_0806DD34:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806DD3C: .4byte 0xFFFFFD00
_0806DD40: .4byte 0x00001FC7
_0806DD44: .4byte sub_806DD48
	thumb_func_start sub_806DD48
sub_806DD48:
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
	bgt _0806DD8A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DD66
	adds r1, #0xFF
_0806DD66:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DD70
	adds r2, #0xFF
_0806DD70:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DD7A
	adds r3, #0xFF
_0806DD7A:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE14 @ =0x00001FDC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806DD8A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x4C]
	ldr r0, _0806DE1C @ =0x0806E791
	cmp r1, r0
	bne _0806DDC0
	ldr r0, [r2, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0806DDC0:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806DDC8
	adds r1, #0xFF
_0806DDC8:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806DE0A
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	ldr r3, [r0, #0x30]
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _0806DDEE
	adds r2, #0xFF
_0806DDEE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _0806DDF8
	adds r3, #0xFF
_0806DDF8:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE20 @ =0x00001FCF
	movs r1, #0x00
	bl sub_80DF024
	ldr r0, _0806DE24 @ =0x0806DE29
	str r0, [r4, #0x4C]
_0806DE0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DE14: .4byte 0x00001FDC
_0806DE18: .4byte 0xFFFFFD00
_0806DE1C: .4byte nullsub_15
_0806DE20: .4byte 0x00001FCF
_0806DE24: .4byte sub_806DE28
	thumb_func_start sub_806DE28
sub_806DE28:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAE
	ldrb r1, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0806DE8A
	adds r0, #0xFF
_0806DE8A:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _0806DE98
	adds r0, #0xFF
_0806DE98:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bge _0806DEAA
	adds r0, #0xFF
_0806DEAA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	ldr r2, _0806DF24 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806DEFA
	movs r0, #0x02
_0806DEFA:
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806DF28 @ =0x0806DF2D
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806DF24: .4byte 0x03001038
_0806DF28: .4byte sub_806DF2C
	thumb_func_start sub_806DF2C
sub_806DF2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	mov r8, r0
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r0, [r6, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r1, #0x00
	ldsh r2, [r4, r1]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806DFCC
	b _0806E0F4
_0806DFCC:
	ldr r1, [r7, #0x2C]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	ble _0806DFD6
	b _0806E0F4
_0806DFD6:
	ldr r0, [r1, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	subs r4, #0x20
	ldr r0, [r4, #0x00]
	str r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r7, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0806E028
	ldr r2, _0806E024 @ =0x00004112
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E04C
_0806E024: .4byte 0x00004112
_0806E028:
	ldr r2, _0806E100 @ =0x00004114
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E04C:
	ldr r0, [r7, #0x08]
	movs r3, #0x00
	strh r3, [r0, #0x0C]
	movs r2, #0x96
	lsls r2, r2, #0x09
	str r2, [r7, #0x10]
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r7, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r2, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r2, [r7, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _0806E104 @ =0x0806E755
	str r0, [r7, #0x4C]
_0806E0F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E100: .4byte 0x00004114
_0806E104: .4byte sub_806E754
	thumb_func_start sub_806E108
sub_806E108:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r4, r0
	str r4, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806E1AE
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0806E1AE
	ldr r0, _0806E1B4 @ =0x0808750D
	str r0, [r7, #0x4C]
_0806E1AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806E1B4: .4byte sub_808750C
	thumb_func_start sub_806E1B8
sub_806E1B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806E1CC
	adds r1, #0xFF
_0806E1CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806E1D6
	adds r2, #0xFF
_0806E1D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806E1E0
	adds r3, #0xFF
_0806E1E0:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806E234 @ =0x00001FCF
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	mov r9, r0
	cmp r1, #0x00
	bne _0806E23C
	ldr r2, _0806E238 @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E260
	.byte 0x00, 0x00
_0806E234: .4byte 0x00001FCF
_0806E238: .4byte 0x00004112
_0806E23C:
	ldr r2, _0806E378 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E260:
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x18]
	ldr r1, _0806E37C @ =0xFFFFD000
	adds r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2AC
	mov r0, r8
	str r0, [r4, #0x18]
_0806E2AC:
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
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806E2DA
	adds r0, #0xFF
_0806E2DA:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806E2EA
	adds r0, #0xFF
_0806E2EA:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2FA
	adds r0, #0xFF
_0806E2FA:
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
	ldr r2, _0806E380 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806E34A
	movs r0, #0x02
_0806E34A:
	negs r0, r0
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, _0806E384 @ =0x0806E109
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E378: .4byte 0x00004114
_0806E37C: .4byte 0xFFFFD000
_0806E380: .4byte 0x03001038
_0806E384: .4byte sub_806E108
	thumb_func_start sub_806E388
sub_806E388:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x05
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
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
	ldr r0, _0806E40C @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x99
	bl play_sfx_80195B4
	ldr r0, _0806E410 @ =0x0806E625
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E40C: .4byte 0x00000199
_0806E410: .4byte sub_806E624
	thumb_func_start sub_806E414
sub_806E414:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806E428
	b _0806E5AE
_0806E428:
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r7, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806E43C
	b _0806E5AE
_0806E43C:
	adds r0, r6, #0x0
	bl sub_807F47C
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E44E
	bl _call_via_r1
_0806E44E:
	ldr r1, [r6, #0x2C]
	ldr r0, _0806E5B8 @ =0x0806E791
	str r0, [r1, #0x4C]
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E470
	adds r0, #0xFF
_0806E470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E47E
	adds r0, #0xFF
_0806E47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E48C
	adds r0, #0xFF
_0806E48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF6
	lsls r0, r0, #0x05
	bl sub_80DF024
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4AA
	adds r0, #0xFF
_0806E4AA:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4B8
	adds r0, #0xFF
_0806E4B8:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4C6
	adds r0, #0xFF
_0806E4C6:
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
	ldr r1, _0806E5BC @ =0x00004111
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806E5C0 @ =0x0806E5D9
	str r0, [r5, #0x4C]
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
	ldr r0, _0806E5C4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	ldr r1, _0806E5C8 @ =0x0000173E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806E5CC @ =0x03000E3C
	str r0, [r1, #0x00]
	str r7, [r5, #0x60]
	adds r2, r6, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806E5D0 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x98
	bl play_sfx_80195B4
	ldr r0, _0806E5D4 @ =0x0806E5F5
	str r0, [r6, #0x4C]
_0806E5AE:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E5B8: .4byte nullsub_15
_0806E5BC: .4byte 0x00004111
_0806E5C0: .4byte sub_806E5D8
_0806E5C4: .4byte sub_8087540
_0806E5C8: .4byte 0x0000173E
_0806E5CC: .4byte 0x03000E3C
_0806E5D0: .4byte 0x00000199
_0806E5D4: .4byte sub_806E5F4
	thumb_func_start sub_806E5D8
sub_806E5D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E5EE
	adds r0, r2, #0x0
	bl sub_807C298
_0806E5EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806E5F4
sub_806E5F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E61A
	ldr r0, [r4, #0x2C]
	movs r1, #0x00
	str r1, [r0, #0x4C]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806E620 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806E61A:
	pop {r4}
	pop {r0}
	bx r0
_0806E620: .4byte sub_808750C
	thumb_func_start sub_806E624
sub_806E624:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E658
	movs r0, #0x99
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806E660 @ =0x0806E8E9
	str r0, [r4, #0x4C]
_0806E658:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E660: .4byte sub_806E8E8
	thumb_func_start sub_806E664
sub_806E664:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806E686
	ldr r0, _0806E68C @ =0x0806E1B9
	str r0, [r4, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	movs r0, #0x00
_0806E686:
	pop {r4}
	pop {r1}
	bx r1
_0806E68C: .4byte sub_806E1B8
	thumb_func_start sub_806E690
sub_806E690:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E6A0
	bl _call_via_r1
_0806E6A0:
	ldr r0, [r4, #0x2C]
	ldr r1, _0806E6B4 @ =0x0806E791
	str r1, [r0, #0x4C]
	ldr r0, _0806E6B8 @ =0x0806DD49
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806E6B4: .4byte nullsub_15
_0806E6B8: .4byte sub_806DD48
	thumb_func_start sub_806E6BC
sub_806E6BC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E72E
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
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
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806E734 @ =0x0806E91D
	str r0, [r4, #0x4C]
_0806E72E:
	pop {r4}
	pop {r0}
	bx r0
_0806E734: .4byte sub_806E91C
	.byte 0x02, 0x1C, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20, 0x08, 0x60, 0x28, 0x39, 0x00, 0x20, 0x08, 0x60
	.byte 0x01, 0x48, 0xD0, 0x64, 0x00, 0x20, 0x70, 0x47, 0x71, 0xD7, 0x06, 0x08
	thumb_func_start sub_806E754
sub_806E754:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r1, #0x30]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0x14]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E774
	str r0, [r1, #0x4C]
	str r0, [r2, #0x4C]
_0806E774:
	pop {r0}
	bx r0
