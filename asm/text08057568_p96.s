	.include "asm/macros.inc"

	.syntax unified
	.text

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
