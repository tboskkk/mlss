	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8068268
sub_8068268:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8068274
sub_8068274:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08068290
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068298 @ =0x0806829D
	str r0, [r4, #0x4C]
_08068290:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068298: .4byte sub_806829C
	thumb_func_start sub_806829C
sub_806829C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080682BC
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080682C4 @ =0x08067A85
	str r0, [r4, #0x4C]
_080682BC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080682C4: .4byte sub_8067A84
	thumb_func_start sub_80682C8
sub_80682C8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	bl sub_8082B00
	adds r7, r0, #0x0
	cmp r7, #0x00
	bne _080683B6
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080682E2
	adds r0, #0xFF
_080682E2:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080682EE
	adds r0, #0xFF
_080682EE:
	asrs r0, r0, #0x08
	adds r0, #0x02
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806839C @ =0x0000412B
	movs r2, #0x80
	lsls r2, r2, #0x01
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r5, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r0, _080683A0 @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _080683A4 @ =0x08068819
	str r0, [r3, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080683A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _080683B2
_0806839C: .4byte 0x0000412B
_080683A0: .4byte sub_8087540
_080683A4: .4byte sub_8068818
_080683A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080683B2:
	ldr r0, _080683C0 @ =0x080683C5
	str r0, [r5, #0x4C]
_080683B6:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080683C0: .4byte sub_80683C4
	thumb_func_start sub_80683C4
sub_80683C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806849E
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	bne _080683EC
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080683F2
_080683EC:
	movs r0, #0x81
	bl stop_sfx_80195A8
_080683F2:
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0806840E
	adds r0, #0xFF
_0806840E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	cmp r1, #0x00
	bge _0806841E
	adds r1, #0xFF
_0806841E:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r1, [r7, #0x2C]
	ldr r4, [r1, #0x28]
	adds r5, r4, #0x0
	adds r5, #0xD8
	movs r1, #0x30
	bl __umodsi3
	adds r0, #0x30
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	adds r1, r1, r0
	str r1, [r6, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x88
	adds r4, #0xDC
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08068490
	ldr r0, _0806848C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0806849A
_0806848C: .4byte 0x0000011B
_08068490:
	ldr r0, _080684A8 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806849A:
	ldr r0, _080684AC @ =0x0806890D
	str r0, [r7, #0x4C]
_0806849E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080684A8: .4byte 0x0000011B
_080684AC: .4byte sub_806890C
	thumb_func_start sub_80684B0
sub_80684B0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r2, r0, #0x1
	strh r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080684DC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1E
	bne _080684EE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	b _080684EE
_080684DC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0A
	bne _080684EE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
_080684EE:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068560
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08068514
	ldr r0, _08068510 @ =0x0000011B
	bl stop_sfx_80195A8
	b _0806851A
	.byte 0x00, 0x00
_08068510: .4byte 0x0000011B
_08068514:
	ldr r0, _08068534 @ =0x0000011B
	bl stop_sfx_80195A8
_0806851A:
	ldr r5, [r5, #0x00]
	cmp r5, #0x00
	bne _08068538
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0806854C
_08068534: .4byte 0x0000011B
_08068538:
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
_0806854C:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, _08068568 @ =0x080688B9
	str r0, [r4, #0x4C]
_08068560:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068568: .4byte sub_80688B8
	thumb_func_start sub_806856C
sub_806856C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08068580
	b _0806877C
_08068580:
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806858C
	b _0806868C
_0806858C:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080685A0
	adds r1, #0xFF
_080685A0:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080685AA
	adds r0, #0xFF
_080685AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080685B6
	adds r3, #0xFF
_080685B6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806867C @ =0x00001C73
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080685CA
	adds r0, #0xFF
_080685CA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x17
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080685D8
	adds r0, #0xFF
_080685D8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080685E4
	adds r0, #0xFF
_080685E4:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08068680 @ =0x0000412C
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r5, [r0, #0x30]
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
	ldr r0, _08068684 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08068688 @ =0x080687ED
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	b _08068778
_0806867C: .4byte 0x00001C73
_08068680: .4byte 0x0000412C
_08068684: .4byte sub_8087540
_08068688: .4byte sub_80687EC
_0806868C:
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080686A0
	adds r1, #0xFF
_080686A0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080686AA
	adds r2, #0xFF
_080686AA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080686B4
	adds r3, #0xFF
_080686B4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08068784 @ =0x00001C7A
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080686C8
	adds r0, #0xFF
_080686C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x17
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080686D6
	adds r0, #0xFF
_080686D6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080686E2
	adds r0, #0xFF
_080686E2:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08068788 @ =0x0000412D
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r5, [r0, #0x30]
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
	ldr r0, _0806878C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08068790 @ =0x08068799
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
_08068778:
	ldr r0, _08068794 @ =0x08068845
	str r0, [r6, #0x4C]
_0806877C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08068784: .4byte 0x00001C7A
_08068788: .4byte 0x0000412D
_0806878C: .4byte sub_8087540
_08068790: .4byte sub_8068798
_08068794: .4byte sub_8068844
	thumb_func_start sub_8068798
sub_8068798:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _080687E4 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	cmp r0, r1
	ble _080687C6
	ldr r2, _080687E8 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x18]
	cmp r0, r1
	bgt _080687C6
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080687C6:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080687CE
	adds r1, #0xFF
_080687CE:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080687DE
	adds r0, r4, #0x0
	bl sub_807C298
_080687DE:
	pop {r4}
	pop {r0}
	bx r0
_080687E4: .4byte 0xFFFFFECD
_080687E8: .4byte 0xFFFFFF00
	thumb_func_start sub_80687EC
sub_80687EC:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08068814 @ =0xFFFFFDCD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068800
	adds r3, #0xFF
	adds r0, r1, r3
_08068800:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068810
	adds r0, r2, #0x0
	bl sub_807C298
_08068810:
	pop {r0}
	bx r0
_08068814: .4byte 0xFFFFFDCD
