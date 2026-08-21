	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_811152C
sub_811152C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_811160C
	adds r3, r4, #0x0
	adds r3, #0x98
	ldr r1, [r3, #0x00]
	ldr r0, _081115F8 @ =0x0000FFFF
	adds r2, r1, r0
	ldr r0, _081115FC @ =0x0001FFFE
	cmp r2, r0
	bls _08111584
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0811154E
	adds r0, r2, #0x0
_0811154E:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x01
	ble _0811156C
	ldr r0, _08111600 @ =0x081123B5
	str r0, [r4, #0x4C]
_0811156C:
	ldr r1, _08111604 @ =0x083BA994
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x01
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08111584
	bl stop_sfx_80195A8
_08111584:
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08111598
	ldr r0, _08111608 @ =0x0811230D
	bl sub_8112350
	movs r0, #0x01
	str r0, [r5, #0x00]
_08111598:
	adds r0, r4, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _081115EA
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081115B0
	adds r0, #0xFF
_081115B0:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	movs r6, #0x9A
	lsls r6, r6, #0x06
	cmp r0, #0x7F
	bgt _081115C0
	subs r6, #0x09
_081115C0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081115C8
	adds r1, #0xFF
_081115C8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081115D2
	adds r2, #0xFF
_081115D2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081115DC
	adds r3, #0xFF
_081115DC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x06
	strh r0, [r5, #0x00]
_081115EA:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081115F8: .4byte 0x0000FFFF
_081115FC: .4byte 0x0001FFFE
_08111600: .4byte sub_81123B4
_08111604: .4byte 0x083BA994
_08111608: .4byte sub_811230C
	thumb_func_start sub_811160C
sub_811160C:
	push {r4, r5, lr}
	mov r12, r0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0811161A
	adds r0, #0xFF
_0811161A:
	asrs r4, r0, #0x08
	movs r3, #0xFF
	ands r4, r3
	adds r2, r4, #0x0
	subs r2, #0x40
	ands r2, r3
	cmp r2, #0x7F
	bgt _08111644
	mov r0, r12
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ands r2, r3
	muls r0, r2
	cmp r0, #0x00
	bge _0811163C
	adds r0, #0x7F
_0811163C:
	asrs r0, r0, #0x07
	adds r2, r0, #0x0
	adds r2, #0x19
	b _08111660
_08111644:
	mov r0, r12
	adds r0, #0xAE
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, r2, #0x0
	subs r0, #0x80
	ands r0, r3
	muls r0, r1
	cmp r0, #0x00
	bge _0811165A
	adds r0, #0x7F
_0811165A:
	asrs r1, r0, #0x07
	movs r0, #0x30
	subs r2, r0, r1
_08111660:
	ldr r0, _081116B8 @ =0x08198584
	lsls r3, r4, #0x01
	adds r0, r3, r0
	movs r4, #0x00
	ldsh r1, [r0, r4]
	cmp r1, #0x00
	bge _08111670
	adds r1, #0x3F
_08111670:
	asrs r1, r1, #0x06
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x04
	lsls r1, r2, #0x08
	adds r0, r0, r1
	mov r5, r12
	str r0, [r5, #0x10]
	ldr r0, _081116BC @ =0x08198504
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0811168E
	adds r0, #0x3F
_0811168E:
	asrs r1, r0, #0x06
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x02
	movs r4, #0xD8
	lsls r4, r4, #0x07
	adds r0, r0, r4
	mov r5, r12
	str r0, [r5, #0x14]
	mov r2, r12
	adds r2, #0x98
	mov r1, r12
	adds r1, #0x94
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081116B8: .4byte 0x08198584
_081116BC: .4byte 0x08198504
	thumb_func_start sub_81116C0
sub_81116C0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111748
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08111728
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _0811171A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081116F6
	adds r1, #0xFF
_081116F6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08111700
	adds r2, #0xFF
_08111700:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0811170A
	adds r3, #0xFF
_0811170A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x9C
	lsls r0, r0, #0x06
	bl sub_80DF024
	ldr r0, _08111724 @ =0x000003E7
	strh r0, [r5, #0x00]
_0811171A:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	b _08111748
	.byte 0x00, 0x00
_08111724: .4byte 0x000003E7
_08111728:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
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
	ldr r0, _08111750 @ =0x08111755
	str r0, [r4, #0x4C]
_08111748:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08111750: .4byte sub_8111754
	thumb_func_start sub_8111754
sub_8111754:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111834
	adds r0, r5, #0x0
	movs r1, #0x06
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
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0811178A
	adds r1, #0xFF
_0811178A:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08111794
	adds r2, #0xFF
_08111794:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0811179E
	adds r3, #0xFF
_0811179E:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _081117FC @ =0x0000270E
	bl sub_80DF024
	ldr r1, _08111800 @ =0x00004040
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	ldr r1, _08111804 @ =0xFFFFFC00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	movs r1, #0xA0
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	ldr r1, _08111808 @ =0x083BA9E4
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811180C
	subs r1, r0, #0x1
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08111818
_081117FC: .4byte 0x0000270E
_08111800: .4byte 0x00004040
_08111804: .4byte 0xFFFFFC00
_08111808: .4byte 0x083BA9E4
_0811180C:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08111818:
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0811183C @ =0x08111A89
	str r0, [r4, #0x60]
	ldr r0, _08111840 @ =0x081119DD
	str r0, [r4, #0x4C]
	ldr r0, _08111844 @ =0x081122D1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_08111834:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0811183C: .4byte sub_8111A88
_08111840: .4byte sub_81119DC
_08111844: .4byte sub_81122D0
	thumb_func_start sub_8111848
sub_8111848:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	cmp r2, #0x00
	bne _0811185C
	ldr r0, _08111858 @ =0x081121E9
	b _081118E2
	.byte 0x00, 0x00
_08111858: .4byte sub_81121E8
_0811185C:
	ldr r1, [r2, #0x38]
	ldr r0, [r2, #0x10]
	cmp r1, r0
	bgt _081118E4
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r3, r0, r1
	adds r0, r2, #0x0
	adds r0, #0x7A
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x02
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _08111888
	adds r0, #0xFF
_08111888:
	asrs r0, r0, #0x08
	lsls r0, r0, #0x02
	cmp r3, r0
	bgt _081118E4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ldr r2, _081118D8 @ =0x083BA99C
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bcs _081118E0
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
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
	ldr r0, _081118DC @ =0x081118F1
	str r0, [r4, #0x4C]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	b _081118E4
	.byte 0x00, 0x00
_081118D8: .4byte 0x083BA99C
_081118DC: .4byte sub_81118F0
_081118E0:
	ldr r0, _081118EC @ =0x08112269
_081118E2:
	str r0, [r4, #0x4C]
_081118E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081118EC: .4byte sub_8112268
	thumb_func_start sub_81118F0
sub_81118F0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r1, #0x10
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
	ldr r4, [r5, #0x30]
	cmp r4, #0x00
	bne _08111980
	ldr r1, _0811196C @ =0x00004040
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	movs r1, #0xA0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	ldr r1, _08111970 @ =0x083BA9E4
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08111974
	subs r1, r0, #0x1
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08111980
_0811196C: .4byte 0x00004040
_08111970: .4byte 0x083BA9E4
_08111974:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08111980:
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _081119CC @ =0x08111A89
	str r0, [r4, #0x60]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08111992
	adds r1, #0xFF
_08111992:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0811199C
	adds r2, #0xFF
_0811199C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _081119A6
	adds r3, #0xFF
_081119A6:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _081119D0 @ =0x00002716
	bl sub_80DF024
	ldr r0, _081119D4 @ =0x081119DD
	str r0, [r4, #0x4C]
	ldr r0, _081119D8 @ =0x081122D1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6A
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081119CC: .4byte sub_8111A88
_081119D0: .4byte 0x00002716
_081119D4: .4byte sub_81119DC
_081119D8: .4byte sub_81122D0
	thumb_func_start sub_81119DC
sub_81119DC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	ldr r3, [r0, #0x28]
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r6, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081119F8
	adds r0, #0xFF
_081119F8:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	subs r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08111A0A
	adds r0, #0xFF
_08111A0A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08111A18
	adds r0, #0xFF
_08111A18:
	asrs r3, r0, #0x08
	adds r3, #0x10
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, _08111A78 @ =0x083BA9A8
	lsls r4, r6, #0x02
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x50
	bl sub_808842C
	ldr r1, [r5, #0x28]
	ldr r0, _08111A7C @ =0x083BA9CC
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r1, r2
	movs r3, #0x00
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldr r1, _08111A80 @ =0x083BA9C0
	lsls r0, r6, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	strh r1, [r2, #0x06]
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r3, [r0, #0x00]
	ldr r0, _08111A84 @ =0x08112175
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111A78: .4byte 0x083BA9A8
_08111A7C: .4byte 0x083BA9CC
_08111A80: .4byte 0x083BA9C0
_08111A84: .4byte sub_8112174
	thumb_func_start sub_8111A88
sub_8111A88:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	adds r6, r0, #0x0
	cmp r6, #0x00
	bne _08111B22
	ldr r7, [r4, #0x28]
	adds r3, r7, #0x0
	adds r3, #0x08
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _08111AA8
	adds r0, #0xFF
_08111AA8:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _08111AB4
	adds r0, #0xFF
_08111AB4:
	asrs r0, r0, #0x08
	adds r2, r0, #0x1
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _08111AC0
	adds r3, #0xFF
_08111AC0:
	asrs r3, r3, #0x08
	adds r3, #0x28
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r1, _08111B2C @ =0x083BA9A8
	adds r0, r7, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x50
	bl sub_808842C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08111AEE
	adds r1, #0xFF
_08111AEE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08111AF8
	adds r2, #0xFF
_08111AF8:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08111B02
	adds r3, #0xFF
_08111B02:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08111B30 @ =0x00002661
	bl sub_80DF024
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	ldr r0, _08111B34 @ =0x08112175
	str r0, [r4, #0x4C]
_08111B22:
	adds r0, r6, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08111B2C: .4byte 0x083BA9A8
_08111B30: .4byte 0x00002661
_08111B34: .4byte sub_8112174
	thumb_func_start sub_8111B38
sub_8111B38:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111C12
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08111BB4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x80
	ldr r2, [r1, #0x00]
	adds r0, #0x84
	ldr r7, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r3, #0x06
	adds r5, r3, #0x0
	ands r5, r0
	cmp r5, #0x02
	bne _08111BDC
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08111BBC
	adds r1, r2, #0x0
	adds r1, #0x08
	movs r2, #0x08
	negs r2, r2
	subs r3, #0x08
	movs r4, #0x0A
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, _08111BB8 @ =0x081120E5
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_8111D0C
	adds r1, r7, #0x0
	adds r1, #0x08
	str r4, [sp, #0x000]
	b _08111BC4
_08111BB4: .4byte 0x03000FD8
_08111BB8: .4byte sub_81120E4
_08111BBC:
	adds r1, r2, #0x0
	adds r1, #0x08
	movs r0, #0x0A
	str r0, [sp, #0x000]
_08111BC4:
	str r5, [sp, #0x004]
	ldr r0, _08111BD8 @ =0x0811208D
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	movs r2, #0x08
	movs r3, #0x02
	bl sub_8111D0C
	b _08111BFA
	.byte 0x00, 0x00
_08111BD8: .4byte sub_811208C
_08111BDC:
	adds r1, r7, #0x0
	adds r1, #0x08
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x0A
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	ldr r0, _08111C1C @ =0x081120E5
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_8111D0C
_08111BFA:
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08111C20 @ =0x0811213D
	str r0, [r6, #0x4C]
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08111C12:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111C1C: .4byte sub_81120E4
_08111C20: .4byte sub_811213C
	thumb_func_start sub_8111C24
sub_8111C24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x0E
	ands r0, r1
	cmp r0, #0x0A
	bne _08111C4A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08111C9C @ =0x0810DD7D
	str r0, [r4, #0x5C]
_08111C4A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	adds r1, r2, #0x2
	cmp r0, #0x00
	beq _08111C60
	subs r1, r2, #0x2
_08111C60:
	adds r0, r4, #0x0
	adds r0, #0x75
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8111F3C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08111C94
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x28]
	ldr r2, _08111CA0 @ =0x00000113
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, _08111CA4 @ =0x08112065
	str r0, [r4, #0x4C]
_08111C94:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111C9C: .4byte sub_810DD7C
_08111CA0: .4byte 0x00000113
_08111CA4: .4byte sub_8112064
	thumb_func_start sub_8111CA8
sub_8111CA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x01
	beq _08111D00
	cmp r0, #0x00
	bne _08111CD6
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08111D00
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	b _08111D00
_08111CD6:
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
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
	ldr r0, _08111D08 @ =0x08112031
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_08111D00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111D08: .4byte sub_8112030
	thumb_func_start sub_8111D0C
sub_8111D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r3, [sp, #0x024]
	ldr r0, [sp, #0x028]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, _08111DFC @ =0x00004041
	mov r0, r8
	movs r2, #0x00
	str r3, [sp, #0x000]
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r1, _08111E00 @ =0x00004042
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x08
	ldr r0, [r4, #0x38]
	adds r0, r0, r5
	str r0, [r4, #0x38]
	str r0, [r7, #0x38]
	str r0, [r4, #0x10]
	str r0, [r7, #0x10]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x08
	ldr r0, [r4, #0x3C]
	adds r0, r0, r6
	str r0, [r4, #0x3C]
	str r0, [r7, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r7, #0x14]
	ldr r3, [sp, #0x000]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	adds r0, r0, r3
	str r0, [r4, #0x40]
	str r0, [r7, #0x40]
	str r0, [r4, #0x18]
	str r0, [r7, #0x18]
	mov r0, r9
	str r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	ldr r5, [r7, #0x08]
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r3, #0x12]
	ldrb r0, [r5, #0x12]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x12]
	ldr r1, [sp, #0x02C]
	str r1, [r4, #0x4C]
	str r1, [r7, #0x4C]
	mov r3, r8
	adds r3, #0x75
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	adds r2, r7, #0x0
	adds r2, #0x75
	movs r1, #0x00
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	adds r2, r4, #0x0
	adds r2, #0x75
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	str r1, [r0, #0x00]
	adds r4, #0xA8
	movs r0, #0x01
	str r0, [r4, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x28]
	ldr r2, _08111E04 @ =0x00000113
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x02
	strb r0, [r1, #0x00]
	mov r0, r10
	cmp r0, #0x00
	beq _08111E08
	mov r1, r10
	subs r1, #0x01
	adds r3, r7, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r3, #0x01
	b _08111E16
_08111DFC: .4byte 0x00004041
_08111E00: .4byte 0x00004042
_08111E04: .4byte 0x00000113
_08111E08:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
_08111E16:
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8111E30
sub_8111E30:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	adds r6, r2, #0x0
	adds r0, #0x88
	str r0, [sp, #0x00C]
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0x02
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	add r1, sp, #0x008
	lsls r0, r6, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	bl sub_8087878
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r8, r1
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	ldr r7, _08111EF8 @ =0x03001038
	ldr r1, _08111EFC @ =0x0819832C
	ldr r0, _08111F00 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	subs r0, r6, r0
	ldr r2, [sp, #0x004]
	muls r0, r2
	cmp r0, #0x00
	bge _08111EA6
	adds r0, #0x3F
_08111EA6:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08111EB4
	adds r0, #0x3F
_08111EB4:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	adds r1, r0, #0x0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r0, r1
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _08111F04
	ldr r2, [r7, #0x00]
	add r2, r9
	mov r1, r10
	lsls r0, r1, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08111F0A
_08111EF8: .4byte 0x03001038
_08111EFC: .4byte 0x0819832C
_08111F00: .4byte 0x08198220
_08111F04:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
_08111F0A:
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x94
	ldr r0, [sp, #0x004]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8111F3C
sub_8111F3C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08111F60
	adds r0, #0xFF
_08111F60:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08111FD8 @ =0x00003FFF
	cmp r5, r0
	bgt _08111FF6
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08111F94
	adds r0, #0x3F
_08111F94:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08111FB0
	adds r0, #0x3F
_08111FB0:
	asrs r0, r0, #0x06
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08111FDC
	subs r0, #0x10
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08111FD4
	adds r0, #0x3F
_08111FD4:
	asrs r0, r0, #0x06
	b _08111FF0
_08111FD8: .4byte 0x00003FFF
_08111FDC:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	subs r0, #0x02
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
_08111FF0:
	str r0, [r4, #0x14]
	movs r0, #0x01
	b _08112028
_08111FF6:
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r6, #0x02
	ldsh r0, [r0, r6]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08112028:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
