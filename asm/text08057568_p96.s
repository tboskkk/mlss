	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DE4A4
sub_80DE4A4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080DE4B8
	b _080DE5C6
_080DE4B8:
	ldr r5, [r6, #0x28]
	ldr r1, _080DE5D0 @ =0x00000113
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080DE5A2
	adds r7, r6, #0x0
	adds r7, #0xA8
	ldrh r1, [r7, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080DE4D6
	adds r0, #0xFF
_080DE4D6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080DE4E4
	adds r0, #0xFF
_080DE4E4:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080DE4F0
	adds r0, #0xFF
_080DE4F0:
	asrs r0, r0, #0x08
	adds r0, #0x14
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x77
	adds r2, r2, r6
	mov r12, r2
	ldrb r0, [r2, #0x00]
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
	ldr r0, _080DE5D4 @ =0x080DEA2D
	str r0, [r5, #0x4C]
	ldr r0, _080DE5D8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080DE5DC @ =0x080DE9F1
	str r0, [r5, #0x58]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080DE5A2:
	movs r0, #0x00
	str r0, [r6, #0x6C]
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
	ldr r0, _080DE5E0 @ =0x080DEA99
	str r0, [r6, #0x4C]
_080DE5C6:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DE5D0: .4byte 0x00000113
_080DE5D4: .4byte sub_80DEA2C
_080DE5D8: .4byte sub_8087540
_080DE5DC: .4byte sub_80DE9F0
_080DE5E0: .4byte sub_80DEA98
	thumb_func_start sub_80DE5E4
sub_80DE5E4:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DE600
	adds r0, #0xFF
_080DE600:
	asrs r0, r0, #0x08
	mov r4, r12
	strh r0, [r4, #0x00]
	adds r4, r2, #0x0
	adds r4, #0xB0
	movs r5, #0x00
	ldsh r1, [r4, r5]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DE61C
	adds r0, #0xFF
_080DE61C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0xB2
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r0, r12
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r2, #0x38]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r2, #0x3C]
	adds r0, r0, r1
	str r0, [r2, #0x14]
	movs r4, #0x00
	ldsh r1, [r3, r4]
	ldr r0, [r2, #0x40]
	adds r1, r0, r1
	str r1, [r2, #0x18]
	movs r5, #0x00
	ldsh r0, [r3, r5]
	cmp r0, #0x00
	bgt _080DE66A
	adds r0, r2, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DE66A
	str r0, [r2, #0x18]
	adds r0, r2, #0x0
	bl sub_807C298
_080DE66A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80DE670
sub_80DE670:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080DE692
	mov r12, r2
	movs r5, #0x98
	lsls r5, r5, #0x01
	add r5, r12
	b _080DE69A
_080DE692:
	ldr r5, _080DE6E8 @ =0xFFFFFED0
	adds r5, r5, r2
	mov r12, r5
	adds r5, r2, #0x0
_080DE69A:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080DE700
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _080DE6EC
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r12
	adds r0, #0xD8
	adds r1, r5, #0x0
	adds r1, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r2, #0x00]
	b _080DE71A
_080DE6E8: .4byte 0xFFFFFED0
_080DE6EC:
	adds r2, r4, #0x0
	adds r2, #0x84
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	b _080DE712
_080DE700:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r5, #0x0
_080DE712:
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r3, r2, #0x0
_080DE71A:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x07
	adds r0, r0, r5
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DE77C @ =0x080DE9A1
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080DE77C: .4byte sub_80DE9A0
	thumb_func_start sub_80DE780
sub_80DE780:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DE808
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DE810 @ =0x080DE981
	str r0, [r4, #0x58]
	ldr r0, _080DE814 @ =0x080DE961
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0x84
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
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x30
	strh r0, [r5, #0x00]
	ldr r0, _080DE818 @ =0x080DE81D
	str r0, [r4, #0x4C]
_080DE808:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DE810: .4byte sub_80DE980
_080DE814: .4byte sub_80DE960
_080DE818: .4byte sub_80DE81C
	thumb_func_start sub_80DE81C
sub_80DE81C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080DE82A
	b _080DE93E
_080DE82A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _080DE83C
	b _080DE93E
_080DE83C:
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080DE868
	mov r12, r2
	movs r5, #0x98
	lsls r5, r5, #0x01
	add r5, r12
	b _080DE870
_080DE868:
	ldr r5, _080DE8C0 @ =0xFFFFFED0
	adds r5, r5, r2
	mov r12, r5
	adds r5, r2, #0x0
_080DE870:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080DE8D8
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _080DE8C4
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r12
	adds r0, #0xD8
	adds r1, r5, #0x0
	adds r1, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r2, #0x00]
	b _080DE8F2
	.byte 0x00, 0x00
_080DE8C0: .4byte 0xFFFFFED0
_080DE8C4:
	adds r2, r4, #0x0
	adds r2, #0x84
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	b _080DE8EA
_080DE8D8:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r5, #0x0
_080DE8EA:
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r3, r2, #0x0
_080DE8F2:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x07
	adds r0, r0, r5
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
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
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DE944 @ =0x080DE949
	str r0, [r4, #0x4C]
_080DE93E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080DE944: .4byte sub_80DE948
