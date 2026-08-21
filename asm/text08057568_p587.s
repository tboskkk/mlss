	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8139708
sub_8139708:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0xFF
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r4, #0x0
	bl sub_81385A8
	ldr r0, _08139754 @ =0x08136A85
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139754: .4byte sub_8136A84
	thumb_func_start sub_8139758
sub_8139758:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139772
	adds r0, r4, #0x0
	bl sub_81382A8
	b _081397C4
_08139772:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081397AC
	ldr r0, _081397A8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _081397C4
	.byte 0x00, 0x00
_081397A8: .4byte sub_813B1E8
_081397AC:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_081397C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81397CC
sub_81397CC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813729C
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r4, #0x0
	bl sub_81382A8
	ldr r0, _08139808 @ =0x08139759
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139808: .4byte sub_8139758
	thumb_func_start sub_813980C
sub_813980C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139826
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08139878
_08139826:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08139860
	ldr r0, _0813985C @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08139878
	.byte 0x00, 0x00
_0813985C: .4byte sub_813B1E8
_08139860:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08139878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8139880
sub_8139880:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0xFF
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081398C0 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081398C0: .4byte sub_813980C
	thumb_func_start sub_81398C4
sub_81398C4:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _081398EA
	adds r0, r4, #0x0
	bl sub_81391A0
_081398EA:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xB5, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_81398FC
sub_81398FC:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139930 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139934 @ =0x08139509
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _08139938 @ =0x081396D9
	str r1, [r2, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
_08139930: .4byte sub_813B380
_08139934: .4byte sub_8139508
_08139938: .4byte sub_81396D8
	thumb_func_start sub_813993C
sub_813993C:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139968 @ =0x081398C5
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _0813996C @ =0x0813955D
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139968: .4byte sub_81398C4
_0813996C: .4byte sub_813955C
